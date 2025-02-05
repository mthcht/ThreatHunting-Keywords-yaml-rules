rule Koppeling
{
    meta:
        description = "Detection patterns for the tool 'Koppeling' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "Koppeling"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string1 = /\sNetClone\.exe/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string2 = /\sPyClone\.py/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string3 = /\sTheif\.dll/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string4 = /\/\.clone\.dll/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string5 = /\/Koppeling\.git/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string6 = /\/NetClone\.exe/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string7 = /\/PyClone\.py/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string8 = /\/Theif\.dll/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string9 = /\[\!\]\sDynamic\sSink\:\sBAD\\"\,\sL\\"Harness\\"/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string10 = /\\\.clone\.dll/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string11 = /\\Koppeling\.sln/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string12 = /\\NetClone\.exe/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string13 = /\\NetClone\\Program\.cs/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string14 = /\\PyClone\.py/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string15 = /\\Theif\.dll/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string16 = "1c9a4023737f0be81e06da3719ab68310dca400ca15cfb63012949215fb694eb" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string17 = "2150D252-AA17-45C2-8981-A6DCF7055CA6" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string18 = "491012428e225b620985e8fc2af087fe8b85ccd9c9cc0a37bd1385b62f317bbe" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string19 = "62E3CCF4-07F3-496E-B77D-48D5AC0E6260" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string20 = "8dd0633df72aacd10c634a263f6b1ade7195508e79993681e0800527ddfd86ef" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string21 = "95BC2C38-1FBE-4AF1-967E-BC133250C4D4" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string22 = "DB8A345D-E19C-4C2A-9FDF-16BF4DD03717" nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string23 = /Dyn\-NetClone\|x64/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string24 = /Dyn\-PyClone\|Win32/ nocase ascii wide
        // Description: Adaptive DLL hijacking / dynamic export forwarding
        // Reference: https://github.com/monoxgas/Koppeling
        $string25 = "monoxgas/Koppeling" nocase ascii wide
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
