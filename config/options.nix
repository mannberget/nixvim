{
  globals = {
    mapleader = " ";


    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
    # no banner
    # netrw_banner = 0;

    # explore is 25% of screeen
    # netrw_winsize = 25;

    # open split to right
    # netrw_altv = 1;

    # tree view
    # netrw_liststyle = 3;
  };

  clipboard = {
      register = "unnamedplus";
  };

  opts = {
      background = "dark";
      guicursor = "";
      number = true;
      visualbell = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      hlsearch = true;
      incsearch = true;
      scrolloff = 6;
      laststatus = 2;
      splitbelow = true;
      splitright = true;
      smartindent = true;
      termguicolors = true;
      wrap = false;
      mouse = "a";
      encoding = "utf-8";
      cmdheight = 2;
      colorcolumn = "100";
      undofile = true;
      updatetime = 2000;
  };

  colorschemes = {
    kanagawa = {
      enable = true;
      settings.transparent = true;
    };
    # nord = {
    #   enable = true;
    #   settings = {
    #     italic = false;
    #     borders = true;
    #   };
    # };
  };
}
