rule Atera
{
    meta:
        description = "Detection patterns for the tool 'Atera' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "Atera"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string1 = /\.servicedesk\.atera\.com\/GetAgent/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string2 = "/Agent/AcknowledgeCommands/" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string3 = "/Agent/GetCommandsFallback/" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string4 = "/Agent/GetEnvironmentStatus/" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string5 = "/Agent/GetRecurringPackages/" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string6 = /\\AlphaControlAgent\\obj\\Release\\AteraAgent\.pdb/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string7 = /\\atera_agent\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string8 = /\\Program\sFiles\s\(x86\)\\Atera\sNetworks/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string9 = /\\Program\sFiles\\Atera\sNetworks/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string10 = /\\Services\\AteraAgent/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string11 = /\\TEMP\\AteraUpgradeAgentPackage\\/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string12 = ">Atera Networks<" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string13 = /acontrol\.atera\.com/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string14 = /agent\-api\.atera\.com/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string15 = /AgentPackageInternalPooler\\log\.txt/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string16 = /AgentPackageRunCommandInteractive\\log\.txt/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string17 = /AlphaControlAgent\.CloudLogsManager\+\<\>/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string18 = /atera_del\.bat/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string19 = /atera_del2\.bat/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://thedfirreport.com/2023/09/25/from-screenconnect-to-hive-ransomware-in-61-hours/
        $string20 = /AteraAgent.{0,100}AgentPackageRunCommandInteractive\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string21 = /AteraSetupLog\.txt/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string22 = /HKEY_CURRENT_USER\\Software\\ATERA\sNetworks/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string23 = /HKEY_LOCAL_MACHINE\\SOFTWARE\\ATERA\sNetworks/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string24 = /http.{0,100}\/agent\-api\-.{0,100}\.atera\.com/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string25 = "Monitoring & Management Agent by ATERA" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://thedfirreport.com/2024/08/12/threat-actors-toolkit-leveraging-sliver-poshc2-batch-scripts/#c01
        $string26 = /REG\sDELETE\s\\"HKEY_CLASSES_ROOT\\Installer\\Products\\10F15BFE50893924BB61F671FEC4D2EF\\"\s\/f/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://thedfirreport.com/2024/08/12/threat-actors-toolkit-leveraging-sliver-poshc2-batch-scripts/#c01
        $string27 = /REG\sDELETE\s\\"HKEY_CLASSES_ROOT\\Installer\\Products\\4758948C95C1B194AB15204D95B42292\\"\s\/f/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string28 = "sc delete AteraAgent" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string29 = "sc start AteraAgent" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string30 = "sc stop AteraAgent" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string31 = /SOFTWARE\\ATERA\sNetworks\\AlphaAgent/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string32 = /taskkill\s\/f\s\/im\sAgentPackageAgentInformation\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string33 = /taskkill\s\/f\s\/im\sAgentPackageEventViewer\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string34 = /taskkill\s\/f\s\/im\sAgentPackageHeartbeat\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string35 = "taskkill /f /im AgentPackageInformation" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string36 = /taskkill\s\/f\s\/im\sAgentPackageInternalPoller\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string37 = "taskkill /f /im AgentPackageMonitoring" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string38 = "taskkill /f /im AgentPackageProgramManagement" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string39 = /taskkill\s\/f\s\/im\sAgentPackageRegistryExplorer\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string40 = /taskkill\s\/f\s\/im\sAgentPackageRunCommande\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string41 = "taskkill /f /im AgentPackageRunCommandInteractive" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string42 = /taskkill\s\/f\s\/im\sAgentPackageSTRemote\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string43 = /taskkill\s\/f\s\/im\sAgentPackageSystemTools\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string44 = "taskkill /f /im AgentPackageUpgradeAgent" nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string45 = /taskkill\s\/f\s\/im\sAgentPackageWindowsUpdate\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string46 = /taskkill\s\/f\s\/im\sAteraAgent\.exe/ nocase ascii wide
        // Description: control remote machines- abused by threat actors
        // Reference: https://www.atera.com/
        $string47 = /taskkill\s\/f\s\/im\sTicketingTray\.exe/ nocase ascii wide
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