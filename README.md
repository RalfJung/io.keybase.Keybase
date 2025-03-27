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

Now clone this git repo, and then run:

```
flatpak-builder --user --install --force-clean builddir io.keybase.Keybase.yml
```

Now you can run it like any other flatpak.

## Updating

This respository provides flatpak for a fixed version of keybase. See [here](https://github.com/RalfJung/io.keybase.Keybase/blob/master/io.keybase.Keybase.yml#L54) for current version.

To update keybase flatpak you need up date this line (see comment for where to find latest release file name), and then rebuild and install with command above. This should preseve you settings & database.
