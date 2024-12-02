return {
  "LintaoAmons/cd-project.nvim",
  tag = "v0.9.0",
  init = function()
    require("cd-project").setup({
      projects_config_filepath = vim.fs.normalize(vim.fn.stdpath("config") .. "/cd-project.nvim.json"),
      project_dir_pattern = { ".git", "Makefile" },
      choice_format = "both", -- optional, you can switch to "name" or "path"
      projects_picker = "telescope", -- optional, you can switch to `telescope`
      auto_register_project = false, -- optional, toggle on/off the auto add project behaviour
      hooks = {
        -- Run before cd to project, add a bookmark here, then can use `CdProjectBack` to switch back
        -- {
        --   trigger_point = "BEFORE_CD",
        --   callback = function(_)
        --     vim.print("before cd project")
        --     require("bookmarks").api.mark({name = "before cd project"})
        --   end,
        -- },
        -- Run after cd to project, find and open a file in the target project by smart-open
        -- {
        --   callback = function(_)
        --     require("telescope").extensions.smart_open.smart_open({
        --       cwd_only = true,
        --       filename_first = false,
        --     })
        --   end,
        -- },
      },
    })
  end,
}
