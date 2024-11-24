{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        arduino_language_server = {
          enable = true;
        };
        clangd = {
          enable = true;
        };
        glsl_analyzer = {
          enable = true;
        };
        jdtls = {
          enable = true;
        };
        lua_ls = {
          enable = true;
        };
        nil_ls = {
          enable = true;
        };
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
        zls = {
          enable = true;
        };
      };
    };
    lsp-format = {
      enable = true;
    };
    lsp-lines = {
      enable = true;
    };
    lsp-signature = {
      enable = true;
    };
  };
}
