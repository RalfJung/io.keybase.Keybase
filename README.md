# Keybase

This repo hosts an **unofficial** flatpak version of [Keybase](https://keybase.io/)

Keybase is an encrypted messenger and file sharing software.
However, file sharing (in particular access to the `/keybase` file system) is not supported by this flatpak.

## Installing

This package is not on the official flathub, so you'll have to download, build, and install it yourself.
You will still need the default flathub repo for this, which can be added as follows:

```
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

This is required even if your distro has set up `flathub` as a system-wide flatpak repo!
For some reason, `flatpak-builder` will not pick up system repos.

Now clone this git repo, and then run:

```
flatpak-builder --user --install --install-deps-from=flathub --force-clean builddir io.keybase.Keybase.yml
```

Now you can run it like any other flatpak.

## Updating

This repository provides a flatpak for a fixed version of keybase.
See [here](https://github.com/RalfJung/io.keybase.Keybase/blob/master/io.keybase.Keybase.yml#L54) for the current version.

To update the keybase version, you need up date this line (see comment for where to find latest release file name), and then rebuild and install with the command above.
This should preserve your settings & database.
