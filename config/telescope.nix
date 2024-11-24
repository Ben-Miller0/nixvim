{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader><leader>" = "buffers";
      "<leader>fh" = "help_tags";
    };
    extensions = {
      file-browser.enable = true;
      live-grep-args.enable = true;
    };
  };
  plugins.fzf-lua.enable = true;
}
