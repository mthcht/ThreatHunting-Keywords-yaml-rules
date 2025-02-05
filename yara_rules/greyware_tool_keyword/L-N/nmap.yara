rule nmap
{
    meta:
        description = "Detection patterns for the tool 'nmap' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "nmap"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: nmap vuln scan of most used vulnerabilities
        // Reference: https://vx-underground.org/Archive/Dispossessor%20Leaks
        $string1 = " --script smb-vuln-ms08-067,smb-vuln-ms17-010" nocase ascii wide
        // Description: A very common tool. Network host vuln and port detector.
        // Reference: https://github.com/nmap/nmap
        $string2 = /\.\/nmap/
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string3 = /\.\/test\/nmap.{0,1000}\/.{0,1000}\.nse/
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string4 = "/Nmap/folder/check15" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string5 = "/Nmap/folder/check16" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string6 = "/Nmap/folder/check17" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://nmap.org/book/nse-usage.html
        $string7 = "/nmaplowercheck15" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string8 = "/nmaplowercheck16" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string9 = "/nmaplowercheck17" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string10 = "/nmap-nse-scripts"
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string11 = "/nmap-scada" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string12 = "/NmapUpperCheck15" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string13 = "/NmapUpperCheck16" nocase ascii wide
        // Description: Nmap (Network Mapper) is a free and open source utility for network discovery and security auditing
        // Reference: https://github.com/nmap/nmap/blob/635675b1430a89e950f71112d3bfc74feee4b19a/nselib/http.lua#L2600
        $string14 = "/NmapUpperCheck17" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string15 = "/nmap-vulners" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string16 = "/nse_install/"
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string17 = /\/nse\-install\.git/ nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string18 = "/s4n7h0/NSE"
        // Description: When Nmap is used on Windows systems. it can perform various types of scans such as TCP SYN scans. UDP scans. and service/version detection. These scans enable the identification of open ports. services running on those ports. and potential vulnerabilities in target systems.
        // Reference: N/A
        $string19 = /\\nmap\.exe.{0,1000}\/24/ nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string20 = "b4ldr/nse-scripts" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string21 = "external-nse-script-library" nocase ascii wide
        // Description: Nmap Scan Every Interface that is Assigned an IP address
        // Reference: https://github.com/RoseSecurity/Red-Teaming-TTPs/blob/main/Linux.md
        $string22 = /ifconfig\s\-a\s\|\sgrep\s.{0,1000}\s\|\sxargs\snmap\s\-/ nocase ascii wide
        // Description: A very common tool. Network host vuln and port detector.
        // Reference: https://github.com/nmap/nmap
        $string23 = "nmap -" nocase ascii wide
        // Description: check exploit for CVEs with nmap
        // Reference: https://nmap.org/
        $string24 = /nmap\s.{0,1000}\s\-\-script\=.{0,1000}\.nse/ nocase ascii wide
        // Description: SMB lateral movement with nmap
        // Reference: N/A
        $string25 = /nmap\s\-p\s445\s.{0,1000}\s\-sS\s\-\-script\ssmb\-security\-mode/ nocase ascii wide
        // Description: When Nmap is used on Windows systems. it can perform various types of scans such as TCP SYN scans. UDP scans. and service/version detection. These scans enable the identification of open ports. services running on those ports. and potential vulnerabilities in target systems.
        // Reference: N/A
        $string26 = /nmap\-.{0,1000}\-setup\.exe/ nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string27 = "nmap-elasticsearch-nse" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string28 = /nse_install\.py/ nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string29 = /nse\-insall\-0\.0\.1/ nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string30 = "nse-install " nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string31 = "nse-install-master" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string32 = "OCSAF/freevulnsearch" nocase ascii wide
        // Description: Nmap Privilege Escalation
        // Reference: https://github.com/RoseSecurity/Red-Teaming-TTPs/blob/main/Linux.md
        $string33 = /os\.execute\(.{0,1000}\/bin\/.{0,1000}nmap\s\-\-script\=\$/
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string34 = "psc4re/NSE-scripts" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string35 = "remiflavien1/nse-install" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string36 = "shadawck/nse-install" nocase ascii wide
        // Description: Install and update external NSE script for nmap
        // Reference: https://github.com/shadawck/nse-install
        $string37 = "takeshixx/nmap-scripts" nocase ascii wide
        // Description: When Nmap is used on Windows systems. it can perform various types of scans such as TCP SYN scans. UDP scans. and service/version detection. These scans enable the identification of open ports. services running on those ports. and potential vulnerabilities in target systems.
        // Reference: N/A
        $string38 = /zenmap\.exe/ nocase ascii wide
        // Description: ZMap is a fast single packet network scanner designed for Internet-wide network surveys. On a typical desktop computer with a gigabit Ethernet connection. ZMap is capable scanning the entire public IPv4 address space in under 45 minutes. With a 10gigE connection and PF_RING. ZMap can scan the IPv4 address space in under 5 minutes. ZMap operates on GNU/Linux. Mac OS. and BSD. ZMap currently has fully implemented probe modules for TCP SYN scans. ICMP. DNS queries. UPnP. BACNET. and can send a large number of UDP probes. If you are looking to do more involved scans. e.g.. banner grab or TLS handshake. take a look at ZGrab. ZMaps sister project that performs stateful application-layer handshakes.
        // Reference: https://github.com/zmap/zmap
        $string39 = "zmap -" nocase ascii wide

    condition:
        any of them
}
