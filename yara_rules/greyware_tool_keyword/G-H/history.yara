rule history
{
    meta:
        description = "Detection patterns for the tool 'history' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "history"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Removes the most recently logged command.
        // Reference: N/A
        $string1 = "history -d -2 && history -d -1" nocase ascii wide

    condition:
        any of them
}
