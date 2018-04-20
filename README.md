# luzifer-docker / eslint

Run eslint in a Docker container

## Usage

```bash
## Build container (optional)
$ docker build -t luzifer/eslint .

## Execute eslint
$ docker run --rm -ti -v $(pwd):$(pwd) -w $(pwd) luzifer/eslint *.js
```
