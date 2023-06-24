function ApplyTheme(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
end

ApplyTheme()
