rule cut
{
    meta:
        description = "Detection patterns for the tool 'cut' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "cut"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: linux commands abused by attackers - find guid and suid sensitives perm
        // Reference: N/A
        $string1 = "cut -d: -f1 /etc/passwd"

    condition:
        any of them
}
