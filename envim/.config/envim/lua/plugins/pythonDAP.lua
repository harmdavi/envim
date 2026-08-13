return{
	"mfussenegger/nvim-dap-python",

	config = function()
		require("dap-python").setup(".venv/bin/python")
-- If using the above, then `/path/to/venv/bin/python -m debugpy --version`
-- must work in the shell
	end,

}
