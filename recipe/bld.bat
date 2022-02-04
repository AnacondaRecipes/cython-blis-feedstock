set "BLIS_COMPILER="

if %ARCH% == 64 (
  set "CC=clang-cl.exe"
  set "CXX=clang-cl.exe"
) else (
  set "CC=clang-cl.exe -m32"
  set "CXX=clang-cl.exe -m32"
)

%PYTHON% -m pip install . --no-deps -vvv
