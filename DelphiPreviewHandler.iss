; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#define MyAppName 'Delphi Preview Handler'
#define MyAppVersion GetFileVersion('DelphiPreviewHandler.dll')
[Files]
Source: DelphiPreviewHandler.dll; DestDir: {app}; Flags : regserver sharedfile noregerror
;Source: UnRegister.bat; DestDir: {app}
;Source: Register.bat; DestDir: {app}
;Source: Themes\Aqua.theme.xml; DestDir: {app}\Themes\
;Source: Themes\artofnet-darkonblue.theme.xml; DestDir: {app}\Themes\
;Source: Themes\artofnet-lime-chocolate.theme.xml; DestDir: {app}\Themes\
Source: Themes\bespin.theme.xml; DestDir: {app}\Themes\
Source: Themes\Black and White.theme.xml; DestDir: {app}\Themes\
Source: Themes\Blackboard.theme.xml; DestDir: {app}\Themes\
Source: Themes\Brown.theme.xml; DestDir: {app}\Themes\
Source: Themes\ChocoCaramel.theme.xml; DestDir: {app}\Themes\
Source: Themes\cobalt.theme.xml; DestDir: {app}\Themes\
Source: Themes\coda.theme.xml; DestDir: {app}\Themes\
Source: Themes\code-anxiety.theme.xml; DestDir: {app}\Themes\
Source: Themes\coding-horror.theme.xml; DestDir: {app}\Themes\
;Source: Themes\coffee-.theme.xml; DestDir: {app}\Themes\
Source: Themes\dark-code-mute-font-beige.theme.xml; DestDir: {app}\Themes\
Source: Themes\deep-blue.theme.xml; DestDir: {app}\Themes\
Source: Themes\desertex-revised.theme.xml; DestDir: {app}\Themes\
Source: Themes\distant-stormy-shore.theme.xml; DestDir: {app}\Themes\
Source: Themes\enhanced-pascal-classical-.theme.xml; DestDir: {app}\Themes\
Source: Themes\frontenddev.theme.xml; DestDir: {app}\Themes\
Source: Themes\Gedit Original.theme.xml; DestDir: {app}\Themes\
;Source: Themes\Green.theme.xml; DestDir: {app}\Themes\
Source: Themes\greendream.theme.xml; DestDir: {app}\Themes\
Source: Themes\hugoware.theme.xml; DestDir: {app}\Themes\
Source: Themes\humane-studio.theme.xml; DestDir: {app}\Themes\
Source: Themes\Igor.theme.xml; DestDir: {app}\Themes\
;Source: Themes\Inkpot.theme.xml; DestDir: {app}\Themes\
Source: Themes\jon-erickson-s-ragnarok-grey.theme.xml; DestDir: {app}\Themes\
Source: Themes\like.theme.xml; DestDir: {app}\Themes\
Source: Themes\monokai.theme.xml; DestDir: {app}\Themes\
Source: Themes\Mr.theme.xml; DestDir: {app}\Themes\
Source: Themes\mustang.theme.xml; DestDir: {app}\Themes\
Source: Themes\nightfall.theme.xml; DestDir: {app}\Themes\
Source: Themes\NightLion Aptan.theme.xml; DestDir: {app}\Themes\
Source: Themes\Oblivion.theme.xml; DestDir: {app}\Themes\
Source: Themes\Obsidian.theme.xml; DestDir: {app}\Themes\
Source: Themes\ocean.theme.xml; DestDir: {app}\Themes\
Source: Themes\paulstovell-com.theme.xml; DestDir: {app}\Themes\
Source: Themes\pretty.theme.xml; DestDir: {app}\Themes\
Source: Themes\Purple.theme.xml; DestDir: {app}\Themes\
Source: Themes\ragnarok-blue.theme.xml; DestDir: {app}\Themes\
Source: Themes\RecognEyes.theme.xml; DestDir: {app}\Themes\
Source: Themes\Red.theme.xml; DestDir: {app}\Themes\
Source: Themes\russian-noth.theme.xml; DestDir: {app}\Themes\
Source: Themes\selenitic.theme.xml; DestDir: {app}\Themes\
Source: Themes\slimcode.theme.xml; DestDir: {app}\Themes\
Source: Themes\son-of-obsidian.theme.xml; DestDir: {app}\Themes\
;Source: Themes\the-dark-side-of-visual-studio.theme.xml; DestDir: {app}\Themes\
;Source: Themes\the-default-at-boxbinary-ltd.theme.xml; DestDir: {app}\Themes\
;Source: Themes\tial-entry-enhanced.theme.xml; DestDir: {app}\Themes\
Source: Themes\turbo-pascal-revisited.theme.xml; DestDir: {app}\Themes\
Source: Themes\Vibrant Ink.theme.xml; DestDir: {app}\Themes\
Source: Themes\wekeroad-ink.theme.xml; DestDir: {app}\Themes\
Source: Themes\zenburn-2010.theme.xml; DestDir: {app}\Themes\
Source: Themes\Zenburn.theme.xml; DestDir: {app}\Themes\
Source: Updater\DownloadInfo.xml; DestDir: {app}
Source: Updater\libeay32.dll; DestDir: {app}
Source: Updater\ssleay32.dll; DestDir: {app}
Source: Updater\updater.exe; DestDir: {app}
;Source: Settings.ini; DestDir: {app}

[Setup]
UsePreviousLanguage=no
AppName={#MyAppName}
AppPublisher=The Road To Delphi
AppVerName={#MyAppName} {#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppPublisherURL=http://theroadtodelphi.wordpress.com/
AppSupportURL=http://theroadtodelphi.wordpress.com/
AppUpdatesURL=http://theroadtodelphi.wordpress.com/
DefaultDirName={pf}\The Road To Delphi\DelphiPreviewHandler
OutputBaseFileName=Setup
DisableDirPage=true
Compression=lzma
SolidCompression=true
UsePreviousAppDir=false
AppendDefaultDirName=true
PrivilegesRequired=admin
WindowVisible=false
WizardSmallImageFile=compiler:WizModernSmallImage-IS.bmp
WizardImageFile=compiler:WizModernImage-IS.bmp
AppContact=theroadtodelphi@gmail.com
SetupIconFile=Images\Icon.ico
;MinVersion=,6.0.6000
DisableProgramGroupPage=true
AppID=DelphiPreviewHandler
[Dirs]
Name: {app}\Themes
[Code]
function InitializeSetup(): Boolean;
begin
   Result:=True;
end;

function GetUninstallString(): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;


function IsUpgrade(): Boolean;
var
  s : string;
begin
  s := GetUninstallString();
  //MsgBox('GetUninstallString '+s, mbInformation, MB_OK);
  Result := (s <> '');
end;


function UnInstallOldVersion(): Integer;
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
// Return Values:
// 1 - uninstall string is empty
// 2 - error executing the UnInstallString
// 3 - successfully executed the UnInstallString

  // default return value
  Result := 0;

  // get the uninstall string of the old app
  sUnInstallString := GetUninstallString();
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES', '', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if (CurStep=ssInstall) then
  begin
    if (IsUpgrade()) then
    begin
      MsgBox(ExpandConstant('An old version of the Preview handler was detected. The uninstaller will be executed'), mbInformation, MB_OK);
      UnInstallOldVersion();
    end;
  end;
end;
