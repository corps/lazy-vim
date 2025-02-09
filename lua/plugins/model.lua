return {
  "gsuuon/model.nvim",
  cmd = { "M", "Model", "Mchat" },
  init = function()
    vim.filetype.add({ extension = { mchat = "mchat" } })
  end,
  ft = "mchat",
  keys = {
    { "<leader>h", ":Mchat<cr>", mode = "n" },
    { "<leader>y", ":MCadd<cr>", mode = "n" },
    { "<leader>a", ":MCpaste<cr>MCclear<cr>", mode = "n" },
  },
  config = function()
    local mistral = require("model.providers.openai")
    local util = require("model.util")

    require("model").setup({
      hl_group = "Substitute",
      prompts = util.module.autoload("prompt_library"),
      chats = util.module.autoload("chat_library"),

      default_prompt = {
        provider = mistral,
        options = {
          url = "https://api.mistral.ai/v1/",
          authorization = "Bearer " .. vim.env.MISTRAL_API_KEY,
        },
        builder = function(input)
          return {
            model = "open-mistral-nemo-2407",
            temperature = 0.3,
            max_tokens = 400,
            messages = {
              {
                role = "system",
                content = "You are helpful assistant.",
              },
              { role = "user", content = input },
            },
          }
        end,
      },
    })
  end,
}
