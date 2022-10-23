# Cash Gamble by Razed
A simple gamble script for QBCORE framework which utilizes interact-sound.

# THIS RESOURCE IS NOT BEING MAINTAINED OR UPDATED

![RazedCashGambleThumbnail](https://user-images.githubusercontent.com/91488137/197401411-352f680e-a60b-448f-811e-2dc846e5bf7b.png)

# Preview
https://user-images.githubusercontent.com/91488137/197402026-945dabf9-28c6-491d-b464-6c6d8207ee80.mp4

# How To Install
Drag and drop `razed-cashgamble`\
In `server.cfg` add `ensure razed-cashgamble`

# qb-target/init.lua
```
	["GambleCash"] = {
        models = {
            `a_m_m_business_01`,
        },
        options = {
            {
                type = "client",
                event = "razed-cashgamble:openMenu",
                icon = "fas fa-cash",
                label = "Gamble your cash",
            },
        },
        distance = 2.0
    },

```

# Dependencies
[qb-core](https://github.com/qbcore-framework/qb-core)\
[qb-target](https://github.com/qbcore-framework/qb-target)\
[qb-menu](https://github.com/qbcore-framework/qb-menu)\
[interact-sound](https://github.com/qbcore-framework/interact-sound)

# Credits
Pong Slug - Giving me motivation for my first script.\
Me - For making the script.
