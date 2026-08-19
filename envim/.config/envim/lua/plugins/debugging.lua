return{
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio"
	},


config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
        dapui.open()
    end

    dap.listeners.before.launch.dapui_config = function()
        dapui.open()
    end

    dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
    end

    dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
    end

--The following is for the nvim DAP
    vim.keymap.set('n', '<Leader>dr', function() require('dap').continue() end, {desc = "Debug Run"})

vim.keymap.set("n", "<leader>dc", function()
  require("dap").debug_from_cursor()
end, { desc = "Debug from Cursor" })

--vim.keymap.set('n', '<Leader>dr', function() require('dap').continue() end, {desc = "Debug run"})
    vim.keymap.set('n', '<Leader>do', function() require('dap').step_over() end, {desc = "Step Over"})
    vim.keymap.set('n', '<Leader>dn', function() require('dap').step_into() end, {desc = "Step Into"})
    vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, {desc = "Step Out"})
    vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end, {desc = "Toggle Breakpoint"})
    vim.keymap.set('n', '<Leader>dB', function() require('dap').set_breakpoint() end, {desc = "Set Breakpoint"})
    vim.keymap.set('n', '<Leader>dz', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, {desc = "Set Breakpoint w/message"})
    vim.keymap.set('n', '<Leader>do', function() require('dap').repl.open() end, {desc = "Repl Open"})
    vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, {desc = "Run Last"})
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end, {desc = "Widgets Hover"})
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end, {desc = "Widgets Preview"})
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end, {desc = "Widgets Centered Float frames"})
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end, {desc = "Widgets Centered Float Scopes"})

	end,
}
