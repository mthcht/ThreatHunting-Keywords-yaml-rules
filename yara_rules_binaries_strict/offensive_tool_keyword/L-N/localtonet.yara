rule localtonet
{
    meta:
        description = "Detection patterns for the tool 'localtonet' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "localtonet"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string1 = /\slocaltonet\.service/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string2 = /\/localtonet\.dll/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string3 = /\/localtonet\.exe/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string4 = /\/localtonet\.git/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string5 = /\/localtonet\.service/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string6 = "/localtonet-win" nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string7 = "/opt/localtonet" nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string8 = /\\localtonet\.dll/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string9 = /\\localtonet\.exe/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string10 = /\\localtonet\-win/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string11 = "925fe97c66e61207fec6e73bf01385139ccf6a482c234cb63f1bfafa6b260cb7" nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string12 = "a82ec4a7feac8a7bcab876286599e1df136c93ac470ba634fa77be156ee40615" nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string13 = /\-e\slocaltonet\.service/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string14 = "e27bbd5323fd6e3c1fcd501bf9279dd83fa211892c10ebf552773f4f5c89e4ab" nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string15 = "engineseller/localtonet" nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string16 = /localtonet\.com\/download\// nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string17 = /queue\.localtonet\.com/ nocase ascii wide
        // Description: LocaltoNet is a reverse proxy that enables you to expose your localhost services to the internet
        // Reference: https://github.com/engineseller/localtonet
        $string18 = /seq\.localtonet\.com\/api/ nocase ascii wide
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
        )) and any of ($string*)) or
        (filesize < 2MB and
        (
            any of ($string*) and
            for any of ($metadata_regex_*) : ( @ <= 20000 )
        ))
}