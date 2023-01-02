local comment_status, comment = pcall(require, "Comment")

if not comment_status then
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
