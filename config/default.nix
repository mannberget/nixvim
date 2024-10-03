{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymappings.nix
    ./plugins.nix
  ];

  extraConfigLua = ''
    vim.cmd([[
    hi LineNr guibg=None guifg=lightgray
    hi NoiceCmdlinePopupBorder guibg=None
    hi NoiceCmdlinePopupTitle guibg=None
    ]])
  '';
}
