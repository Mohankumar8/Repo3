cd C:\Mohan\One\adt-bundle\sdk\tools
emulator -avd Nexus7
emulator -avd Nexus5
pause
cd C:\Mohan\One\workspace3\Pro\bin
adb -s emulator-5554 install Pro.apk
adb -s emulator-5556 install Pro.apk
cd C:\Mohan\One\workspace3\ProTest\bin
adb -s emulator-5554 install ProTest.apk
adb -s emulator-5556 install ProTest.apk
start adb -s emulator-5554 shell am instrument -w com.example.pro.test/android.test.InstrumentationTestRunner
start adb -s emulator-5556 shell am instrument -w com.example.pro.test/android.test.InstrumentationTestRunner
exit