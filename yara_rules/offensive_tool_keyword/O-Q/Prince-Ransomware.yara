rule Prince_Ransomware
{
    meta:
        description = "Detection patterns for the tool 'Prince-Ransomware' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "Prince-Ransomware"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string1 = /\-\-\-\-\-\-\-\-\-\-\sPrince\sRansomware\s\-\-\-\-\-\-\-\-\-\-/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string2 = /\/Prince\-Built\.exe/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string3 = /\/Prince\-Ransomware\.git/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string4 = /\\Prince\.v1\.0\.0\.zip/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string5 = /\\Prince\-Built\.exe/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string6 = /33c1c910095186228f4a1843ab48098179b8ef57d0b235cdd483da5438a4aa49/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string7 = /56fa384aada24362640f70277b54bf5d91c3befaf445e5428a60cd44fba2fba1/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string8 = /77227879203ee0e49d64978edc6f40c590df6e1bb6260f65340fc713880301e8/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string9 = /844405c37fe6e576573b01a4384120e7837d20ee2deb849eedd9d6a966b046f4/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string10 = /e7c8fc74e31020a6c52c225c143a58c1243ec86e00fcd9038b8194418f8e3603/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string11 = /https\:\/\/i\.imgur\.com\/RfsCOES\.png/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string12 = /Prince\-Ransomware\/releases\/download/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string13 = /SecDbg\/Prince\-Ransomware/ nocase ascii wide
        // Description: Go ransomware utilising ChaCha20 and ECIES encryption.
        // Reference: https://github.com/SecDbg/Prince-Ransomware
        $string14 = /Your\sfiles\shave\sbeen\sencrypted\susing\sPrince\sRansomware\!/ nocase ascii wide

    condition:
        any of them
}