local status_ok, toggleterm = pcall(require, "toggleterm")

if not status_ok then
  return
end

toggleterm.setup {
  auto_scroll = true,
  close_on_exit = true,
  direction = "float",
  float_opts = {
    border = "rounded",
    width = 140,
    height = 35,
    winblend = 3
  },
  hide_numbers = true,
  insert_mappings = true,
  open_mapping = [[<leader>t]],
  persist_size = true,
  shade_terminals = false,
  start_in_insert = true,
}
