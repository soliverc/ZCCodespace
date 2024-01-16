# bash practice with docker setup

@soliverc ➜ /workspaces/ZCCodespace (main) $ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
c1ec31eb5944: Pull complete 
Digest: sha256:4bd78111b6914a99dbc560e6a20eab57ff6655aea4a80c50b0c5491968cbc2e6
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

@soliverc ➜ /workspaces/ZCCodespace (main) $ ls
'FIrst Test.ipynb'   README.md
@soliverc ➜ /workspaces/ZCCodespace (main) $ mkdir docktest
@soliverc ➜ /workspaces/ZCCodespace (main) $ cd docktest/
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it ubuntu bash
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
a48641193673: Pull complete 
Digest: sha256:6042500cf4b44023ea1894effe7890666b0c5c7871ed83a97c36c76ae560bb9b
Status: Downloaded newer image for ubuntu:latest
root@263c76b1e8c9:/# ls
bin  boot  dev  etc  home  lib  lib32  lib64  libx32  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@263c76b1e8c9:/# exit
exit
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it python:3.9
Unable to find image 'python:3.9' locally
3.9: Pulling from library/python
1b13d4e1a46e: Pull complete 
1c74526957fc: Pull complete 
8d55d1cb1ffb: Pull complete 
aa8e0026efed: Pull complete 
a000d2c561b3: Pull complete 
ea0e489eccac: Pull complete 
6f8522350289: Pull complete 
cd0448a734b2: Pull complete 
Digest: sha256:51155b171174dcb535d05b87e739f792e9cc1292c714227d6276b0278607b643
Status: Downloaded newer image for python:3.9
Python 3.9.18 (main, Jan 11 2024, 11:28:41) 
[GCC 12.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> pip install pandas
  File "<stdin>", line 1
    pip install pandas
        ^
SyntaxError: invalid syntax
>>> 
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it entrypoint=bash  python:3.9
docker: invalid reference format.
See 'docker run --help'.
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it --entrypoint=bash  python:3.9
docker: invalid reference format.
See 'docker run --help'.
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker

Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Common Commands:
  run         Create and run a new container from an image
  exec        Execute a command in a running container
  ps          List containers
  build       Build an image from a Dockerfile
  pull        Download an image from a registry
  push        Upload an image to a registry
  images      List images
  login       Log in to a registry
  logout      Log out from a registry
  search      Search Docker Hub for images
  version     Show the Docker version information
  info        Display system-wide information

Management Commands:
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., 0.12.0-1)
  compose*    Docker Compose (Docker Inc., 2.23.3-1)
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  plugin      Manage plugins
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Swarm Commands:
  swarm       Manage Swarm

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Global Options:
      --config string      Location of client config files (default "/home/codespace/.docker")
  -c, --context string     Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket to connect to
  -l, --log-level string   Set the logging level ("debug", "info", "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/home/codespace/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/home/codespace/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/home/codespace/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Run 'docker COMMAND --help' for more information on a command.

For more help on how to use Docker, head to https://docs.docker.com/go/guides/
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it --entrypoint=bash  python:3.9
root@700bfac38bd2:/# pip install pandas
Collecting pandas
  Downloading pandas-2.1.4-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (12.3 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 12.3/12.3 MB 58.3 MB/s eta 0:00:00
Collecting tzdata>=2022.1
  Downloading tzdata-2023.4-py2.py3-none-any.whl (346 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 346.6/346.6 kB 15.1 MB/s eta 0:00:00
Collecting python-dateutil>=2.8.2
  Downloading python_dateutil-2.8.2-py2.py3-none-any.whl (247 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 247.7/247.7 kB 9.9 MB/s eta 0:00:00
Collecting pytz>=2020.1
  Downloading pytz-2023.3.post1-py2.py3-none-any.whl (502 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 502.5/502.5 kB 19.6 MB/s eta 0:00:00
Collecting numpy<2,>=1.22.4
  Downloading numpy-1.26.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (18.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 18.2/18.2 MB 48.4 MB/s eta 0:00:00
Collecting six>=1.5
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Installing collected packages: pytz, tzdata, six, numpy, python-dateutil, pandas
Successfully installed numpy-1.26.3 pandas-2.1.4 python-dateutil-2.8.2 pytz-2023.3.post1 six-1.16.0 tzdata-2023.4
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv

[notice] A new release of pip is available: 23.0.1 -> 23.3.2
[notice] To update, run: pip install --upgrade pip
root@700bfac38bd2:/# 
exit
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas
ERROR: "docker buildx build" requires exactly 1 argument.
See 'docker buildx build --help'.

Usage:  docker buildx build [OPTIONS] PATH | URL | -

Start a build
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 0.7s (2/2) FINISHED                                                                                                                                                                            docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.4s
 => => transferring dockerfile: 2B                                                                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                                                                     0.4s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
ERROR: failed to solve: failed to read dockerfile: open /var/lib/docker/tmp/buildkit-mount3981865813/Dockerfile: no such file or directory
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ ls
DOCKERFILE
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ ls
DOCKERFILE
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ dir
DOCKERFILE
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ cd docktest
bash: cd: docktest: No such file or directory
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker built
docker: 'built' is not a docker command.
See 'docker --help'
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build
ERROR: "docker buildx build" requires exactly 1 argument.
See 'docker buildx build --help'.

Usage:  docker buildx build [OPTIONS] PATH | URL | -

Start a build
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker buildx build --help

Usage:  docker buildx build [OPTIONS] PATH | URL | -

Start a build

Aliases:
  docker buildx build, docker buildx b

Options:
      --add-host strings              Add a custom host-to-IP mapping (format: "host:ip")
      --allow strings                 Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
      --annotation stringArray        Add annotation to the image
      --attest stringArray            Attestation parameters (format: "type=sbom,generator=image")
      --build-arg stringArray         Set build-time variables
      --build-context stringArray     Additional build contexts (e.g., name=path)
      --builder string                Override the configured builder instance
      --cache-from stringArray        External cache sources (e.g., "user/app:cache", "type=local,src=path/to/dir")
      --cache-to stringArray          Cache export destinations (e.g., "user/app:cache", "type=local,dest=path/to/dir")
      --cgroup-parent string          Set the parent cgroup for the "RUN" instructions during build
  -f, --file string                   Name of the Dockerfile (default: "PATH/Dockerfile")
      --iidfile string                Write the image ID to the file
      --label stringArray             Set metadata for an image
      --load                          Shorthand for "--output=type=docker"
      --metadata-file string          Write build result metadata to the file
      --network string                Set the networking mode for the "RUN" instructions during build (default "default")
      --no-cache                      Do not use cache when building the image
      --no-cache-filter stringArray   Do not cache specified stages
  -o, --output stringArray            Output destination (format: "type=local,dest=path")
      --platform stringArray          Set target platform for build
      --progress string               Set type of progress output ("auto", "plain", "tty"). Use plain to show container output (default "auto")
      --provenance string             Shorthand for "--attest=type=provenance"
      --pull                          Always attempt to pull all referenced images
      --push                          Shorthand for "--output=type=registry"
  -q, --quiet                         Suppress the build output and print image ID on success
      --sbom string                   Shorthand for "--attest=type=sbom"
      --secret stringArray            Secret to expose to the build (format: "id=mysecret[,src=/local/secret]")
      --shm-size bytes                Size of "/dev/shm"
      --ssh stringArray               SSH agent socket or keys to expose to the build (format: "default|<id>[=<socket>|<key>[,<key>]]")
  -t, --tag stringArray               Name and optionally a tag (format: "name:tag")
      --target string                 Set the target build stage to build
      --ulimit ulimit                 Ulimit options (default [])
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker buildx -t test:pandas
unknown shorthand flag: 't' in -t
See 'docker buildx --help'.

Usage:  docker buildx [OPTIONS] COMMAND

Extended build capabilities with BuildKit

Options:
      --builder string   Override the configured builder instance

Management Commands:
  imagetools  Commands to work on images in registry

Commands:
  bake        Build from a file
  build       Start a build
  create      Create a new builder instance
  du          Disk usage
  inspect     Inspect current builder instance
  ls          List builder instances
  prune       Remove build cache
  rm          Remove a builder instance
  stop        Stop builder instance
  use         Set the current builder instance
  version     Show buildx version information

Run 'docker buildx COMMAND --help' for more information on a command.

@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 0.3s (2/2) FINISHED                                                                                                                                                                            docker:default
 => [internal] load .dockerignore                                                                                                                                                                                     0.1s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.1s
 => => transferring dockerfile: 2B                                                                                                                                                                                    0.0s
ERROR: failed to solve: failed to read dockerfile: open /var/lib/docker/tmp/buildkit-mount4043849578/Dockerfile: no such file or directory
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build
ERROR: "docker buildx build" requires exactly 1 argument.
See 'docker buildx build --help'.

Usage:  docker buildx build [OPTIONS] PATH | URL | -

Start a build
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 0.3s (2/2) FINISHED                                                                                                                                                                            docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.1s
 => => transferring dockerfile: 2B                                                                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                                                                     0.1s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
ERROR: failed to solve: failed to read dockerfile: open /var/lib/docker/tmp/buildkit-mount1548296354/Dockerfile: no such file or directory
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ ls
DOCKERFILE
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 0.3s (2/2) FINISHED                                                                                                                                                                            docker:default
 => [internal] load .dockerignore                                                                                                                                                                                     0.1s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.1s
 => => transferring dockerfile: 2B                                                                                                                                                                                    0.0s
ERROR: failed to solve: failed to read dockerfile: open /var/lib/docker/tmp/buildkit-mount891989975/Dockerfile: no such file or directory
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 16.9s (6/6) FINISHED                                                                                                                                                                           docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.1s
 => => transferring dockerfile: 100B                                                                                                                                                                                  0.0s
 => [internal] load .dockerignore                                                                                                                                                                                     0.1s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                                                                         0.0s
 => [1/2] FROM docker.io/library/python:3.9                                                                                                                                                                           0.9s
 => [2/2] RUN pip install pandas                                                                                                                                                                                     12.3s
 => exporting to image                                                                                                                                                                                                3.2s 
 => => exporting layers                                                                                                                                                                                               3.1s 
 => => writing image sha256:5ad4d2df0ff73c2d419e8ac79129657e4cb78654e7df5d87e0af026e37d77dfc                                                                                                                          0.0s 
 => => naming to docker.io/library/test:pandas                                                                                                                                                                        0.0s 
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it test:pandas                                                                                                                                           
root@77e74c9d9c5c:/# import padnas                                                                                                                                                                                         
import-im6.q16: unable to open X server `' @ error/import.c/ImportImageCommand/346.
root@77e74c9d9c5c:/# import pandas as pd
import-im6.q16: unable to open X server `' @ error/import.c/ImportImageCommand/346.
root@77e74c9d9c5c:/# 
exit
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it test:pandas
root@635dc4a5b690:/# 
exit
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 4.0s (9/9) FINISHED                                                                                                                                                                            docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.1s
 => => transferring dockerfile: 365B                                                                                                                                                                                  0.0s
 => [internal] load .dockerignore                                                                                                                                                                                     0.1s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                                                                         0.0s
 => [1/4] FROM docker.io/library/python:3.9                                                                                                                                                                           0.0s
 => [internal] load build context                                                                                                                                                                                     0.3s
 => => transferring context: 93B                                                                                                                                                                                      0.0s
 => CACHED [2/4] RUN pip install pandas                                                                                                                                                                               0.0s
 => [3/4] WORKDIR app/                                                                                                                                                                                                0.3s
 => [4/4] COPY pipeline.py pipeline.py                                                                                                                                                                                0.3s
 => exporting to image                                                                                                                                                                                                2.9s
 => => exporting layers                                                                                                                                                                                               2.9s
 => => writing image sha256:d56b48db8846087503a87fe2a8a177a7c7bfc4c1500253d0da7845578d128559                                                                                                                          0.0s
 => => naming to docker.io/library/test:pandas                                                                                                                                                                        0.0s
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it test:pandas
root@ff17afb2d527:/app# ls
pipeline.py
root@ff17afb2d527:/app# pwd
/app
root@ff17afb2d527:/app# python pipeline.py 
job done
root@ff17afb2d527:/app# 
exit
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker build -t test:pandas .
[+] Building 2.9s (9/9) FINISHED                                                                                                                                                                            docker:default
 => [internal] load .dockerignore                                                                                                                                                                                     0.1s
 => => transferring context: 2B                                                                                                                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                                                                                                                  0.1s
 => => transferring dockerfile: 427B                                                                                                                                                                                  0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                                                                         0.0s
 => [1/4] FROM docker.io/library/python:3.9                                                                                                                                                                           0.0s
 => [internal] load build context                                                                                                                                                                                     0.1s
 => => transferring context: 259B                                                                                                                                                                                     0.0s
 => CACHED [2/4] RUN pip install pandas                                                                                                                                                                               0.0s
 => CACHED [3/4] WORKDIR app/                                                                                                                                                                                         0.0s
 => [4/4] COPY pipeline.py pipeline.py                                                                                                                                                                                0.2s
 => exporting to image                                                                                                                                                                                                2.1s
 => => exporting layers                                                                                                                                                                                               2.1s
 => => writing image sha256:7b7e00a15503ec8f0e801e7954e7d694ceb739b41041040fabeff3da313c7a86                                                                                                                          0.0s
 => => naming to docker.io/library/test:pandas                                                                                                                                                                        0.0s
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ docker run -it test:pandas 2021-01-01
['pipeline.py', '2021-01-01']
job done for 2021-01-01
@soliverc ➜ /workspaces/ZCCodespace/docktest (main) $ 