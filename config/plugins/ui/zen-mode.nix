{pkgs, ...}: {
  config.vim = {
    lazy.plugins = {
      "zen-mode.nvim" = {
        package = pkgs.vimPlugins.zen-mode-nvim;
        setupModule = "zen-mode";
        setupOpts = {};
        lazy = true;
        event = ["BufEnter"];
      };
    };
    keymaps = [
      {
        key = "<leader>uz";
        mode = "n";
        silent = true;
        desc = "Zen mode";
        action = ":ZenMode<CR>";
      }
    ];
  };
}
