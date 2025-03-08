{pkgs, ...}: {
  config.vim = {
    binds.whichKey.register = {
      "<leader>f" = " Find";
    };
    telescope = {
      enable = true;
      setupOpts = {
        defaults = {
          prompt_prefix = "❯ ";
          selection_caret = "❯ ";
          multi_icon = "❯ ";
          path_display = ["truncate"];
          sorting_strategy = "ascending";
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
          # TODO: Telescope undo
          fzf = {
            fuzzy = true;
            override_generic_sorter = true;
            override_file_sorter = true;
            case_mode = "smart_case";
          };
          zoxide = {
            prompt_title = "Change directory";
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
    keymaps = [
      {
        key = "<leader>z";
        mode = ["n"];
        action = ":Telescope zoxide list<CR>";
        silent = true;
        desc = "Change directory using zoxide";
      }
    ];
    luaConfigRC.telescope =
      # lua
      ''
        require('telescope').load_extension('fzf')
        require('telescope').load_extension("neoclip")
        require('telescope').load_extension('zoxide')
        require('telescope').load_extension("notify")
        require('telescope').load_extension("projects")
        require('telescope').load_extension("aerial")
      '';
    extraPlugins = {
      telescope-fzf-nvim = {
        package = pkgs.vimPlugins.telescope-fzf-native-nvim;
      };
      telescope-zoxide = {
        package = pkgs.vimPlugins.telescope-zoxide;
      };
    };
  };
}
