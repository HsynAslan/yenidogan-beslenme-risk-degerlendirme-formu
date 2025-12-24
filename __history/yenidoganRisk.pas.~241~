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
  cxMaskEdit, cxButtonEdit, MemDS, DBAccess, Ora, OraCall, cxCheckBox, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    scrMain: TcxScrollBox;
    grpAna1: TcxGroupBox;
    grpAna2: TcxGroupBox;
    grdpnl1: TGridPanel;
    grpAna3: TcxGroupBox;
    grdpnl2: TGridPanel;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    grpOlcum: TcxGroupBox;
    cxlbl5: TcxLabel;
    grdpnl3: TGridPanel;
    cxlbl6: TcxLabel;
    cxlbl8: TcxLabel;
    edtKiloGun1: TcxDBTextEdit;
    edtKiloGun2: TcxDBTextEdit;
    edtKiloGun3: TcxDBTextEdit;
    edtKiloGun4: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    edtBoyGun1: TcxDBTextEdit;
    edtBoyGun2: TcxDBTextEdit;
    edtBoyGun3: TcxDBTextEdit;
    edtBoyGun4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    edtBasGun1: TcxDBTextEdit;
    edtBasGun2: TcxDBTextEdit;
    edtBasGun3: TcxDBTextEdit;
    edtBasGun4: TcxDBTextEdit;
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
    btnKaydet: TButton;
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
    grdpnl20: TGridPanel;
    grdpnl21: TGridPanel;
    grdpnl23: TGridPanel;
    grdpnl24: TGridPanel;
    grdpnl26: TGridPanel;
    grdpnl27: TGridPanel;
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
    cxlbl27: TcxLabel;
    grdpnl29: TGridPanel;
    lbl16: TLabel;
    cxlbl28: TcxLabel;
    cxlbl29: TcxLabel;
    lbl17: TLabel;
    scorGun1: TcxDBLabel;
    scorGun2: TcxDBLabel;
    scorGun3: TcxDBLabel;
    scorGun4: TcxDBLabel;
    lblTarih1: TcxDBLabel;
    lblTarih2: TcxDBLabel;
    lblTarih3: TcxDBLabel;
    lblTarih4: TcxDBLabel;
    edtDestasyon: TcxDBTextEdit;
    edtDTartisi: TcxDBTextEdit;
    edtDBoyu: TcxDBTextEdit;
    edtDBas: TcxDBTextEdit;
    edtDRGun1: TcxDBTextEdit;
    edtDRGun2: TcxDBTextEdit;
    edtDRGun3: TcxDBTextEdit;
    edtDRgun4: TcxDBTextEdit;
    qrHafta1: TOraQuery;
    qrHafta2: TOraQuery;
    qrHafta3: TOraQuery;
    qrHafta4: TOraQuery;
    dsHafta1: TOraDataSource;
    dsHafta2: TOraDataSource;
    dsHafta3: TOraDataSource;
    dsHafta4: TOraDataSource;
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
    intgrfldHafta1FORM_NO: TIntegerField;
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
    intgrfldHafta2FORM_NO: TIntegerField;
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
    intgrfldHafta3FORM_NO: TIntegerField;
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
    intgrfldHafta4FORM_NO: TIntegerField;
    qryMaxHafta: TOraQuery;
    fltfldMaxHaftaFORM_NO: TFloatField;
    fltfldMaxHaftaHAFTA_NO: TFloatField;

    procedure lblGunTarihClick(Sender: TObject);
    procedure PaintBoxYuksekRiskPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure RiskCheckBoxPropertiesChange(Sender: TObject);

    procedure RefreshRiskCheckBox(ACheck: TcxDBCheckBox);

    procedure SetHaftaAktif(AHafta: Integer);
    procedure CalcAktifFormHafta;
    procedure OpenHafta(Q: TOraQuery; AHafta: Integer);
    

  private
    { Private declarations }

  FDosyaNo    : Integer;
  FProtokolNo : Integer;
  FAktifForm  : Integer;
  FAktifHafta : Integer;

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

