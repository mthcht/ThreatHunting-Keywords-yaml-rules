rule copy
{
    meta:
        description = "Detection patterns for the tool 'copy' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "copy"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: copying an executable to a remote machine in the c:\windows directory
        // Reference: https://x.com/ACEResponder/status/1720906842631549377
        $string1 = /copy\s.{0,100}\.exe\s\\\\.{0,100}\\c\$\\Windows\\.{0,100}\.exe/ nocase ascii wide
        // Description: the actor creating a Shadow Copy and then extracting a copy of the ntds.dit file from it.
        // Reference: https://media.defense.gov/2023/May/24/2003229517/-1/-1/0/CSA_Living_off_the_Land.PDF
        $string2 = /copy\s.{0,100}\\NTDS\\ntds\.dit\s.{0,100}\\Temp\\.{0,100}\./ nocase ascii wide
        // Description: copy the NTDS.dit file from a Volume Shadow Copy which contains sensitive Active Directory data including password hashes for all domain users
        // Reference: N/A
        $string3 = /copy\s.{0,100}NTDS\\NTDS\.dit.{0,100}Temp/ nocase ascii wide
        // Description: copy dll from Programdata to a remote computer
        // Reference: https://vx-underground.org/Archive/Dispossessor%20Leaks
        $string4 = /copy.{0,100}C\:\\ProgramData\\.{0,100}\.dll.{0,100}\\c\$\\/ nocase ascii wide
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
