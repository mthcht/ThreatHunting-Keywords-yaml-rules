rule golang_c2
{
    meta:
        description = "Detection patterns for the tool 'golang_c2' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "golang_c2"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string1 = /\/golang_c2\.git/ nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string2 = "cd golang_c2" nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string3 = "CREATE DATABASE C2;" nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string4 = "golang_c2-master" nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string5 = "m00zh33/golang_c2" nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string6 = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqqKav9bmrSMSPwnxA3ul" nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string7 = "MIIEpAIBAAKCAQEAqqKav9bmrSMSPwnxA3ulIleTPGiL9LGtdROute8ncU0HzPyL" nocase ascii wide
        // Description: C2 written in Go for red teams aka gorfice2k
        // Reference: https://github.com/m00zh33/golang_c2
        $string8 = /mysql\s\-u.{0,100}\s\-p\sc2\s\<\sc2_sample\.sql/ nocase ascii wide
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