object Form1: TForm1
  Left = 95
  Top = 137
  Width = 688
  Height = 338
  Caption = 'Sonzeira  3.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object AM1: TActiveMovie
    Left = 19
    Top = 89
    Width = 266
    Height = 50
    TabOrder = 6
    OnOpenComplete = AM1OpenComplete
    ControlData = {
      21433412080000007E1B00002B050000A09F580501000000FFFF000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000FFFFFFFFFFFFFFFF
      FFFF0000010000000000000000000000000000000000F0BF0100000001000000
      0000000000000000FFFFFFFFFF0000000000FFFF000000000000F03F}
  end
  object AM2: TActiveMovie
    Left = 19
    Top = 18
    Width = 266
    Height = 50
    TabOrder = 7
    OnOpenComplete = AM2OpenComplete
    ControlData = {
      21433412080000007E1B00002B050000A09F580501000000FFFF000000000000
      000000000000FFFFFFFFFFFFFFFF00000000000000000000FFFFFFFFFFFFFFFF
      FFFF0000010000000000000000000000000000000000F0BF0100000001000000
      0000000000000000FFFFFFFFFF0000000000FFFF000000000000F03F}
  end
  object Panel1: TPanel
    Left = 2
    Top = 2
    Width = 299
    Height = 149
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object DCB: TDriveComboBox
      Left = 4
      Top = 5
      Width = 136
      Height = 19
      Cursor = crHandPoint
      Color = clWhite
      DirList = DLB
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DLB: TDirectoryListBox
      Left = 4
      Top = 26
      Width = 136
      Height = 119
      Cursor = crHandPoint
      Color = clWhite
      FileList = FLB
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
    end
    object FLB: TFileListBox
      Left = 142
      Top = 27
      Width = 153
      Height = 118
      Cursor = crHandPoint
      Color = clWhite
      FileEdit = Edit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      OnDblClick = Adicionar
    end
    object Edit2: TEdit
      Left = 144
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '*.*'
      Visible = False
    end
    object FilterComboBox1: TFilterComboBox
      Left = 143
      Top = 4
      Width = 151
      Height = 21
      FileList = FLB
      Filter = 'MP3|*.mp3|WAV|*.wav|MIDI|*.Mid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = FilterComboBox1Exit
    end
  end
  object Panel3: TPanel
    Left = 2
    Top = 154
    Width = 678
    Height = 150
    BevelInner = bvLowered
    Caption = 'Panel3'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 596
      Height = 141
      Cursor = crHandPoint
      Color = clWhite
      DataSource = dsDados
      FixedColor = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SBTocarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Endereco'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tempo'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 518
    Top = 7
    Width = 161
    Height = 55
    Caption = ' Configura'#231#227'o '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Panel5: TPanel
      Left = 6
      Top = 14
      Width = 149
      Height = 34
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 4
        Top = 10
        Width = 64
        Height = 13
        Caption = 'Tempo Entre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 73
        Top = 6
        Width = 73
        Height = 21
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        Text = '0'
        OnChange = ComboBox1Change
        Items.Strings = (
          '100'
          '200'
          '300'
          '400'
          '500'
          '600'
          '700'
          '800'
          '900'
          '1000'
          '1100'
          '1200'
          '1300'
          '1400'
          '1500'
          '1600'
          '1700'
          '1800'
          '1900'
          '2000'
          '2100'
          '2200'
          '2300'
          '2400'
          '2500'
          '2600'
          '2700'
          '2800'
          '2900'
          '3000'
          '3100'
          '3200'
          '3300'
          '3400'
          '3500'
          '3600'
          '3700'
          '3800'
          '3900'
          '4000'
          '4100'
          '4200'
          '4300'
          '4400'
          '4500'
          '4600'
          '4700'
          '4800'
          '4900'
          '5000'
          '5100'
          '5200'
          '5300'
          '5400'
          '5500'
          '5600'
          '5700'
          '5800'
          '5900'
          '6000'
          '6100'
          '6200'
          '6300'
          '6400'
          '6500'
          '6600'
          '6700'
          '6800'
          '6900'
          '7000'
          '7100'
          '7200'
          '7300'
          '7400'
          '7500'
          '7600'
          '7700'
          '7800'
          '7900'
          '8000'
          '8100'
          '8200'
          '8300'
          '8400'
          '8500'
          '8600'
          '8700'
          '8800'
          '8900'
          '9000'
          '9100'
          '9200'
          '9300'
          '9400'
          '9500'
          '9600'
          '9700'
          '9800'
          '9900'
          '10000')
      end
    end
  end
  object Panel6: TPanel
    Left = 519
    Top = 66
    Width = 160
    Height = 85
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 3
    object SpeedButton4: TSpeedButton
      Left = 3
      Top = 4
      Width = 77
      Height = 33
      Cursor = crHandPoint
      Caption = '&Excluir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 80
      Top = 3
      Width = 77
      Height = 34
      Cursor = crHandPoint
      Caption = '&Limpar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SBTocar: TSpeedButton
      Left = 2
      Top = 39
      Width = 79
      Height = 42
      Cursor = crHandPoint
      Caption = '&Tocar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFF3333F333333300033339333333337773F33733333330008033
        933333333737F7F37333333307078733333933337337373F3337333077088803
        33933337F37F337F3373333077088803393333F7337FF37F3733300777008803
        9333377F33773F7F733307088808087333337F7F337F7F7F3FFF070777080873
        99997F7F337F7F7F77770808880808733333737F337F737F3F33300888008803
        93333773F377337F73F333308807880339333337F37F337F373F333088077803
        339333373F73F37333733333087777333339333373F7F7F33F37333330807033
        933333333737F73373F333333300033339333333337773333733}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SBTocarClick
    end
    object SpeedButton3: TSpeedButton
      Left = 81
      Top = 39
      Width = 76
      Height = 42
      Cursor = crHandPoint
      Caption = '&Sair'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton3Click
    end
  end
  object Panel7: TPanel
    Left = 606
    Top = 158
    Width = 69
    Height = 142
    BevelInner = bvLowered
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 303
    Top = 2
    Width = 210
    Height = 149
    BevelInner = bvLowered
    TabOrder = 5
    object Progress1: TGauge
      Left = 5
      Top = 120
      Width = 199
      Height = 20
      BackColor = clBlack
      Color = clBtnFace
      ForeColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Progress = 0
    end
    object Panel9: TPanel
      Left = 4
      Top = 74
      Width = 201
      Height = 41
      BevelInner = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object Stop: TSpeedButton
        Left = 2
        Top = 4
        Width = 38
        Height = 34
        Cursor = crHandPoint
        Hint = 'Stop'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FFFFF337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F33777773337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        OnClick = StopClick
      end
      object Button1: TSpeedButton
        Left = 160
        Top = 4
        Width = 38
        Height = 34
        Cursor = crHandPoint
        Hint = 'Fade Out'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton6Click
      end
      object Retroceder: TSpeedButton
        Left = 80
        Top = 4
        Width = 41
        Height = 34
        Cursor = crHandPoint
        Hint = 'Retroceder'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = RetrocederClick
        OnMouseDown = RetrocederMouseDown
        OnMouseUp = RetrocederMouseUp
      end
      object Avancar: TSpeedButton
        Left = 121
        Top = 4
        Width = 39
        Height = 34
        Cursor = crHandPoint
        Hint = 'Avan'#231'ar'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = AvancarClick
        OnMouseDown = AvancarMouseDown
        OnMouseUp = AvancarMouseUp
      end
      object Pause: TSpeedButton
        Left = 40
        Top = 4
        Width = 39
        Height = 34
        Cursor = crHandPoint
        Hint = 'Pause'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FF3FF337F3E0F330030033
          70E337F3377F77F337F3E0F33003003370E337F3377F77F337F3E0F330030033
          70E337F3377F77F337F3E0F33003003370E337F3377F77F337F3E0F330030033
          70E337F33773773337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        OnClick = PauseClick
      end
    end
    object Panel11: TPanel
      Left = 4
      Top = 4
      Width = 201
      Height = 65
      Color = clBlack
      TabOrder = 1
      object MEDisplay: TMaskEdit
        Left = 48
        Top = 21
        Width = 94
        Height = 38
        AutoSize = False
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '00:00'
      end
      object Panel8: TPanel
        Left = 143
        Top = 22
        Width = 12
        Height = 32
        Cursor = crHandPoint
        Caption = '+'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Panel8Click
      end
    end
  end
  object tbDados: TTable
    DatabaseName = 
      'C:\Documents and Settings\Marcos\Meus documentos\Delphi\Sonzeira' +
      ' 3.0\Dados.db'
    TableName = 'Dados.db'
    Left = 104
    Top = 265
    object tbDadosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object tbDadosEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tbDadosNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tbDadosTempo: TStringField
      FieldName = 'Tempo'
      Size = 5
    end
  end
  object dsDados: TDataSource
    DataSet = tbDados
    Left = 136
    Top = 257
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 600
    Top = 44
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 600
    Top = 11
  end
  object QDados: TQuery
    DatabaseName = 
      'C:\Documents and Settings\Marcos\Meus documentos\Delphi\Sonzeira' +
      ' 3.0\Dados.db'
    DataSource = dsDados
    SQL.Strings = (
      'Select * From Dados')
    Left = 218
    Top = 266
    object QDadosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'SONZEIRA."Dados.DB".Codigo'
    end
    object QDadosEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'SONZEIRA."Dados.DB".Endereco'
      Size = 60
    end
    object QDadosNome: TStringField
      FieldName = 'Nome'
      Origin = 'SONZEIRA."Dados.DB".Nome'
      Size = 40
    end
    object QDadosTempo: TStringField
      FieldName = 'Tempo'
      Origin = 'SONZEIRA."Dados.DB".Tempo'
      Size = 5
    end
  end
  object dsQDados: TDataSource
    DataSet = QDados
    Left = 250
    Top = 266
  end
  object TimerFadeOut: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerFadeOutTimer
    Left = 604
    Top = 74
  end
  object TAumenta: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TAumentaTimer
    Left = 420
    Top = 122
  end
  object TDiminui: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TDiminuiTimer
    Left = 364
    Top = 122
  end
end
