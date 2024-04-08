# React With Docker

Exploring how to use Docker with React.js, specifically leveraging Vite for fast development. Here I covered setting up a Dockerfile for production builds as well as a dev.Dockerfile for development purposes.

## Dockerfile

#### Build Command:

```bash
docker build -t sifatullahsu/react-with-docker .
```

#### Run Command:

```bash
docker run --rm -p 3000:80 sifatullahsu/react-with-docker
```

## dev.Dockerfile

```bash
docker build -t sifatullahsu/react-with-docker-dev .
```

#### Run Command:

```bash
docker run --rm -v [project_src_folder_location]:/home/project/src -p 5173:5173 sifatullahsu/react-with-docker-dev
```

#### Example Location:

`C:\\docker-project\\react-with-docker\\src`

#### Extra Configuration:

Make sure we have added `usePolling: true` in `vite.config.ts`, to know more. [Visit Here](https://github.com/vitejs/vite/issues/1153)
