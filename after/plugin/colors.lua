require("tokyonight").setup {
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  }
}

function ApplyTheme(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "lightgrey" })

  vim.cmd 'highlight TelescopeBorder guibg=none'
  vim.cmd 'highlight TelescopeTitle guibg=none'
end

ApplyTheme()
