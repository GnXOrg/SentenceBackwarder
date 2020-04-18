@echo off
Title Building SentenceBackwarder for Windows
echo Installing OCRA
start /w cmd /c gem install ocra
echo Should be installed, building for Windows
ocra --quiet --no-dep-run --console SentenceBackwarder.rb
echo Build done, you can run SentenceBackwarder.exe now.
timeout 3 > NUL
echo Exiting.
exit