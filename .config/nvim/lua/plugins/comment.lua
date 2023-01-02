local status_ok, comment = pcall(require, "Comment")

if not status_ok then
  return
end

comment.setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = "<leader>lc",
    block = "<leader>bc"
  },
  opleader = {
    line = "<leader>ll",
    block = "<leader>bb"
  }
})
