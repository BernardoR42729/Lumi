<h1 align="center">
A neovim config made with <a href="https://github.com/NotAShelf/nvf">nvf</a>
<br>
<img src="./.github/assets/separator.png?" width="600px" />
<br>

<div align="center">
    <p></p>
    <a href="https://github.com/BANanaD3V/Lumi/issues">
        <img src="https://img.shields.io/github/issues/BANanaD3V/Lumi?color=A6DA95&labelColor=1e1e2e&style=for-the-badge">
    </a>
    <a href="https://github.com/BANanaD3V/Lumi/stargazers">
        <img src="https://img.shields.io/github/stars/BANanaD3V/Lumi?color=ca9ee6&labelColor=1e1e2e&style=for-the-badge">
    </a>
    <a href="https://github.com/BANanaD3V/Lumi/blob/main/LICENSE">
        <img src="https://img.shields.io/github/license/BANanaD3V/Lumi?color=EA999C&labelColor=1e1e2e&style=for-the-badge">
    </a>
    <a href="https://github.com/BANanaD3V/Lumi/blob/main/LICENSE">
        <img src="https://img.shields.io/badge/made_with-nix-EA9999?color=8BD5CA&labelColor=1e1e2e&style=for-the-badge">
    </a>
    <br>
</div>
</h1>

Lumi is a neovim configuration made with nvf for the best user experience while
having sane defaults.

<img src="./.github/assets/showcase_main.png" alt="Main screen">

<h3 align="center">
<details>
    <summary>More images</summary>
    <img src="./.github/assets/showcase_code.png" alt="Working on Lumi">
    <img src="./.github/assets/showcase_markdown.png" alt="Markdown rendering">
    <img src="./.github/assets/showcase_telescope.png" alt="Telescope theming">
</details>
</h3>

## Features

- **Beautiful customization**. Plugins are carefully chosen to make the config
  look good and consistent.
- **A powerful environment**. Lumi comes with a wide range of LSPs setup by
  default, aswell as other plugins to help you with developing.
- **Nix integration**. Lumi can be customized using nix modules system and
  accept a base16 colorscheme, so you can have it adapt to your rice.

## Installation

You can install Lumi as a package by adding an input to your flake:

```nix
Lumi = {
    url = "github:bananad3v/Lumi";
};
```

And then import a package somewhere in your configuration:

```nix
home.packages = [
    inputs.Lumi.packages.${system}.default
];
```

> [!NOTE]\
> A way to install Lumi using a module for customization is coming soon.

## Contributing and support

You are welcome to contribute and ask for support. To do so,
[open an issue](https://github.com/BANanaD3V/Lumi/issues) or
[submit a pull request](https://github.com/BANanaD3V/Lumi/pulls).
