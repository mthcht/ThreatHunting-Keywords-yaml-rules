rule KrbRelayUp
{
    meta:
        description = "Detection patterns for the tool 'KrbRelayUp' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "KrbRelayUp"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string1 = " = \"KRBRELAYUP\"" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string2 = " --ForceShadowCred" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string3 = /\sMakeMeEnterpriseAdmin\.ps1/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string4 = /\sPowermad\.ps1/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string5 = /\sspawn\s\-m\sadcs\s\-d\s.{0,100}\s\-dc\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string6 = " spawn -m shadowcred -d " nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string7 = /\.exe\srelay\s\-Domain\s.{0,100}\s\-CreateNewComputerAccount\s/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string8 = /\.exe\sspawn\s\-m\srbcd\s\-d\s/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string9 = /\.exe\sspawn\s\-m\sshadowcred\s\-d\s/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string10 = /\/KrbRelayUp\.exe/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string11 = /\/KrbRelayUp\.git/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string12 = /\/MakeMeEnterpriseAdmin\.ps1/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string13 = /\/Powermad\.ps1/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string14 = /\[\-\]\sFailed\sto\sdecrypt\sTGT\susing\ssupplied\spassword\/hash\.\sIf\sthis\sTGT\swas\srequested\swith\sno\spreauth\sthen\sthe\spassword\ssupplied\smay\sbe\sincorrect\sor\sthe\sdata\swas\sencrypted\swith\sa\sdifferent\stype\sof\sencryption\sthan\sexpected/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string15 = /\[\+\]\sBuilding\sS4U2proxy\srequest\sfor\sservice\:\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string16 = /\[\+\]\sBuilding\sS4U2self\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string17 = /\[\+\]\sGetting\scredentials\susing\sU2U/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string18 = /\[\+\]\sGot\sKrb\sAuth\sfrom\sNT\/System\.\sRelaying\sto\sADCS\snow/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string19 = /\[\+\]\sGot\sKrb\sAuth\sfrom\sNT\/System\.\sRelaying\sto\sADCS\snow/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string20 = /\[\+\]\sGot\sKrb\sAuth\sfrom\sNT\/SYSTEM\.\sRelying\sto\sLDAP\snow/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string21 = /\[\+\]\sGot\sKrb\sAuth\sfrom\sNT\/SYSTEM\.\sRelying\sto\sLDAP\snow/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string22 = /\[\+\]\sImpersonating\suser\s.{0,100}\sto\starget\sSPN\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string23 = /\[\+\]\sRun\sthe\sspawn\smethod\sfor\sSYSTEM\sshell\:/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string24 = /\[\+\]\sS4U2proxy\ssuccess\!/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string25 = /\[\+\]\sS4U2self\ssuccess\!/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string26 = /\[\+\]\sSending\sS4U2proxy\srequest\sto\sdomain\scontroller\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string27 = /\[\+\]\sSending\sS4U2proxy\srequest\svia\sKDC\sproxy\:\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string28 = /\[\+\]\sSending\sS4U2proxy\srequest\svia\sKDC\sproxy\:/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string29 = /\[\+\]\sSending\sS4U2self\srequest\sto\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string30 = /\[\+\]\sSending\sS4U2self\srequest\svia\sKDC\sproxy\:/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string31 = /\\KrbRelayUp\.exe/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string32 = /\\KrbRelayUp\.lib/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string33 = /\\KrbSCM\.cs/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string34 = /\\MakeMeEnterpriseAdmin\.ps1/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string35 = /\\Powermad\.ps1/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string36 = /\\Relay\\Attacks\\ShadowCred\.cs/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string37 = "3aa113440e9f684df0d0f889c69ae914a40b07c10a340d1fad4f8365286fe19d" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string38 = "Dec0ne/KrbRelayUp" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string39 = "ED83E265-D48E-4B0D-8C22-D9D0A67C78F2" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string40 = "KRB_CRED kirbi " nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string41 = /KRB_CRED\(kirbiBytes\)/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string42 = "KrbRelayUp - Relaying you to SYSTEM" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string43 = /KrbRelayUp\.csproj/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string44 = /KrbRelayUp\.exe\s/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string45 = /KrbRelayUp\.exe/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string46 = /KrbRelayUp\/1\.0/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string47 = "KRBSCM: Will use the currently loaded Kerberos Service Ticket to create a new service running as SYSTEM" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string48 = "namespace KrbRelayUp" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string49 = /Perform\sfull\sattack\schain\.\sOptions\sare\sidentical\sto\sRELAY\.\sTool\smust\sbe\son\sdisk/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string50 = /serviceName\s\=\s.{0,100}\\"KrbSCM\\"/ nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string51 = "ServiceName'>KrbSCM" nocase ascii wide
        // Description: a universal no-fix local privilege escalation in windows domain environments where LDAP signing is not enforced (the default settings).
        // Reference: https://github.com/Dec0ne/KrbRelayUp
        $string52 = /using\sKrbRelayUp\./ nocase ascii wide
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