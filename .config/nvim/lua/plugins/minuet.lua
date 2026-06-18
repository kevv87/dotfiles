return {
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "Saghen/blink.cmp" },
    config = function()
      require("minuet").setup {
        provider = "openai_fim_compatible",
        n_completions = 3,
        throttle = 1500,
        debouce = 600,
        request_timeout = 3,
        provider_options = {
          openai_fim_compatible = {
            name = "OR-DS-V4-Flash",
            model = "deepseek/deepseek-v4-flash",
            end_point = "https://openrouter.ai/api/v1/completions",
            api_key = "OPENROUTER_CODE_COMPLETION_KEY",
            stream = true,
            optional = {
              max_tokens = 80,
              top_p = 0.9,
              provider = { sort = "throughput" },
            },
          },
        },
      }
    end,
  },
  {
    "Saghen/blink.cmp",
    optional = true,
    opts_extend = { "sources.default" },
    opts = {
      sources = {
        default = { "minuet" },
        providers = {
          minuet = {
            name = "minuet",
            module = "minuet.blink",
            score_offset = 8,
          },
        },
      },
      completion = {
        trigger = {
          prefetch_on_insert = false,
        },
      },
    },
  },
}
