rule SharpDPAPI
{
    meta:
        description = "Detection patterns for the tool 'SharpDPAPI' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "SharpDPAPI"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string1 = /\sbackupkey.{0,100}\s\/server\:.{0,100}\s\/file.{0,100}\.pvk/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string2 = /\sblob\s\/target\:.{0,100}\.bin.{0,100}\s\/pvk\:/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string3 = /\sblob\s\/target\:.{0,100}\.bin.{0,100}\s\/unprotect/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string4 = " credentials /pvk:" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string5 = " keepass /unprotect" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string6 = /\sps\s\/target\:.{0,100}\.xml\s\/unprotect/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string7 = /\svaults\s\/target\:.{0,100}\s\/pvk\:/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string8 = /\.exe\s\scertificates\s\/pvk\:.{0,100}\.pvk/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string9 = /\.exe\s\skeepass\s\/unprotect/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string10 = /\.exe\sbackupkey\s\/nowrap\s.{0,100}\.pvk/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string11 = /\.exe\sbackupkey\s\/server\:/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string12 = /\.exe\sblob\s\/target\:C\:\\Temp\\/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string13 = /\.exe\scertificates\s\/mkfile\:.{0,100}\.txt/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string14 = /\.exe\scertificates\s\/unprotect/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string15 = /\.exe\scredentials\s\/pvk\:.{0,100}\.pvk/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string16 = /\.exe\smachinemasterkeys/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string17 = /\.exe\smachinetriage/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string18 = /\.exe\smachinevaults/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string19 = /\.exe\smasterkeys\s\/hashes/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string20 = /\.exe\smasterkeys\s\/hashes/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string21 = /\.exe\smasterkeys\s\/pvk\:/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string22 = /\.exe\sps\s\/target\:C\:\\Temp\\.{0,100}\s\/unprotect/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string23 = /\.exe\srdg\s\/unprotect/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string24 = /\.exe\striage\s\/password\:/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string25 = /\/SharpDPAPI\.exe/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string26 = /\/SharpDPAPI\.git/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string27 = /\[SharpDPAPI\.Program\]\:\:Main\(\\"machinemasterkeys\\"\)/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string28 = /\[X\]\sMust\sbe\selevated\sto\striage\sSYSTEM\scredentials\!/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string29 = /\[X\]\sMust\sbe\selevated\sto\striage\sSYSTEM\smasterkeys\!/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string30 = /\[X\]\sMust\sbe\selevated\sto\striage\sSYSTEM\svaults\!/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string31 = /\\Commands\\Machinecredentials\.cs/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string32 = /\\SharpDPAPI\.exe/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string33 = /\\SharpDPAPI\\/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string34 = /\]\sWill\sdecrypt\suser\smasterkeys\swith\sNTLM\shash\:\s/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string35 = ">SharpDPAPI<" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string36 = "2F00A05B-263D-4FCC-846B-DA82BD684603" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string37 = "5d975e81c68574849bb0fec4c6d2116a4ba7dd58bdd1710463ab75d9a8054bc3" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string38 = "5F026C27-F8E6-4052-B231-8451C6A73838" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string39 = "d907d7686b725441db1deb645a7079ca79f4dd1d8a18ca4b2bb98c12622603ef" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string40 = "GhostPack/SharpDPAPI" nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string41 = /MakeMeEnterpriseAdmin\.ps1/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string42 = /SharpChrome.{0,100}\sbackupkey\s.{0,100}\.pvk/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string43 = "SharpDPAPI backupkey" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string44 = "SharpDPAPI backupkey" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string45 = "SharpDPAPI completed in " nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string46 = /SharpDPAPI.{0,100}\scredentias\s/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string47 = /SharpDPAPI.{0,100}\svaults\s/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string48 = /SharpDPAPI\.csproj/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string49 = /SharpDPAPI\.Domain/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string50 = /SharpDPAPI\.exe/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string51 = /SharpDPAPI\.Helpers\./ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string52 = /SharpDPAPI\.ps1/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string53 = /SharpDPAPI\.sln/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string54 = /SharpDPAPI\.txt/ nocase ascii wide
        // Description: SharpDPAPI is a C# port of some Mimikatz DPAPI functionality.
        // Reference: https://github.com/GhostPack/SharpDPAPI
        $string55 = "SharpDPAPI-master" nocase ascii wide
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