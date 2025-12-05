{
      programs.zsh = {
        enable = true;
	autosuggestion.enable = true;
	oh-my-zsh = {
          enable = true;
	  plugins = [ "git" "gh" "thefuck" "fzf" "zoxide" ];
	  theme = "jonathan";
	};
      };
}
