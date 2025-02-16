{
  config.vim = {
    binds.whichKey.register = {
      "<leader>l" = " LSP";
    };
    lsp = {
      enable = true;
      formatOnSave = true;
      lightbulb.enable = true;
      null-ls.enable = true;
      lspSignature.enable = true;
      lspconfig.enable = true;
      lspkind.enable = true;
      lspsaga.enable = false; # FIX: airbnb symbol
      otter-nvim.enable = true;
    };
  };
}
