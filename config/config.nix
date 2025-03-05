{pkgs, ...}: {
  config.vim = {
    extraPackages = with pkgs; [
      git
      fzf
      ripgrep
      fd
      zoxide
    ];
    luaConfigPost =
      # lua
      ''
        vim.api.nvim_create_autocmd("InsertEnter", {
          pattern = "*",
          command = "set number norelativenumber",
        })
        vim.api.nvim_create_autocmd("InsertLeave", {
          pattern = "*",
          command = "set number relativenumber",
        })
      '';

    viAlias = true;
    vimAlias = true;
    lineNumberMode = "relNumber";
    searchCase = "smart";
    preventJunkFiles = true;
    spellcheck = {
      enable = true;
      programmingWordlist.enable = true;
    };
    globals = {
      mapleader = " ";
      editorconfig = true;
    };
    useSystemClipboard = true;
    options = {
      sessionoptions = "buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds";
      expandtab = false;

      magic = true;
      gdefault = true;

      autoindent = false;
      smartindent = false;
      shiftwidth = 2;

      breakindent = true;

      hlsearch = true;
      incsearch = true;

      wrap = true;

      splitbelow = true;
      splitright = true;

      infercase = true;
      smartcase = true;
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      updatetime = 50;

      completeopt = "menuone,noselect,noinsert";

      swapfile = false;
      backup = false;
      undofile = true;

      termguicolors = true;

      signcolumn = "yes";

      foldcolumn = "1";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      scrolloff = 1000;

      timeoutlen = 10;

      encoding = "utf-8";
      fileencoding = "utf-8";

      cmdheight = 2;
    };
  };
}
