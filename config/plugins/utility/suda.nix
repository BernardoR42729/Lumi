{pkgs, ...}: {
  config.vim = {
    extraPlugins.suda = {
      package = pkgs.vimUtils.buildVimPlugin {
        pname = "vim-suda";
        #doCheck = false;
        version = "1.2.4";
        src = pkgs.fetchFromGitHub {
          owner = "lambdalisue";
          repo = "vim-suda";
          rev = "v1.2.4";
          sha256 = "sha256-46sy3rAdOCULVt1RkIoGdweoV3MqQaB33Et9MrxI6Lk=";
        };
      };
    };
    keymaps = [
      {
        key = "<leader>W";
        mode = "n";
        silent = true;
        desc = "Save as sudo";
        lua = true;
        action = ''function() vim.cmd("SudaWrite") end'';
      }
    ];
  };
}
