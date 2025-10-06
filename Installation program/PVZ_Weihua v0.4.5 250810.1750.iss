#define MyAppName "植物大战僵尸威化版 PVZ_Weihua"
#define MyAppVerNum "0.4.5"
#define MyAppVerFull "0.4.5.0"
#define AppVerName "威化版 v" + MyAppVerNum
#define MyAppExeName "PlantsVsZombies.exe"
#define MyaccName "PVZ_Weihua_威化版"

[Setup]
; 唯一 AppId，请勿在其他安装包中复用
AppId={{E984518B-0EBC-4CE2-813A-168FB2D331FE}
AppName={#MyAppName}
AppVersion={#MyAppVerNum}
AppVerName={#AppVerName}
VersionInfoVersion={#MyAppVerFull}
VersionInfoDescription={#AppVerName}
VersionInfoCompany=WeiHua
VersionInfoProductName={#MyAppName}
VersionInfoCopyright=Copyright © 2023-2025 WeiHua
DefaultDirName=C:\Program Files\PVZ_WeiHua
UninstallDisplayIcon={app}\{#MyAppExeName}
DefaultGroupName=PVZ_Weihua {#MyAppVerNum}
InfoAfterFile=E:\Files\PVZ_Weihua\安装程序文本\GF-{#MyAppVerNum}.txt
; 移除以下行以在管理安装模式下运行 (为所有用户安装)。
PrivilegesRequired=lowest
OutputDir=E:\Files\Output
OutputBaseFilename=PVZ_Weihua {#MyAppVerNum} 安装程序
SetupIconFile=E:\Files\PVZ_Weihua\图标\weihua {#MyAppVerNum}.ico
SolidCompression=yes
WizardStyle=modern

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: E:\Files\PVZ_Weihua\{#MyAppVerNum}\PVZ_Weihua\{#MyAppExeName}; DestDir: {app}; Flags: ignoreversion
Source: E:\Files\PVZ_Weihua\{#MyAppVerNum}\PVZ_Weihua\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs
; 注意：不要在任何共享系统文件上使用 "Flags: ignoreversion" 

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {autodesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}; Flags: nowait postinstall skipifsilent
