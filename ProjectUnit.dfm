object ProjectForm: TProjectForm
  Left = 350
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'New Project'
  ClientHeight = 531
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bttCreateNewProject: TTntButton
    Left = 489
    Top = 494
    Width = 131
    Height = 26
    Caption = 'Create new project'
    TabOrder = 5
    OnClick = bttCreateNewProjectClick
  end
  object bttCancel: TTntButton
    Left = 625
    Top = 494
    Width = 75
    Height = 26
    Caption = 'Cancel'
    TabOrder = 7
    OnClick = bttCancelClick
  end
  object gbVideoFile: TTntGroupBox
    Left = 6
    Top = 8
    Width = 695
    Height = 187
    Caption = ' Video source file (optional) : '
    TabOrder = 0
    object bttBrowseVideoFile: TSpeedButton
      Left = 656
      Top = 16
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = bttBrowseVideoFileClick
    end
    object EditVideoFilename: TTntEdit
      Left = 8
      Top = 17
      Width = 634
      Height = 21
      TabOrder = 0
    end
    object bttExtractWAVFromVideo: TTntButton
      Left = 17
      Top = 153
      Width = 621
      Height = 24
      Caption = 'Extract WAV/Peak file from video'
      TabOrder = 1
      OnClick = bttExtractWAVFromVideoClick
    end
    object gbVideoSourceOperation: TGroupBox
      Left = 8
      Top = 42
      Width = 636
      Height = 107
      Caption = 'Avaiable operations on video source file'
      TabOrder = 2
      object VideoSourceOperationRemux: TTntRadioButton
        Left = 7
        Top = 21
        Width = 67
        Height = 17
        Hint = 
          'Remux a new Mkv video source file (using Mkvmerge / tnk to MKVTo' +
          'olNix project)'
        Caption = 'Remux'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = VideoSourceOperationRemuxClick
      end
      object VideoSourceOperationRecodeAudio1: TTntRadioButton
        Left = 66
        Top = 21
        Width = 219
        Height = 17
        Hint = 
          'Create a new video source file (mkv) + convert audio to Pcm G.71' +
          '1 / mono (using FFMpeg / tnk to Zeranoe FFmpeg project)'
        Caption = 'Recode with audio (Pcm G.711 / mono)'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = VideoSourceOperationRecodeAudio1Click
      end
      object VideoSourceOperationRecodeAudio2: TTntRadioButton
        Left = 277
        Top = 21
        Width = 183
        Height = 17
        Hint = 
          'Create a new video source file (mkv) + convert audio to Pcm / st' +
          'ereo (using FFMpeg / tnk to Zeranoe FFmpeg project)'
        Caption = 'Recode with audio (Pcm / stereo)'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = VideoSourceOperationRecodeAudio2Click
      end
      object VideoSourceOperationSetSubtitleVO: TTntRadioButton
        Left = 141
        Top = 47
        Width = 160
        Height = 17
        Hint = 
          'Extract subtitle track as Reference VO/Other (using FFMpeg / tnk' +
          ' to Zeranoe FFmpeg project)'
        Caption = 'Extract subtitle track Ref. VO'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = VideoSourceOperationSetSubtitleVOClick
      end
      object VideoSourceOperationSetSubtitleFile: TTntRadioButton
        Left = 7
        Top = 47
        Width = 120
        Height = 17
        Hint = 
          'Extract subtitle track as Subtitle file (using FFMpeg / tnk to Z' +
          'eranoe FFmpeg project)'
        Caption = 'Extract subtitle track'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = VideoSourceOperationSetSubtitleFileClick
      end
      object VideoSourceOperationMD5: TTntRadioButton
        Left = 463
        Top = 21
        Width = 162
        Height = 17
        Hint = 'Calculate the MD5 checksum of the video source file'
        Caption = 'Calculate the MD5 checksum'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = VideoSourceOperationMD5Click
      end
      object VideoSourceOperationExecute: TTntButton
        Left = 8
        Top = 74
        Width = 622
        Height = 24
        Caption = 'Start selected operation on video source file'
        Enabled = False
        TabOrder = 6
        OnClick = VideoSourceOperationExecuteClick
      end
      object cbbVideoSourceOperationTracks: TTntComboBox
        Left = 314
        Top = 44
        Width = 179
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 7
        Visible = False
      end
    end
  end
  object gbWAVFile: TTntGroupBox
    Left = 6
    Top = 196
    Width = 695
    Height = 106
    Caption = ' Audio waveform / Audio only preview (optional) : '
    TabOrder = 1
    object bttBrowseWAVFile: TSpeedButton
      Left = 655
      Top = 73
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = bttBrowseWAVFileClick
    end
    object bttBrowsePeakFile: TSpeedButton
      Left = 655
      Top = 45
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = bttBrowsePeakFileClick
    end
    object EditWAVFilename: TTntEdit
      Left = 82
      Top = 74
      Width = 561
      Height = 21
      TabOrder = 0
      OnChange = EditUpdateColor
      OnEnter = EditPeakFilenameEnter
      OnExit = EditPeakFilenameExit
    end
    object rbExternal: TRadioButton
      Tag = 1
      Left = 8
      Top = 76
      Width = 73
      Height = 17
      Hint = 
        'Use an external or extracted WAV file for waveform and audio onl' +
        'y preview.'
      Caption = 'WAV file :'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = rbInternalWAVClick
    end
    object rbPeakOnly: TRadioButton
      Tag = 2
      Left = 8
      Top = 48
      Width = 73
      Height = 17
      Hint = 
        'Use the video file for audio preview and a created peak file for' +
        ' the waveform display.'
      Caption = 'Peak file :'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = rbInternalWAVClick
    end
    object EditPeakFilename: TTntEdit
      Left = 82
      Top = 46
      Width = 561
      Height = 21
      TabOrder = 3
      OnChange = EditUpdateColor
      OnEnter = EditPeakFilenameEnter
      OnExit = EditPeakFilenameExit
    end
    object rbNoWaveform: TTntRadioButton
      Left = 8
      Top = 24
      Width = 129
      Height = 17
      Hint = 
        'If available the audio track of the video file will be used for ' +
        'preview but no waveform is displayed.'
      Caption = 'No waveform display'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = rbInternalWAVClick
    end
  end
  object gbSubtitleFile: TTntGroupBox
    Left = 6
    Top = 313
    Width = 695
    Height = 66
    Caption = ' Subtitle file : '
    TabOrder = 2
    object bttBrowseSubtitleFile: TSpeedButton
      Left = 653
      Top = 16
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = bttBrowseSubtitleFileClick
    end
    object EditSubtitleFilename: TTntEdit
      Left = 9
      Top = 17
      Width = 554
      Height = 21
      TabOrder = 0
    end
    object cbSubtitleFormat: TTntComboBox
      Left = 569
      Top = 16
      Width = 73
      Height = 21
      Hint = 'Subtitle file format'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'SRT'
      OnChange = cbSubtitleFormatChange
      Items.Strings = (
        'SRT'
        'SSA'
        'ASS')
    end
    object chkSaveAsUTF8: TTntCheckBox
      Left = 8
      Top = 39
      Width = 92
      Height = 22
      Caption = 'Save as UTF8'
      TabOrder = 2
    end
    object chkLaunchTraslateActionOnCreate: TTntCheckBox
      Left = 118
      Top = 39
      Width = 183
      Height = 21
      Caption = 'Select translate mode on creation'
      Enabled = False
      TabOrder = 3
    end
  end
  object gbProjectFile: TTntGroupBox
    Left = 6
    Top = 439
    Width = 695
    Height = 50
    Caption = ' Project file : '
    TabOrder = 4
    object bttBrowseProjectFile: TSpeedButton
      Left = 653
      Top = 16
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = bttBrowseProjectFileClick
    end
    object EditProjectFilename: TTntEdit
      Left = 10
      Top = 17
      Width = 625
      Height = 21
      TabOrder = 0
    end
  end
  object bttOk: TTntButton
    Left = 546
    Top = 494
    Width = 75
    Height = 26
    Caption = 'OK'
    TabOrder = 6
    Visible = False
    OnClick = bttOkClick
  end
  object gbVO: TTntGroupBox
    Left = 6
    Top = 384
    Width = 695
    Height = 50
    Caption = 'Reference VO/Other : '
    TabOrder = 3
    object bttBrowseSubtitleVO: TSpeedButton
      Left = 653
      Top = 16
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = bttBrowseVOFileClick
    end
    object EditSubtitleVO: TTntEdit
      Left = 9
      Top = 16
      Width = 628
      Height = 21
      TabOrder = 0
    end
  end
  object TntOpenDialogBrowseGenericFile: TTntOpenDialog
    Left = 264
    Top = 343
  end
end