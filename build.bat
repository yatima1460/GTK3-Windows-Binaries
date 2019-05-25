


if exist vcpkg\vcpkg.exe (
    echo vcpkg.exe found
) else (
    echo vcpkg.exe not found, building...
   git clone https://github.com/microsoft/vcpkg.git
    cd vcpkg
    bootstrap-vcpkg.bat
    cd ../
    echo vcpkg.exe not found, building... DONE
)

cd vcpkg
vcpkg install gtk:x86-windows
vcpkg install gtk:x64-windows
vcpkg export --zip gtk:x86-windows
vcpkg export --zip gtk:x64-windows