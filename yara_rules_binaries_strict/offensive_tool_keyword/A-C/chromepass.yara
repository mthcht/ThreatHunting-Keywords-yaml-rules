rule chromepass
{
    meta:
        description = "Detection patterns for the tool 'chromepass' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "chromepass"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string1 = ">ChromePass<" nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string2 = "490139a7800992202ca46d3a69882b476014126fc3ed4143c184bcd7f76a5761" nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string3 = "744e50af5566fa5ab70d4db70d35b3b89d75018e00b6b1e8e6280030482353bc" nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string4 = "Chrome Password Recovery" nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string5 = "Chrome Passwords List!" nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string6 = /chromepass\.exe/ nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string7 = /chromepass\.zip/ nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string8 = "Load the passwords from another Windows user or external drive" nocase ascii wide
        // Description: ChromePass is a small password recovery tool for Windows that allows you to view the user names and passwords stored by Google Chrome Web browser. For each password entry. the following information is displayed: Origin URL. Action URL. User Name Field. Password Field. User Name. Password. and Created Time. It allows you to get the passwords from your current running system. or from a user profile stored on external drive.
        // Reference: https://www.nirsoft.net/utils/chromepass.html
        $string9 = "Load the passwords of the current logged-on user" nocase ascii wide
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
