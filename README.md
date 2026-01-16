# Instructions:

1. Build the docker image
```bash 
docker build -t masspy .
```

2. If you want to run a jupyter notebook.
```bash
docker run --rm -it \
  --entrypoint bash \
  -p 8888:8888 \
  -v "$(pwd)":/work \
  -w /work \
  masspy \
  -lc "python3 -m notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''"
```

3. Open http://localhost:8888
