> NOTE: the haskell benchmark might be wrong, since I'm not sure how the lazy evaluation work there

my result:
```
D:\stuffs\projects\temp\speedcomp>mingw32-make
rustc -C opt-level=3 -o main_rs.exe main_rs.rs && main_rs.exe
        16 ms, count: 899999
lua main_lua.lua
        581.0ms, count: 899999
luajit main_lua.lua
        64ms, count: 899999
gcc -O3 -o main_c.exe main_c.c && main_c.exe
        14.000000ms, count: 899999
python -OO main_py.py
        2650.038719177246ms, count: 999998
node main_js.js
        44ms, count: 899999
ghc -O2 -Wno-tabs -o main_hs.exe main_hs.hs && main_hs.exe
[1 of 2] Compiling Main             ( main_hs.hs, main_hs.o ) [Source file changed]
[2 of 2] Linking main_hs.exe [Objects changed]
count: 899999
0.1513149s
```
