{
  config.vim = {
    mini.misc = {
      enable = true;
    };
    luaConfigRC.mini-misc =
      # lua
      ''
        MiniMisc.setup_auto_root()
      '';
  };
}
