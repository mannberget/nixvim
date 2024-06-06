{
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
        pyright.enable = true;
        yamlls.enable = true;
        ccls.enable = true;
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
    };

    telescope = {
      enable = true;
      extensions = {
        ui-select.enable = true;
      };
      settings.defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.ccls-cache/"
          "^output/"
          "^target/"
          "^build/"
        ];
      };
    };

    nvim-tree = {
      enable = true;
      git.enable = false;
      # git.timeout = 200;
      # renderer.indentWidth = 1;
      view.float.enable = true;
      selectPrompts = true;
      # updateFocusedFile.enable = true;
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
      action = "<Cmd>BufferLineCloseOthers<CR>";
      options.desc = "Close Other Buffers";
    }

    # Telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>lua require('telescope.builtin').live_grep({hidden = true})<CR>";
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

    # Nvim Tree
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
      options.desc = "Toggle Tree";
    }
  ];
}
