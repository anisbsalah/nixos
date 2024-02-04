{ config, lib, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username}.programs = {
    starship = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;

      settings = {
        format = lib.concatStrings [ "" "$all" "" ];
        add_newline = false;
        command_timeout = 5000;

        line_break = {
          disabled = true;
        };

        hostname = {
          ssh_only = false;
          ssh_symbol = " ";
          format = "[  ](bold blue) ";
          trim_at = ".";
          disabled = false;
        };

        character = {
          success_symbol = "[❯](bold red)[❯](bold yellow)[❯](bold green)";
          error_symbol = "[✗](bold red)";
          vimcmd_symbol = "[❮](green)";
        };

        directory = {
          read_only = " 󰌾";
          truncation_length = 10;
          truncate_to_repo = true;
          style = "bold italic blue";
        };

        cmd_duration = {
          min_time = 4;
          show_milliseconds = false;
          disabled = true;
          style = "bold italic red";
        };

        aws = {
          symbol = "  ";
        };

        buf = {
          symbol = " ";
        };

        c = {
          symbol = " ";
        };

        conda = {
          symbol = " ";
        };

        dart = {
          symbol = " ";
        };

        docker_context = {
          symbol = " ";
          format = "via [$symbol$context]($style) ";
          style = "blue bold";
          only_with_files = true;
          detect_files = [ "docker-compose.yml" "docker-compose.yaml" "Dockerfile" ];
          detect_folders = [ ];
          disabled = false;
        };

        elixir = {
          symbol = " ";
        };

        elm = {
          symbol = " ";
        };

        fossil_branch = {
          symbol = " ";
        };

        git_branch = {
          symbol = " ";
        };

        git_status = {
          format = "([ \[ $all_status$ahead_behind\ ] ] ($style))";
        };

        git_state = {
          style = "bold red";
          format = "[$state( $progress_current/$progress_total) ]($style)";
          rebase = "rebase";
          merge = "merge";
          revert = "revert";
          cherry_pick = "cherry";
          bisect = "bisect";
          am = "am";
          am_or_rebase = "am/rebase";
        };

        golang = {
          symbol = " ";
        };

        guix_shell = {
          symbol = " ";
        };

        haskell = {
          symbol = " ";
        };

        haxe = {
          symbol = " ";
        };

        hg_branch = {
          symbol = " ";
        };

        java = {
          symbol = " ";
        };

        julia = {
          symbol = " ";
        };

        lua = {
          symbol = " ";
        };

        memory_usage = {
          symbol = "󰍛 ";
        };

        meson = {
          symbol = "󰔷 ";
        };

        nim = {
          symbol = "󰆥 ";
        };

        nix_shell = {
          symbol = " ";
        };

        nodejs = {
          symbol = " ";
          detect_files = [ "package.json" ".node-version" ];
          detect_folders = [ "node_modules" ];
        };

        os.symbols = {
          Alpaquita = " ";
          Alpine = " ";
          Amazon = " ";
          Android = " ";
          Arch = " ";
          Artix = " ";
          CentOS = " ";
          Debian = " ";
          DragonFly = " ";
          Emscripten = " ";
          EndeavourOS = " ";
          Fedora = " ";
          FreeBSD = " ";
          Garuda = "󰛓 ";
          Gentoo = " ";
          HardenedBSD = "󰞌 ";
          Illumos = "󰈸 ";
          Linux = " ";
          Mabox = " ";
          Macos = " ";
          Manjaro = " ";
          Mariner = " ";
          MidnightBSD = " ";
          Mint = " ";
          NetBSD = " ";
          NixOS = " ";
          OpenBSD = "󰈺 ";
          openSUSE = " ";
          OracleLinux = "󰌷 ";
          Pop = " ";
          Raspbian = " ";
          Redhat = " ";
          RedHatEnterprise = " ";
          Redox = "󰀘 ";
          Solus = "󰠳 ";
          SUSE = " ";
          Ubuntu = " ";
          Unknown = " ";
          Windows = "󰍲 ";
        };

        package = {
          symbol = "󰏗 ";
        };

        pijul_channel = {
          symbol = " ";
        };

        python = {
          symbol = " ";
          #pyenv_version_name = true;
          style = "bold yellow";
          pyenv_prefix = "venv ";
          python_binary = [ "./venv/bin/python" "python" "python3" "python2" ];
          detect_extensions = [ "py" ];
        };

        rlang = {
          symbol = "󰟔 ";
        };

        ruby = {
          symbol = " ";
        };

        rust = {
          symbol = " ";
        };

        scala = {
          symbol = " ";
        };

      };
    };
  };
}
