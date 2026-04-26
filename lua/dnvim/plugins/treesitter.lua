return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local ts = require('nvim-treesitter')
      ts.setup()

      local group = vim.api.nvim_create_augroup('dnvim_treesitter_start', { clear = true })
      vim.api.nvim_create_autocmd('FileType', {
        group = group,
        pattern = { 'bash', 'c', 'diff', 'go', 'help', 'html', 'lua', 'markdown', 'ocaml', 'vim' },
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
}
