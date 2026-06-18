---@type LazySpec
return {
  {
    "RRethy/vim-illuminate",
    opts = {
      providers = { "lsp", "regex" }, -- exclude treesitter (broken on nvim 0.13-dev)
    },
  },
  {
    "stevearc/aerial.nvim",
    opts = {
      backends = { "lsp", "markdown", "man" }, -- exclude treesitter (node:start() broken on nvim 0.13-dev)
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        -- treesitter indent queries are broken for JS/TS on nvim 0.13-dev
        disable = { "javascript", "typescript", "tsx", "jsx" },
      },
    },
    init = function(plugin)
      require("lazy.core.loader").add_to_rtp(plugin)
      pcall(require, "nvim-treesitter.query_predicates")
    end,
    config = function(_, opts)
      local q = require("vim.treesitter.query")
      -- In nvim 0.13-dev the match API changed: captures can be a list even with all=false.
      -- This helper always returns a single TSNode regardless.
      local function get_node(match, id)
        local node = match[id]
        if not node then return nil end
        if vim.islist(node) then node = node[1] end
        if not node or type(node.range) ~= "function" then return nil end
        return node
      end

      local patch_opts = { force = true, all = false }

      local non_filetype_aliases = { ex = "elixir", pl = "perl", sh = "bash", uxn = "uxntal", ts = "typescript" }
      local function lang_from_info(alias)
        return vim.filetype.match({ filename = "a." .. alias }) or non_filetype_aliases[alias] or alias
      end

      q.add_directive("set-lang-from-info-string!", function(match, _, bufnr, pred, metadata)
        local node = get_node(match, pred[2])
        if not node then return end
        local ok, text = pcall(vim.treesitter.get_node_text, node, bufnr)
        if not ok or not text then return end
        metadata["injection.language"] = lang_from_info(text:lower())
      end, patch_opts)

      q.add_directive("downcase!", function(match, _, bufnr, pred, metadata)
        local id = pred[2]
        local node = get_node(match, id)
        if not node then return end
        local ok, text = pcall(vim.treesitter.get_node_text, node, bufnr)
        if not ok or not text then return end
        if not metadata[id] then metadata[id] = {} end
        metadata[id].text = string.lower(text)
      end, patch_opts)

      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
