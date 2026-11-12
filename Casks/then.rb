cask "then" do
  version "1.3.0"
  sha256 "c797ea4d525bc38244abd1de9c77bfc965d978be6530ce1d86bdb56ee1194077"

  url "https://github.com/SaranH8/homebrew-then/releases/download/v#{version}/THEN-v#{version}.dmg"
  name "THEN"
  desc "Auto-fixes Thai/English wrong-keyboard-layout typing as you type"
  homepage "https://cathunters.com/hub"

  app "THEN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/THEN.app"]
  end

  caveats <<~EOS
    THEN needs two permissions before it can fix typing:
      System Settings -> Privacy & Security -> Accessibility
        (shown as "Device Control and Data Access" on newer macOS)
        -> turn THEN on
      System Settings -> Privacy & Security -> Input Monitoring
        -> turn THEN on (if THEN is listed there)

    THEN is ad-hoc signed and the signature changes every build, so
    after each upgrade macOS treats it as a new app: re-check both
    toggles if THEN stops correcting.

    A license is required: open THEN's menu, choose "Activate…", and
    enter the license email + serial key you received from Saran.
  EOS
end
