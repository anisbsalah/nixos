{ config, pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;

    packages = with pkgs; [
      hack-font
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      noto-fonts-extra
      (nerdfonts.override { fonts = [ "FantasqueSansMono" "Iosevka" "JetBrainsMono" "Mononoki" "NerdFontsSymbolsOnly" ]; })
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        serif = [ "Noto Serif" "Noto Sans Arabic" ];
        sansSerif = [ "Noto Sans" "Noto Sans Arabic" ];
        monospace = [ "Noto Sans Mono" "Noto Sans Arabic" ];
        emoji = [ "Noto Color Emoji" "Symbols Nerd Font Mono" ];
      };

      localConf = ''
            <?xml version='1.0' encoding='UTF-8'?>
        <!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
        <fontconfig>
         <match target="font">
          <edit mode="assign" name="antialias">
           <bool>true</bool>
          </edit>
          <edit mode="assign" name="hinting">
           <bool>true</bool>
          </edit>
          <edit mode="assign" name="hintstyle">
           <const>hintfull</const>
          </edit>
          <edit mode="assign" name="rgba">
           <const>rgb</const>
          </edit>
          <edit mode="assign" name="autohint">
           <bool>false</bool>
          </edit>
          <edit mode="assign" name="lcdfilter">
           <const>lcddefault</const>
          </edit>
          <edit mode="assign" name="dpi">
           <double>102</double>
          </edit>
         </match>
         <match target="font">
          <edit mode="assign" name="hinting">
           <bool>true</bool>
          </edit>
         </match>
         <match target="font">
          <edit mode="assign" name="hintstyle">
           <const>hintfull</const>
          </edit>
         </match>
         <match target="font">
          <edit mode="assign" name="rgba">
           <const>rgb</const>
          </edit>
         </match>
         <match target="font">
          <edit mode="assign" name="antialias">
           <bool>true</bool>
          </edit>
         </match>

        <!-- Set preferred serif, sans serif, and monospace fonts. -->
          <alias>
           <family>sans-serif</family>
           <prefer>
            <family>Noto Sans</family>
            <family>Noto Sans Arabic</family>
            <family>Noto Color Emoji</family>
            <family>Symbols Nerd Font</family>
           </prefer>
          </alias>

          <alias>
           <family>serif</family>
           <prefer>
            <family>Noto Serif</family>
            <family>Noto Sans Arabic</family>
            <family>Noto Color Emoji</family>
            <family>Symbols Nerd Font</family>
           </prefer>
          </alias>

          <alias>
           <family>monospace</family>
           <prefer>
            <family>Noto Sans Mono</family>
            <family>Noto Sans Arabic</family>
            <family>Noto Color Emoji</family>
            <family>Symbols Nerd Font</family>
           </prefer>
          </alias>
          <!-- Aliases for commonly used MS fonts. -->
          <match>
            <test name="family"><string>Arial</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Sans</string>
            </edit>
          </match>
          <match>
            <test name="family"><string>Helvetica</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Sans</string>
            </edit>
          </match>
          <match>
            <test name="family"><string>Verdana</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Sans</string>
            </edit>
          </match>
          <match>
            <test name="family"><string>Tahoma</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Sans</string>
            </edit>
          </match>
          <match>
            <!-- Insert joke here -->
            <test name="family"><string>Comic Sans MS</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Sans</string>
            </edit>
          </match>
          <match>
            <test name="family"><string>Times New Roman</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Serif</string>
            </edit>
          </match>
          <match>
            <test name="family"><string>Times</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Serif</string>
            </edit>
          </match>
          <match>
            <test name="family"><string>Courier New</string></test>
            <edit name="family" mode="assign" binding="strong">
              <string>Noto Sans Mono</string>
            </edit>
          </match> 
        </fontconfig>
      '';
    };
  };
}
