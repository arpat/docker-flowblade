# docker flowblade

The flowblade Video Editor, in docker.

## Requirements

- docker
- A working X11 on the host

## Usage

- Build the docker image with `build.sh`

- `run.sh` starts on local Xorg, tested on Ubuntu 16.04

  `mkdir -p fbwork/fbhome` before running, (or `chown -R $UID fbwork/` after)

   You may first need to allow the host machine's X11 to be accesible by running `xhost +` (or use xauth).

   The container now runs as your current user, and adds the audio group to allow access to ALSA. In the current working directory `fbwork/` is mounted inside the container as `/workdir` and `fbwork/fbhome/` as `/home/${USER}/`.

## TODO

Try and make flowblade and Pulseaudio work together, currently seems to require stopping pulseaudio on the host first.


## Credits

Janne Liljeblad for flowblade
https://jliljebl.github.io/flowblade/index.html

## License

MIT

Copyright 2017 Arun Patel

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
