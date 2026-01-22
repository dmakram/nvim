return {
	"David-Kunz/gen.nvim",
	opts = {
		model = "qwen2.5-coder:latest", -- ← use exactly this if that's what `ollama list` shows
		-- model = "qwen2.5-coder",          -- ← try this first (without tag) — often works better
		quit_map = "q",
		retry_map = "<c-r>",
		accept_map = "<c-cr>",
		host = "localhost",
		port = "11434",
		display_mode = "split",
		show_prompt = false,
		show_model = false,
		no_auto_close = false,
		file = false,
		hidden = false,

		init = function(options)
			pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
		end,

		command = function(options)
			local body = { model = options.model, stream = true }
			return "curl --silent --no-buffer -X POST http://"
				.. options.host
				.. ":"
				.. options.port
				.. "/api/chat -d $body"
		end,

		result_filetype = "markdown",
		debug = true, -- ← very helpful! Turn this on to see detailed errors
	},
}
