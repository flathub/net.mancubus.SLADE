# SLADE

Welcome to the Flathub specific package for [SLADE](https://slade.mancubus.net/).

## Security considertion

Due to a security issue with [FreeImage library](https://freeimage.sourceforge.io/), this package does not have internet access by default. More details are available on the [SLADE Github](https://github.com/sirjuddington/SLADE/issues/1675).

If you want to enable network access for SLADE, you can do so using [Flatseal](https://flathub.org/apps/com.github.tchx84.Flatseal) or with the following command:

`flatpak override --user --share=network net.mancubus.SLADE`
