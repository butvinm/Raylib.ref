Simple proof-of-concept of using Raylib from [Refal-5λ](https://github.com/bmstu-iu9/refal-5-lambda) language

![](./demo.gif)

## Build and Run

**Requirements:**
- `Refal-5λ`
- `g++`

```bash
mkdir -p build
rlmake \
    --scratch \
    --dont-keep-rasl \
    --tmp-dir build \
    -o build/Main \
    -c "g++ -I./raylib/include -L./raylib/lib -Wl,-rpath,./raylib/lib -l raylib -lGL -lm -lpthread -ldl -lrt -lX11 -o" \
    Main.ref

./build/Main
```
