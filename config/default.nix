{
  # Import all your configuration modules here
  imports = [
    ./auto.nix
    ./bufferline.nix
    ./cmp.nix
    ./git.nix
    ./godot.nix
    ./keymaps.nix
    ./lsp.nix
    ./nvim-tree.nix
    ./telescope.nix
    ./todo.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  viAlias = true;
  vimAlias = true;
  colorschemes.kanagawa = {
    enable = true;
    settings.background.dark = "dragon";
    settings.background.light = "dragon";
  };
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  opts = {
    cindent = true;
    cmdheight = 2;
    cmdwinheight = 2;
    colorcolumn = [ 80 ];
    number = true;
    relativenumber = true;
    signcolumn = "auto:4";
    tabstop = 4;
    shiftwidth = 4;
    mouse = "a";
    splitbelow = true;
    splitright = true;
  };
}
