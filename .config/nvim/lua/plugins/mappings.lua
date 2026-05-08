return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
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
          ["<Leader>cf"] = {
            function() require("sidekick.cli").send({ msg = "{file}" }) end,
            desc = "Send file to copito",
          },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        v = {
          ["<Leader>cs"] = {
            function() require("sidekick.cli").send({ msg = "{selection}" }) end,
            desc = "Send Visual Selection to copito",
          }
        }
      },
    },
  },
}
