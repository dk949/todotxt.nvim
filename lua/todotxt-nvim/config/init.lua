local config = {}

config.options = {
  sidebar = {
    width = 40,
    position = "right",
  },
  capture = {
    prompt = "> ",
    width = "75%",
    position = "50%",
    -- Styled after https://swiftodoapp.com/todotxt-syntax/priority/
    alternative_priority = {
      A = "now",
      B = "next",
      C = "today",
      D = "this week",
      E = "next week",
    },
  },
  highlights = {
    project = {
      fg = "magenta",
      bg = "NONE",
      style = "NONE",
    },
    context = {
      fg = "cyan",
      bg = "NONE",
      style = "NONE",
    },
    date = {
      fg = "NONE",
      bg = "NONE",
      style = "underline",
    },
    done_task = {
      fg = "gray",
      bg = "NONE",
      style = "NONE",
    },
    priorities = {
      A = {
        fg = "red",
        bg = "NONE",
        style = "bold",
      },
      B = {
        fg = "magenta",
        bg = "NONE",
        style = "bold",
      },
      C = {
        fg = "yellow",
        bg = "NONE",
        style = "bold",
      },
      D = {
        fg = "cyan",
        bg = "NONE",
        style = "bold",
      },
    },
  },
  keymap = {
    quit = "q",
    toggle_metadata = "m",
    delete_task = "dd",
    complete_task = "<space>",
    edit_task = "ee",
  },
  _popup_options = {
    relative = "editor",
    border = {
      style = "rounded",
      text = {
        top = "[Add Task]",
        top_align = "center",
      },
    },
    win_options = {
      winhighlight = "Normal:Normal",
    },
  },
  taskDisplayHook = function(t)  return t end,
}

function config.set_options(opts)
  config.options = vim.tbl_deep_extend("force", config.options, opts or {})

  -- configure user options into popup_options
  config.options._popup_options.size = config.options.capture.width
  config.options._popup_options.position = config.options.capture.position
end

return config
