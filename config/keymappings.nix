{
  keymaps = [
    # Split management
    {
      # split vertically
      mode = "n";
      action = "<C-w>v";
      key = "<leader>sv";
    }
    {
      # split horizontally
      mode = "n";
      action = "<C-w>h";
      key = "<leader>sh";
    }
    {
      # make splits equal
      mode = "n";
      action = "<C-w>=";
      key = "<leader>se";
    }
    {
      # close split
      mode = "n";
      action = ":close<CR>";
      key = "<leader>sx";
    }

    
    # Misc
    {
      # add empty line under cursor
      mode = "n";
      action = "o<Esc>";
      key = "<leader>o";
    }
    {
      # fast scroll down
      mode = "n";
      action = "10<C-e>10j";
      key = "<C-j>";
    }
    {
      # fast scroll up
      mode = "n";
      action = "10<C-y>10k";
      key = "<C-k>";
    }
    {
      # delete char without replacing register
      mode = "n";
      action = "<nop>";
      key = "q";
    }
  ];
}
