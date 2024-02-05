{ config, lib, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username}.programs = {
    yazi = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;

      theme = {
        manager = {
          cwd = { fg = "#5294e2" ;};
          hovered         = { fg = "#fcfcfc"; bg = "#5294e2" ;};
          preview_hovered = { underline = true ;};
          find_keyword  = { fg = "#f6ab32"; italic = true ;};
          find_position = { fg = "#a660c3"; bg = "reset"; italic = true ;};
          marker_selected = { fg = "#5ca75b";  bg = "#5ca75b" ;};
          marker_copied   = { fg = "#f6ab32"; bg = "#f6ab32" ;};
          marker_cut      = { fg = "#e14245";    bg = "#e14245" ;};
          tab_active   = { fg = "#4b5164"; bg = "#5294e2" ;};
          tab_inactive = { fg = "#fcfcfc"; bg = "#63686d" ;};
          tab_width    = 1;
          border_symbol = "│";
          border_style  = { fg = "#a9a9aa" ;};
          syntect_theme = "";
        };

        status = {
          separator_open  = "";
          separator_close = "";
          separator_style = { fg = "#63686d"; bg = "#63686d" ;};
          mode_normal = { fg = "#4b5164"; bg = "#5294e2"; bold = true ;};
          mode_select = { fg = "#4b5164"; bg = "#5ca75b"; bold = true ;};
          mode_unset  = { fg = "#4b5164"; bg = "#a660c3"; bold = true ;};
          progress_label  = { bold = true ;};
          progress_normal = { fg = "#5294e2"; bg = "#4b5164" ;};
          progress_error  = { fg = "#e14245"; bg = "#4b5164" ;};
          permissions_t = { fg = "#5ca75b" ;};
          permissions_r = { fg = "#f6ab32" ;};
          permissions_w = { fg = "#e14245" ;};
          permissions_x = { fg = "#5294e2" ;};
          permissions_s = { fg = "#63686d" ;};
        };

        select = {
          border   = { fg = "#4877b1" ;};
          active   = { fg = "#a660c3" ;};
          inactive = {};
        };

        input = {
          border   = { fg = "#4877b1" ;};
          title    = {};
          value    = {};
          selected = { reversed = true ;};
        };

        completion = {
          border   = { fg = "#4877b1" ;};
          active   = { bg = "#63686d" ;};
          inactive = {};
          icon_file    = "";
          icon_folder  = "";
          icon_command = "";
        };

        tasks = {
          border  = { fg = "#4877b1" ;};
          title   = {};
          hovered = { underline = true ;};
        };

        which = {
          cols            = 3;
          mask            = { bg = "#4b5164" ;};
          cand            = { fg = "#4877b1" ;};
          rest            = { fg = "#63686d" ;};
          desc            = { fg = "#a660c3" ;};
          separator       = "  ";
          separator_style = { fg = "#63686d" ;};
        };

        help = {
          on      = { fg = "#a660c3" ;};
          exec    = { fg = "#5294e2" ;};
          desc    = { fg = "#a9a9aa" ;};
          hovered = { bg = "#63686d"; bold = true ;};
          footer  = { fg = "#4b5164"; bg = "#fcfcfc" ;};
        };

        filetype = {
          rules = [
            { mime = "image/*"; fg = "#5294e2" ;}
            { mime = "video/*"; fg = "#f6ab32" ;}
            { mime = "audio/*"; fg = "#f6ab32" ;}
            { mime = "application/zip";             fg = "#a660c3" ;}
            { mime = "application/gzip";            fg = "#a660c3" ;}
            { mime = "application/x-tar";           fg = "#a660c3" ;}
            { mime = "application/x-bzip";          fg = "#a660c3" ;}
            { mime = "application/x-bzip2";         fg = "#a660c3" ;}
            { mime = "application/x-7z-compressed"; fg = "#a660c3" ;}
            { mime = "application/x-rar";           fg = "#a660c3" ;}
            { mime = "application/xz";              fg = "#a660c3" ;}
            { mime = "application/doc";   fg = "#5ca75b" ;}
            { mime = "application/pdf";   fg = "#5ca75b" ;}
            { mime = "application/rtf";   fg = "#5ca75b" ;}
            { mime = "application/vnd.*"; fg = "#5ca75b" ;}
            { name = "*/"; fg = "#4877b1" ;}
          ];
        };

        icon = {
          rules = [
            { name = "*.c"    ; text = "" ;}
            { name = "*.cpp"  ; text = "" ;}
            { name = "*.css"  ; text = "" ;}
            { name = "*.fish" ; text = "" ;}
            { name = "*.go"   ; text = "" ;}
            { name = "*.h"    ; text = "" ;}
            { name = "*.hpp"  ; text = "" ;}
            { name = "*.html" ; text = "" ;}
            { name = "*.java" ; text = "" ;}
            { name = "*.js"   ; text = "" ;}
            { name = "*.jsx"  ; text = "" ;}
            { name = "*.lua"  ; text = "" ;}
            { name = "*.nix"  ; text = "" ;}
            { name = "*.php"  ; text = "" ;}
            { name = "*.py"   ; text = "" ;}
            { name = "*.rb"   ; text = "" ;}
            { name = "*.rs"   ; text = "" ;}
            { name = "*.scss" ; text = "" ;}
            { name = "*.sh"   ; text = "" ;}
            { name = "*.swift"; text = "" ;}
            { name = "*.ts"   ; text = "" ;}
            { name = "*.tsx"  ; text = "" ;}
            { name = "*.vim"  ; text = "" ;}
            { name = "*.vue"  ; text = "󰡄" ;}
            { name = "*.conf"; text = "" ;}
            { name = "*.ini" ; text = "" ;}
            { name = "*.json"; text = "" ;}
            { name = "*.md" ;  text = "" ;}
            { name = "*.toml"; text = "" ;}
            { name = "*.txt";  text = "" ;}
            { name = "*.yaml"; text = "" ;}
            { name = "*.yml" ; text = "" ;}
            { name = "*.7z" ; text = "" ;}
            { name = "*.bz2"; text = "" ;}
            { name = "*.gz" ; text = "" ;}
            { name = "*.rar"; text = "" ;}
            { name = "*.tar"; text = "" ;}
            { name = "*.xz" ; text = "" ;}
            { name = "*.zip"; text = "" ;}
            { name = "*.HEIC"; text = "" ;}
            { name = "*.avif"; text = "" ;}
            { name = "*.bmp" ; text = "" ;}
            { name = "*.gif" ; text = "" ;}
            { name = "*.ico" ; text = "" ;}
            { name = "*.jpeg"; text = "" ;}
            { name = "*.jpg" ; text = "" ;}
            { name = "*.png" ; text = "" ;}
            { name = "*.svg" ; text = "" ;}
            { name = "*.webp"; text = "" ;}
            { name = "*.avi" ; text = "" ;}
            { name = "*.mkv" ; text = "" ;}
            { name = "*.mov" ; text = "" ;}
            { name = "*.mp4" ; text = "" ;}
            { name = "*.webm"; text = "" ;}
            { name = "*.aac" ; text = "" ;}
            { name = "*.flac"; text = "" ;}
            { name = "*.m4a" ; text = "" ;}
            { name = "*.mp3" ; text = "" ;}
            { name = "*.ogg" ; text = "" ;}
            { name = "*.wav" ; text = "" ;}
            { name = "*.csv" ; text = "" ;}
            { name = "*.doc" ; text = "" ;}
            { name = "*.doct"; text = "" ;}
            { name = "*.docx"; text = "" ;}
            { name = "*.dot" ; text = "" ;}
            { name = "*.ods" ; text = "" ;}
            { name = "*.ots" ; text = "" ;}
            { name = "*.pdf" ; text = "" ;}
            { name = "*.pom" ; text = "" ;}
            { name = "*.pot" ; text = "" ;}
            { name = "*.potx"; text = "" ;}
            { name = "*.ppm" ; text = "" ;}
            { name = "*.ppmx"; text = "" ;}
            { name = "*.pps" ; text = "" ;}
            { name = "*.ppsx"; text = "" ;}
            { name = "*.ppt" ; text = "" ;}
            { name = "*.pptx"; text = "" ;}
            { name = "*.xlc" ; text = "" ;}
            { name = "*.xlm" ; text = "" ;}
            { name = "*.xls" ; text = "" ;}
            { name = "*.xlsm"; text = "" ;}
            { name = "*.xlsx"; text = "" ;}
            { name = "*.xlt" ; text = "" ;}
            { name = "*.lock"; text = "" ;}
            { name = "*.bin"; text = "" ;}
            { name = "*.exe"; text = "" ;}
            { name = "*.pkg"; text = "" ;}
            { name = ".DS_Store"     ; text = "" ;}
            { name = ".bashprofile"  ; text = "" ;}
            { name = ".bashrc"       ; text = "" ;}
            { name = ".gitattributes"; text = "" ;}
            { name = ".gitignore"    ; text = "" ;}
            { name = ".gitmodules"   ; text = "" ;}
            { name = ".vimrc"        ; text = "" ;}
            { name = ".zprofile"     ; text = "" ;}
            { name = ".zshenv"       ; text = "" ;}
            { name = ".zshrc"        ; text = "" ;}
            { name = "COPYING"      ; text = "󰿃" ;}
            { name = "Containerfile"; text = "󰡨" ;}
            { name = "Dockerfile"   ; text = "󰡨" ;}
            { name = "LICENSE"      ; text = "󰿃" ;}
            { name = ".config/"    ; text = "" ;}
            { name = ".git/"       ; text = "" ;}
            { name = "Desktop/"    ; text = "" ;}
            { name = "Development/"; text = "" ;}
            { name = "Documents/"  ; text = "" ;}
            { name = "Downloads/"  ; text = "" ;}
            { name = "Library/"    ; text = "" ;}
            { name = "Movies/"     ; text = "" ;}
            { name = "Music/"      ; text = "" ;}
            { name = "Pictures/"   ; text = "" ;}
            { name = "Public/"     ; text = "" ;}
            { name = "Videos/"     ; text = "" ;}
            { name = "*" ; text = "" ;}
            { name = "*/"; text = "" ;}
          ];
        };
      };
    };
  };
}
