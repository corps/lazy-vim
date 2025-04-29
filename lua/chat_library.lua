local mistral = require("model.providers.openai")

local function system_as_first_message(messages, config)
  if config.system then
    table.insert(messages, 1, {
      role = "system",
      content = config.system,
    })
  end

  return { messages = messages }
end

local function input_if_selection(input, context)
  return context.selection and input or ""
end

local base_mistral_chat = {
  provider = mistral,
  create = input_if_selection,
  system = "You are a helpful assistant",
  params = {
    model = "mistral-small-latest",
    max_tokens = 1024,
    temperature = 0.3,
  },
  run = system_as_first_message,
  options = {
    url = "https://api.mistral.ai/v1/",
    authorization = "Bearer " .. vim.env.MISTRAL_API_KEY,
  },
}

return {
  mistral = base_mistral_chat,
}
