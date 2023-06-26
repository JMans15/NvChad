local M = {}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "Update crates",
    },
  },
}

M.markdown = {
  n = {
    ["<C-p>"] = {
      "<cmd> MarkdownPreviewToggle <CR>",
      "Toggle markdown preview in browser",
    }
  }
}

M.cargo = {
  n = {
    ["<F5>"] = {
      "<cmd> Cargo run <CR>",
      "Cargo run",
    },
    ["<F6>"] = {
      "<cmd> Cargo run --release <CR>",
      "Cargo run release",
    }
  }
}

return M
