local mistral = require("model.providers.openai")

return {
  test = {
    provider = mistral,
    options = {
      url = "https://api.mistral.ai/v1/",
      authorization = "Bearer " .. vim.env.MISTRAL_API_KEY,
    },
    builder = function(input)
      return {
        model = "mistral-small-latest",
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
}
