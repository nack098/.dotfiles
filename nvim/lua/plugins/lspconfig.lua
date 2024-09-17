return {
    {
        "neovim/nvim-lspconfig",
        servers = {
            clangd = {
                setup = {
                    init_options = {
                        fallbackFlags = { "--std=c++20" },
                    },
                },
            },
        },
    },
}
