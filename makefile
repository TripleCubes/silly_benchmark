all: rs lua luajit c py js hs

rs:
	rustc -C opt-level=3 -o main_rs.exe main_rs.rs && main_rs.exe

lua:
	lua main_lua.lua

luajit:
	luajit main_lua.lua

c:
	gcc -O3 -o main_c.exe main_c.c && main_c.exe

py:
	python -OO main_py.py

js:
	node main_js.js

hs:
	ghc -O2 -Wno-tabs -o main_hs.exe main_hs.hs && main_hs.exe
