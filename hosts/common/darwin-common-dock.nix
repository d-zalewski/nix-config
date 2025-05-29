{ config, ... }:
{
  system.defaults.dock = {
    persistent-apps = [
      "/Applications/Google Chrome.app"     
      "/Applications/Messages.app"
      "/Applications/Signal.app"
      "/Applications/Discord.app"
      "/Applications/WhatsApp.app"
      "/Applications/Mail.app"
      "/Applications/Calendar.app"
      "/Applications/Notion.app"
      "/Applications/Music.app"
      "/Applications/Ghostty.app"
      "/Applications/Settings.app"
    ];
  };
}
