return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local autopairs = require("nvim-autopairs")

        autopairs.setup({
            check_ts = true,
            ts_config = {
                -- PYTHON
                python = { "string", "comment" }, 

                -- C / C++
                cpp = { "string", "comment" },
                c = { "string", "comment" },

                -- RUST
                rust = { "string", "comment" },

                -- fallback for rest
                lua = { "string" },
            },
        })

        -- cmp integration 
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")

        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    end,
}
