rule masscan
{
    meta:
        description = "Detection patterns for the tool 'masscan' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "masscan"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string1 = /\sinstall\s.{0,100}masscan/ nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string2 = /\\masscan\\src\\/ nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string3 = "bin/masscan" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string4 = "C88D7583-254F-4BE6-A9B9-89A5BB52E679" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string5 = "ivre-masscan/" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string6 = "masscan -c " nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string7 = "masscan --nmap" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string8 = "masscan -p" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string9 = /masscan.{0,100}\s\s\-p/ nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string10 = /masscan\.exe\s/ nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string11 = "robertdavidgraham/masscan" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string12 = /unix\/1\.0\sUPnP\/1\.1\smasscan\// nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string13 = "xterm -e masscan" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string14 = "masscan " nocase ascii wide
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