rule fleetdm
{
    meta:
        description = "Detection patterns for the tool 'fleetdm' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "fleetdm"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string1 = /\sinstall\-fleetctl\.sh/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string2 = /\.dev1\.fleetdeck\.io/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string3 = /\/\.fleetctl\/fleetctl/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string4 = /\/api\/latest\/fleet\/mdm\/bootstrap\?token\=/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string5 = /\/api\/v1\/fleet\/mdm\/sso\/callback/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string6 = /\/etc\/fleet\/fleet\.env/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string7 = /\/fleet_v.{0,1000}_linux\.tar\.gz/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string8 = /\/fleetd\.crx/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string9 = /\/fleetdm\/fleet\/releases\/download\// nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string10 = /\/fleetdm\/fleet\/releases\/latest/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string11 = /\/install\-fleetctl\.sh/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string12 = /\/tmp\/fleet_remove_log\.txt/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string13 = /\:9001\/proxy\/mdmserver1\/account/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string14 = /\\\\\.\\pipe\\orbit\-osquery\-extension/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string15 = /\>FleetDeck\sInc\</ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string16 = /00b377900f7213590db683ce75b4d3ae6053633a5938148afeefd607d0e88319/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string17 = /017439a15b04aafd322811f9812262e02f5f0bdf2aa252d46a06d7d118dd24f4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string18 = /0237e84c1a958e0c3bd52228ed33aad0e847d5e72a679381ade503ce1dfddc8b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string19 = /026fd2dd800e84250a19978fc4df8d1c2ff01b61cafdc0aeeb205efb9259fd73/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string20 = /035a602153cd10af0c370d9863749b006a2590a7c274bb1cb698016a98ccab3f/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string21 = /03b2d5858587fcf2c5d6f7cdc4a4401318ee63066f936e295f9e94e8c66f0a86/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string22 = /045ccab12ac435e6f5a85a15f8109d168193a8370c3a234befa0e960ba609ffa/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string23 = /069a56ca99f366c294536ade1d99de76e68aac6450bdb5f8b59258295bb1ff22/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string24 = /07ae98d2c32434b5ae6382cf43dda0e42ece5e6788be97f07f6262e9b72cb3a8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string25 = /07e837c2ad8be50c19a464a4db64a912acf2e5d5531fdbfe2c4ac5ac008c83ab/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string26 = /0a80748ee061b0dc3fef0ecf95abcdcf6554fb09e2f3675fa8f48c43d5582dfa/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string27 = /0b860218a265d58208a132a83dcf04780635337c722caa05cbbd281b32749a91/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string28 = /0bec3d7403f9a089a30003eb12d000cfac25e12e826055d87dd111f3e7bb8559/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string29 = /0c4413aa7e74903ba6c00cd78d60bb9a153d5775949a90d2c794ec00cef7fbd8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string30 = /0cbf3ed058d43997b5b034e7c60de64b16ef94a3578358eaf0b4b4a9e6777446/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string31 = /0ce68a99407f300b71cebe379dfa81096726595934a8dcd45360f84dc6c08163/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string32 = /0cfb5b4de55c4affbc5df2d949015300f554d0eca7bb925a79db14997d5c18e2/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string33 = /0d34f8d272ad4e604c2798ad670d2a2b06d397cc38fa3d84382a16d014c43925/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string34 = /0f7e030eec92ad940dbdafa3806a0140d7589219d7de05301e8cf622e63683df/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string35 = /0fdf8c16ffc44fe0006ac5e07721c17a7995c0bcdb4309d3d66697a8f153b402/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string36 = /0ffa09304c7f2966f94a1acc5848c0adfa1cdf70525ec51f52722af4624572c3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string37 = /1078cdf24990c103ac9a35c7081bfdf4ea6d0d62d6c9b1a5624a6ab9c6fcb07b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string38 = /149ca8b9b2f375a73adf0ae4739f7ab0c83477202c5875ef7f3e2716a087d2ee/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string39 = /151e41e5d547de46a4557bef41a35790951a7926646c7d35d1ed1ef7f9961964/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string40 = /157f7d3b048d686f719fdbfe50ee4bc9676d6443211d13cdf0a49b108f1fd6eb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string41 = /16813fc81e4ffa28723f54b0d63838e77da5c8e12c13ae73ec949870c440ecfa/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string42 = /17419f33715f3074f54f71fdaf6e732a28da9961b7143de67e7d91dd6e885191/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string43 = /189d2b311c47271dd6c1bed36d8531cdf20e2f21aff699d1fe6d8e29020bde63/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string44 = /18aced79e1431c887174daad2c6076afbd67034fd5ef72042260feffce27a274/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string45 = /1a9fb59e84b29362e747cf4191c4100ccfa6c52fd766eedb831a4169923976eb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string46 = /1b60f0c6902fde29c56d8ef1df0be1b1ba81320c08aeeae8aa34b2f3698c5cae/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string47 = /1ba101f6b07b3194b481dfad27f70bfa23e86a822b49e8c6b3138e57f13614c7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string48 = /1bcbac2e969778df504fbe04dd5bfb1e337c141869efdca9c3974e8c97296e18/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string49 = /1c28a3ecf4991146bccfd39ec97c8c060286596c44caedb598feaaf607b277cd/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string50 = /1d289b4fb2f8766a1a1e7f8bab7472322f721c1c2f7ecf676f0c9dadfc7f66b3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string51 = /1d6101c42021d29583532660865649b7e609b0862e3bd0b164ec794b2953a2f0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string52 = /1d7c4f0e2045835904ee9c994212605d67aef12c7899d8d203039100dc038db7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string53 = /1e938fb7b547413a088c96ada20ab163fe27f12d2124aa1cb652f68ec0448970/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string54 = /1f615397bacd86a29514e0cc9981af1e76ba261c6634367508a7fd88bc088724/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string55 = /1f88f58c10b8f936cf8058e5effdef6a88ece05393f3c3df2a1247c3d6e651c0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string56 = /1fd8e5fb9a446742894cec59f3007244ed3ea77b2f7401b6fc42333dc0a0ed51/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string57 = /221696c07ae07e3e5892f0538003c1ff036a5a1a89e6a2260fe435695214e3b0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string58 = /222472878481b038dba079d39e38666a6d49da0fce417645e9439f6385ffaba4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string59 = /2266628a8f1495e4ec904646ee77797367b359aaa3b3a1dd49449031bb5c7878/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string60 = /244b58636bb8104b7b48fbb09402827ad91fd9424a1cb9dc15f8ca353718906d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string61 = /2677ada64618dc9d5ac8f15ee9b377009c34376e72c3f460ada6db202821fbef/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string62 = /2699a142ddf7b9f8c30c65c37f4511f6dfb7a8114eab3d4ef026f04a3944fac1/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string63 = /2c775985d8d4e0262216794d6924aea06a6f9ce9888c6918347e3df3886e8579/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string64 = /2ce1530925d694ce72da0deda5dc3f7f8ee6b5fe2b3b3ade80973e5b72c35e96/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string65 = /2e441805f8ad1cd674a7d024936547d4268d9b8be63a7b08445ad6e394974f44/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string66 = /2e8d4bdf96c2294bb242e69f02fb44afcc5b710bb99d45047ee39d8d22f3f025/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string67 = /2ec4ee6330d9e05cf8be0e465298e4da33f47e6ab5f93581998dc7ed2837bffd/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string68 = /2f1f3b1b11933cc4f1396967bc588143aaa84313f08cf5aa1c4d009509d4d20d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string69 = /2fc0ed12ef82482e5f7afc1fc61e25f43139421f3a999d366ac1a403b33ece3c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string70 = /2ff4610933ac3310b66beca9b0f12bb88aa346c5ab8f1cfd4fd03219efbeacc9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string71 = /3071cf9b377f62becd8f5ede7a3370eb94499fe28e87a6f6a4be6f6df3c0ac12/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string72 = /3212ec3f0ece0d3d4df29f816f2928ca98398c57f110f3e18dbbb656ff56f073/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string73 = /321f8b3fa818470657f9bf25d73016bf13ca8833c32f3c2fd98e54f4ef5d00d2/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string74 = /3277b33dfc78aeaf0a039394592d87ecbdd8a1964a0cca388df58a5684f796c1/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string75 = /33afcd4459db6fdcd977d24963acff551615be452d0fe8e1df8f862f058d6c48/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string76 = /3538bb3c8d8d8640f15a31a53e7d688fec5043a5d9ee8ac917da83e699e503e2/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string77 = /376c1371b87dd3ea20ad65ada4ef47f811218382422843a4ecb3fd590fc62c8a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string78 = /388d03b5f42d14e0d68541fa74da9abc891e3fb7f7f6daae98d8e0e963c255b4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string79 = /39e4be4d1d4bb0a5c9bdffd4128901444e603f9c77f5525c87a381131d82f323/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string80 = /3a137179e0095bf147e50fea7bec3ffb989f0b53d0bbe5bdab21dba5c173b414/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string81 = /3ba1b87c659e4c9ca752c50c7e9414ed46f982ce88d668e7d918a95af13315c9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string82 = /3bad0a20a77b7839ab4e236d31b4de469a0e0e58ce2195d2d7b2df8decec7ce3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string83 = /3e754f15b17e2c21e6579a263990aecdf7652c7994b117d928782cd31cca590a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string84 = /3e81cd5540da875704d3109537203c7381b80b854851fe43ff2c806778b061b0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string85 = /3f3ab39136e22d9cf714ab609d182d079a5cf2c6acf36d26ec9d88b64b209509/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string86 = /3fb343762a0cdfe57ac0e85f3b5cb93dc5579c9d820d4a268ca81e809bea089c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string87 = /3ff86dceb685d7dc4b7c14553cc557a3a9eac36e0f0565d8a4c0576f6eee242c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string88 = /40c8f1e14c24fe384c4ed1845716ea52b391c9a867838f0a817e60d9eff6f941/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string89 = /43e4ddd1285dfb190c49ab4c6d488369b5ae72234a5d87afd93bc6fc2d675076/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string90 = /4445ad2ca90c814faa03bcbd25681af7063bb0d3f6ae4930e433e9d4b6ae84e3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string91 = /4511497ad6ecfef8d3a9fcf7585eb454edf22ea0dae6f77be2c81e7a6539dcd7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string92 = /4524035a526a4871f7165635991d84d188b944dcd74971d3db44335d1e7565fd/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string93 = /452ef95ff3475ce13c5533a13d6f3e084ec940091c710a75a335d2cdf47ce846/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string94 = /4625292d15399581f185b11ab34ba654c5b10f25bfe917132f7e1dcd19dddc94/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string95 = /4655c54ddae45ebc1b2b32a9568af775791964cf9ed6e2198a5d11ce466c23fd/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string96 = /47076023e33117b13ed9e9ef7be415067600c180b460a1c73823560de005eb0d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string97 = /4773c4275d0b56d5b80953003dc9956a6a7aa8c4a016480986fb409aef9b161c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string98 = /4a45903123dc54041be3142c9736129aad4a5a440d1f0388e0b8875808cc3d56/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string99 = /4a5635751d0b33ed9473bee0c056269d17d33aa3c4a5019d9bb5947a61cb081a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string100 = /4bf552065bb179e2da10c1e65463ccc68f451faae21468ebc91ec83308ebbe36/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string101 = /4d95694b73357e0e304b68cdbb00bd65da3ffcaa7e2148141dbc4e29357b5a52/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string102 = /4daa7e8e607567451a1db6eb4c297c60a028263756b460c75bc5a31c39bc968b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string103 = /4de5606b62d1fe9200c6a473f4d04ebe7a492172e36e8387ec9647c3d399cfd9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string104 = /4e021eda86591c657ec781b77472518ecbf51b4f2a1b63e2ab53ac7289e59428/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string105 = /4e5d34573206efd1a545796a8c2c233a80fe5301c11eee3024e978b0977a4521/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string106 = /4eb752de605ffcacb6aaf1e613bef1596b6a4583811d1b2fc6b0948df4febddd/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string107 = /4f4a7ad2eedc23ab3b6127a704fe66efbbda6bc654b98741aa2aadb8293d5864/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string108 = /4F748D41\-5BE1\-4626\-A0AB\-9EA15CDC2074/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string109 = /4fd9e503868b34bf6c0de86423afd252160aec8f3218458f2a4d3d774b84a99d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string110 = /52e9a87377d0237b7c1a1c8247898ec1a41bfa2a52af411694ff62b70b64917b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string111 = /532f05083cc5b4ef33e473ca5d956da9d9e372673bd3803d20193b879a083487/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string112 = /54d84eaf8b6d8d6d0b865c39b39a8253c079d571e066d02b50c5d0dd50d1be74/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string113 = /54ef26ef5847752d4acc732de7e294cb02766d89fc5eb30ead4de42cea331d79/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string114 = /568be7e64dc6dd20516910fe1cd2db611fee2b3051b2ff81ca1ef092bf3bbd91/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string115 = /56f939d7b5513df64ad63f7bf2da6cafa98778872aecfbce5f55161648ca4231/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string116 = /59d935b141966f1706eaf690c8937ef1f4a75303b2852f3fcbd6b77d1287d744/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string117 = /5a65d7c3fda43337fd1422f92403901a460c12a37f89da6cb70833802a2f1c9b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string118 = /5b0b491a401d5031b75aaa1bfe8ab32d55befb03d7cb627de72409fce0b5a103/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string119 = /5dc1924bef12ac4d6b3a428b16f92545e54a4f2a53ccf416f327cab35eed20b5/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string120 = /5e7401fba3d86958c0efddc44addbba7dd34e629ba47501445f1bb9db88eb52a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string121 = /625ae9460120\.ngrok\.io/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string122 = /635c9083e14310cee41e7f5caaa91249130280aca25911346a82e5edbbbeebf9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string123 = /639d2a5d5cab0b60d2f2d22c835f997db1b16cf5ac4a8d88f3c91d43247d359d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string124 = /65f081caa613ba53342c9c3dd7188f22552b83c9e8ac73f740321f99f6a9fe5b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string125 = /69ea24257c033294c33d7bb036d7ea550a75d00c2313c6d4ef25126b67d7a574/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string126 = /69fd60793b4333e2c0fd80f36d293b6eea6cd3b8f3761b65b7074ef1d812fab9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string127 = /6b5f393778459329dbdc69151a3492bb3f18b798bc6e9a7707219923b2a0aab9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string128 = /6d331a0cf4808cc0a5141960acfe009d99e5b6e33b477216c9e888d55a04885e/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string129 = /6de3528cac2c68c0f14a98474db820bb8291b49ab63727e52d58d29288af3fa7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string130 = /6e12d0f2f68b89133032436717f20a60bc8b9b0e116f2985e658dfb0f1e46066/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string131 = /6ebf021ec1ecf18a97b59fcf9c045aa245120b84a84a5319dbbc5ff4c34f42ee/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string132 = /70f7f49337d31968d4a2b7eb27200bced44eade5ba5c75547bd1f9a51660f2d5/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string133 = /710c8601b26a63482c9d8044bfb12d8dec9297aaa593942cb68185276dd304b6/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string134 = /72d4be0337fe92dda02f3828e2f1f7df290a1c079e81ef3873d9c0502bbe90a3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string135 = /74d130cad8acef03e4faa3b5befcb1351db038fa47421d6a5d3010f583ab0e47/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string136 = /763e2f8597ef969c08a17932f0d4e10424b478314ceddbf72ba13a5d41aa8df0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string137 = /770ca5efa95e4c0a44f8f1653c41d79c9fe55d0e9a228eb2d374bdd8a11a63f7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string138 = /7a64765efe8fe0d9f6a346e5f38aae30a3534f931e539890114aea698d8960cb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string139 = /7b5de4f0a090f29dd3d63a3d773b792cb059e2b39497ff4d633fcabb2afbc297/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string140 = /7b89ba929cc86c0b945cef5168476ba82ac80d19c9c2111d816643eb453cb14d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string141 = /7c26189a98e1b82293fa72a8a88725ecce3d38622480e5809b8bec9fca407ab1/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string142 = /7d49e7215481d044c66c2af30c063b4253e2086be6b20f6c99142ad3b6fb4fbe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string143 = /7d602aa3b76b0aae9dd6771e6451d3aa23b89f46ff115b0096b9074d110e2877/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string144 = /7d739b6a0667be4e84dff7ad01ae6db2369aac0bb8685d1eafb74a239cf3dde4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string145 = /7f08d1c537cc683674c8b85e02ba5ae0513a779fc416c687f82a1b0eba4010d8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string146 = /7fab6b56cc09d922c7160833d912a2a23ac61ae9d6dc1156d8228bc2c03f5059/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string147 = /80cd76926ec4cf711da761f81d469824ebfc21388b3e062fee509ea087f23a5a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string148 = /811febc6169517fbd42233cdc003fcaf660f1ee969fcea98261647274ae27f2a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string149 = /81336615ec3491b5ef7770fefaaa4c955dc1bc123d79bb90b24a86989c95aa86/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string150 = /82d32160a4bc234ba3e1d34412e65ee7a74c904df4156a896f71c422a103abd6/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string151 = /84bd394d27a36a89e86a265dd05d14d4747f16ec916044fec21ec113bf96a1c4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string152 = /85f0b24d9e734c48dfe285aece6b7decb23eaa976590245adf67e43b1bc222d1/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string153 = /86f533145306e79ccdbe21d0b46326ae9fab9507f3a1740d0ffc8a088ce18d02/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string154 = /87759dcbffdc166d166545937d55787701b69197a7138ac01850f661f2dceed4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string155 = /881f6c9e3c1e70dd076b850c146352b733957e1ef90a76c46595631f2cd5ff7c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string156 = /8a51f608a0c289334d341590a8b59fce757f07fd112aaa5459fc9c51891b5e60/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string157 = /8a589ad4b3ec87077fb149d95a7c53d4a9422c2270b8d83a17c2ae0e2bcc816f/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string158 = /8a9035a8ebb7500049aacb7291c559d29a2db2024cfdac39fbdd6ff277dc2764/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string159 = /8c1b2481e4dfe27c73d6446784fae2b9d2c7d27c11e0a19b081e877a38d08c94/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string160 = /8c38c4c17d8d8382d9fe1f98db556bca3cfeb3fef0359d9d7c01ab73477b4a48/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string161 = /8d16dbb3c90052e4a2644008d40b65813912d7b117ab6f8c65e886f2881361c2/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string162 = /8ddb38319fb34f580a0f3732fcf3f40b13c2b562fd676b189481e1cc0e361381/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string163 = /8f798e081ea1cb1e106552ab9a7241994d3c05dd18970f3e1ad8329d3738bd7e/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string164 = /9043fcb49a3326bc9887c4a8cff27560c53edf4792fc94024f756a5791da38a8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string165 = /9147ff5871fe6cfb56f5ad85e69570ef5d904a20b4cf8135a59ea687e9efe7b0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string166 = /917759e1b76b72229b5dc928b07af4a4d1f99b41111da42580aeb28ef2aefd3e/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string167 = /91aceb4ee71ac847521007ac796e718ad5bb6577c28b5c992e810e2f4e402046/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string168 = /91e7b6bf8831219775f176389103295d7065a7e6eb74c68c1093416be508ba14/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string169 = /92dfe587c369ed8afad29bcb4ae5ed9a313cb563b2e52ff0b0494f15dcd5fd33/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string170 = /92f34dca0bd5715dbfffcdceeb89ffab9cd8115c2faf07cbd1e34071795cdb44/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string171 = /92f9a5bbfd116c4e20227af72b651b95a4190b346cb391762d0d50f5245d3355/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string172 = /94253480a0f1e3be221902d60f94463420057f8d84f9136abd6b7448332a1fe6/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string173 = /9456bf9d11fd8cee55619fc0a2ffe3443f9bfea51589af5c3b1282dfa50eb2a7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string174 = /947895eee1492a0f6da5c69fe68361b97359f52f99ac72f7947a456618f0ec7f/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string175 = /9506632b80989310f2d2cca6a35e036d21213776cfff6623c28f1c5d3b8588c7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string176 = /9507e23a60968916342e626ca86fdde847cb30dafbe12a3f50f8854efef0f62e/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string177 = /950ecb779365ffc85a6eba98a8d8dd5dfad765692385a2f59bc93ddbf13a489a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string178 = /971a9d100a6bed85f54fa61064075260f64396b2977e716cdd5537f5ab3c5e92/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string179 = /9887df54ec10a12b986c325675b360e2c43924618104c7914928520ede514fa0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string180 = /9b08ea44ec7fa2954c60c82ad8c4d54cdf84f3ea336639445b2b8b1d978551e0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string181 = /9c3262961652f77177675bb812a2e5037223505b780999dc4a57c656afe9e1e6/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string182 = /9d0c7f0c88518e5d682763f7697796846ba0c4156371bfc8df612f38b33b77e3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string183 = /9dffd0600ac3634e75d99c867d2ca3791cd3a302513c42b4465c6300977d824c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string184 = /9e4a589aa9658c35abbcca54036c9cc0070d05f0708b8df2d8e9030bbb9f541a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string185 = /9f6fbc95920e22acace881c5702a9fda81104d98ff5f37ed2c343898d371c8b3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string186 = /9fc6416952495e1c0a13f2b1af1bf774e6dc5a90fcf0a50c942bba56709cb921/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string187 = /a0503d04e1f71f6856503024b70552eeeb6954e4aac61040a008f3917b38a684/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string188 = /a0b1523b50b26c6ceb479513d2278d448d9e826cebbaf2af7decd3e01b5d7a59/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string189 = /a0ffaba8096c1c103f4cadbf7e373d838f5ebca0b1f4a1b4fc600d623c7d4640/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string190 = /a12f1b3315057920742569bb98f5031bfd200c52c6a808b327e5048a4f4991a4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string191 = /a1d79ad7af2af9ffbcad20b0b5555f6a64d46eb19deada41d93e8becbd4866e3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string192 = /a220124d70563eb4e79926b0b7ff4bfab36fc29d58b21152455ae1c63bbd5a28/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string193 = /a25a28812d135f5a5dbc0a5a697cce19d94acd80913472d3dcc61178f9479e40/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string194 = /a2af16bc6414fd3ce32d31efb76128bc14408027e654eada6569ee99df350a35/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string195 = /a3e6acda8965a5770977ec13a0431d2c544d12bc3f0c898a7c76cdf81ae33a69/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string196 = /a41b226ee731ac6c200b17e4367a5f57515f826896aed0a37f0595f9fe68b979/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string197 = /a4e6692b22ae9d6e230116f6f530c9775ab4d38743c460dc099f948e92cf075d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string198 = /a5077f2fed33c896f464b7e3122debb2cbf0e3a4a69b848313113f8ec06d1aae/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string199 = /a706b0c389ebfbd01cbdf08359c81497eda81c315a7963960ed8968a2173c866/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string200 = /a7446e282755e5340b33572986e83bffa2a984d04d6f465d0a30da9538f9cea4/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string201 = /a8048a99c160781dd4b323d3751f9717663265416de4495fd9c7227bbee8a2f8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string202 = /a81e90b8c56431c28537a4232b76cd55cf44217eabc106d359840f10be32d465/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string203 = /a8a9b5fd7a0cc44f6874c90b4170009a46a88adc92367fcafb2acd32958afc98/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string204 = /a908c8a15c730ce061360bcbb351135484b0f6e0a1fd19847888818bdab73d86/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string205 = /a930c85fbceaf955c9ae865893b20a7164b0f8020b0a61ecee56d1a1490cc285/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string206 = /a99cbde533415b845c99754a3f454d205d6e31b11fe03e7dca01a8ff32f42646/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string207 = /aaba6ec560adf31f057113fc8c2e0f2387c9643206f9085e4179c109afcdd396/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string208 = /ac1f545786b7014c5a247d8854f114611814ed5f63232a9098f549732fa8814d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string209 = /ac6ea42ae4f70b4b8bc0f1c0f6e453447d97c0f13eb5e2e1621765b304e43cdb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string210 = /af1fa340c0d3690024a828f2099482530d20351bafcd114860b7faf37ddf11cb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string211 = /api\/v1\/fleet\/sso\/callback/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string212 = /b069bee7a2a19e296886fb26862e7432e0b2a0fbde72db072f369a0c0e990955/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string213 = /b11045e6accfd5cfa54afed6cfdfc2203873efe7541aa5a93f920d71d3a517b0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string214 = /b31716aa1e425286ea9372e2f72fa7e99e5df62dbe9ac54838d55a877a45abe1/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string215 = /b3f41948b9d55320be0884cdf9634a30089348e31bcb8a6675f75094167c741e/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string216 = /b4aa7c480ce02aeb723529ed5e8c2874738ca4d2aeb9e718cdc96c5e5cbded3b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string217 = /b7678c523152e65ff7b537cafde3fd5ef076ea35e59c3c9148b44a7e6aee796d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string218 = /b8e073c828b106964df38c2a16c30d9acae5aac15a2b4204f084bdf2579c3145/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string219 = /b9ccd13469c5223264dd92b763eff1f27dedd86aa9a2068a08fadce9527e7e71/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string220 = /b9eb20c7cddd46e2b79c6dab5f85943439333c710bdf6d27fe930a44a6ccb042/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string221 = /ba2b81d69ca915132c560a787698e84bf530236a234dd7163e391feb82858bb0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string222 = /bd7c78ae36f84966ffd5effbb9f9227d1a018d8cdb51a2e4e883d4d113453304/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string223 = /bf2893ace82d8952c00dfaefc48cfb09e2d58fc2cf3553aadfdc250f4b03ccbd/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string224 = /bfb8b8f3ed04f539f694f140dcf8fdbe07b4e96dfcf8fea3d555d1b69e14b384/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string225 = /bfcf0d230e85b0d06d5fc6f19042169d856d2e6dd9a38214721a4cf97ae63af2/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string226 = /bfleegjcoffelppfmadimianphbcdjkb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string227 = /c08fd251db2d48d9eb48583b3b2209a8efda571ec6cdff6c7ebb22667ce3d360/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string228 = /c0ac4e96a2e27335de61a6ada3e55f96d66b9b01b7728456b93ba23a394183a8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string229 = /c0f76101eeb0225230ebae6e980fc1161eb5b3727c8d1fd9ccfe3ac1169ba5b7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string230 = /c18e861f5e44c1b731f14ddebcbbe4f6d4bd9ad24e71b49feb7d1ddde7cc1741/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string231 = /c1ec990cba4b1e813de9ebc1bdf540bc5dada5d5521d3a339361d04c8d92c742/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string232 = /c22224a6e32bc2f071373a53c528513f993239f3a3bc52bfb0ed3d854fba86b5/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string233 = /c29a459fab2edd0e81e797886daa70c210bb123e55331416cb6f5bd74bef0e6a/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string234 = /c38560c8536e3c4b0d7a072e373009b03aaf63e58114deef576808c82eb62596/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string235 = /c488cce70defe02c6a90ebdfe276d88f4fdaab9264e157588bdb0e6dba9c5a91/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string236 = /c5185db5e8a84cb5fcad17d8501c2fd8aadb451d5c54fdda88af3504b4c850df/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string237 = /c678c9a61d0faf3f0e030010615c3cca395d815f8c073ea171b20d4bdf221192/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string238 = /c7bdf687d8aff0ab4ddb28fa9c633f416ae82b201f3c51898136c9a26631a7f1/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string239 = /c8d5f96c3f1d9054427004f52d87d081f0bd05e4f104eaee857c10bab7400c2d/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string240 = /ce4fc109fa3b38b58035b1274318e8db4eac26aee424d0ae4fc8d4113146db52/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string241 = /cf51ff263c4171a25b93703cad922ad1f4ca4a43eb93f4b4b6129a774acccefe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string242 = /cfa2c04ccd3a209c5a01db6de5b393dc2f1f038add46d45e957490c990a47c62/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string243 = /commanderupdate\.fleetdeck\.io/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string244 = /d12ea4fbcf04a2b0d848ed5b610b78055558e95b7cfd6461ee2e81ba4a7216b5/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string245 = /d1a23b9adddc0a6dc7806cb8fb9db94adc7263f2712f379dafe654ed38fc6bec/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string246 = /d3881b865311e774107ee50db4ee9a27cce669ccdd40e92c1990c4f1ec73e523/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string247 = /d44e3a415d99266b1759d1e452d3cf115ae01acb822bdff471f19f90c2cf7426/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string248 = /d7102b8487a285583c69c54bf0bb7a40148eee6050e45ced1d0380bf83ae7aaa/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string249 = /ddfb0598ad97db5738e82403d0e932d2df9591e7e2998f425b56360b75d56c71/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string250 = /de04a4f93837236a62fcd753c4ae7f64ebdbd8880ee2faffd0b950dcc2bc744b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string251 = /de4be9f031e2d9d10bcc70a409aaa0e5d311460828d2c6a5404deaa4f7da98ea/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string252 = /de7cab0e59a003edd943523dfefa1d038ee1edd914548625fa97324ce680516b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string253 = /def26f6de141f3f90c975923f007cd0acf66422357d9dc78bbb2bdba3f7184a5/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string254 = /df1ecdc0031475f4481f32911d5222f265ca016bc23a2ce5febe24339f473c02/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string255 = /e010e0aa32e87164f562b23b09290e0cb1dd3a634beab90c015a7f6db2afc295/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string256 = /e11e21d85234c890f047955456c220a95dfcb6f010fadd20fcb9e15ea43a4cf7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string257 = /e3a9686198e872ef6984215ebcd18a3c2f57c8ca009dc3c23b485a88a92fff01/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string258 = /e4997313fa56907981be64b670a5609df81c55ebeecc8fd26a8d7471c4f62317/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string259 = /e54a67a249e4e87a3ee0ab2c0cd5edf58cd52eee67b5f2df4d15fad38c1880b3/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string260 = /e626c24d81970be447e683730e22ff4fccfbc720b6b9dff41bbd2f2419766380/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string261 = /e73c16e92842b5e4889ca8e7b88901ddd5b59f85394e82ca8554c75d26250ebb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string262 = /e7aed3b9cea264001849c7bb2bbd56a8772816c065663c6e954890a72be441b7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string263 = /e84ef4bf8f7150620cdbb98da7f38f397eddc996b2b93dc7b00f8ae39a28635c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string264 = /e99d21c07b1b29361d6eb4895c350a36651536eb1719d50c802d5067c4b723c9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string265 = /e9ca78d11b144352ca1d9ec83d7ec0f44fba238ae3ba46560ed01b45eaa1f232/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string266 = /ebfdb029f616dcbd294b785874a77d5b62a08f92d562afb522309a07a36f472c/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string267 = /ed716e9d8a9382928e6a20bbac0f2245b7996125d9d86ace9c9a88fb9f8e4fde/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string268 = /edb82e0716aa844b2d6d8ebfe4d4e08f41a0618fdd62b64623c8f590a39bc207/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string269 = /ee3e0370955bb5c44e5a5370bdd268e5e948e18dbe86ae89e9f243f4a1668850/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string270 = /ee5974d52512f1d5e55fafef9e04969656c1dd2fa5919376f81bf62b1a6a04e9/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string271 = /ef3cc05f5d86042c926a3243c081957445717960268743953793980df144b145/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string272 = /ef67236f50b717490ba2d02669aac749eab81b805285e5780cb691006f26f742/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string273 = /ef9ccb9743205b6cd63e965ded0ad5b6836d9c4f4d8b3bec5264bdfbf1c71651/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string274 = /f004ede766d83d38ded3358bef66fd56b564fcea19cde01f79dee4a426916448/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string275 = /f0585309751d285f47ef51783422235b20248a430dc6daca9d13e4755fd02721/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string276 = /f193e6dd7595ee4163e6299c5196dcee429046f0f99175f5058ddce9348057bf/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string277 = /f263d762ee5788d2773d167ed15e6fc41e874f8682b6df9c8f8215c07c836275/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string278 = /f3c40d7fc7a91a57e7689ada1c1b6b7167f4a740bb2124ea1c3a75d0bde8030b/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string279 = /f3f3cc358d84f4adca20bf1ba7a0a08d733d54cfd6a62276b7b465a58902bf99/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string280 = /f44a9e93bc06742004f0b5c74b00cf0689b4890b903803c338ef80b9fd69c173/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string281 = /f4be7647922d6d458692d149c3aec12c3ecd84ed97761dd5478b1e10cbb94d7e/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string282 = /f6b2697a2c40fee8c1aeac7133b205797cf4d877500e96951199c06422a66e33/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string283 = /f7a9240b781a22fc573a4780da8dadaa761853d1247f21b9306083962e0197d0/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string284 = /f99653446a9eb4dbc8bb2bcbef659f8fe2af69d5ad9319eaba68c394cb1c2b06/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string285 = /fa1883bb377e2154c9dc766235f92612b8187ce2121f5ba3c3da28f1ebe6de63/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string286 = /FAECC814\-3F3F\-4CA0\-8C2B\-72D5E4670B92/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string287 = /fb998e66174bc1cee14dff001bec28d4a43ad753885a95f25015d71db8ff39fb/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string288 = /fc9a33902b9f6efc6ade3bd7cff30f476d6e7fcfa68d57d063c3ec03f8ac2bf8/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string289 = /fd075f9c84e91c2f7c0937e730df44f3e9fe9b74c41bdf62645a9798cd1a45c5/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string290 = /fe4a85694ea1405552e8bd6fabbff0a676ff428a529fb72e23ca48ca0d2f9ba7/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string291 = /ff91f0d3a6ffcf273c455b50cd84d306e03e1ec0b650175bee3dde1480d1d113/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string292 = /fleetctl\supdates\sinit/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string293 = /fleetdeck\.io\/prototype3\/commander_svc/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string294 = /fleetdeck_agent\.exe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string295 = /fleetdeck_agent_svc\.exe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string296 = /fleetdeck_commander_launcher\.exe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string297 = /fleetdeck_commander_svc\.exe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string298 = /fleetdeck_installer\.exe/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string299 = /fleetdeckfork\/execfuncargs\(/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string300 = /http\:\/\/localhost\:1337/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string301 = /http\:\/\/localhost\:1337\/previewlogin/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string302 = /https\:\/\/fleetdm\.com\/resources\/install\-fleetctl\.sh/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string303 = /npm\sinstall\sfleetctl/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string304 = /powershell\.exe\s\-ExecutionPolicy\sBypass\s\-File\scleanup_windows\.ps1\s\-uninstallOrbit/ nocase ascii wide
        // Description: Manage everything in one place
        // Reference: https://github.com/fleetdm/fleet
        $string305 = /proceed\:\s.{0,1000}\.fleetdeck\.io/ nocase ascii wide

    condition:
        any of them
}