local onedark_status_ok, onedark = pcall(require, "onedark")

if not onedark_status_ok then
  return
end

onedark.setup({
  code_style = {
    comments = "italic",
    keywords = "bold",
    strings = "italic",
    variables = "bold"
  },
  lualine = {
    transparent = true
  },
  style = "darker",
  transparent = true
})

onedark.load()

vim.cmd [[colorscheme onedark]]
