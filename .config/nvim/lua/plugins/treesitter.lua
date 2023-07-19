local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not treesitter_status_ok then
  return
end

treesitter.setup({
  auto_install = true,
  ensure_installed = "all",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = true
  },
  context_commentstring = {
    enable = true
  },
  rainbow = {
    enable = true,
    max_file_lines = nil
  }
})
