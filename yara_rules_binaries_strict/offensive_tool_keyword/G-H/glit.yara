rule glit
{
    meta:
        description = "Detection patterns for the tool 'glit' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "glit"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string1 = /\srepo\s\-u\shttps\:\/\/github\.com\// nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string2 = /\/glit\.git/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string3 = "/glit-cli" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string4 = "/glit-core" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string5 = /\\glit\.exe/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string6 = /\\glit\-cli/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string7 = "cargo install glit" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string8 = "glit org -" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string9 = "glit repo " nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string10 = "glit user " nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string11 = /glit\.exe\sorg/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string12 = /glit\.exe\srepo/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string13 = /glit\.exe\suser/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string14 = "glit-i686-pc-windows-msvc" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string15 = /glit\-main\.zip/ nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string16 = "glit-x86_64-apple-darwin" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string17 = "glit-x86_64-pc-windows-msvc" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string18 = "glit-x86_64-unknown-linux-gnu" nocase ascii wide
        // Description: Retrieve all mails of users related to a git repository a git user or a git organization
        // Reference: https://github.com/shadawck/glit
        $string19 = "shadawck/glit" nocase ascii wide
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