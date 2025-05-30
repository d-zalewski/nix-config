{ config, ... }:
{
  system.defaults.dock = {
    persistent-apps = [
      "/Applications/Google Chrome.app"
      "/System/Applications/Messages.app"
      "/Applications/Signal.app"
      "/Applications/Discord.app"
      "/Applications/WhatsApp.app"
      "/System/Applications/Mail.app"
      "/System/Applications/Photos.app"
      "/System/Applications/Calendar.app"
      "/Applications/Notion.app"
      "/Applications/Reeder.app"
      "/System/Applications/Music.app"
      "/Applications/Ghostty.app"
      "/System/Applications/System Settings.app"
    ];
  };
}
