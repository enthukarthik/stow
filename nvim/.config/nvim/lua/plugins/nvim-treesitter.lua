return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
          "c",
          "lua",
          "luadoc",
          "vim",
          "vimdoc",
          "query",
          "markdown",
          "markdown_inline",
          "angular",
          "arduino",
          "asm",
          "awk",
          "bash",
          "bibtex",
          "bicep",
          "c_sharp",
          "clojure",
          "cmake",
          "comment",
          "commonlisp",
          "cpp",
          "css",
          "csv",
          "cuda",
          "diff",
          "disassembly",
          "dockerfile",
          "doxygen",
          "editorconfig",
          "elixir",
          "erlang",
          "fish",
          "fsharp",
          "git_config",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "glsl",
          "go",
          "graphql",
          "haskell",
          "haskell_persistent",
          "hlsl",
          "html",
          "http",
          "hyprlang",
          "ini",
          "java",
          "javascript",
          "jsdoc",
          "json",
          "json5",
          "jsonnet",
          "kotlin",
          "kusto",
          "latex",
          "llvm",
          "luap",
          "make",
          "matlab",
          "nasm",
          "ninja",
          "objdump",
          "ocaml",
          "ocaml_interface",
          "passwd",
          "pem",
          "perl",
          "php",
          "powershell",
          "printf",
          "r",
          "python",
          "racket",
          "readline",
          "regex",
          "ruby",
          "rust",
          "scala",
          "scheme",
          "slint",
          "sql",
          "ssh_config",
          "swift",
          "tcl",
          "tmux",
          "toml",
          "tsx",
          "typescript",
          "wgsl",
          "xml",
          "yaml",
          "zig",
          "zsh",
      },
    },
    config = function(_, opts)
      local ts = require("nvim-treesitter")

      ts.install(opts.ensure_installed)
      
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local buf = args.buf
          local filetype = args.match

          -- you need some mechanism to avoid running on buffers that do not
          -- correspond to a language (like oil.nvim buffers), this implementation
          -- checks if a parser exists for the current language
          local language = vim.treesitter.language.get_lang(filetype) or filetype
          if not vim.treesitter.language.add(language) then
              return
          end

          -- replicate `fold = { enable = true }`
          -- vim.wo.foldmethod = "expr"
          -- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

          -- replicate `highlight = { enable = true }`
          vim.treesitter.start(buf, language)

          -- replicate `indent = { enable = true }`
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

          -- `incremental_selection = { enable = true }` cannot be easily replicated
        end,
      })
    end,
  },
}
