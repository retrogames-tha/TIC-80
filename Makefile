.PHONY: all

all:
	cd ./build && cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -DBUILD_WITH_JS=ON -DBUILD_STATIC=ON -DBUILD_SDL=OFF -DBUILD_LIBRETRO_DEFAULT=ON -DBUILD_LIBRETRO=ON -DBUILD_WITH_ALL_DEFAULT=ON -DBUILD_PRO=ON .. && cmake --build . --parallel
	ln -sf build/bin/tic80_libretro.so tic80_libretro.so

