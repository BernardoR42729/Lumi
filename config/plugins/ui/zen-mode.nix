{pkgs, ...}: {
  config.vim.lazy.plugins = {
    "zen-mode.nvim" = {
      package = pkgs.vimPlugins.zen-mode-nvim;
      setupModule = "zen-mode";
      setupOpts = {};
      lazy = true;
      event = ["BufEnter"];
    };
  };
}
