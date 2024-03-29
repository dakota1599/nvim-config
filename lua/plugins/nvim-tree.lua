local nt = require("nvim-tree")
nt.setup {
    sync_root_with_cwd = true,
    update_focused_file = {
	    enable = true,
	    update_cwd = true,
    },
    sort = {
	    sorter = "case_sensitive",
    }
}

local nticons = require("nvim-web-devicons")
nticons.setup()
