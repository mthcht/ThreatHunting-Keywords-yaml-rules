rule EternalBlack
{
    meta:
        description = "Detection patterns for the tool 'EternalBlack' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "EternalBlack"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string1 = /\s\-t\s20\s\-ipl\siplist\.txt\s\-p32\s/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string2 = "# based on CVE-2019-0708" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string3 = /\#\scoded\sby\sPlayBit\s\(c\)\s/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string4 = "# Windows RCE Tool" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string5 = /\\cmd_payload_x64\.exe/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string6 = /\\cmd_payload_x86\.exe/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string7 = /\\eb\.exe.{0,1000}payload_x64\.dll/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string8 = /\\eb\.exe.{0,1000}payload_x86\.dll/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string9 = /\\eb\.exe.{0,1000}payload32\.exe/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string10 = /\\eb\.exe.{0,1000}payload64\.exe/ nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string11 = "1a55475f6cdba11f604d7006993a060ca4301fa8830d51f8c30cc244ec50b471" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string12 = "3a9e7e5269489c8fbbd4c0f4786a8b8cef7a1e79a7a02b7f14850c696d0f3baf" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string13 = "4c7e46c84520992d28f771d25ed6a4d4ccd902530f5721ee1314d9de48edbd27" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string14 = "8680150c1ffa19441c8a6594c6f7f89e6ad9867915a37563013e0b987e21f319" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string15 = "coded by PlayBit" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string16 = "f33c6af5a1f10fd4f9aa0eaa6898825b52c9ed7a7871e4912bcd03551891cb4c" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string17 = "f8ad55c6c6a80781eb944e9f865a82992f35c79c2ae5c7cf363536efe0e823cd" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string18 = "fc828fc7ab13b12db0e3496a79c9af15f3f1391e5641551c0e0796ef6618bcf0" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string19 = "fdacab27da00156282cbb603a0cb61d6e62521294c4f2cba576ef156f2b4cf2d" nocase ascii wide
        // Description: EternalRomance exploit implemented by Playbit EternalBlack often used by ransomware group like Dispossessor
        // Reference: https://research.checkpoint.com/2020/graphology-of-an-exploit-playbit/
        $string20 = /playbit\@exploit\.im/ nocase ascii wide

    condition:
        any of them
}