return {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("dap").configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}", -- This configuration will launch the current file if used.
        },
        {
          type = "python",
          request = "launch",
          name = "Launch module with arguments",
          module = function()
            local module_name = vim.fn.input "Module name: "
            return module_name
          end,
          args = function()
            local args_string = vim.fn.input "Arguments: "
            local list_to_return = vim.split(args_string, " +")
            return list_to_return
          end,
        },
        {
          type = "python",
          request = "launch",
          name = "Launch module",
          module = function()
            local module_name = vim.fn.input "Module name: "
            return module_name
          end,
        },
        {
          type = "python",
          request = "launch",
          name = "Run Pytests",
          module = "pytest",
        },
      }
    end,
  }

