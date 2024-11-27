_:
let
  get_bufnrs.__raw = ''
    function()
      local buf_size_limit = 1024 * 1024 -- 1MB size limit
      local bufs = vim.api.nvim_list_bufs()
      local valid_bufs = {}
      for _, buf in ipairs(bufs) do
        if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf)) < buf_size_limit then
          table.insert(valid_bufs, buf)
        end
      end
      return valid_bufs
    end
  '';
in
{
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-path.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
  settings = {
        mapping = {
          "<C-h>" = # Lua
            ''cmp.mapping(function()
                local luasnip = require('luasnip')
                if luasnip.locally_jumpable(-1) then
                  luasnip.jump(-1)
                end
              end, { "i", "s" })'';
          "<C-l>" = # Lua
            ''cmp.mapping(function()
                local luasnip = require('luasnip')
                if luasnip.expand_or_locally_jumpable() then
                  luasnip.expand_or_jump()
                end
              end, { "i", "s" })'';
          "<C-d>" = # Lua
            "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = # Lua
            "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = # Lua
            "cmp.mapping.complete()";
          "<C-e>" = # Lua
            "cmp.mapping.close()";
          "<Tab>" = # Lua
            "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<S-Tab>" = # Lua
            "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<CR>" = # Lua
            "cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })";
        };
        snippet.expand = # Lua
          "function(args) require('luasnip').lsp_expand(args.body) end";

        sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
          {name = "luasnip";}
        ];
      };
  };
}
