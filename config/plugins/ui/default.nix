{
  config.vim.binds.whichKey.register = {
    "<leader>u" = " UI";
  };
  imports = [
    ./themes
    ./filetrees
    ./scrollbar.nix
    ./nvim-ufo.nix
    ./image.nix
    ./heirline.nix
    ./which-key.nix
    ./dropbar.nix
    ./noice.nix
    ./cursorline.nix
    ./fidget.nix
    ./telescope.nix
    ./showkeys.nix
    ./web-devicons.nix
    ./notify.nix
    ./smartcolumn.nix
    ./toggleterm.nix
    ./zen-mode.nix
    ./alpha.nix
    ./colorizer.nix
  ];
}
