# sasquatchdev/dotf

A collection of all my local dotfiles. This includes
everything from github to nixos.

## installation

> [!Note]
> installation for the `vscode` submodule is different. See 

To download and install my dotfiles you want to have
all the prerequisites already installed. Next, run

```bash
cd ~ && git clone https://github.com/sasquatchdev/dotf.git
```

and wait for git to automatically download the latest version
of this repository.

Then (optionally), you'll want to run

```bash
mv dotf .dotf
```

to rename the "dotf" directory to ".dotf" (this is purely for
personal preference, but i like it that way)

Finally, you need to run

```bash
stow .
```

which will use GNU stow to automatically sync all dotfiles.

## updating

If you want to update all dotfiles, simply redownload the repo using

```bash
cd ~ && git clone https://github.com/sasquatchdev/dotf.git
```

and then replace either all dotfiles 

```bash
mv dotf .dotf
```

or only certain packages

```bash
mv dotf/nvim .dotf/nvim
```

with their newer versions.
