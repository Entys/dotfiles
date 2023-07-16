{ config, pkgs, ... }:

{
  programs = {
    kitty = {
      enable = true;
      extraConfig = ''
        linux_display_server wayland
        wayland_titlebar_color background

        font_family JetBrainsMono Nerd Font
        bold_font        auto
        italic_font      auto
        bold_italic_font auto

        font_size 13
        background_opacity 0.6

        # window settings
        initial_window_width 95c
        initial_window_height 35c
        window_padding_width 20
        confirm_os_window_close 0

        # Upstream colors {{{

        # Special
        background #14151e 
        foreground #98b0d3 

        # Black
        color0 #151720
        color8 #4f5572 

        # Red
        color1 #dd6777
        color9 #e26c7c

        # Green
        color2  #90ceaa
        color10 #95d3af

        # Yellow
        color3  #ecd3a0
        color11 #f1d8a5

        # Blue
        color4  #86aaec
        color12 #8baff1

        # Magenta
        color5  #c296eb
        color13 #c79bf0

        # Cyan
        color6  #93cee9
        color14 #98d3ee

        # White
        color7  #cbced3
        color15 #d0d3d8

        # Cursor
        cursor #cbced3
        cursor_text_color #a5b6cf

        # Selection highlight
        selection_foreground #a5b6cf
        selection_background #1c1e27


        # The color for highlighting URLs on mouse-over
        # url_color #9ece6a
        url color #5de4c7

        # Window borders
        active_border_color #3d59a1
        inactive_border_color #101014
        bell_border_color #fffac2

        # Tab bar
        tab_bar_style fade
        tab_fade 1
        active_tab_foreground   #3d59a1
        active_tab_background   #16161e
        active_tab_font_style   bold
        inactive_tab_foreground #787c99
        inactive_tab_background #16161e
        inactive_tab_font_style bold
        tab_bar_background #101014

        # Title bar
        macos_titlebar_color #16161e

        # {{{ Keybindings
        map kitty_mod+t     new_tab_with_cwd
        map ctrl+d	copy_to_clipboard
        map ctrl+v	paste_from_clipboard
        # }}
      '';
    };
  };
}