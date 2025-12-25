/* =========================================================
   YD_RISK_IZLEM - ÜRETİM KURULUM SCRIPTİ (TEK SEFER)
   - Var olan nesneleri güvenli şekilde kaldırır
   - Tablo + indeks + constraint + sequence + trigger oluşturur
   ========================================================= */

-- 1) TRIGGER DROP (varsa)
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER HASTANE.TRG_YD_RISK_IZLEM_BI';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN -- ORA-04080: trigger does not exist
      RAISE;
    END IF;
END;
/

-- 2) CONSTRAINT/INDEX/TABLE DROP (tablo varsa komple kaldırır)
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE HASTANE.YD_RISK_IZLEM CASCADE CONSTRAINTS PURGE';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -942 THEN -- ORA-00942: table or view does not exist
      RAISE;
    END IF;
END;
/

-- 3) SEQUENCE DROP (varsa)
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE HASTANE.SEQ_YD_RISK_IZLEM';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN -- ORA-02289: sequence does not exist
      RAISE;
    END IF;
END;
/

/* =========================================================
   4) SEQUENCE CREATE
   ========================================================= */
CREATE SEQUENCE HASTANE.SEQ_YD_RISK_IZLEM
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  NOMAXVALUE
  NOCYCLE
  NOCACHE
  NOORDER;
/

/* =========================================================
   5) TABLE CREATE
   ========================================================= */
CREATE TABLE HASTANE.YD_RISK_IZLEM
(
  HASTA_ID              NUMBER                  NOT NULL,
  HAFTA_NO              NUMBER                  NOT NULL,
  DOSYA_NO              NUMBER                  NOT NULL,
  PROTOKOL_NO           NUMBER                  NOT NULL,
  IZLEM_TARIHI          DATE                    NOT NULL,

  GESTASYON_HAFTASI     NUMBER,
  DOGUM_KILOSU_GR       NUMBER,
  DOGUM_BOYU_CM         NUMBER,
  DOGUM_BAS_CEVRESI     NUMBER,

  YR_28_HAFTA           VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  YR_1000_GR            VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  YR_NEK_GIS            VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  YR_KONJ_GIS           VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,

  OR_28_31_HAFTA        VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  OR_IUGR               VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  OR_1000_1500_GR       VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  OR_KONJ_BESLENME      VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,

  DR_32_35_HAFTA        VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  DR_IUGR_35            VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  DR_TERM               VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,

  RISK_SEVIYE           VARCHAR2(10 BYTE),

  IHT_2_HAFTA_KILO      VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  IHT_15_KAYIP          VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  IHT_10G_KAZANIM       VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,
  IHT_NEK_CERRAHI       VARCHAR2(1 BYTE)        DEFAULT 'F' NOT NULL,

  DOKTOR_ADI            VARCHAR2(100 BYTE),
  KAYIT_TARIHI          DATE                    DEFAULT SYSDATE NOT NULL,

  KILO_KG               NUMBER(6,2),
  BOY_CM                NUMBER(6,2),
  BAS_CEVRESI_CM        NUMBER(6,2),

  FORM_NO               NUMBER(3),

  TG_YUKSEK_RISK        CHAR(1 BYTE)            DEFAULT 'F' NOT NULL,
  TG_KILO_YAKALAYAMAMA  CHAR(1 BYTE)            DEFAULT 'F' NOT NULL,
  TG_KILO_KAYIP_15      CHAR(1 BYTE)            DEFAULT 'F' NOT NULL,
  TG_KILO_KAZANIM_10    CHAR(1 BYTE)            DEFAULT 'F' NOT NULL,
  TG_NEK_CERRAHI        CHAR(1 BYTE)            DEFAULT 'F' NOT NULL
)
TABLESPACE USERS
LOGGING
NOCOMPRESS
NOPARALLEL;
/

/* =========================================================
   6) CONSTRAINTS
   ========================================================= */

ALTER TABLE HASTANE.YD_RISK_IZLEM ADD CONSTRAINT PK_YD_RISK
  PRIMARY KEY (HASTA_ID)
  ENABLE;
/

ALTER TABLE HASTANE.YD_RISK_IZLEM ADD CONSTRAINT CK_YD_RISK_FORM_NO
  CHECK (FORM_NO >= 1)
  ENABLE;
/

ALTER TABLE HASTANE.YD_RISK_IZLEM ADD CONSTRAINT CK_YD_RISK_HAFTA_NO
  CHECK (HAFTA_NO BETWEEN 1 AND 4)
  ENABLE;
/

-- Flag alanları T/F kontrolü (tamamını bağlayalım)
ALTER TABLE HASTANE.YD_RISK_IZLEM ADD CONSTRAINT CK_YD_RISK_FLAGS
CHECK (
  YR_28_HAFTA IN ('T','F') AND
  YR_1000_GR  IN ('T','F') AND
  YR_NEK_GIS  IN ('T','F') AND
  YR_KONJ_GIS IN ('T','F') AND

  OR_28_31_HAFTA   IN ('T','F') AND
  OR_IUGR          IN ('T','F') AND
  OR_1000_1500_GR  IN ('T','F') AND
  OR_KONJ_BESLENME IN ('T','F') AND

  DR_32_35_HAFTA IN ('T','F') AND
  DR_IUGR_35     IN ('T','F') AND
  DR_TERM        IN ('T','F') AND

  IHT_2_HAFTA_KILO IN ('T','F') AND
  IHT_15_KAYIP     IN ('T','F') AND
  IHT_10G_KAZANIM  IN ('T','F') AND
  IHT_NEK_CERRAHI  IN ('T','F') AND

  TG_YUKSEK_RISK       IN ('T','F') AND
  TG_KILO_YAKALAYAMAMA IN ('T','F') AND
  TG_KILO_KAYIP_15     IN ('T','F') AND
  TG_KILO_KAZANIM_10   IN ('T','F') AND
  TG_NEK_CERRAHI       IN ('T','F')
)
ENABLE;
/

-- İş kuralı: aynı form + hafta tek kayıt olmalı
ALTER TABLE HASTANE.YD_RISK_IZLEM ADD CONSTRAINT UK_YD_RISK_FORM_WEEK
  UNIQUE (DOSYA_NO, PROTOKOL_NO, FORM_NO, HAFTA_NO)
  ENABLE;
/

/* =========================================================
   7) INDEX (performans için)
   ========================================================= */
CREATE INDEX HASTANE.IDX_YD_RISK_FORM_HAFTA
  ON HASTANE.YD_RISK_IZLEM (DOSYA_NO, PROTOKOL_NO, FORM_NO, HAFTA_NO)
  TABLESPACE USERS
  LOGGING
  NOPARALLEL;
/

/* =========================================================
   8) TRIGGER (HASTA_ID otomatik üret)
   - ÖNEMLİ: Sequence adı ile aynı olmalı: SEQ_YD_RISK_IZLEM
   ========================================================= */
CREATE OR REPLACE TRIGGER HASTANE.TRG_YD_RISK_IZLEM_BI
BEFORE INSERT ON HASTANE.YD_RISK_IZLEM
FOR EACH ROW
BEGIN
  :NEW.HASTA_ID := SEQ_YD_RISK_IZLEM.NEXTVAL;
END;
/

SHOW ERRORS TRIGGER HASTANE.TRG_YD_RISK_IZLEM_BI;
