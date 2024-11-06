require("conform").setup({
  formatters_by_ft = {
    lua = { "lua_ls" },
    javascript = { "prettier", stop_after_first = true },
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
