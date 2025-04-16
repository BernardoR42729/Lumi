{pkgs, ...}: {
  config.vim.lazy.plugins = {
    "actions-preview.nvim" = {
      package = pkgs.vimPlugins.actions-preview-nvim;
      setupModule = "actions-preview";
      setupOpts = {
        telescope = {
          sorting_strategy = "ascending";
          # layout_strategy = "vertical";
          layout_config = {
            horizontal = {
              prompt_position = "top";
              preview_width = 0.50;
            };
            vertical = {
              mirror = false;
            };
            width = 0.87;
            height = 0.80;
            preview_cutoff = 120;
          };
        };
      };
      lazy = false;
      # event = "User BaseDefered";
    };
  };
}
