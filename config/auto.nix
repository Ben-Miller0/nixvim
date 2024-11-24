{
  plugins.auto-session = {
    enable = true;
    settings = {
      use_git_branch = true;
    };
  };
  plugins.autoclose = {
    enable = true;
    keys = {
      "(" = { escape = false; close = true; pair = "()"; };
      "[" = { escape = false; close = true; pair = "[]"; };
      "{" = { escape = false; close = true; pair = "{}"; };
    };
    options.pairSpaces = true;
  };
}
