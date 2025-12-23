unit yenidoganRisk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxScrollBox, cxContainer, cxEdit, cxDBLabel, cxLabel,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGroupBox, Data.DB, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxButtonEdit, MemDS, DBAccess, Ora, OraCall, cxCheckBox;

type
  TForm2 = class(TForm)
    scrMain: TcxScrollBox;
    grpAna1: TcxGroupBox;
    grpAna2: TcxGroupBox;
    grdpnl1: TGridPanel;
    grpAna3: TcxGroupBox;
    grdpnl2: TGridPanel;
    cxlbl1: TcxLabel;
    cxdblbl1: TcxDBLabel;
    cxlbl2: TcxLabel;
    cxdblbl2: TcxDBLabel;
    cxlbl3: TcxLabel;
    cxdblbl3: TcxDBLabel;
    cxlbl4: TcxLabel;
    cxdblbl4: TcxDBLabel;
    grpOlcum: TcxGroupBox;
    cxlbl5: TcxLabel;
    grdpnl3: TGridPanel;
    cxlbl6: TcxLabel;
    lblGun1Tarih: TcxLabel;
    lblGun2Tarih: TcxLabel;
    lblGun3Tarih: TcxLabel;
    lblGun4Tarih: TcxLabel;
    lblGun5Tarih: TcxLabel;
    cxlbl8: TcxLabel;
    edtKiloGun1: TcxDBTextEdit;
    edtKiloGun2: TcxDBTextEdit;
    edtKiloGun3: TcxDBTextEdit;
    edtKiloGun4: TcxDBTextEdit;
    edtKiloGun5: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    edtBoyGun1: TcxDBTextEdit;
    edtBoyGun2: TcxDBTextEdit;
    edtBoyGun3: TcxDBTextEdit;
    edtBoyGun4: TcxDBTextEdit;
    edtBoyGun5: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    edtBasGun1: TcxDBTextEdit;
    edtBasGun2: TcxDBTextEdit;
    edtBasGun3: TcxDBTextEdit;
    edtBasGun4: TcxDBTextEdit;
    edtBasGun5: TcxDBTextEdit;
    grdpnl4: TGridPanel;
    PaintBoxYuksekRisk: TPaintBox;
    grdpnl5: TGridPanel;
    cxlbl10: TcxLabel;
    cxlbl11: TcxLabel;
    cxlbl13: TcxLabel;
    grdpnl6: TGridPanel;
    cxlbl12: TcxLabel;
    cxlbl14: TcxLabel;
    cxlbl15: TcxLabel;
    cxlbl16: TcxLabel;
    cxlbl17: TcxLabel;
    grdpnl7: TGridPanel;
    cxlbl18: TcxLabel;
    cxlbl19: TcxLabel;
    cxlbl20: TcxLabel;
    cxlbl21: TcxLabel;
    cxlbl22: TcxLabel;
    grdpnl8: TGridPanel;
    cxlbl23: TcxLabel;
    cxlbl24: TcxLabel;
    cxlbl25: TcxLabel;
    cxlbl26: TcxLabel;
    grdpnl9: TGridPanel;
    grdpnl10: TGridPanel;
    orsn1: TOraSession;
    qrrastgeleHasta: TOraQuery;
    btnKaydet: TButton;
    fltfldHastaHASTA_ID: TFloatField;
    fltfldHastaHAFTA_NO: TFloatField;
    fltfldHastaDOSYA_NO: TFloatField;
    fltfldHastaPROTOKOL_NO: TFloatField;
    dtmfldHastaIZLEM_TARIHI: TDateTimeField;
    fltfldHastaGESTASYON_HAFTASI: TFloatField;
    fltfldHastaDOGUM_KILOSU_GR: TFloatField;
    fltfldHastaDOGUM_BOYU_CM: TFloatField;
    fltfldHastaDOGUM_BAS_CEVRESI: TFloatField;
    strngfldHastaYR_28_HAFTA: TStringField;
    strngfldHastaYR_1000_GR: TStringField;
    strngfldHastaYR_NEK_GIS: TStringField;
    strngfldHastaYR_KONJ_GIS: TStringField;
    strngfldHastaOR_28_31_HAFTA: TStringField;
    strngfldHastaOR_IUGR: TStringField;
    strngfldHastaOR_1000_1500_GR: TStringField;
    strngfldHastaOR_KONJ_BESLENME: TStringField;
    strngfldHastaDR_32_35_HAFTA: TStringField;
    strngfldHastaDR_IUGR_35: TStringField;
    strngfldHastaDR_TERM: TStringField;
    strngfldHastaRISK_SEVIYE: TStringField;
    strngfldHastaIHT_2_HAFTA_KILO: TStringField;
    strngfldHastaIHT_15_KAYIP: TStringField;
    strngfldHastaIHT_10G_KAZANIM: TStringField;
    strngfldHastaIHT_NEK_CERRAHI: TStringField;
    strngfldHastaDOKTOR_ADI: TStringField;
    dtmfldHastaKAYIT_TARIHI: TDateTimeField;
    fltfldHastaKILO_KG: TFloatField;
    fltfldHastaBOY_CM: TFloatField;
    fltfldHastaBAS_CEVRESI_CM: TFloatField;
    lbl1: TLabel;
    grdpnl11: TGridPanel;
    YR_C28G1: TcxDBCheckBox;
    YR_C1000G1: TcxDBCheckBox;
    YR_CNEKG1: TcxDBCheckBox;
    YR_CGISG1: TcxDBCheckBox;
    lbl2: TLabel;
    OR_C28G1: TcxDBCheckBox;
    OR_CIUGRG1: TcxDBCheckBox;
    OR_C1000G1: TcxDBCheckBox;
    OR_CKONJENITALG1: TcxDBCheckBox;
    grdpnl12: TGridPanel;
    lbl3: TLabel;
    DR_C32G1: TcxDBCheckBox;
    DR_CIUGRG1: TcxDBCheckBox;
    DR_C37G1: TcxDBCheckBox;
    grdpnl13: TGridPanel;
    grdpnl14: TGridPanel;
    lbl4: TLabel;
    YR_C28G2: TcxDBCheckBox;
    YR_C1000G2: TcxDBCheckBox;
    YR_CNEKG2: TcxDBCheckBox;
    YR_CGISG2: TcxDBCheckBox;
    grdpnl15: TGridPanel;
    lbl5: TLabel;
    OR_C28G2: TcxDBCheckBox;
    OR_CIUGRG2: TcxDBCheckBox;
    OR_C1000G2: TcxDBCheckBox;
    OR_CKONJENITALG2: TcxDBCheckBox;
    grdpnl16: TGridPanel;
    lbl6: TLabel;
    DR_C32G2: TcxDBCheckBox;
    DR_CIUGRG2: TcxDBCheckBox;
    DR_C37G2: TcxDBCheckBox;
    grdpnl17: TGridPanel;
    grdpnl18: TGridPanel;
    grdpnl19: TGridPanel;
    grdpnl20: TGridPanel;
    grdpnl21: TGridPanel;
    grdpnl22: TGridPanel;
    grdpnl23: TGridPanel;
    grdpnl24: TGridPanel;
    grdpnl25: TGridPanel;
    grdpnl26: TGridPanel;
    grdpnl27: TGridPanel;
    grdpnl28: TGridPanel;
    lbl7: TLabel;
    YR_C28G3: TcxDBCheckBox;
    YR_C1000G3: TcxDBCheckBox;
    YR_CNEKG3: TcxDBCheckBox;
    YR_CGISG3: TcxDBCheckBox;
    lbl8: TLabel;
    OR_C28G3: TcxDBCheckBox;
    OR_CIUGRG3: TcxDBCheckBox;
    OR_C1000G3: TcxDBCheckBox;
    OR_CKONJENITALG3: TcxDBCheckBox;
    lbl9: TLabel;
    DR_C32G3: TcxDBCheckBox;
    DR_CIUGRG3: TcxDBCheckBox;
    DR_C37G3: TcxDBCheckBox;
    lbl10: TLabel;
    YR_C28G4: TcxDBCheckBox;
    YR_C1000G4: TcxDBCheckBox;
    YR_CNEKG4: TcxDBCheckBox;
    YR_CGISG4: TcxDBCheckBox;
    lbl11: TLabel;
    OR_C28G4: TcxDBCheckBox;
    OR_CIUGRG4: TcxDBCheckBox;
    OR_C1000G4: TcxDBCheckBox;
    OR_CKONJENITALG4: TcxDBCheckBox;
    lbl12: TLabel;
    DR_C32G4: TcxDBCheckBox;
    DR_CIUGRG4: TcxDBCheckBox;
    DR_C37G4: TcxDBCheckBox;
    lbl13: TLabel;
    YR_C28G5: TcxDBCheckBox;
    YR_C1000G5: TcxDBCheckBox;
    YR_CNEKG5: TcxDBCheckBox;
    YR_CGISG5: TcxDBCheckBox;
    lbl14: TLabel;
    OR_C28G5: TcxDBCheckBox;
    OR_CIUGRG5: TcxDBCheckBox;
    OR_C1000G5: TcxDBCheckBox;
    OR_CKONJENITALG5: TcxDBCheckBox;
    lbl15: TLabel;
    DR_C32G5: TcxDBCheckBox;
    DR_CIUGRG5: TcxDBCheckBox;
    DR_C37G5: TcxDBCheckBox;
    cxlbl27: TcxLabel;
    grdpnl29: TGridPanel;
    lbl16: TLabel;
    cxlbl28: TcxLabel;
    cxlbl29: TcxLabel;
    lbl17: TLabel;
    DR_GUN1: TcxDBLabel;
    DR_GUN2: TcxDBLabel;
    DR_GUN3: TcxDBLabel;
    DR_GUN4: TcxDBLabel;
    DR_GUN5: TcxDBLabel;
    scorGun1: TcxDBLabel;
    scorGun2: TcxDBLabel;
    scorGun3: TcxDBLabel;
    scorGun4: TcxDBLabel;
    scorGun5: TcxDBLabel;
    dsRastgeleHasta: TOraDataSource;
    qrHafta1: TOraQuery;
    qrHafta2: TOraQuery;
    qrHafta3: TOraQuery;
    qrHafta4: TOraQuery;
    qrHafta5: TOraQuery;
    dsHafta1: TOraDataSource;
    dsHafta2: TOraDataSource;
    dsHafta3: TOraDataSource;
    dsHafta4: TOraDataSource;
    dsHafta5: TOraDataSource;
    fltfldHafta1HASTA_ID: TFloatField;
    fltfldHafta1HAFTA_NO: TFloatField;
    fltfldHafta1DOSYA_NO: TFloatField;
    fltfldHafta1PROTOKOL_NO: TFloatField;
    dtmfldHafta1IZLEM_TARIHI: TDateTimeField;
    fltfldHafta1GESTASYON_HAFTASI: TFloatField;
    fltfldHafta1DOGUM_KILOSU_GR: TFloatField;
    fltfldHafta1DOGUM_BOYU_CM: TFloatField;
    fltfldHafta1DOGUM_BAS_CEVRESI: TFloatField;
    strngfldHafta1YR_28_HAFTA: TStringField;
    strngfldHafta1YR_1000_GR: TStringField;
    strngfldHafta1YR_NEK_GIS: TStringField;
    strngfldHafta1YR_KONJ_GIS: TStringField;
    strngfldHafta1OR_28_31_HAFTA: TStringField;
    strngfldHafta1OR_IUGR: TStringField;
    strngfldHafta1OR_1000_1500_GR: TStringField;
    strngfldHafta1OR_KONJ_BESLENME: TStringField;
    strngfldHafta1DR_32_35_HAFTA: TStringField;
    strngfldHafta1DR_IUGR_35: TStringField;
    strngfldHafta1DR_TERM: TStringField;
    strngfldHafta1RISK_SEVIYE: TStringField;
    strngfldHafta1IHT_2_HAFTA_KILO: TStringField;
    strngfldHafta1IHT_15_KAYIP: TStringField;
    strngfldHafta1IHT_10G_KAZANIM: TStringField;
    strngfldHafta1IHT_NEK_CERRAHI: TStringField;
    strngfldHafta1DOKTOR_ADI: TStringField;
    dtmfldHafta1KAYIT_TARIHI: TDateTimeField;
    fltfldHafta1KILO_KG: TFloatField;
    fltfldHafta1BOY_CM: TFloatField;
    fltfldHafta1BAS_CEVRESI_CM: TFloatField;
    fltfldHafta2HASTA_ID: TFloatField;
    fltfldHafta2HAFTA_NO: TFloatField;
    fltfldHafta2DOSYA_NO: TFloatField;
    fltfldHafta2PROTOKOL_NO: TFloatField;
    dtmfldHafta2IZLEM_TARIHI: TDateTimeField;
    fltfldHafta2GESTASYON_HAFTASI: TFloatField;
    fltfldHafta2DOGUM_KILOSU_GR: TFloatField;
    fltfldHafta2DOGUM_BOYU_CM: TFloatField;
    fltfldHafta2DOGUM_BAS_CEVRESI: TFloatField;
    strngfldHafta2YR_28_HAFTA: TStringField;
    strngfldHafta2YR_1000_GR: TStringField;
    strngfldHafta2YR_NEK_GIS: TStringField;
    strngfldHafta2YR_KONJ_GIS: TStringField;
    strngfldHafta2OR_28_31_HAFTA: TStringField;
    strngfldHafta2OR_IUGR: TStringField;
    strngfldHafta2OR_1000_1500_GR: TStringField;
    strngfldHafta2OR_KONJ_BESLENME: TStringField;
    strngfldHafta2DR_32_35_HAFTA: TStringField;
    strngfldHafta2DR_IUGR_35: TStringField;
    strngfldHafta2DR_TERM: TStringField;
    strngfldHafta2RISK_SEVIYE: TStringField;
    strngfldHafta2IHT_2_HAFTA_KILO: TStringField;
    strngfldHafta2IHT_15_KAYIP: TStringField;
    strngfldHafta2IHT_10G_KAZANIM: TStringField;
    strngfldHafta2IHT_NEK_CERRAHI: TStringField;
    strngfldHafta2DOKTOR_ADI: TStringField;
    dtmfldHafta2KAYIT_TARIHI: TDateTimeField;
    fltfldHafta2KILO_KG: TFloatField;
    fltfldHafta2BOY_CM: TFloatField;
    fltfldHafta2BAS_CEVRESI_CM: TFloatField;
    fltfldHafta3HASTA_ID: TFloatField;
    fltfldHafta3HAFTA_NO: TFloatField;
    fltfldHafta3DOSYA_NO: TFloatField;
    fltfldHafta3PROTOKOL_NO: TFloatField;
    dtmfldHafta3IZLEM_TARIHI: TDateTimeField;
    fltfldHafta3GESTASYON_HAFTASI: TFloatField;
    fltfldHafta3DOGUM_KILOSU_GR: TFloatField;
    fltfldHafta3DOGUM_BOYU_CM: TFloatField;
    fltfldHafta3DOGUM_BAS_CEVRESI: TFloatField;
    strngfldHafta3YR_28_HAFTA: TStringField;
    strngfldHafta3YR_1000_GR: TStringField;
    strngfldHafta3YR_NEK_GIS: TStringField;
    strngfldHafta3YR_KONJ_GIS: TStringField;
    strngfldHafta3OR_28_31_HAFTA: TStringField;
    strngfldHafta3OR_IUGR: TStringField;
    strngfldHafta3OR_1000_1500_GR: TStringField;
    strngfldHafta3OR_KONJ_BESLENME: TStringField;
    strngfldHafta3DR_32_35_HAFTA: TStringField;
    strngfldHafta3DR_IUGR_35: TStringField;
    strngfldHafta3DR_TERM: TStringField;
    strngfldHafta3RISK_SEVIYE: TStringField;
    strngfldHafta3IHT_2_HAFTA_KILO: TStringField;
    strngfldHafta3IHT_15_KAYIP: TStringField;
    strngfldHafta3IHT_10G_KAZANIM: TStringField;
    strngfldHafta3IHT_NEK_CERRAHI: TStringField;
    strngfldHafta3DOKTOR_ADI: TStringField;
    dtmfldHafta3KAYIT_TARIHI: TDateTimeField;
    fltfldHafta3KILO_KG: TFloatField;
    fltfldHafta3BOY_CM: TFloatField;
    fltfldHafta3BAS_CEVRESI_CM: TFloatField;
    fltfldHafta4HASTA_ID: TFloatField;
    fltfldHafta4HAFTA_NO: TFloatField;
    fltfldHafta4DOSYA_NO: TFloatField;
    fltfldHafta4PROTOKOL_NO: TFloatField;
    dtmfldHafta4IZLEM_TARIHI: TDateTimeField;
    fltfldHafta4GESTASYON_HAFTASI: TFloatField;
    fltfldHafta4DOGUM_KILOSU_GR: TFloatField;
    fltfldHafta4DOGUM_BOYU_CM: TFloatField;
    fltfldHafta4DOGUM_BAS_CEVRESI: TFloatField;
    strngfldHafta4YR_28_HAFTA: TStringField;
    strngfldHafta4YR_1000_GR: TStringField;
    strngfldHafta4YR_NEK_GIS: TStringField;
    strngfldHafta4YR_KONJ_GIS: TStringField;
    strngfldHafta4OR_28_31_HAFTA: TStringField;
    strngfldHafta4OR_IUGR: TStringField;
    strngfldHafta4OR_1000_1500_GR: TStringField;
    strngfldHafta4OR_KONJ_BESLENME: TStringField;
    strngfldHafta4DR_32_35_HAFTA: TStringField;
    strngfldHafta4DR_IUGR_35: TStringField;
    strngfldHafta4DR_TERM: TStringField;
    strngfldHafta4RISK_SEVIYE: TStringField;
    strngfldHafta4IHT_2_HAFTA_KILO: TStringField;
    strngfldHafta4IHT_15_KAYIP: TStringField;
    strngfldHafta4IHT_10G_KAZANIM: TStringField;
    strngfldHafta4IHT_NEK_CERRAHI: TStringField;
    strngfldHafta4DOKTOR_ADI: TStringField;
    dtmfldHafta4KAYIT_TARIHI: TDateTimeField;
    fltfldHafta4KILO_KG: TFloatField;
    fltfldHafta4BOY_CM: TFloatField;
    fltfldHafta4BAS_CEVRESI_CM: TFloatField;
    fltfldHafta5HASTA_ID: TFloatField;
    fltfldHafta5HAFTA_NO: TFloatField;
    fltfldHafta5DOSYA_NO: TFloatField;
    fltfldHafta5PROTOKOL_NO: TFloatField;
    dtmfldHafta5IZLEM_TARIHI: TDateTimeField;
    fltfldHafta5GESTASYON_HAFTASI: TFloatField;
    fltfldHafta5DOGUM_KILOSU_GR: TFloatField;
    fltfldHafta5DOGUM_BOYU_CM: TFloatField;
    fltfldHafta5DOGUM_BAS_CEVRESI: TFloatField;
    strngfldHafta5YR_28_HAFTA: TStringField;
    strngfldHafta5YR_1000_GR: TStringField;
    strngfldHafta5YR_NEK_GIS: TStringField;
    strngfldHafta5YR_KONJ_GIS: TStringField;
    strngfldHafta5OR_28_31_HAFTA: TStringField;
    strngfldHafta5OR_IUGR: TStringField;
    strngfldHafta5OR_1000_1500_GR: TStringField;
    strngfldHafta5OR_KONJ_BESLENME: TStringField;
    strngfldHafta5DR_32_35_HAFTA: TStringField;
    strngfldHafta5DR_IUGR_35: TStringField;
    strngfldHafta5DR_TERM: TStringField;
    strngfldHafta5RISK_SEVIYE: TStringField;
    strngfldHafta5IHT_2_HAFTA_KILO: TStringField;
    strngfldHafta5IHT_15_KAYIP: TStringField;
    strngfldHafta5IHT_10G_KAZANIM: TStringField;
    strngfldHafta5IHT_NEK_CERRAHI: TStringField;
    strngfldHafta5DOKTOR_ADI: TStringField;
    dtmfldHafta5KAYIT_TARIHI: TDateTimeField;
    fltfldHafta5KILO_KG: TFloatField;
    fltfldHafta5BOY_CM: TFloatField;
    fltfldHafta5BAS_CEVRESI_CM: TFloatField;

    procedure lblGunTarihClick(Sender: TObject);
    procedure PaintBoxYuksekRiskPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure RiskCheckBoxPropertiesChange(Sender: TObject);

    procedure RefreshRiskCheckBox(ACheck: TcxDBCheckBox);

    procedure SetHaftaAktif(AHafta: Integer);


    function GetAktifHafta: Integer;
    function GetAktifHaftaFromQueries: Integer;

  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

