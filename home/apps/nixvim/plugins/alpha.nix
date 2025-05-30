{
  programs.nixvim.plugins.alpha.layout = [
    # --- Header Section ---
    {
      type = "text";
      opts = {
        hl = "Statement"; # You can customize highlight group if you like
        position = "center";
      };
      val = [
        "   ██████╗ ███╗   ███╗██╗  ██╗ "
        "  ██╔════╝ ████╗ ████║██║  ██║ "
        "  ██║ ███╗██╔████╔██║███████║ "
        "  ██║  ██║██║╚██╔╝██║██╔══██║ "
        "  ╚██████╔╝██║ ╚═╝ ██║██║  ██║ "
        "   ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝ "
        "        Forever, always."
      ];
    }

    # --- Padding after Header ---
    {
      type = "padding";
      val = 2; # Add 2 lines of padding
    }

    # --- Buttons Section (using 'group' for multiple buttons) ---
    {
      type = "group";
      val = [
        {
          type = "button";
          val = "  New file";
          opts = {
            shortcut = "n";
            hl = "String"; # Highlight for the button text
          };
          on_press = {
            __raw = "function() vim.cmd[[ene <BAR> startinsert]] end";
          };
        }
        {
          type = "button";
          val = "  Find file";
          opts = {
            shortcut = "f";
            hl = "String";
          };
          on_press = {
            __raw = "function() require('telescope.builtin').find_files({ hidden = true }) end";
          };
        }
        {
          type = "button";
          val = "  Recent files";
          opts = {
            shortcut = "r";
            hl = "String";
          };
          on_press = {
            __raw = "function() require('telescope.builtin').oldfiles() end";
          };
        }
        {
          type = "button";
          val = "  Edit Qtile";
          opts = {
            shortcut = "e";
            hl = "String";
          };
          on_press = {
            __raw = "function() vim.cmd[[e ~/.config/qtile/config.py]] end";
          };
        }
        {
          type = "button";
          val = "󱠓  Edit Themes";
          opts = {
            shortcut = "t";
            hl = "String";
          };
          on_press = {
            __raw = "function() vim.cmd[[e ~/.config/qtile/themes/theme.py]] end";
          };
        }
        {
          type = "button";
          val = "  Configuration";
          opts = {
            shortcut = "c";
            hl = "String";
          };
          on_press = {
            # Adjust this path if your Nixvim config is elsewhere
            __raw = "function() vim.cmd[[e ~/.config/nvim/init.lua]] end";
          };
        }
        {
          type = "button";
          val = "  Quit Neovim";
          opts = {
            shortcut = "q";
            hl = "String";
          };
          on_press = {
            __raw = "function() vim.cmd[[qa]] end";
          };
        }
      ];
    }

    # --- Padding after Buttons ---
    {
      type = "padding";
      val = 2;
    }
  ];
}