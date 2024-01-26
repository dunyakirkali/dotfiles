return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
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

		dap.adapters.mix_task = {
			type = "executable",
			command = "/opt/homebrew/bin/elixir-ls/debugger.sh",
			args = {},
		}

		dap.configurations.elixir = {
			{
				type = "mix_task",
				name = "mix test",
				task = "test",
				taskArgs = { "--trace" },
				request = "launch",
				startApps = true, -- for Phoenix projects
				projectDir = "${workspaceFolder}",
				requireFiles = {
					"test/**/test_helper.exs",
					"test/**/*_test.exs",
				},
			},
		}

		dap.adapters.perl = {
			type = "executable",
			command = vim.env.MASON .. "/bin/perl-debug-adapter",
			args = {},
		}

		dap.configurations.perl = {
			{
				type = "perl",
				request = "launch",
				name = "Launch Perl",
				program = "${workspaceFolder}/${relativeFile}",
			},
		}
		-- this is optional but can be helpful when starting out
		dap.set_log_level("TRACE")

		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dc", dap.continue, {})
	end,
}
