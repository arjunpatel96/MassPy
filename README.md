# Instructions:

1. ```bash
docker build -f Dockerfile.masspy_fixed -t masspy
```
If you want to run a jupyter notebook.
2. ```bash
docker run --rm -it \
  -p 8888:8888 \
  -v "$PWD":/work \
  masspy \
  jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root \
  --NotebookApp.token='' --NotebookApp.password=''

```

3. Open http://localhost:8888