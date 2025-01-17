{pkgs, ...}: {
  plugins = {

    bufferline = {
      enable = true;
    };

    lualine = {
      enable = true;
    };

    lsp = {
      enable = true;
      servers = {
        nil-ls.enable = true;
        pylsp = {
          enable = true;
          settings = {
            plugins.black.enabled = false;
            plugins.pycodestyle.enabled = false;
            # plugins.pycodestyle.maxLineLength = 88;
            plugins.pyflakes.enabled = false;
            plugins.mccabe.enabled = false;

            plugins.flake8.enabled = true;
            plugins.autopep8.enabled = true;
          };
        };

        # Config filetypes
        yamlls.enable = true;
        jsonls.enable = true;

        # C / C++
        ccls.enable = true;
        # clangd.enable = true;
        
        # JS/Vue
        eslint.enable = true;
        volar.enable = true;

        # Webdev
        gopls.enable = true;
        templ.enable = true;
        html.enable = true;
        htmx.enable = true;
        cssls.enable = true;

      };

      keymaps = {
        silent = true;
        diagnostic = {
          "<leader>E" = "open_float";
          "gE" = "goto_prev";
          "ge" = "goto_next";
        };
        lspBuf = {
          "gd" = "definition";
          "gt" = "type_definition";
          "<leader>k" = "hover";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
          "<leader>fo" = "format";
        };
      };
    };

    lspkind.enable = true;

    cmp = {
      enable = true;
      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };

        sources = [
          {name = "path";}
          {name = "nvim_lsp";}
          {name = "luasnip";}
          {name = "buffer";}
        ];
      };
    };

    treesitter = {
      enable = true;
      nixGrammars = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;
    };

    telescope = {
      enable = true;
      extensions.file-browser.enable = true;
      settings.defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.ccls-cache/"
          "^output/"
          "^target/"
          "^build/"
        ];
        mappings = {
          i = {
            "<C-d>" = {
              __raw = "require('telescope.actions').preview_scrolling_up";
            };
            "<C-f>" = {
              __raw = "require('telescope.actions').preview_scrolling_down";
            };
            "<C-s>" = {
              __raw = "require('telescope.actions').preview_scrolling_left";
            };
            "<C-g>" = {
              __raw = "require('telescope.actions').preview_scrolling_right";
            };
            "<C-a>" = {
              __raw = "require('telescope.actions').toggle_selection";
            };
            "<Tab>" = {
              __raw = "require('telescope.actions').move_selection_worse";
            };
            "<S-Tab>" = {
              __raw = "require('telescope.actions').move_selection_better";
            };
          };
        };
      };
    };

    typescript-tools.enable = true;

    noice.enable = true;

    nvim-tree = {
      enable = true;
      git.enable = true;
      git.timeout = 200;
      renderer.indentWidth = 1;
      hijackDirectories.enable = false;
      hijackNetrw = false;
      disableNetrw = false;
      view.float.enable = true;
      selectPrompts = false;
      updateFocusedFile.enable = true;
      openOnSetup = false;
    };
    
    comment = {
      enable = true;
      settings = {
        opleader.line = "<leader>c";
        toggler.line = "<leader>cc";
      };
    };
  };

  keymaps = [

    # Bufferline
    {
      mode = "n";
      key = "<C-l>";
      action = "<Cmd>BufferLineCycleNext<CR>";
      options.desc = "Next Buffer";
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<Cmd>BufferLineCyclePrev<CR>";
      options.desc = "Prev Buffer";
    }
    {
      mode = "n";
      key = "<C-x>";
      action = "<Cmd>bd<CR>";
      options.desc = "Close Current Buffer";
    }

    # Telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>lua require('telescope.builtin').find_files({hidden = false})<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>lua require('telescope.builtin').live_grep({hidden = false})<CR>";
      options.desc = "Grep Files";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>lua require('telescope.builtin').buffers()<CR>";
      options.desc = "Find Buffer";
    }
    {
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>lua require('telescope.builtin').diagnostics()<CR>";
      options.desc = "Find Diagnostics";
    }

    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
      options.desc = "Toggle file browser";
    }
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>";
      options.desc = "Toggle file browserr";
    }
  ];
}
