rule rdpscan
{
    meta:
        description = "Detection patterns for the tool 'rdpscan' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "rdpscan"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string1 = "/rdpscan --" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string2 = /\/rdpscan\.git/ nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string3 = /\/rdpscan\-macos\.zip/ nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string4 = /\/rdpscan\-windows\.zip/ nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string5 = "3e105195cd87067bb899810e747a1e5d8e55929d183950bc008933beeb47e41a" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string6 = "475F1C8A-F70D-45C0-95E5-EB783935277D" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string7 = "557e0390116d12a493e6c474e572a61856510ce0b697edbcfa69f47ca4658bc2" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string8 = "5cf4ae2ea95c4c56eda8749f2175fe9afa9242421ce25bf75dece792e62225c6" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string9 = "63a5a0894a0b043b9e92dd13a66bf55d3fe793eb261455fbd22c01162243b4c5" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string10 = "68e83d6ded3dfefa7e7da34e9089e61b1c0930a7c9dfb5c57b6be0ed9e37f2cf" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string11 = "97d7f49d98113060066976048b4711332b6df96ce6b7db127c2317b64b78eab0" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string12 = "9b0fea977dd10dc9e428350ca1d93bb1fe6fc865abb0f37b0975821c45cb6c65" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string13 = "c27dbd299e21bfae88576671d7bc6208a8ff4da2e422d1e5655fae21e2cffb45" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string14 = "D116CC32-BC4F-4FAD-B09C-0D6459D1C1B6" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string15 = "DF1F9EF7E4D85B0CEAD7F286C16E0DB63A3742F927248B35D4EFDD3E3554A079" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string16 = "e89d561ea667d268c732e32b45d1f8be6fac62b9624f9f8020360db70c57df7f" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string17 = "fc82c701b9cc15cd6c9a34a65820138a3ae363f6e80580fa7331e6bb91f21e03" nocase ascii wide
        // Description: A quick scanner for the CVE-2019-0708 "BlueKeep" vulnerability
        // Reference: https://github.com/robertdavidgraham/rdpscan
        $string18 = "robertdavidgraham/rdpscan" nocase ascii wide

    condition:
        any of them
}