{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Kevin Ruiz";
    userEmail = "jkevincodes@gmail.com";
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };
}
