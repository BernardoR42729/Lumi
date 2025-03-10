{pkgs, ...}: {
  vim = {
    languages.markdown = {
      enable = true;
      format = {
        enable = true;
        extraFiletypes = ["mdx"];
      };
      lsp.enable = true;
      treesitter.enable = true;
      extensions.markview-nvim.enable = true;
    };
  };
}
