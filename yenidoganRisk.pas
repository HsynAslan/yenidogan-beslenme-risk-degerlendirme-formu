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
    cxlbl7: TcxLabel;
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
    rastgeleHasta: TOraQuery;
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
    dsHasta: TDataSource;
    lbl1: TLabel;
    grdpnl11: TGridPanel;
    chkYR28Gun1: TcxDBCheckBox;
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

    procedure lblGunTarihClick(Sender: TObject);
    procedure PaintBoxYuksekRiskPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure RiskCheckBoxPropertiesChange(Sender: TObject);

    procedure RefreshRiskCheckBox(ACheck: TcxDBCheckBox);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}




procedure TForm2.btnKaydetClick(Sender: TObject);
var
  AktifHafta, SonHafta, YeniHafta: Integer;
  KiloVar, BoyVar, BasVar: Boolean;
begin
  if not rastgeleHasta.Active then Exit;

  // 🔹 Aktif hafta
  AktifHafta := Trunc(rastgeleHasta.FieldByName('HAFTA_NO').AsFloat);

  // 🔹 En az bir ölçüm girilmiş mi?
  KiloVar := not rastgeleHasta.FieldByName('KILO_KG').IsNull;
  BoyVar  := not rastgeleHasta.FieldByName('BOY_CM').IsNull;
  BasVar  := not rastgeleHasta.FieldByName('BAS_CEVRESI_CM').IsNull;

  // 🔹 Hiçbir şey girilmediyse ilerleme YOK
  if not (KiloVar or BoyVar or BasVar) then
  begin
    ShowMessage('Lütfen en az bir ölçüm giriniz.');
    Exit;
  end;

  // 🔹 Mevcut haftayı kaydet
  if not (rastgeleHasta.State in dsEditModes) then
    rastgeleHasta.Edit;

  rastgeleHasta.Post;

  // 🔹 Son haftayı bul
  rastgeleHasta.Last;
  SonHafta := Trunc(rastgeleHasta.FieldByName('HAFTA_NO').AsFloat);

  // 🔹 Sadece aktif hafta son haftaysa VE 5'ten küçükse yeni hafta aç
  if (AktifHafta = SonHafta) and (SonHafta < 5) then
  begin
    YeniHafta := SonHafta + 1;

    rastgeleHasta.Append;
    rastgeleHasta.FieldByName('HASTA_ID').AsInteger := 1; // test
    rastgeleHasta.FieldByName('HAFTA_NO').AsInteger := YeniHafta;
    rastgeleHasta.FieldByName('DOSYA_NO').AsInteger := 12;
    rastgeleHasta.FieldByName('PROTOKOL_NO').AsInteger := 400;
    rastgeleHasta.FieldByName('IZLEM_TARIHI').AsDateTime := Date;
    rastgeleHasta.Post;

    // ⚠️ ÖNEMLİ: yeni haftaya GEÇMİYORUZ
    rastgeleHasta.Locate('HAFTA_NO', AktifHafta, []);
  end;

  ShowMessage('Kayıt kaydedildi.');
end;



procedure TForm2.FormShow(Sender: TObject);
begin
  // 1) Oracle bağlantısı
  if not Orsn1.Connected then
    Orsn1.Connected := True;

  // 2) Query kapat/aç
  if rastgeleHasta.Active then
    rastgeleHasta.Close;

  // 3) Test hasta parametreleri
  rastgeleHasta.ParamByName('DOSYA_NO').AsInteger := 12;
  rastgeleHasta.ParamByName('PROTOKOL_NO').AsInteger := 400;

  rastgeleHasta.Open;

  // 4) Hiç kayıt yoksa -> 1. hafta oluştur
  if rastgeleHasta.IsEmpty then
  begin
    rastgeleHasta.Append;
    rastgeleHasta.FieldByName('HASTA_ID').AsInteger := 1; // test sabit
    rastgeleHasta.FieldByName('HAFTA_NO').AsInteger := 1;
    rastgeleHasta.FieldByName('DOSYA_NO').AsInteger := 12;
    rastgeleHasta.FieldByName('PROTOKOL_NO').AsInteger := 400;
    rastgeleHasta.FieldByName('IZLEM_TARIHI').AsDateTime := Date;
    rastgeleHasta.Post;

    rastgeleHasta.Close;
    rastgeleHasta.Open;
  end;

  // 5) Her durumda hafta 1 kaydını göster
  rastgeleHasta.Locate('HAFTA_NO', 1, []);



end;



procedure TForm2.lblGunTarihClick(Sender: TObject);
begin
///////
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
    LF.lfEscapement  := 900;  // 90 derece
    LF.lfOrientation := 900;
    Font.Handle := CreateFontIndirect(LF);

    R := PaintBoxYuksekRisk.ClientRect;

    // 🔥 DİKEY YAZI İÇİN GERÇEK MERKEZLEME
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

  // Dataset edit moduna al
  if Assigned(C.DataBinding.DataSource)
     and Assigned(C.DataBinding.DataSource.DataSet)
     and not (C.DataBinding.DataSource.DataSet.State in dsEditModes) then
    C.DataBinding.DataSource.DataSet.Edit;

  // Görsel güncelle
  RefreshRiskCheckBox(C);
end;


end.
