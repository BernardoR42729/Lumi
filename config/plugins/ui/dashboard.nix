{
  config.vim.dashboard.dashboard-nvim = {
    enable = true;
    setupOpts = {
      theme = "doom";
      config = {
        header = [
          "                                    ██████                                    "
          "                                ████▒▒▒▒▒▒████                                "
          "                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              "
          "                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            "
          "                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              "
          "                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          "
          "                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          "
          "                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        "
          "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        "
          "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        "
          "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        "
          "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        "
          "                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        "
          "                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        "
          "                        ██      ██      ████      ████                        "
        ];
        center = [
          {
            icon = "󰥔 ";
            desc = "Recent           ";
            key = "r";
            key_format = " %s";
            action = "lua require('telescope.builtin').oldfiles";
          }
          {
            icon = " ";
            desc = "Find Dotfiles";
            key = "f";
            keymap = "SPC f d";
            key_format = " %s";
            action = "lua print(3)";
          }
        ];
        footer = {};
      };
    };
  };
}
