> NOTE: the haskell benchmark might be wrong, since I'm not sure how the lazy evaluation work there

my result:
```
D:\stuffs\projects\temp\speedcomp>mingw32-make
rustc -C opt-level=3 -o main_rs.exe main_rs.rs && main_rs.exe
        16 ms, count: 900000
lua main_lua.lua
        610.0ms, count: 900000
luajit main_lua.lua
        63ms, count: 900000
gcc -O3 -o main_c.exe main_c.c && main_c.exe
        13.000000ms, count: 900000
python -OO main_py.py
        2460.1855278015137ms, count: 900000
node main_js.js
        43ms, count: 900000
ghc -O2 -Wno-tabs -o main_hs.exe main_hs.hs && main_hs.exe
[1 of 2] Compiling Main             ( main_hs.hs, main_hs.o ) [Source file changed]
[2 of 2] Linking main_hs.exe [Objects changed]
count: 900000
0.1522337s
```

compiler/interperter versions
```
D:\stuffs\projects\temp\speedcomp>rustc --version
rustc 1.82.0 (f6e511eec 2024-10-15)

D:\stuffs\projects\temp\speedcomp>lua -v
Lua 5.4.6  Copyright (C) 1994-2023 Lua.org, PUC-Rio

D:\stuffs\projects\temp\speedcomp>luajit -v
LuaJIT 2.1.1727870382 -- Copyright (C) 2005-2023 Mike Pall. https://luajit.org/

D:\stuffs\projects\temp\speedcomp>gcc --version
gcc (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r2) 14.2.0
Copyright (C) 2024 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


D:\stuffs\projects\temp\speedcomp>python --version
Python 3.6.0

D:\stuffs\projects\temp\speedcomp>node --version
v22.11.0

D:\stuffs\projects\temp\speedcomp>ghc --version
The Glorious Glasgow Haskell Compilation System, version 9.8.3
```
