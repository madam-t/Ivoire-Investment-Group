# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which packages should be installed in your workspace?
  packages = [
    pkgs.nodejs_20
    pkgs.firebase-tools
    pkgs.git
  ];

  # Look for extensions at https://open-vsx.org/
  idx.extensions = [
    "esbenp.prettier-vscode" # Keeps your elite code clean and professional
    "google.idx-ai-extension" # Enables Gemini assistance directly in the IDE
    "ritwickdey.LiveServer" # To preview your work before pushing to Firebase
  ];

  # Enable previews so you can see the site as you build
  idx.previews = {
    enable = true;
    previews = {
      web = {
        # This command runs a simple server to show your HTML/JS files
        command = ["npx" "http-server" "." "-p" "$PORT"];
        manager = "web";
      };
    };
  };
}

