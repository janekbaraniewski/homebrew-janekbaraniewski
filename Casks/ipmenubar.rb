cask "ipmenubar" do
    version "1.1.0"
    sha256 "a70b30c45ef5b2118a2841ce9c429955be1e726e748707ef5b467ec41dff5d2d"

    url "https://github.com/janekbaraniewski/IPMenuBar/releases/download/v1.1.0/IPMenuBar-v1.1.0.tar.gz"
    name "IPMenuBar"
    desc "Display either local or public IP in your macOS menu bar"
    homepage "https://github.com/janekbaraniewski/IPMenuBar"

    app "IPMenuBar.app"
end
