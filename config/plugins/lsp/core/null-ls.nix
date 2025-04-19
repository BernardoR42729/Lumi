{lib, ...}: {
  config.vim.lsp.null-ls = {
    enable = lib.mkForce false;
  };
}
