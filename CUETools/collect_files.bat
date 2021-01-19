@ECHO OFF
REM This script collects the built .exe, .dll etc. files required for running CUETools
REM Wolfgang Stöggl <c72578@yahoo.de>, 2020-2021.

REM The script is located in the subfolder CUETools
echo %~dp0
pushd %~dp0
SET base_folder=..

REM Get version of CUETools
for /f "tokens=7 delims= " %%a in ('find "CUEToolsVersion =" %base_folder%\CUETools.Processor\CUESheet.cs') do set PRODUCTVER=%%a
REM echo %PRODUCTVER%
REM "2.1.7";

REM Remove double quotes and semicolon
set PRODUCTVER=%PRODUCTVER:"=%
set PRODUCTVER=%PRODUCTVER:;=%
echo CUETools version: %PRODUCTVER%

SET release_folder=..\bin\Release\CUETools_%PRODUCTVER%

mkdir %release_folder%

REM use xcopy instead of copy. xcopy creates directories if necessary and outputs the copied file
REM /Y Suppresses prompting to confirm that you want to overwrite an existing destination file.
REM /D xcopy copies all Source files that are newer than existing Destination files

REM 32 files from net47
xcopy /Y /D %base_folder%\bin\Release\net47\BluTools.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\BluTools.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUEControls.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUERipper.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUERipper.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.AccurateRip.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.ALACEnc.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.ALACEnc.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.ARCUE.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.CDImage.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Codecs.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Compression.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Converter.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.CTDB.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.CTDB.Types.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.eac3to.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.eac3to.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.FLACCL.cmd.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.FLACCL.cmd.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Flake.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Flake.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Parity.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Processor.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Ripper.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Ripper.Console.exe %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Ripper.Console.exe.config %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\DeviceId.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\Freedb.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\ProgressODoom.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\taglib-sharp.dll %release_folder%

xcopy /Y /D %base_folder%\CUETools\License.txt %release_folder%
xcopy /Y /D %base_folder%\CUETools\user_profiles_enabled %release_folder%

xcopy /Y /D %base_folder%\bin\Release\net47\de-DE\* %release_folder%\de-DE\
xcopy /Y /D %base_folder%\bin\Release\net47\ru-RU\* %release_folder%\ru-RU\

xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\Bwg.Hardware.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\Bwg.Logging.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\Bwg.Scsi.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.ALAC.dll %release_folder%\plugins\
REM No more win32\CUETools.Codecs.BDLPCM.dll and win32\CUETools.Codecs.BDLPCM.dll. Instead: CUETools.Codecs.MPEG.dll
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.MPEG.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.FLACCL.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.Flake.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.HDCD.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.libFLAC.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.libmp3lame.dll %release_folder%\plugins\
REM No more win32\CUETools.Codecs.WavPack.dll and x64\CUETools.Codecs.WavPack.dll. Instead: CUETools.Codecs.libwavpack.dll
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.libwavpack.dll %release_folder%\plugins\
REM Nor more win32\CUETools.Codecs.APE.dll and x64\CUETools.Codecs.APE.dll. Instead: CUETools.Codecs.MACLib.dll
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.MACLib.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Codecs.WMA.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Compression.Zip.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\CUETools.Ripper.SCSI.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\flac.cl %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\OpenCLNet.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net47\WindowsMediaLib.dll %release_folder%\plugins\
xcopy /Y /D  %base_folder%\bin\Release\plugins\net45\CUETools.Codecs.ffmpegdll.dll %release_folder%\plugins\

xcopy /Y /D %base_folder%\bin\Release\plugins\win32\net47\CUETools.Codecs.TTA.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\bin\Release\plugins\win32\net47\CUETools.Compression.Rar.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\bin\Release\plugins\x64\net47\CUETools.Codecs.TTA.dll %release_folder%\plugins\x64\
REM CUETools.Compression.Rar.dll is the same in the win32 and x64 folder of 2.1.7. Copy from win32
xcopy /Y /D %base_folder%\bin\Release\plugins\win32\net47\CUETools.Compression.Rar.dll %release_folder%\plugins\x64\

REM plugins translation files
xcopy /Y /D %base_folder%\bin\Release\plugins\net47\de-DE\* %release_folder%\plugins\de-DE\
xcopy /Y /D %base_folder%\bin\Release\plugins\net47\ru-RU\* %release_folder%\plugins\ru-RU\

xcopy /Y /D  %base_folder%\ThirdParty\ICSharpCode.SharpZipLib.dll %release_folder%\plugins\

REM ThirdParty\Win32 plugins
xcopy /Y /D %base_folder%\ThirdParty\Win32\hdcd.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\ThirdParty\Win32\libFLAC_dynamic.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\ThirdParty\Win32\libmp3lame.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\ThirdParty\Win32\MACLibDll.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\ThirdParty\Win32\unrar.dll %release_folder%\plugins\Win32\
xcopy /Y /D %base_folder%\ThirdParty\Win32\wavpackdll.dll %release_folder%\plugins\Win32\

REM ThirdParty\x64 plugins
xcopy /Y /D %base_folder%\ThirdParty\x64\hdcd.dll %release_folder%\plugins\x64\
xcopy /Y /D %base_folder%\ThirdParty\x64\libFLAC_dynamic.dll %release_folder%\plugins\x64\
xcopy /Y /D %base_folder%\ThirdParty\x64\libmp3lame.dll %release_folder%\plugins\x64\
xcopy /Y /D %base_folder%\ThirdParty\x64\MACLibDll.dll %release_folder%\plugins\x64\
xcopy /Y /D %base_folder%\ThirdParty\x64\Unrar.dll %release_folder%\plugins\x64\
xcopy /Y /D %base_folder%\ThirdParty\x64\wavpackdll.dll %release_folder%\plugins\x64\

REM EAC Plugin
REM CUETools.CTDB.Types.dll is also required now
REM Newtonsoft.Json.dll is not required for the EAC plugin
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.AccurateRip.dll %release_folder%\interop\EAC\
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.CDImage.dll %release_folder%\interop\EAC\
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.Codecs.dll %release_folder%\interop\EAC\
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.CTDB.dll %release_folder%\interop\EAC\
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.CTDB.EACPlugin.dll %release_folder%\interop\EAC\
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.CTDB.Types.dll %release_folder%\interop\EAC\
xcopy /Y /D %base_folder%\bin\Release\interop\EAC\CUETools.Parity.dll %release_folder%\interop\EAC\

REM required for running CUERipper:
REM Newtonsoft.Json.dll
xcopy /Y /D %base_folder%\bin\Release\plugins\net47\Newtonsoft.Json.dll %release_folder%

REM CUETools.LossyWAV.exe was not in 2.1.7 release, added
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.Codecs.LossyWAV.dll %release_folder%
xcopy /Y /D %base_folder%\bin\Release\net47\CUETools.LossyWAV.exe %release_folder%

popd
