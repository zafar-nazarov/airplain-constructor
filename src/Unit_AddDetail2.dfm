object Form_AddDetail2: TForm_AddDetail2
  Left = 312
  Top = 90
  BorderStyle = bsDialog
  Caption = 'Form_AddDetail2'
  ClientHeight = 572
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object sSpeedButton_OK: TsSpeedButton
    Left = 208
    Top = 536
    Width = 65
    Height = 25
    Hint = 'OK'
    ParentShowHint = False
    ShowHint = True
    OnClick = sSpeedButton_OKClick
    SkinData.SkinSection = 'SPEEDBUTTON'
    ImageIndex = 0
    Images = sAlphaImageList_Small
  end
  object sSpeedButton_Cancel: TsSpeedButton
    Left = 280
    Top = 536
    Width = 65
    Height = 25
    Hint = #1054#1090#1084#1077#1085#1072
    ParentShowHint = False
    ShowHint = True
    OnClick = sSpeedButton_CancelClick
    SkinData.SkinSection = 'SPEEDBUTTON'
    ImageIndex = 1
    Images = sAlphaImageList_Small
  end
  object sPanel1: TsPanel
    Left = 16
    Top = 16
    Width = 481
    Height = 513
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel2: TsLabel
      Left = 25
      Top = 56
      Width = 93
      Height = 15
      Caption = #1063#1072#1089#1090#1100' '#1089#1072#1084#1086#1083#1077#1090#1072
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel6: TsLabel
      Left = 48
      Top = 264
      Width = 97
      Height = 15
      Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1082#1083#1077#1087#1086#1082
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel7: TsLabel
      Left = 30
      Top = 296
      Width = 117
      Height = 15
      Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1103' '#1076#1077#1090#1072#1083#1080
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel8: TsLabel
      Left = 50
      Top = 328
      Width = 94
      Height = 15
      Caption = #1058#1086#1083#1097#1080#1085#1072' '#1087#1072#1082#1077#1090#1072
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel9: TsLabel
      Left = 35
      Top = 352
      Width = 111
      Height = 30
      Caption = #1058#1080#1087' '#1089#1074#1077#1088#1083#1080#1083#1100#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      ParentFont = False
      WordWrap = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel10: TsLabel
      Left = 50
      Top = 432
      Width = 95
      Height = 15
      Caption = #1041#1072#1079#1072' '#1089#1074#1077#1088#1083#1077#1085#1080#1103
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel11: TsLabel
      Left = 16
      Top = 16
      Width = 165
      Height = 30
      Caption = #1058#1080#1087#1086#1088#1072#1079#1084#1077#1088#1099' '#1079#1072#1082#1083#1077#1087#1086#1095#1085#1099#1093' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1081
      ParentFont = False
      WordWrap = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel13: TsLabel
      Left = 27
      Top = 464
      Width = 123
      Height = 30
      Caption = #1041#1072#1079#1086#1074#1072#1103' '#1076#1077#1090#1072#1083#1100' '#1076#1083#1103' '#1089#1074#1077#1088#1083#1077#1085#1080#1103
      ParentFont = False
      WordWrap = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sLabel5: TsLabel
      Left = 43
      Top = 392
      Width = 103
      Height = 30
      Caption = #1058#1080#1087' '#1082#1083#1077#1087#1072#1083#1100#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      ParentFont = False
      WordWrap = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3484708
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object sDBEdit_Ves: TsDBEdit
      Left = 160
      Top = 264
      Width = 137
      Height = 23
      Color = clWhite
      DataField = 'Kol'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sDBEdit_BazEl: TsDBEdit
      Left = 160
      Top = 296
      Width = 289
      Height = 23
      Color = clWhite
      DataField = 'Soedin'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sDBEdit_MetBaz: TsDBEdit
      Left = 160
      Top = 328
      Width = 137
      Height = 23
      Color = clWhite
      DataField = 'Tolsh'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sDBEdit_ElKrep: TsDBEdit
      Left = 160
      Top = 360
      Width = 289
      Height = 23
      Color = clWhite
      DataField = 'Tip_Sver'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sDBEdit_KolElKrep: TsDBEdit
      Left = 160
      Top = 432
      Width = 289
      Height = 23
      Color = clWhite
      DataField = 'Baza_Sver'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sDBLookupComboBox_Parts: TsDBLookupComboBox
      Left = 160
      Top = 56
      Width = 289
      Height = 23
      Color = clWhite
      DataField = 'Part_id'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      KeyField = 'ID_P'
      ListField = 'P_Name'
      ListSource = Form_Main.DataSource1
      ParentFont = False
      TabOrder = 1
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
    end
    object sDBEdit_Code: TsDBEdit
      Left = 192
      Top = 24
      Width = 257
      Height = 23
      Color = clWhite
      DataField = 'Tip_Zak'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sDBEdit1: TsDBEdit
      Left = 160
      Top = 464
      Width = 289
      Height = 23
      Color = clWhite
      DataField = 'Baza_Detal'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sGroupBox1: TsGroupBox
      Left = 16
      Top = 88
      Width = 441
      Height = 161
      Caption = #1064#1080#1092#1088' '#1079#1072#1082#1083#1077#1087#1082#1080
      Color = 16776176
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      SkinData.CustomFont = True
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel1: TsLabel
        Left = 64
        Top = 24
        Width = 58
        Height = 15
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083
        ParentFont = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = 3484708
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabel12: TsLabel
        Left = 96
        Top = 56
        Width = 21
        Height = 15
        Caption = #1058#1080#1087
        ParentFont = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = 3484708
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabel3: TsLabel
        Left = 73
        Top = 90
        Width = 50
        Height = 15
        Caption = #1044#1080#1072#1084#1077#1090#1088
        ParentFont = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = 3484708
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabel4: TsLabel
        Left = 84
        Top = 122
        Width = 38
        Height = 15
        Caption = #1044#1083#1080#1085#1072
        ParentFont = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = 3484708
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sDBEdit_Name: TsDBEdit
        Left = 140
        Top = 24
        Width = 241
        Height = 23
        Color = clWhite
        DataField = 'Material'
        DataSource = Form_Main.DataSource3
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sDBEdit_Nomer: TsDBEdit
        Left = 140
        Top = 56
        Width = 241
        Height = 23
        Color = clWhite
        DataField = 'Sh_tip'
        DataSource = Form_Main.DataSource3
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sDBEdit_Kol: TsDBEdit
        Left = 140
        Top = 90
        Width = 137
        Height = 23
        Color = clWhite
        DataField = 'Diametr'
        DataSource = Form_Main.DataSource3
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sDBEdit_Material: TsDBEdit
        Left = 140
        Top = 122
        Width = 137
        Height = 23
        Color = clWhite
        DataField = 'Dlina'
        DataSource = Form_Main.DataSource3
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object sDBEdit2: TsDBEdit
      Left = 160
      Top = 400
      Width = 289
      Height = 23
      Color = clWhite
      DataField = 'Tip_Klep'
      DataSource = Form_Main.DataSource3
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
  end
  object sAlphaImageList_Small: TsAlphaImageList
    DrawingStyle = dsTransparent
    Height = 20
    Width = 20
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000003C2494441544889D5956B4C9B551CC69FF3B6F6F2D276A5F402B40C18
          D6A1834C8145A7B3B82C6E2C7E70C9E69594654B16F58B4B96252626DB92A989
          C648E24450BC643330A7036105DA0175A86C323A50C66EC2E84BED8DD20BEB0A
          08C2DB1EBFB8656E15E72E1FF624E7D339E7F7FCFFE79F3C87504A7137C5DC55
          FA3D6520AB212559BBB53F66BDABD2DF7103F673529C17CEEF6DD872C494CB18
          ADD2D748E6D54D4AE96D2DE967282978CB18EF3A6FA73B0F6DA7AD8347A8D4CC
          9C116D4226A5F4F63A48A92545B9FEBC931F6EAA662C679B3010ECC3F30736E2
          ED8A770AC4F3129B783D51DEB2414A3529CE195F72EAA3976A0496E1460C4EFF
          829F274F2091C9C3E66A819C510AE2F3D7CD407748A254EC15D56A0F4A8A1682
          B39F90E2C513398E7DE66AC6E2398C73890138F81E487285D011352E748C3AA9
          706E1D6FA7D1AB066C2D91F35E341F7BA57B9BFA728625653F599E0C9E5A474A
          7262B98EAA2D354CEB7813861343383B7F1A697A25942115C66C132391A93193
          FFDB880FF8BB034DA558AE8BEA9A1A5F6829E5FF9883DD7C5CBF289A6A49AD67
          0AAF856734B045592163EFC79B3F65DA436DF0F02E8CF0BF419BAE81D42D87A7
          2DCC114162F58C95FAAFDC61A4BB89C2C8175ADE7FB6720D8D03AE3917BAC7BA
          E0D836B058115359F5DFC90A0020A725B54817C83E5565AE61BE9FB0C14F3DE0
          E84568D235C0B00823161FC7C812A6591BF55E5B1443FF845A46E485CDDE06FC
          10ED84502CC03433858E712BBA37F71930246A7FA273F99A82F00AC7BEF22AA6
          EB722702C407371985265D037E18B87094E344F909D36C23F55DFFA4CCEC7B94
          8B21521E1D980E1FF5B5C07AA91909411C71C13CAC91669CD8DE97291B55DB77
          3DB747D03D750C41811F3E81071AAD1A3317790CB60E39D9D5D434F5C18D7000
          2057D2347BA776BD44C4D629D74A54066D161E95AF825CA8409CE1B152F124EC
          311B82340057DC09562A45D01945CF177D9CB2ECBE52F786983719FC1F060020
          7B8394C9C48ABA87372E4B6355523C207A0819223D12248E1002F0D0DF912265
          E17507D153DBC7E56CD098FA573993569ED40000E495645D4A4C595F6A7E3C4D
          922E848AAA2113CA112401B062161CE741CF97FDDC23E54653FB83BD0BC28124
          6137B983B62796CCBC7CFC6B4748382901232398164FC1203660CC1546FF8133
          CEA75F5F7953F0A4060010AC98ED600B990A7BDD4F11C92539969142F8DD61FC
          FAD5796EEBAE179FAAD7B6DD141CC0C269BAA27B69D9D2CABCC8ABA7B7D2FCBD
          F73BBFA1FBF5FF376DFFF3C0DA738F3D637833E3E41EBA23FB56E2FC8621DF69
          DD3B7FF2BFE92FAC182EF3D891E9920000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000061449444154488985965D6C14D719869F73CECCECEE78D75EDB710890
          181688018B165A0A04E2A634486DA55856202082A28A564D4920960817845C10
          291788424451D564D34051A4D68D80486962172A414AEB9ACA11445553A090A8
          AA545A290AC6EBB5BDB33FF3774E2FBC76D286A8AF343A1773F43E33FABEF3BD
          471863B8930E1C3C985CA8F5AEB4D68DCAB6B4920A210004DA18E238260E43E9
          2935F90FC8BFB07FBF7F271F7127C0DEE79F4F75F9FE9B8FAC7EA0DB0A016181
          5420040803C46022109A08F8EDF0F0D921D7DD72E4F0E1EAFF053CDDDBEB7EBD
          563BBDA9B3B33B252C8824A8641D2240682002114EADCAA256ABF1EBAB57CFFC
          3195DA7AECD5572B5F087862FBF65457ADF6E677172FEE4E038421580E481BA4
          F5E91F080D683006B406C7A1ECFBFCEADAB5DF0CA6525B4FF6F5553F07E8D9B8
          D15D5B2E9F7E6AC9D2EE962884389EDA2125249353E65242BD0E080141300550
          0A6C9BB130E4E757AE9C194AA7B79EEDEFAFCC00D66FD8E0AE1A1F3FBD736967
          F72CA351718CF67D86A208A914EB13099C74BAFE4953A0B052E10F950ADA181E
          725D443249E43814AA557EF6C1076786B3D9AD1707072B62F5DAB599DCC8C8C9
          BDF7DFFFC83D96428611D46AFCD971F8EAF1E30821B8B673275D5A934AA74108
          AA950A178560593E8F1082BF3CF30C2B8C01D7453B0EB72627F9E9F5EB676EB4
          B53DA116B4B4F4FE707EAEB7A954A25A2E1357AB7CD8DACA575E7E99390B1690
          C96671BBBA78FFEC595A0B056A9EC77022C197F379E6CC9F4FA6A989CCBA75FC
          75709054A18057AD22A5A4BDB5B5E3D2AD5B236AAE6D7F67991F7CC30F438228
          A2522AB1E8C92769DFB061A6F8996C16F7C107B9FCCE3BFC5B08569C38C1EC5C
          6EE67D3A9BC5A9D5B87DE10235632857AB78A3A30C178BC39608C37834F09910
          8234E002DEE1C3D8D92CF76EDA3463323B9763F51B6F8031B4CD9BF75FAD3DD2
          DFCFBF0E1DC2078289090263F083001145DAD261C8C751846F0CCD4023D01045
          4CF4F6F290D6B46FDE4C1886186368696F072008028410D8B6CD276FBDC5D5DD
          BB0984A06259948CA10C186388A3084B6BCD4818E2698D060C208440C5317FDA
          B58B55A512773DBA11210594CB33AD6B8C61626080EBFBF6510302CBA21C044C
          0063800D750030393ECE2DDF2794124F083C29691682C94A8589A347F9D69A35
          34B4B6A2EB67432A45B958E4C2D1A3E8D1518CEB528B22268D615C6B3ED19A4C
          2281510A4B2B4583EF735718D20048C0078A80DDD9C99AD75E43A6337893934C
          1F4A2104CA755999CFF3FB1D3BA85DBF4E0C4C021E1003DAB6318E838C2D8B16
          21C801F38179C02CE0EE8E0EBE99CF936ABB9B52710CCFF3308E038E83E77994
          8A45DCB636BAF279AC8E0E14D02C04B38076A019886D1B195896CA6ACD5CA04D
          29B242D0B87C39AB8E1CC16ECA325118A5542AA1328DC4E7CF139D3B87CC6428
          791E1385027653135F3BF263D22B56D02404ADB6CD3D42903186502929EDE6E6
          7167EEBD343B0E0D8E434A4AD66ED942EB92A5146F8F4C993735E15E1CE29FBB
          7773F3D967490F0DA11A9B28954A146FDFA665C962D63DF618AE943424126413
          09983D1BBBA56552CD5FB0E06F1F4E8C2F5BE4388BE74849329120BE7C9939B9
          1CA55C0E994C92BB7285C29E3DB89645835204E7CF33E74BCB28B4B723934966
          BFF71E23070FE2D836AE6DF3713ACD801003A6B9F985E9619752376F9E7A3C08
          7A3AA308EDFBB85232EBD021945278CF3D07C6A06C1B01E830440841C34B2F11
          C73163FBF651AB8FED2BB6CD29C7E9AFDE77DFB68B8383D59971FDE8E6CD2E1F
          7D7472BBE7F52C3786300C4918832D0452082CCB427E263B741CA3B5260602C0
          B26DDE1782BE8686017FE1C26D6707063E1DD7D37ABAB73759B874E9F4F7C6C6
          7AD62B85AF3536600981AAB7A7A8EFD7803686C8181C29F99DD6FC329BED7757
          AE7CFCF5E3C76B9F0B9C69ED7FF145F7C6BBEF9EDC3132D2F36DC7F94CD0D443
          665AD369A635E78280136D6D038B1E7E78DB8F0E1CF8E2C89CD64F5E792535F4
          F6DBA77E303EDE33AF5C2625254921B0EB80D818FCFA73339DE65863E3C003DD
          DD5BF7EED953FB5FAF3B02007ED1D797F8FB8D1B4F996231D3AC94C90841B25E
          8F486BAA5A53D25A989696D2AC8E8E63DFDFBEFD8ED796FF00D6EEC437582751
          0D0000000049454E44AE426082}
      end>
    Left = 468
    Top = 10
    Bitmap = {}
  end
end
