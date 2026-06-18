return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        i = {
          ["<A-y>"] = {
            function() require("blink.cmp").show({ providers = { "minuet" } }) end,
            desc = "Trigger minuet completion", 
          },
        },
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>T"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          -- quick save
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
          ["<Leader>co"] = {
            function() require("sidekick.cli").toggle({ name = "copilot", focus = true }) end,
            desc = "Open copito",
          },
          ["<Leader>cl"] = {
            function() require("sidekick.cli").toggle({ name = "claude", focus = true }) end,
            desc = "Open Claudio",
          },
          ["<Leader>cf"] = {
            function() require("sidekick.cli").send({ msg = "{file}" }) end,
            desc = "Send file to copito",
          },
          -- NES
          ["<Leader>ne"] = { "<cmd>Sidekick nes enable<cr>", desc = "NES enable" },
          ["<Leader>na"] = { "<cmd>Sidekick nes apply<cr>", desc = "NES apply" },
          ["<Leader>nc"] = { "<cmd>Sidekick nes clear<cr>", desc = "NES clear" },
          ["<Leader>nu"] = { "<cmd>Sidekick nes update<cr>", desc = "NES update" },
          ["<Leader>nj"] = { "<cmd>Sidekick nes jump<cr>", desc = "NES jump" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        v = {
          ["<Leader>sc"] = {
            function() require("sidekick.cli").send({ msg = "{selection}" }) end,
            desc = "Send Visual Selection to copito",
          },
          ["<Leader>cl"] = {
            function() require("sidekick.cli").send({ name = "claude", msg = "{selection}" }) end,
            desc = "Send Visual Selection to Claude",
          },
        }
      },
    },
  },
}
