{ ... }:

let
  USER = "raf";
in
{
  users.extraGroups.vboxusers.members = [ USER ];
  virtualisation = {
    virtualbox.host = {
      enable = true;
      enableExtensionPack = true;
    };
  };
}
