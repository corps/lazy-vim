return {
  "amitds1997/remote-nvim.nvim",
  version = "*", -- Pin to GitHub releases
  dependencies = {
    "nvim-lua/plenary.nvim", -- For standard functions
    "MunifTanjim/nui.nvim", -- To build the plugin UI
    "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
  },
  opts = {
    client_callback = function(port, _)
      local cmd = ("/Applications/Neovide.app/Contents/MacOS/neovide --server localhost:%s"):format(port)
      vim.fn.jobstart(cmd, {
        detach = true,
        on_exit = function(job_id, exit_code, event_type)
          -- This function will be called when the job exits
          print("Client", job_id, "exited with code", exit_code, "Event type:", event_type)
        end,
      })
    end,

    remote = {
      copy_dirs = {
        config = {
          compression = {
            enabled = true,
            additional_opts = { "--exclude-vcs" },
          },
        },
      },
    },
  },
}