procedure TForm2.OpenHafta(Q: TOraQuery; AHafta: Integer);
begin
  Q.Close;
  Q.ParamByName('DOSYA_NO').AsInteger := FDosyaNo;
  Q.ParamByName('PROTOKOL_NO').AsInteger := FProtokolNo;
  Q.ParamByName('FORM_NO').AsInteger := FAktifForm;
  Q.ParamByName('HAFTA_NO').AsInteger := AHafta;
  Q.Open;

  if Q.IsEmpty then
  begin
    Q.Append;
    Q.FieldByName('DOSYA_NO').AsInteger := FDosyaNo;
    Q.FieldByName('PROTOKOL_NO').AsInteger := FProtokolNo;
    Q.FieldByName('FORM_NO').AsInteger := FAktifForm;
    Q.FieldByName('HAFTA_NO').AsInteger := AHafta;
    Q.FieldByName('IZLEM_TARIHI').AsDateTime := Date;
  end;
end;


procedure TForm2.CalcAktifFormHafta;
begin
  qryMaxHafta.Close;
  qryMaxHafta.ParamByName('DOSYA_NO').AsInteger := FDosyaNo;
  qryMaxHafta.ParamByName('PROTOKOL_NO').AsInteger := FProtokolNo;
  qryMaxHafta.Open;

  FAktifForm  := qryMaxHafta.FieldByName('FORM_NO').AsInteger;
  FAktifHafta := qryMaxHafta.FieldByName('HAFTA_NO').AsInteger + 1;

  if FAktifHafta > 4 then
  begin
    FAktifHafta := 1;
    Inc(FAktifForm);
  end;

  if FAktifForm = 0 then
    FAktifForm := 1;
end;


procedure TForm2.SetHaftaAktif(AHafta: Integer);
var
  I: Integer;

  procedure En(const N: string; E: Boolean);
  var
    C: TComponent;
  begin
    C := FindComponent(N);
    if (C is TControl) then
      TControl(C).Enabled := E;
  end;

begin
  for I := 1 to 4 do
  begin
  En('edtKiloGun' + IntToStr(I), I = AHafta);
  En('edtBoyGun'  + IntToStr(I), I = AHafta);
  En('edtBasGun'  + IntToStr(I), I = AHafta);

  En('YR_C28G' + IntToStr(I), I = AHafta);
  En('YR_C1000G' + IntToStr(I), I = AHafta);
  En('YR_CNEKG' + IntToStr(I), I = AHafta);
  En('YR_CGISG' + IntToStr(I), I = AHafta);

  En('OR_C28G' + IntToStr(I), I = AHafta);
  En('OR_CIUGRG' + IntToStr(I), I = AHafta);
  En('OR_C1000G' + IntToStr(I), I = AHafta);
  En('OR_CKONJENITALG' + IntToStr(I), I = AHafta);

  En('DR_C32G' + IntToStr(I), I = AHafta);
  En('DR_CIUGRG' + IntToStr(I), I = AHafta);
  En('DR_C37G' + IntToStr(I), I = AHafta);
end;

  // 🔒 SABİT ALANLAR: sadece 1. haftada aktif
  En('edtDestasyon', AHafta = 1);
  En('edtDTartisi',  AHafta = 1);
  En('edtDBoyu',     AHafta = 1);
  En('edtDBas',      AHafta = 1);
end;



procedure TForm2.btnKaydetClick(Sender: TObject);
begin
  case FAktifHafta of
    1: if qrHafta1.State in dsEditModes then qrHafta1.Post;
    2: if qrHafta2.State in dsEditModes then qrHafta2.Post;
    3: if qrHafta3.State in dsEditModes then qrHafta3.Post;
    4: if qrHafta4.State in dsEditModes then qrHafta4.Post;
  end;

  ShowMessage(
    Format('Form %d - Hafta %d kaydedildi.',
      [FAktifForm, FAktifHafta])
  );

  Close; // şimdilik kapatalım, sonra otomatik geçiş yaparız
end;




procedure TForm2.FormShow(Sender: TObject);
begin
  if not Orsn1.Connected then
    Orsn1.Connected := True;

  // test için tek yerden
  FDosyaNo    := TEST_DOSYA_NO;
  FProtokolNo := TEST_PROTOKOL_NO;

  CalcAktifFormHafta;

  OpenHafta(qrHafta1, 1);
  OpenHafta(qrHafta2, 2);
  OpenHafta(qrHafta3, 3);
  OpenHafta(qrHafta4, 4);

  SetHaftaAktif(FAktifHafta);
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

  if Assigned(C.DataBinding.DataSource)
     and Assigned(C.DataBinding.DataSource.DataSet)
     and not (C.DataBinding.DataSource.DataSet.State in dsEditModes) then
    C.DataBinding.DataSource.DataSet.Edit;

  RefreshRiskCheckBox(C);
end;


end.
