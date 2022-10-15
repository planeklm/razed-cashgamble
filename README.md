# Cash Gamble by Razed
A simple gamble script for QBCORE framework which utilizes interact-sound.

![CashGamble](https://user-images.githubusercontent.com/91488137/195990605-72f0ad8a-860e-41b4-9960-4595cff0926e.png)

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
