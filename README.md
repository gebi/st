# st - simple terminal INTEGRATION
st is a simple terminal emulator for X which sucks less.

This is repository with my config and integration scripts tracking what i use as st.
I really hate handling patches, thus everything is done in git.

## Overview

Every patch i use is imported into it's own git branch.


Together with the `master` branch holding my config, all branches i use (mostly
st-\*) are merged togeter ontop of the version of `upstream` i use into the
`release` branch.
All merges are done with `--no-ff` to have it's history.

ATTENTION: this means the `release` branch is reset every time i prepare a
    release, and create a tag when the release is finished.


For some patches `config.h` from the master branch needs additional definitions
taken from `config.def.h`.

## Branches

* master: contains my `config.h` and integraiont scripts
* release: contains the most recent version of `st` i use, ATTENTION: this branch is reset!
* upstream: tracks the upstream st git repo
* st-\*: includes all imported patches from https://st.suckless.org/patches/
* t/st-\*: all st features i've tested but am currently not using
