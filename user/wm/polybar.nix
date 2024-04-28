
{ config, pkgs,... }:

{
    services.polybar = {
      package = pkgs.polybar.override {
        alsaSupport = true;
        pulseSupport = true;
      };
      enable = true;
      script = "exec polybar main &";
      config = {
        "bar/main" = {
	  wm-restack = "bspwm";
	  background = "#11111b";
	  foreground = "#1e1e2e";
	  font-0="Hack Nerd Font:size=13:weight=bold;5";
          width = "100%";
          height = "10px";
	  padding="10px";
          modules-center = "title";
          modules-right = "date";
	  modules-left = "volume";
        };
        "module/title" = {
          type = "internal/xwindow";
	  format = "<label>";
	  label = "%title%";
        };
        "module/date" = {
          type = "internal/date";
          date = "%d/%m/%y %H:%M";
        };
      "module/volume" = {
        type = "internal/pulseaudio";
        interval = 2;
        format-volume = "<ramp-volume>  <label-volume>";
        label-muted = "";
        label-muted-foreground = "#66";
        ramp-volume-0 = "";
        ramp-volume-1 = "";
        ramp-volume-2 = "";
        click-right = "${pkgs.pavucontrol}/bin/pavucontrol";
      };
    };
  };

}
