rule SafetyDump
{
    meta:
        description = "Detection patterns for the tool 'SafetyDump' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "SafetyDump"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string1 = /\/SafetyDump\.exe/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string2 = /\/SafetyDump\.git/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string3 = /\\SafetyDump\.csproj/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string4 = /\\SafetyDump\.exe/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string5 = /\\SafetyDump\.sln/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string6 = /738f3dce5ad63a16b2cf8b236d8d374022f121c0990e92adc214a6d03b0dc345/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string7 = /8347E81B\-89FC\-42A9\-B22C\-F59A6A572DEC/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string8 = /riskydissonance\/SafetyDump/ nocase ascii wide
        // Description: uses the Minidump Windows API to dump process memory before base64 encoding that dump and writing it to standard output. This allows the dump to be redirected to a file or straight back down C2 or through other tools
        // Reference: https://github.com/riskydissonance/SafetyDump
        $string9 = /SafetyDump\.exe\s/ nocase ascii wide

    condition:
        any of them
}