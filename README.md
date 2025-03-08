# Kantinen 2012

This is my first attempt at creating a small game in [Inform
7](https://ganelson.github.io/inform-website/).


## Files

  - `story.ni`: This is the story file written in Inform 7.
  - `uuid.txt`: This is a universally unique identifier that Inform 7
    embeds into the compiled binary story file.
  - `*.nix`: These are [Nix](https://nixos.org/) files to help with
    developing, building, and running the code.


## Building and running

To build and run this story, first install [Nix](https://nixos.org/).

Then run `nix-shell` to enter an environment with Inform 7 tooling
present.  This is useful for when developing the game.

Here, run `make bin/test.ulx` to build a test build, or `make
bin/release.ulx` to build a release build, both in the [Glulx
format](https://www.eblong.com/zarf/glulx/).

Run `inform7-run bin/test.ulx`, or just `make test`, to run the test
build. Run `inform7-run release.ulx` to run the release build. (The test
build has additional helper commands such as
[`SHOWME`](https://ganelson.github.io/inform-website/book/WI_2_7.html).)

You can also run `nix-build` to build a release build.  This will build
`release.ulx` and make it available as `result/kantinen2012.ulx`.  This
is useful if you only need to build it, and not actively develop it.

(Alternatively, if you can't install Nix, you can follow the [Inform 7
manual on how to use its
GUIs](https://ganelson.github.io/inform-website/book/WI_1_3.html) and
manually import `story.ni` into the story window, and then build and run
from there.)


## External resources

  - [Emacs package on MELPA](https://melpa.org/#/inform7)


## License

Copyright (C) 2025 by Niels G. W. Serup.

This program is free software: you can redistribute it and/or modify it
under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
General Public License for more details.
