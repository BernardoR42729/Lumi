{
  config.vim = {
    debugger.nvim-dap = {
      enable = true;
      mappings = {
        continue = null;
        goDown = null;
        goUp = null;
        hover = null;
        restart = null;
        runLast = null;
        runToCursor = null;
        stepBack = null;
        stepInto = null;
        stepOut = null;
        stepOver = null;
        terminate = null;
        toggleBreakpoint = null;
        toggleDapUI = null;
        toggleRepl = null;
      };
      ui = {
        enable = true;
      };
    };
    keymaps = [
      {
        key = "<F5>";
        mode = "n";
        silent = true;
        desc = "Debugger: Start";
        lua = true;
        action = ''function() require("dap").continue() end'';
      }
      {
        key = "<S-F5>";
        mode = "n";
        silent = true;
        desc = "Debugger: Stop";
        lua = true;
        action = ''function() require("dap").terminate() end'';
      }
      {
        key = "<C-F5>";
        mode = "n";
        silent = true;
        desc = "Debugger: Restart";
        lua = true;
        action = ''function() require("dap").restart_frame() end'';
      }
      {
        key = "<F9>";
        mode = "n";
        silent = true;
        desc = "Debugger: Toggle breakpoint";
        lua = true;
        action = ''function() require("dap").toggle_breakpoint() end'';
      }
      {
        key = "<S-F9>";
        mode = "n";
        silent = true;
        desc = "Debugger: Start";
        lua = true;
        action =
          # lua
          ''
            function()
              vim.ui.input({ prompt = "Condition: " }, function(condition)
                if condition then require("dap").set_breakpoint(condition) end
              end)
            end
          '';
      }
      {
        key = "<F10>";
        mode = "n";
        silent = true;
        desc = "Debugger: Step Over";
        lua = true;
        action = ''function() require("dap").step_over() end'';
      }
      {
        key = "<S-F10>";
        mode = "n";
        silent = true;
        desc = "Debugger: Step Back";
        lua = true;
        action = ''function() require("dap").step_back() end'';
      }
      {
        key = "<F11>";
        mode = "n";
        silent = true;
        desc = "Debugger: Step Into";
        lua = true;
        action = ''function() require("dap").step_into() end'';
      }
      {
        key = "<S-F11>";
        mode = "n";
        silent = true;
        desc = "Debugger: Step Out";
        lua = true;
        action = ''function() require("dap").step_out() end'';
      }
      {
        key = "<leader>db";
        mode = "n";
        silent = true;
        desc = "Breakpoint (F9)";
        lua = true;
        action = ''function() require("dap").toggle_breakpoint() end'';
      }
      {
        key = "<leader>dB";
        mode = "n";
        silent = true;
        desc = "Clear Breakpoints";
        lua = true;
        action = ''function() require("dap").clear_breakpoints() end'';
      }
      {
        key = "<leader>dc";
        mode = "n";
        silent = true;
        desc = "Start/Continue (F5)";
        lua = true;
        action = ''function() require("dap").continue() end'';
      }
      {
        key = "<leader>dC";
        mode = "n";
        silent = true;
        desc = "Clear Breakpoints";
        lua = true;
        action =
          #lua
          ''
            function()
              vim.ui.input({ prompt = "Condition: " }, function(condition)
                if condition then require("dap").set_breakpoint(condition) end
              end)
            end
          '';
      }
      {
        key = "<leader>do";
        mode = "n";
        silent = true;
        desc = "Step Over (F10)";
        lua = true;
        action = ''function() require("dap").step_over() end'';
      }
      {
        key = "<leader>db";
        mode = "n";
        silent = true;
        desc = "Step Back (S-F10)";
        lua = true;
        action = ''function() require("dap").step_back() end'';
      }
      {
        key = "<leader>di";
        mode = "n";
        silent = true;
        desc = "Step Into (F11)";
        lua = true;
        action = ''function() require("dap").step_into() end'';
      }
      {
        key = "<leader>dO";
        mode = "n";
        silent = true;
        desc = "Step Out (S-F11)";
        lua = true;
        action = ''function() require("dap").step_out() end'';
      }
      {
        key = "<leader>dq";
        mode = "n";
        silent = true;
        desc = "Close Session";
        lua = true;
        action = ''function() require("dap").close() end'';
      }
      {
        key = "<leader>dQ";
        mode = "n";
        silent = true;
        desc = "Terminate Session (S-F5)";
        lua = true;
        action = ''function() require("dap").terminate() end'';
      }
      {
        key = "<leader>dp";
        mode = "n";
        silent = true;
        desc = "Pause";
        lua = true;
        action = ''function() require("dap").pause() end'';
      }
      {
        key = "<leader>dr";
        mode = "n";
        silent = true;
        desc = "Restart (C-F5)";
        lua = true;
        action = ''function() require("dap").restart_frame() end'';
      }
      {
        key = "<leader>dR";
        mode = "n";
        silent = true;
        desc = "REPL";
        lua = true;
        action = ''function() require("dap").repl.toggle() end'';
      }
      {
        key = "<leader>ds";
        mode = "n";
        silent = true;
        desc = "Run To Cursor";
        lua = true;
        action = ''function() require("dap").run_to_cursor() end'';
      }
      {
        key = "<leader>dE";
        mode = "n";
        silent = true;
        desc = "Evaluate Input";
        lua = true;
        action =
          #lua
          ''
            function()
              vim.ui.input({ prompt = "Expression: " }, function(expr)
                if expr then require("dapui").eval(expr, { enter = true }) end
              end)
            end
          '';
      }
      {
        key = "<leader>du";
        mode = "n";
        silent = true;
        desc = "Debugger UI";
        lua = true;
        action = ''function() require("dapui").toggle() end'';
      }
      {
        key = "<leader>dh";
        mode = "n";
        silent = true;
        desc = "Debugger Hover";
        lua = true;
        action = ''function() require("dap.ui.widgets").hover() end'';
      }
    ];
  };
}
