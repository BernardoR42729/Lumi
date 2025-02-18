{pkgs, ...}: {
  config.vim = {
    telescope = {
      enable = true;
      setupOpts = {
        defaults = {
          vimgrep_arguments = [
            "${pkgs.ripgrep}/bin/rg"
            "--color=never"
            "--no-heading"
            "--with-filename"
            "--line-number"
            "--column"
            "--smart-case"
            "--hidden"
            "--no-ignore"
            "--fixed-strings"
          ];
          mappings = {
            i = {
              "<esc>" = "close";
            };
          };
        };
        extensions = {
          fzf = {
            fuzzy = true;
            override_generic_sorter = true;
            override_file_sorter = true;
            case_mode = "smart_case";
          };
        };
      };
      mappings = {
        buffers = "<leader>fb";
        findFiles = "<leader>ff";
        gitBranches = "<leader>gb";
        gitStatus = "<leader>gs";
        liveGrep = "<leader>fg";
      };
    };
    luaConfigRC.telescope =
      # lua
      ''
        require('telescope').load_extension('fzf')
      '';
    extraPlugins.telescope-media-files = {package = pkgs.vimPlugins.telescope-fzf-native-nvim;};
  };
}
