local bufferline = require('bufferline')

bufferline.setup({
    options = {
       separator_style = 'slant',
       color_icons = true,
       hover = {
           enabled = true,
           delay = 200,
           reveal = {'close'}
       }
   }
})
