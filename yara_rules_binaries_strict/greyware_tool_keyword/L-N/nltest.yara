rule nltest
{
    meta:
        description = "Detection patterns for the tool 'nltest' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "nltest"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Get the list of domain controllers for the specified domain
        // Reference: N/A
        $string1 = "nltest  /dclist:" nocase ascii wide
        // Description: enumerate domain trusts with nltest
        // Reference: N/A
        $string2 = "nltest /all_trusts" nocase ascii wide
        // Description: enumerate domain trusts with nltest
        // Reference: https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-347a
        $string3 = "nltest /dclist" nocase ascii wide
        // Description: Dump Domain Trust Information
        // Reference: N/A
        $string4 = "nltest /domain_trusts /v" nocase ascii wide
        // Description: enumerate domain trusts with nltest
        // Reference: N/A
        $string5 = "nltest /domain_trusts" nocase ascii wide
        // Description: Force a re-discovery of Domain Controller
        // Reference: N/A
        $string6 = /nltest\s\/dsgetdc\:.{0,100}\s\/force/ nocase ascii wide
        // Description: Force a re-discovery of trusted domains
        // Reference: N/A
        $string7 = /nltest\s\/dsgetdc\:.{0,100}\s\/force/ nocase ascii wide
        // Description: used in combinaison with adfind byb threat actors
        // Reference: https://vx-underground.org/Archive/Dispossessor%20Leaks
        $string8 = "nltest /jbc_trusts /all_trusts" nocase ascii wide
        // Description: Force a re-authentication on the secure channel
        // Reference: N/A
        $string9 = "nltest /sc_reset /force" nocase ascii wide
        // Description: List information about all trusted domains from a specific server
        // Reference: N/A
        $string10 = /nltest\s\/server\:.{0,100}\s\/domain_trusts/ nocase ascii wide
        // Description: Check all trusted domains of a specific server (verbose mode)
        // Reference: N/A
        $string11 = /nltest\s\/server\:.{0,100}\s\/trusted_domains\s\/v/ nocase ascii wide
        // Description: enumerate domain trusts with nltest
        // Reference: https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-347a
        $string12 = "nltest -dsgetdc" nocase ascii wide
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