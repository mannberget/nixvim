{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymappings.nix
    ./plugins.nix
  ];

  extraConfigLuaPost = ''
    vim.cmd([[
    hi DiagnosticSignError guibg=None
    hi DiagnosticSignInfo guibg=None
    hi DiagnosticSignWarn guibg=None
    hi FloatBorder guibg=None guifg=gray
    hi LineNr guibg=None guifg=lightgray
    hi NoiceCmdlinePopupBorder guibg=None guifg=gray
    hi NoiceCmdlinePopupTitle guibg=None guifg=gray
    hi NoiceCmdlineIcon guibg=None guifg=gray
    hi NormalFloat guibg=None
    hi SignColumn guibg=None
    hi TelescopeBorder guibg=None guifg=gray
    hi WinSeparator guifg=gray
    hi Visual guibg=#606060
    ]])
  '';
}
