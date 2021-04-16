# c_webassembly
POC de code C compilé vers webassembly

## Références
* https://developers.google.com/web/updates/2018/03/emscripting-a-c-library

## Modus operandi
* Récupérer l'image docker emscriptem (évite d'avoir à installer l'environnement et tout le gazouilli)
> `docker pull trzeci/emscriptem`
* Invoquer le compilateur emcc à taravers le container
> `sudo docker run --rm -v $(pwd):/src trzeci/emscripten emcc -O3 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' fibonacci.c`
* Pour simplifier l'appel, j'ai créé le build.sh
> `build.sh`
