{
  globals.mapleader = " ";
  globals.maplocalleader = " ";
  keymaps = [
    {
      action = "<cmd>nohlsearch<CR>";
      key = "<Esc>";
      mode = "n";
      options = {
        silent = true;
        desc = "Clears search highglight";
      };
    }
    {
      action = "<cmd>TodoTelescope<CR>";
      key = "<leader>oe";
      mode = "n";
      options = {
        silent = true;
        desc = "Search through all project todos with telescope";
      };
    }
    {
      action = "<C-\\><C-n>";
      key = "<Esc><Esc";
      mode = "t";
      options = {
        silent = true;
        desc = "Exit terminal mode";
      };
    }
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<kHome>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>bp<CR>";
      key = "<C-h>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>bn<CR>";
      key = "<C-l>";
      mode = "n";
      options = {
        silent = true;
      };
    }
  ];
}
