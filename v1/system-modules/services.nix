{ config, pkgs, ... }:

{
  # List services that you want to enable:
  services = {

    # --------------------------------- Avahi - Network discovery

    avahi = {
      enable = true;
      nssmdns = true;
      ipv4 = true;
      ipv6 = true;
      openFirewall = true;
      publish = {
        enable = true;
        workstation = true;
        userServices = true;
        domain = true;
        addresses = true;
      };
    };

    # --------------------------------- Cups

    # Enable CUPS to print documents.
    printing.enable = true;

    # --------------------------------- Dbus

    dbus.enable = true;

    # --------------------------------- Flatpak
    
    flatpak.enable = true;

    # --------------------------------- Gvfs

    gvfs.enable = true;

    # --------------------------------- OpenSSH

    # Enable the OpenSSH daemon.
    openssh.enable = true;

    # --------------------------------- Power profiles daemon

    power-profiles-daemon.enable = true;

    # --------------------------------- Samba

    samba-wsdd = {
      # make shares visible for windows 10 clients
      enable = true;
      openFirewall = true;
    };

    samba = {
      enable = true;
      securityType = "user";
      extraConfig = ''
        workgroup = WORKGROUP
        server string = smbnix
        netbios name = smbnix
        server role = standalone server
        #security = user 
        #use sendfile = yes
        #max protocol = smb2
        # note: localhost is the ipv6 localhost ::1
        hosts allow = 192.168.0. 127.0.0.1 localhost
        hosts deny = 0.0.0.0/0
        guest account = nobody
        map to guest = bad user
      '';
      shares = {
        SHARED = {
          path = "/home/anisbsalah/SHARED";
          browseable = "yes";
          "read only" = "no";
          "guest ok" = "yes";
          "public" = "yes";
          "writable" = "yes";
          "create mask" = "0644";
          "directory mask" = "0755";
        };
      };
    };
  };
}