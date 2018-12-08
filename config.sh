##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (config.sh)
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into common/system.prop
#
##########################################################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************************"
  ui_print "        System-less De-bloater v2.0        "
  ui_print " "
  ui_print "  (c) sunilpaulmathew@xda-developers.com   "
  ui_print "*******************************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info about how Magic Mount works, and why you need this

# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will override the example above
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
REPLACE="
/system/app/Duo
/system/app/Music2
/system/app/Photos
/system/app/Videos
/system/app/Jelly
/system/app/crDroidMusic
/system/app/Email
/system/app/ANTPlusPlugins
/system/app/ANTPlusTest
/system/app/AllShareCastPlayer
/system/app/AllshareFileShare
/system/app/AllshareFileShareClient
/system/app/AllshareFileShareServer
/system/app/AllshareMediaServer
/system/app/AllshareMediaShare
/system/app/AntHalService
/system/app/AppleMint
/system/app/AssistantMenu_M
/system/app/BBCAgent
/system/app/BookmarkProvider
/system/app/Books
/system/app/ChocoEUKor
/system/app/ChromeCustomizations
/system/app/ColorBlind_M
/system/app/CoolEUKor
/system/app/CreateCallLogShortCut
/system/app/DictDiotek
/system/app/DigitalClockEasy_MUPG
/system/app/DigitalClock_MUPG
/system/app/DirectConnect
/system/app/Drive
/system/app/DriveLink
/system/app/DriveLinkRemote
/system/app/DualClockDigital_MUPG
/system/app/ELMAgent
/system/app/EasyOneHand2
/system/app/EasySettings
/system/app/EasySetup
/system/app/EasymodeContactsWidget_RECT
/system/app/EdmSimPinService
/system/app/FlipboardBriefing
/system/app/GearManagerStub
/system/app/GeoLookout
/system/app/GoogleTTS
/system/app/Hangouts
/system/app/ImsTelephonyService
/system/app/InteractiveTutorial
/system/app/Kies
/system/app/KnoxAppsUpdateAgent
/system/app/KnoxAttestationAgent
/system/app/KnoxFolderContainer
/system/app/KnoxSetupWizardClient
/system/app/KnoxSwitcher
/system/app/KorEmergencyReportHelper
/system/app/LGUHiddenMenu
/system/app/LGUMiniCustomerCenter
/system/app/LGUMirrorCall2
/system/app/LGUOZStore
/system/app/LGUPgpsOnextra
/system/app/LGUPlusBox
/system/app/LGUSmartWallet
/system/app/LteRoamingWidget
/system/app/LteRoamingWidget
/system/app/MDMApp
/system/app/MirrorLink
/system/app/MobilePrintSvc_Samsung
/system/app/MobileTrackerEngineTwo
/system/app/MusicLiveShare2
/system/app/Newsstand
/system/app/Panorama360Viewer_K
/system/app/PartnerBookmarksProvider
/system/app/PhotoTable
/system/app/PlayGames
/system/app/PlusOne
/system/app/PolarisViewer5
/system/app/PopupuiReceiver_M
/system/app/PreloadAppDownload_M
/system/app/PreloadAppUpdaterL
/system/app/PreloadInstaller
/system/app/QtiBackupAgent
/system/app/QuickConnect_30
/system/app/RCPComponents
/system/app/SBrowser_4_LATEST
/system/app/SLocation
/system/app/SNameCard
/system/app/SPlannerWidget_M_OS_UPG
/system/app/SPlanner_M_OS_UPG
/system/app/SPrintSpooler6
/system/app/SafetyInformation
/system/app/SamsungAppsWidget_Phone
/system/app/SamsungContentsAgent
/system/app/SamsungDLPService
/system/app/SamsungSans
/system/app/SamsungTTS
/system/app/SapaAudioConnectionService
/system/app/SapaMonitor
/system/app/SecFactoryPhoneTest
/system/app/SecHTMLViewer
/system/app/SecKidsModeInstaller
/system/app/SecurityLogAgent
/system/app/SettingsMaps
/system/app/SilentLog
/system/app/SnsImageCache
/system/app/Tdmb_MUPG
/system/app/Tinker
/system/app/UniversalMDMClient
/system/app/UserDictionaryProvider
/system/app/V3Mobile2_Repack
/system/app/WeatherDaemon2014_MMR
/system/app/WebManual
/system/app/WfdBroker_MUPG
/system/app/WlanTest
/system/app/atfwd
/system/app/commonimsservice
/system/app/ringtoneBR
/system/app/secimsfw
/system/app/talkback
/system/app/withTV
/system/priv-app/FlipFlap
/system/priv-app/Eleven
/system/priv-app/3DTourViewer_WQHD_K
/system/priv-app/ANTRadioService
/system/priv-app/ASKSManager
/system/priv-app/AccessControl_M
/system/priv-app/AutoPreconfig
/system/priv-app/AutomationTest_FB
/system/priv-app/BackupRestoreConfirmation
/system/priv-app/ConfigUpdater
/system/priv-app/DCMProvider
/system/priv-app/DeviceKeystring
/system/priv-app/DeviceTest
/system/priv-app/DiagMonAgent
/system/priv-app/DirectShareManager
/system/priv-app/EasyLauncher2
/system/priv-app/GalaxyApps
/system/priv-app/GroupPlay_27
/system/priv-app/HwModuleTest
/system/priv-app/KLMSAgent
/system/priv-app/MagicShot_FHD_A7
/system/priv-app/MusicCommonUtility_M
/system/priv-app/NoiseField
/system/priv-app/PageBuddyNotiSvcK
/system/priv-app/PayWithPaypal
/system/priv-app/PersonalPageService
/system/priv-app/PhaseBeam
/system/priv-app/PhoneErrService
/system/priv-app/PhotoStudio_FHD_K
/system/priv-app/QRreader
/system/priv-app/SPDClient
/system/priv-app/SPPPushClient_Prod
/system/priv-app/SPenSdk4_0
/system/priv-app/SStudio_FHD_K
/system/priv-app/SamsungBilling
/system/priv-app/SamsungLinkPlatform
/system/priv-app/SecLiveWallpapersPicker
/system/priv-app/SecSafetyAssurance
/system/priv-app/SecVideo
/system/priv-app/SecVideoPlayer
/system/priv-app/Velvet
/system/priv-app/intelligenceservice
/system/priv-app/intelligenceservice2
/system/priv-app/sCloudBackupAppMOSUpgrade
/system/priv-app/wssyncmlnps
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
}

##########################################################################################
# Custom Functions
##########################################################################################

# This file (config.sh) will be sourced by the main flash script after util_functions.sh
# If you need custom logic, please add them here as functions, and call these functions in
# update-binary. Refrain from adding code directly into update-binary, as it will make it
# difficult for you to migrate your modules to newer template versions.
# Make update-binary as clean as possible, try to only do function calls in it.

