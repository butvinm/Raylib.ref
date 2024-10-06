mkdir -p build
rlmake \
    --scratch \
    --dont-keep-rasl \
    --tmp-dir build \
    -o build/Main \
    -c "g++ -I./raylib/include -L./raylib/lib -Wl,-rpath,./raylib/lib -l raylib -lGL -lm -lpthread -ldl -lrt -lX11 -o" \
    Main.ref