const
  TEST_DOSYA_NO    = 12;
  TEST_PROTOKOL_NO = 400;
{$R *.dfm}

function TForm2.GetAktifHaftaFromQueries: Integer;
begin
  if not qrHafta5.IsEmpty then Result := 5 else
  if not qrHafta4.IsEmpty then Result := 4 else
  if not qrHafta3.IsEmpty then Result := 3 else
  if not qrHafta2.IsEmpty then Result := 2 else
  if not qrHafta1.IsEmpty then Result := 1 else
    Result := 1;

  // Bir sonraki haftaya giriş yapılacak
  if Result < 5 then
    Inc(Result);
end;


procedure TForm2.SetHaftaAktif(AHafta: Integer);
var
  I: Integer;

  procedure SetCtrlEnabled(const BaseName: string; AEnabled: Boolean);
  var
    C: TComponent;
  begin
    C := FindComponent(BaseName);
    if Assigned(C) and (C is TControl) then
      TControl(C).Enabled := AEnabled;
  end;

  function IsActiveWeek(AIndex: Integer): Boolean;
  begin
    Result := (AIndex = AHafta);
  end;

begin
  // Güvenlik
  if AHafta < 1 then AHafta := 1;
  if AHafta > 5 then AHafta := 5;

  for I := 1 to 5 do
  begin
    // =====================
    // ÖLÇÜMLER
    // =====================
    SetCtrlEnabled('edtKiloGun' + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('edtBoyGun'  + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('edtBasGun'  + IntToStr(I), IsActiveWeek(I));

    // =====================
    // YÜKSEK RİSK
    // =====================
    SetCtrlEnabled('YR_C28G'   + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('YR_C1000G' + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('YR_CNEKG'  + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('YR_CGISG'  + IntToStr(I), IsActiveWeek(I));

    // =====================
    // ORTA RİSK
    // =====================
    SetCtrlEnabled('OR_C28G'         + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('OR_CIUGRG'       + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('OR_C1000G'       + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('OR_CKONJENITALG' + IntToStr(I), IsActiveWeek(I));

    // =====================
    // DÜŞÜK RİSK
    // =====================
    SetCtrlEnabled('DR_C32G'   + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('DR_CIUGRG' + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('DR_C37G'   + IntToStr(I), IsActiveWeek(I));

    // =====================
    // LABEL / SKOR
    // =====================
    SetCtrlEnabled('scorGun' + IntToStr(I), IsActiveWeek(I));
    SetCtrlEnabled('DR_GUN'  + IntToStr(I), IsActiveWeek(I));
  end;
end;


function TForm2.GetAktifHafta: Integer;
var
  Bmk: TBookmark;
begin
  Result := 0;

  if (not qrrastgeleHasta.Active) or qrrastgeleHasta.IsEmpty then
    Exit;

  Bmk := qrrastgeleHasta.GetBookmark;
  try
    qrrastgeleHasta.First;
    while not qrrastgeleHasta.Eof do
    begin
      // Aktif hafta = RISK_SEVIYE boş olan ilk kayıt
      if Trim(qrrastgeleHasta.FieldByName('RISK_SEVIYE').AsString) = '' then
      begin
        Result := Trunc(qrrastgeleHasta.FieldByName('HAFTA_NO').AsFloat);
        Exit;
      end;
      qrrastgeleHasta.Next;
    end;

    // Hepsi doluysa son haftayı aktif kabul et
    qrrastgeleHasta.Last;
    Result := Trunc(qrrastgeleHasta.FieldByName('HAFTA_NO').AsFloat);
  finally
    qrrastgeleHasta.GotoBookmark(Bmk);
    qrrastgeleHasta.FreeBookmark(Bmk);
  end;
end;


procedure TForm2.btnKaydetClick(Sender: TObject);
var
  AktifHafta: Integer;
  Q: TOraQuery;
  DosyaNo, ProtokolNo: Integer;
begin
  AktifHafta := GetAktifHaftaFromQueries;

  case AktifHafta of
    1: Q := qrHafta1;
    2: Q := qrHafta2;
    3: Q := qrHafta3;
    4: Q := qrHafta4;
    5: Q := qrHafta5;
  else
    Exit;
  end;

  // Eğer kayıt yoksa INSERT
  if Q.IsEmpty then
    Q.Append
  else
    Q.Edit;

  // ⚠️ Param değil, FIELD
  DosyaNo    := Q.ParamByName('DOSYA_NO').AsInteger; // ❌ SİL
  ProtokolNo := Q.ParamByName('PROTOKOL_NO').AsInteger; // ❌ SİL

  // ✅ DOĞRUSU
  Q.FieldByName('DOSYA_NO').AsInteger    := TEST_DOSYA_NO;
  Q.FieldByName('PROTOKOL_NO').AsInteger := TEST_PROTOKOL_NO;
  Q.FieldByName('HAFTA_NO').AsInteger    := AktifHafta;
  Q.FieldByName('IZLEM_TARIHI').AsDateTime := Date;

  Q.Post;

  // Yeniden oku
  Q.Close;
  Q.Open;

  SetHaftaAktif(GetAktifHaftaFromQueries);

  ShowMessage(
    'Kayıt alındı.' + sLineBreak +
    'Hafta: ' + IntToStr(AktifHafta)
  );
end;



procedure TForm2.FormShow(Sender: TObject);
var
  DosyaNo, ProtokolNo: Integer;
  Msg: string;

  procedure OpenHafta(Q: TOraQuery; AHafta: Integer);
  begin
    if Q.Active then Q.Close;

    Q.ParamByName('DOSYA_NO').AsInteger    := DosyaNo;
    Q.ParamByName('PROTOKOL_NO').AsInteger := ProtokolNo;
    Q.ParamByName('HAFTA_NO').AsInteger    := AHafta;

    Q.Open;
  end;

  function HaftaDurum(Q: TOraQuery): string;
  begin
    if Q.IsEmpty then
      Result := 'BOŞ'
    else
      Result := 'DOLU';
  end;

var
  AktifHafta: Integer;
begin
  if not Orsn1.Connected then
    Orsn1.Connected := True;

  // ======================
  // TEST DEĞERLERİ
  // ======================
  DosyaNo    := TEST_DOSYA_NO;
  ProtokolNo := TEST_PROTOKOL_NO;

  // ======================
  // HAFTALARI AÇ
  // ======================
  OpenHafta(qrHafta1, 1);
  OpenHafta(qrHafta2, 2);
  OpenHafta(qrHafta3, 3);
  OpenHafta(qrHafta4, 4);
  OpenHafta(qrHafta5, 5);

  // ======================
  // AKTİF HAFTA
  // ======================
  AktifHafta := GetAktifHaftaFromQueries;
  SetHaftaAktif(AktifHafta);

  // ======================
  // DEBUG BİLGİ
  // ======================
  Msg :=
    'DOSYA_NO: ' + IntToStr(DosyaNo) + sLineBreak +
    'PROTOKOL_NO: ' + IntToStr(ProtokolNo) + sLineBreak + sLineBreak +

    '1. Hafta: ' + HaftaDurum(qrHafta1) + sLineBreak +
    '2. Hafta: ' + HaftaDurum(qrHafta2) + sLineBreak +
    '3. Hafta: ' + HaftaDurum(qrHafta3) + sLineBreak +
    '4. Hafta: ' + HaftaDurum(qrHafta4) + sLineBreak +
    '5. Hafta: ' + HaftaDurum(qrHafta5) + sLineBreak + sLineBreak +

    'Aktif (giriş yapılacak) hafta: ' + IntToStr(AktifHafta);

  ShowMessage(Msg);
end;




procedure TForm2.lblGunTarihClick(Sender: TObject);
begin
  // TODO
end;


procedure TForm2.PaintBoxYuksekRiskPaint(Sender: TObject);
var
  R: TRect;
  LF: TLogFont;
  Txt: string;
  X, Y: Integer;
begin
  Txt := '2.RİSK BELİRLEME';

  with PaintBoxYuksekRisk.Canvas do
  begin
    Brush.Color := clBtnFace;
    FillRect(PaintBoxYuksekRisk.ClientRect);

    Font.Name := 'Segoe UI';
    Font.Size := 9;
    Font.Style := [fsBold];

    SetGraphicsMode(Handle, GM_ADVANCED);

    GetObject(Font.Handle, SizeOf(LF), @LF);
    LF.lfEscapement  := 900;
    LF.lfOrientation := 900;
    Font.Handle := CreateFontIndirect(LF);

    R := PaintBoxYuksekRisk.ClientRect;

    X := (R.Right - TextHeight(Txt)) div 2;
    Y := (R.Bottom + TextWidth(Txt)) div 2;

    TextOut(X, Y, Txt);
  end;
end;


procedure TForm2.RefreshRiskCheckBox(ACheck: TcxDBCheckBox);
begin
  if not Assigned(ACheck) then Exit;

  ACheck.ParentBackground := False;

  if ACheck.Checked then
  begin
    ACheck.Style.Color := clRed;
    ACheck.Style.Font.Style := [fsBold];
  end
  else
  begin
    ACheck.Style.Color := clWindow;
    ACheck.Style.Font.Style := [];
  end;
end;


procedure TForm2.RiskCheckBoxPropertiesChange(Sender: TObject);
var
  C: TcxDBCheckBox;
begin
  if not (Sender is TcxDBCheckBox) then Exit;
  C := TcxDBCheckBox(Sender);

  // DataSource üzerinden dataset Edit moduna alınır
  if Assigned(C.DataBinding.DataSource)
     and Assigned(C.DataBinding.DataSource.DataSet)
     and not (C.DataBinding.DataSource.DataSet.State in dsEditModes) then
    C.DataBinding.DataSource.DataSet.Edit;

  RefreshRiskCheckBox(C);
end;

end.
