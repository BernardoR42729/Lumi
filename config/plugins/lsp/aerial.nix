{pkgs, ...}: {
  config.vim.extraPlugins = with pkgs.vimPlugins; {
    aerial = {
      package = aerial-nvim;
      setup = "require('aerial').setup {}";
    };
  };
}
