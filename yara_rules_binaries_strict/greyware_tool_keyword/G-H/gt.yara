rule gt
{
    meta:
        description = "Detection patterns for the tool 'gt' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "gt"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string1 = /\sgt\-win\-x86_64\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string2 = /\/gt\sserver\s\-c\s\.\/config\.yml/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string3 = /\/gt\-win\-x86_64\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string4 = /\/opt\/config\/aonetwork\-client\.yml/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string5 = /\/opt\/entrypoint\.sh/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string6 = /\/release\/gt\-win\-x86_64\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string7 = "/usr/bin/gt client-c " nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string8 = /\/x86_64\-pc\-windows\-msvc\/release\/gt\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string9 = /\/x86_64\-pc\-windows\-msvc\/release\/gt\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string10 = /\\gt\-win\-x86_64\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string11 = /\\x86_64\-pc\-windows\-msvc\\release\\gt\.exe/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string12 = "037be40510a193376a127023deb2fe312d265b5ebc78422879e9126c5d02f2b4" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string13 = "1a535e15b11923cd368d6b39e1a308b67d7ed2be686d7968aa50e5c3630ea11a" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string14 = "1f51e236e7e1fbeb8cf38462e17da4d1921aeef093e2990538a4eb1d35554076" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string15 = "2a17ed79b4a0cb9d1c6345ee3f0d1c6d349a660391345c17e78ceb57a26a32fe" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string16 = "300161cd89c6094776ad40c08308249c7323c9b19105e09f15ef209f4e1f7980" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string17 = "56be52735563e73f0cdf9d4e8b52f86ccc5313495eec99c69c6f2bfeb0a08317" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string18 = "71e29bff6cee7938472b8d16ea5696b4966cb587a266c43257770efffed93aae" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string19 = "ab894c2ffa7886fe889c4a35b15fc5d5558d11896550d563c299408e6d4da363" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string20 = "c46ac57304fda332b5c3b027ae3fd0a54917e2b194f0d9f13e6cacfa1f61ff53" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string21 = "ed1f4ff9004e7065939247b9df3e4d51e08a0c990931e438b733fb4e64b4adf2" nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string22 = /ghcr\.io\/ao\-space\/gt\:client\-dev/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string23 = /ghcr\.io\/ao\-space\/gt\:server\-dev/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string24 = /github.{0,100}ao\-space\/gt/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string25 = /linux\-amd64\-client\s\-local\shttp\:\/\/127\.0\.0\.1/ nocase ascii wide
        // Description: Fast WebSocket(s)/HTTP(s)/TCP relay proxy for making tunnels to localhost.
        // Reference: https://github.com/ao-space/gt
        $string26 = "linux-amd64-server -addr " nocase ascii wide
        $metadata_regex_import = /\bimport\s+[a-zA-Z0-9_.]+\b/ nocase
        $metadata_regex_function = /function\s+[a-zA-Z_][a-zA-Z0-9_]*\(/ nocase ascii
        $metadata_regex_php = /<\?php/ nocase ascii
        $metadata_regex_createobject = /(CreateObject|WScript\.)/ nocase ascii
        $metadata_regex_script = /<script\b/ nocase ascii
        $metadata_regex_javascript = /(let\s|const\s|function\s|document\.|console\.)/ nocase ascii
        $metadata_regex_powershell = /(Write-Host|Get-[a-zA-Z]+|Invoke-|param\(|\.SYNOPSIS)/ nocase ascii
        $metadata_regex_batch = /@(echo\s|call\s|set\s|goto\s|if\s|for\s|rem\s)/ nocase ascii
        $metadata_regex_shebang = /^#!\// nocase ascii

    condition:
        ((filesize < 20MB and (
            uint16(0) == 0x5a4d or // Windows binary
            uint16(0) == 0x457f or // Linux ELF
            uint32be(0) == 0x7f454c46 or uint16(0) == 0xfeca or uint16(0) == 0xfacf or uint32(0) == 0xbebafeca or // macOS binary
            uint32(0) == 0x504B0304 or // Android APK, JAR
            uint32(0) == 0xCAFEBABE or // Java Class, Mach-O Universal Binary
            uint32(0) == 0x4D534346 or // Windows Cabinet File
            uint32(0) == 0xD0CF11E0 or // MSI Installer Package
            uint16(0) == 0x2321 or // Shebang (#!)
            uint16(0) == 0x3c3f // PHP and other script
        )) and 2 of ($string*)) or
        (filesize < 2MB and
        (
            2 of ($string*) and
            for any of ($metadata_regex_*) : ( @ <= 20000 )
        ))
}