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
    };
    extraPlugins.markview = with pkgs.vimPlugins; {
      package = markview-nvim;
    };
  };
}
