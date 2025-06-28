return {
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
	root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
	init_options = {
		typescript = {},
	},
	before_init = function(_, config)
		if config.init_options and config.init_options.typescript and not config.init_options.typescript.tsdk then
			local project_roots =
				vim.fs.find("node_modules", { path = config.root_dir, upward = true, limit = math.huge })
			for _, project_root in ipairs(project_roots) do
				local typescript_path = project_root .. "/typescript"
				local stat = vim.loop.fs_stat(typescript_path)
				if stat and stat.type == "directory" then
					config.init_options.typescript.tsdk = typescript_path .. "/lib"
					break
				end
			end
		end
	end,
}
