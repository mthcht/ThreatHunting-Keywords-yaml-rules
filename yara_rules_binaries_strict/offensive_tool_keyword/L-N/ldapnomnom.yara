rule ldapnomnom
{
    meta:
        description = "Detection patterns for the tool 'ldapnomnom' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "ldapnomnom"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string1 = /\s\-\-input\s10m_usernames\.txt/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string2 = /\s\-\-output\srootDSEs\.json\s\-\-dump/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string3 = /\/10m_usernames\.txt/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string4 = /\/ldapnomnom\.git/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string5 = "/ldapnomnom/releases/download/" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string6 = "/ldapnomnom@latest" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string7 = /\\10m_usernames\.txt/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string8 = "02456d3ccf24f0b89c47b9c9c406799462b7ca4b8405fca8f340a61ee275b7e6" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string9 = "040d380defcc8a76f11e639e21c0e89ada445250c27cf8aa6ccc94aa68bff731" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string10 = "0635410e9971416cf572e7103ae2b61cf5f51540f6fed034e8be7ae331b68df0" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string11 = "076578d158003656371b54b02b8082e30afb48176e536517339b5034f46bd016" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string12 = "07f9947795d25159d1df8ef1a6fcef3f17f96b659f31137a6f48eeaa061d3731" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string13 = "0af38acc5d64d86e6519d46d9880a147528eb5fa99dfa456f8ce8009c1dd1d2b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string14 = "0d83ecf5fae3ecc043b537d33c162d01c6a1171eb27e2e3862e8cc7df328830c" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string15 = "0ddeb7336ac9bd123fe9fa3713066dc00b676aa8c0be0d7191732fa3e6602111" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string16 = "0e66df39efd2c71fc83017fd98bf187558a1793a06b8164f46561d28fc5e3e50" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string17 = "0fcd95460e9acfbfe7e232d4e464591ebd66896310e61750eef609937ae2a146" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string18 = "1013cf05122064ab1bf61f1d89f17482f2c6d6990b6ae29b33b6fc6a4882d286" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string19 = "15bca0052f87e43a6545f34c7f5052853316f6b7f2c178624313b3e1e24c0655" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string20 = "165fdaffa2c622e15a709fc597e03c5b8ca2a627cfad12375c81ac65a5c5ad11" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string21 = "1ab0edd5c7848f664b87d0ad9a7f2e081ea5500b13f38eaaf6a1720c2a7337fa" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string22 = "1ac060935cf018c68c0143a2a1647b3e11c305ff652abf603bb0caf1f9dedf50" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string23 = "1b00063bdd544b4c03f152baa78efa863cb073a8a068f4e8316489b3a0d61846" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string24 = "1df5732630ef44f85708aa64495812d0bae8f96e577b6c869277091eab28d54e" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string25 = "20584fdcd4c51f0eb1ce998ff5f19f2f897100549a008657148e7677722398c7" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string26 = "227f64a66fdac6a31e3bd7f7f18232e99464008b66cd7c6163441540eaecdfcb" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string27 = "24a9917b1d657d5961df9c2e712e1528ae4c6e73541529bbf2aee3f360724c2e" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string28 = "25e71c952a1ac4aa6614d87ca964afffa3ea33a59ef779e66afe0748eccf1642" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string29 = "26a1cdb5b3fd8d0aae6e80c75f2fc44584e602c808e22ceaa006d84e16da9d5a" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string30 = "26dac5422f343bdc37148b510dd98d08046266ff06c15119c1193a9d9a3d5a5b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string31 = "26e7da8d0f2d7f18d96a76bfe5bfd78035fb091f6ad0edb700566accfa5fb97c" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string32 = "27d206d156a0ede1cc521bb7d41588cd6c76c39ec4328c455923b718a52a4789" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string33 = "326d52ca3b8d610e573b195adb1af8025412c5557434ad7851eb2bb23bded779" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string34 = "32ce854a87a19f1e5caee7ae16dddd79d2877da1abeb6ff5c44a879708d6ab32" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string35 = "33418fd2e30db0c4c6ee6c62ded3b4707045e618939c2b772e0cee4efa7f3e67" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string36 = "33a8d6b2525e1a6f96b05cea34403292a78d8d5f6c58100c03d48c8c1e49c474" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string37 = "344b5c21c7902f2e11bb0ad052fd1a902f78656db34d17ced443717587af44c0" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string38 = "34c6af80ba22f690e42ed5e7cb90547ffb98d909f61d354f1aa2beae857cbdd1" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string39 = "34cd987d0aa614fd5280fc55f8b5988e8faf2d4b06c23571b48f49edab0f2a11" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string40 = "3544c0f867cd0e4fa8acf93997a3facb93662bf9b3770959b953aeb2f81adaa3" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string41 = "36f8232a2d7766a7331b76c5edd8b43b9b53cf9b98575d0d010f4ed4a7e34dc1" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string42 = "38bd23d1d1f4ebf370687153ac82cf815d811d46f28bdf2259a8c59e9f3553f1" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string43 = "3addcddea9689e047b939a8c8337d200212550f5c3f2b60fd66aceb7c0ee98cb" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string44 = "3d19ac0793c77c50db5f030000ca60dfbc95bd0bb7f90384ad03526c1ab5e902" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string45 = "3d3b65e7218d4308123058903295053c581d7f918ea6a7ddf61391d854febb36" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string46 = "3f2699ac7eba269458ed98cc026ecea122a696f8198b3ce7c09381aa9ac7ebda" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string47 = "465a40473aa4e631668c9d2a28bf7d3821bc124527c873511563eb53d3829e09" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string48 = "497aafd68507c783dbc1ce2074f2d4de8be022f635533d896ac18b5451e355f3" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string49 = "4d906dada24cb2d009d6cde9005711271167fc5bc9c348d9b436056a7ba80f26" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string50 = "55ba57a3e7763af586b0be21f23454a7e7ea9cd537ebd06bf9b5f3cc2cf53d6e" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string51 = "5615ab2d386e0a85a54c65dd9fc4a03162150007a56ae4eccda644095ce34055" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string52 = "57808871665b988de85ec19ab01960cb6c88aea9c996d5b9f6115ec60070a949" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string53 = "588158f3c721315eb00b31b4b1d2726f11ff6bef9d67ea98f3dc79f9a3c4159b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string54 = "5b27fd5a98641cb68ad21f6be75f49291b0cc08fa091af2ba15ef3af0a3e22a2" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string55 = "5e26c68699b11eafab62369502fbbacd7797327a7f5d5a9b84e632220935d1d0" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string56 = "5e55e91e64bb5011ac10ce8c1d90a3e9368f0ebdb6b0caa59fff7eed51393cb3" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string57 = "5e8d04c49ec9bac3e5269c5054dab440fd521a3840b9c8702e8ecadc01d392a6" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string58 = "5e8f9273ea80b99b0ee172727808e3293a61f7788a534d0ad9a824c9c6753bf0" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string59 = "6332b66bf0be1e9c829515ae2ab3104e12d786263d283a512e756f561782c0f0" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string60 = "63b2a6c8846a7e0c5116f9fd61281e092cf0db6374730d041029a1b4d3aac96b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string61 = "64a8d27e296bcb483eea9e6b7145236d919b1dc3d4bdd80259e175e439f0d92c" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string62 = "64f235e5a231dcf5f1fd79b2887c9c2f3be577ca71b424a59c987d778d580d11" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string63 = "65212e7e24bf5e11c584e0e222f02cd3695d1266a8ce024f91b890359eefdd14" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string64 = "6581e5fa0774f61a2d4ebdb019b69fbb1ede68bc6038260e787a0cdddc09ff84" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string65 = "668a6e83e72ffc8aa7d36949aad3aefca4b676b996ec099bde25edb52a56f913" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string66 = "6b494408f85854b48cba397472c9da57a5757305bb7759c1b2abbff9dcf9f649" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string67 = "6c3c38f6c80a0c6cc5c2527990decec2c5ba98c368abf75ae9fd44c4c3303443" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string68 = "6d45c0c6898be7c975f3c985fb13f3de05055884dc73b028cf6014a15059df01" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string69 = "6d47d0d25502192988e01283d2d2e51e02a8fb9e611b7b8a2f5ccb172ba75483" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string70 = "6dc00f1acf40361ca3eacdab7447097f1e3cd5ddb493e8d42f56d61d5f6c6efc" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string71 = "6e9f98db374c8bbf0dedd27e6576c3bc8d800465afef91b99220c85401cc4e4c" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string72 = "72882da20b48bcb7248d777f11d7ef439fbcbd153c8c5cd66946317d27597392" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string73 = "72946b61b5eb5c362bd560d045eeb9edd267715c2abb443886870ebb5becef31" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string74 = "766d3edb5d2d7129684f21642e1dff9a736583d3e4cc4949c23027803412faa9" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string75 = "7722284741f36f9fc0bff4902aa9ef837b3635c8b2dd43b58b051c1f08f52a53" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string76 = "79584f6bf2e53a5d8fef078289568b57867d43a11a86cc98fcfe07a013f78c94" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string77 = "7b80732e0860de10d83b01b2071e96614b18ae9ed5642b8aaa829e37f3145201" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string78 = "7cf44a7d8433e4e8dd538377de04c249639787d7427a7beddc2236237edf2b9f" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string79 = "7e95bcfab0010c0c17569f50af87efd1beb4e81952ad8b24166643353a39fa25" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string80 = "8185f7a1072ce058afd735f5162861d439a8d81f535a2609896e19c319f25aea" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string81 = "8464ed2d9649b14feb34c3289cf026bfab930e132d0876b3be5cc1a50cbfc966" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string82 = "84bdf678ec3e8af21eeb0451409cc4ae3aab9e8bd4b9299e98a29ba5375fdf6e" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string83 = "869618deb6029b6b9825dc2d8e07655476e1673bbf3ff82f54837557055a18b1" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string84 = "896f5c5de9ee24be5ff08ee6b543a15752c57c43efefad3be85451db9c560576" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string85 = "8bc622b1b2357145399d8b5ed0fd82bb253e4904dd6946eecc53a59fb578a1ea" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string86 = "8d192a48a06a7568284079c35ce1d16d4ec2d53319e4210b1138f87b7612edd9" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string87 = "908524e7f57ba214a071d8388eb4b1b375d87aade0833e39f1ac12b3660fcb9a" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string88 = "91648f9d2729f57cae268424fd8a8cc245094feeed02e9b0d25ae700913ef80b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string89 = "938a94d61186b75496c550611419474deb34d8038db6e1034a8919cebc898781" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string90 = "99ac9fc0ce4d52878179cfaf785234760ccdd11447fc596f3b04a2499eb31940" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string91 = "9ddb20f6175ae6a093b49528dee1db17ad5363de30ff316a04dbe44708597aaa" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string92 = "a1bba1fc539fed1fa694c030b340435fe309474debf5e2c599d3d4fd3b972a47" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string93 = "a3acaab0bbd69e3cc51cfaf700d2b320fbcdbdb8afa55b438fc455058fcb9a21" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string94 = "a5a57a006b98eb951be3ac97064f7410f29c2b3a2bcd815baba49173db2d4b76" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string95 = "a7901b1d6e2081a5cf79150190a4d53f441295a803ac78787591450281de04da" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string96 = "a7ae058a146daaf19862116d437757417d05ea628e902bb3e7bcd6611f637086" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string97 = "a990a9014445fe722f63624197fc0f319dbfd1e16a9b7fdcb49c5a6443a29d4b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string98 = "aad7684c2412f03604be79ddb5ac0884105ced7459eb94fa0da6a7910648b3b1" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string99 = "ab9bed9d63e2a83e2cea3d4a88311208a8032cb6b9be86876cea1a1fad870269" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string100 = "abe5927545e372ee51e2dd855cc1b927fe15073db14e72832d579d73d37be100" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string101 = "afac742aefab4af6b076dc05c93eae9d329d0d89d97a098a48217013ee8761e6" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string102 = "b56d067b0f6c9368f044d12bc73bd55da36bc766f60409f219cc77100d7f5ba3" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string103 = "b9709f5925db2c34124f1f590251a4b059e594d480223b2aaaaf1e9085f5eace" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string104 = "bbdfa6cc54416cfa7ee7af469569e527d2f8d009c2e8aab2393c531749dc7e2d" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string105 = "bfb4bd6ad9c59495256db7188a390d462d4e6edef6e7c33e403d6ed5808651f5" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string106 = "bfd47d67a9d56cc3612fb0b5e92b048ed6d5ab1058efd7d25c03fc74698d002f" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string107 = "c690147b75389b32998feda3c01ec481fcc0e0dea1876b8ec00cd97846665557" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string108 = "cb7521ed61b825e46af63d8e3d82ba30540be70145b1a24e2cdec82be9256922" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string109 = "cca7ff524237c189fb05d3b65ea0f53ee6663f2b6a7c25c28e620d1b0705c874" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string110 = "cd85f727429b678fa89ce8d29e520afaa90dc89ff671d740544bb4103d4d7a5a" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string111 = "d1439c78d82d7d5cb4c2eb3ff130ebe381ab5bb0eeaf369a02abc16e61ea7eca" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string112 = "d403d6b2805db4649b37c3646cf9cce6eecbdb3350a5eb5e78079c0d8f55f7a8" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string113 = "d65fc5abbf245e6cca94de0ba4e5da6d68c75f4905e80da957bb50afc475fcac" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string114 = "d7b2b8c7482b08e79eca66a7f8f1c9752710c1eee7f1c5df3e998c8c8ea31d26" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string115 = "d859332c8e766329669e274b93ecd7ab6f1acfb00a285e32c2545bb0234c0e18" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string116 = "d99dc267a1f57d53c4c3692457e669326615010fd35011ef2c1ce18239344869" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string117 = "da7c5433975b488f5b5831b7b50ada9f84d720fa4593117685649d25ce408167" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string118 = "dd9740e337fc3b418598904549c3e53c95314168ab92ffe43a0383f2da79d898" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string119 = "e294df6f9ef18160367aa9d540ca2c26dc1c17211289c7154d347308e0902af5" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string120 = "e4fa7af0b270b4729602f6d8d41d564ce21d805c4a43e826483ba7761acd3a4e" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string121 = "e79fd8cb2cbebc663abc7cc9d9be28033ab53a4f1398ffcb5ca0331d2a8a6a26" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string122 = "e8b691790bf24db24c00083a78e42fa9bb87fbb7abd763ee5e415ad3f8e1979c" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string123 = "eba9447c8ef7248fd7f1a14a7ca34b66fc21f090dc6b30873c54acb418afe13d" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string124 = "f3cb64050cf5adc95cb438a2484346f06b2beca9599d1c5717fd93af759aace9" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string125 = "f486fde54c5097d60c133cc75964c652d13d18dd441ea32d76fb3395327871a0" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string126 = "f61d03ebf3e6025c457cde531e636b9258ac690ceaae48c5ffb95c37749d1b03" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string127 = "f97e26cddde84739083ffd47cc19bcab4e8bfc638de45dcc46873a94d6747e60" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string128 = "fb4433e34eea9a727c126b2b806b9a064e4f332ddd32964f0838f2331a61e471" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string129 = "fd874b4038adf9ab4f9008aa429591c825c879a51e1efc6c80d8491a7eadfdab" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string130 = "feb958c545e2fc761140219d66fe588b29fce660d7ba132674863b2149de4891" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string131 = "ff08f080b3051e1054d7ed1e463591afe187eaceccb8c91fd1fd2a15827ad99b" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string132 = "ldapnomnom " nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string133 = "ldapnomnom --input" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string134 = /ldapnomnom.{0,100}\-obfuscated/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string135 = "ldapnomnom-darwin-" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string136 = "ldapnomnom-linux-" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string137 = "ldapnomnom-main" nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string138 = /ldapnomnom\-windows\-386\.exe/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string139 = /ldapnomnom\-windows\-amd64\.exe/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string140 = /ldapnomnom\-windows\-arm64\.exe/ nocase ascii wide
        // Description: Anonymously bruteforce Active Directory usernames from Domain Controllers by abusing LDAP Ping requests (cLDAP)
        // Reference: https://github.com/lkarlslund/ldapnomnom
        $string141 = "lkarlslund/ldapnomnom" nocase ascii wide
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