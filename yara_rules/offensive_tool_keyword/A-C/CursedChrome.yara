rule CursedChrome
{
    meta:
        description = "Detection patterns for the tool 'CursedChrome' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "CursedChrome"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string1 = /\/CursedChrome\.git/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string2 = /\/extension_injection\.sh/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string3 = /127\.0\.0\.1\:8118\:8118/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string4 = /A\snew\sbrowser\shas\sconnected\sto\sus\svia\sWebSocket\!/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string5 = /bash\sextension_injection\.sh/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string6 = /const\ssubscription_id\s\=\s\`TOPROXY_/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string7 = /COPY\sanyproxy\/\s\.\/anyproxy\// nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string8 = /CursedChrome\sAPI\sserver\sis\snow\slistening\son\sport/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string9 = /CursedChrome\sWebSocket\sserver\sis\snow\srunning\son\sport/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string10 = /CursedChrome\-master\.zip/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string11 = /DATABASE_PASSWORD\:\scursedchrome/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string12 = /DATABASE_USER\:\scursedchrome/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string13 = /docker\simages\s\|\sgrep\scursed/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string14 = /docker\sps\s\-a\s\|\sgrep\scursed/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string15 = /docker\-compose\sup\scursedchrome/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string16 = /http\:\/\/localhost\:8118/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string17 = /logit\(\`New\ssubscriber\:\sTOBROWSER__/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string18 = /mandatoryprogrammer\/CursedChrome/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string19 = /publisher\.publish\(\`TOBROWSER_/ nocase ascii wide
        // Description: Chrome-extension implant that turns victim Chrome browsers into fully-functional HTTP proxies allowing you to browse sites as your victims
        // Reference: https://github.com/mandatoryprogrammer/CursedChrome
        $string20 = /Wat\,\sthis\sshouldn\'t\shappen\?\sOrphaned\smessage\s\(somebody\smight\sbe\sprobing\syou\!\)\:/ nocase ascii wide

    condition:
        any of them
}