local telescope_status, telescope = pcall(require, "telescope")
local telescope_actions_status, telescope_actions = pcall(require, "telescope.actions")

if not telescope_status then
  return
end

if not telescope_actions_status then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = telescope_actions.move_selection_previous,
        ["<C-j>"] = telescope_actions.move_selection_next
      }
    }
  }
})

telescope.load_extension("fzf")
