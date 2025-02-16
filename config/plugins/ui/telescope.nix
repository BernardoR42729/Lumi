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
      };
      mappings = {
        buffers = "<leader>fb";
        findFiles = "<leader>ff";
        gitBranches = "<leader>gb";
        gitStatus = "<leader>gs";
        liveGrep = "<leader>fg";
      };
    };
  };
}
