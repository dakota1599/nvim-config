local bufferline = require('bufferline')

bufferline.setup({
    options = {
       separator_style = 'slant',
       color_icons = true,
       hover = {
           enabled = true,
           delay = 200,
           reveal = {'close'}
       },
       diagnostics = "coc",
       diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,

   }
})
