Resident data ends at 4e37, program starts at 4f04, file ends at 14b8c

Starting analysis pass at address 4e37

End of analysis pass, low address = 4e38, high address = 10b04

[Start of code]

Routine r0001, 1 local (0000)

       print           "a "
       print_obj       local0
       rtrue           

Routine r0002, 1 local (0000)

       jz              g3c l0001
       random          #64 -> sp
       jg              local0 sp rtrue
       rfalse          
l0001: random          #012c -> sp
       jg              local0 sp rtrue
       rfalse          

Routine r0003, 1 local (0000)

       loadw           local0 #00 -> sp
       random          sp -> sp
       loadw           local0 sp -> sp
       ret_popped      

Routine r0004, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       loadw           local0 #00 -> local1
       loadw           local0 #01 -> local2
       dec             local1
       add             local0 #02 -> local0
       mul             local2 #02 -> sp
       add             local0 sp -> local5
       sub             local1 local2 -> sp
       random          sp -> local3
       loadw           local5 local3 -> local4
       loadw           local5 #01 -> sp
       storew          local5 local3 sp
       storew          local5 #01 local4
       inc             local2
       je              local2 local1 ~l0001
       store           local2 #00
l0001: storew          local0 #00 local2
       ret             local4

Routine r0005, 0 locals ()

       je              g78 #2b ~rfalse
       call            r0235 #a3 -> sp
       rfalse          

Routine r0006, 0 locals ()

       jz              g2e l0002
       test_attr       "grating" #0b ~l0001
       ret             #39
l0001: print           "The grating is closed!"
       new_line        
       call            r0255 #ae -> sp
       rfalse          
l0002: print           "You can't go that way."
       new_line        
       rfalse          

Routine r0007, 1 local (0000)

       je              local0 #01 ~rfalse
       je              g78 #45 ~rfalse
       jz              g76 ~rfalse
       call            r0431 s148 -> sp
       rtrue           

Main routine r0008, 0 locals ()

l0001: call            r0022 #8010 #ffff -> sp
       storew          sp #00 #01
       call            r0022 #807c #ffff -> sp
       call            r0022 #80f0 #ffff -> sp
       storew          sp #00 #01
       call            r0022 #6f6a #28 -> sp
       call            r0022 #6f55 #c8 -> sp
       put_prop        "magic boat" #06 #04
       add             g10 #02 -> sp
       storew          g0a #01 sp
       add             g10 #04 -> sp
       storew          g0a #02 sp
       add             g0e #02 -> sp
       storew          g09 #02 sp
       add             g0e #04 -> sp
       storew          g09 #03 sp
       add             g0d #02 -> sp
       storew          g08 #01 sp
       add             g0c #02 -> sp
       storew          g08 #03 sp
       store           g00 #b4
       call            r0255 #a0 -> sp
       test_attr       g00 #03 l0002
       call            r0077 -> sp
       new_line        
l0002: store           g42 #01
       store           g6f #04
       store           g80 g6f
       insert_obj      g6f g00
       call            r0144 -> sp
       call            r0025 -> sp
       jump            l0001

Routine r0009, 3 locals (0000, 0001, 0000)

       je              g76 #0b ~l0001
       je              g77 #0b ~l0001
       print_ret       "Those things aren't here!"
l0001: je              g76 #0b ~l0002
       store           local0 g56
       jump            l0003
l0002: store           local0 g55
       store           local1 #00
l0003: store           g6c #00
       store           g60 #00
       je              g6f g80 ~l0004
       print           "You can't see any"
       call            r0012 local1 -> sp
       print_ret       " here!"
l0004: print           "The "
       print_obj       g6f
       print           " seems confused. ~I don't see any"
       call            r0012 local1 -> sp
       print_ret       " here!~"

Routine r0010, 4 locals (0000, 0000, 0000, 0000)

       call            r0052 local0 -> local2
       jg              local2 #01 ~l0001
       loadw           local0 #01 -> sp
       get_prop        sp #05 -> local3
       jz              local3 l0001
       store           local2 #01
       store           g4c local3
l0001: je              #01 local2 ~l0003
       jz              local1 l0002
       store           g76 g4c
       rfalse          
l0002: store           g77 g4c
       rfalse          
l0003: jz              local1 ~l0004
       print           "You wouldn't find any"
       call            r0012 local1 -> sp
       print_ret       " there."
l0004: ret             #0b

Routine r0011, 1 local (0000)

       store           g6c #00
       store           g60 #00
       print           "You can't see any"
       je              local0 g76 ~l0001
       call            r0064 -> sp
       jump            l0002
l0001: call            r0065 -> sp
l0002: print_ret       " here."

Routine r0012, 2 locals (0000, 0000)

       jz              g69 l0002
       jz              g4a l0001
       print           " "
       print_addr      g49
l0001: jz              g4b rfalse
       print           " "
       print_addr      g4b
       rtrue           
l0002: jz              local0 l0003
       loadw           g64 #06 -> local1
       loadw           g64 #07 -> sp
       call            r0040 local1 sp #00 -> sp
       ret_popped      
l0003: loadw           g64 #08 -> local1
       loadw           g64 #09 -> sp
       call            r0040 local1 sp #00 -> sp
       ret_popped      

Routine r0013, 2 locals (0000, 0000)

       rfalse          

Routine r0014, 0 locals ()

       je              g78 #22 ~rfalse
       print_ret       "You should say whether you want to go up or down."

Routine r0015, 0 locals ()

       je              g78 #42 ~rfalse
       inc             g45
       call            r0013 -> sp
       mod             g45 #14 -> sp
       jz              sp ~l0001
       print_ret       "You seem to be repeating yourself."
l0001: mod             g45 #0a -> sp
       jz              sp ~l0002
       print_ret       "I think that phrase is getting a bit worn out."
l0002: print_ret       "Nothing happens here."

Routine r0016, 0 locals ()

       je              g78 #32 #12 ~l0001
       je              g77 #08 ~l0001
       call            r0026 #31 g76 -> sp
       rtrue           
l0001: je              g00 #7e ~l0002
       call            r0385 -> sp
       ret_popped      
l0002: je              g78 #2c ~rfalse
       print_ret       "The ground is too hard for digging here."

Routine r0017, 0 locals ()

       je              g78 #38 ?~l0001
       print_ret       "The grue is a sinister, lurking presence in the dark
places of the earth. Its favorite diet is adventurers, but its insatiable
appetite is tempered by its fear of light. No grue has ever been seen by the
light of day, and few have survived its fearsome jaws to tell the tale."
l0001: je              g78 #3c ?~l0002
       print_ret       "There is no grue here, but I'm sure there is at least
one lurking in the darkness nearby. I wouldn't let my light go out if I were
you!"
l0002: je              g78 #4d ~rfalse
       print_ret       "It makes no sound but is always lurking in the darkness
nearby."

Routine r0018, 1 local (0000)

       je              g78 #6f ~l0001
       store           g6c #00
       store           g60 #00
       print_ret       "Talking to yourself is said to be a sign of impending
mental collapse."
l0001: je              g78 #3f ~l0002
       je              g77 #05 ~l0002
       call            r0026 #5d g76 -> sp
       rtrue           
l0002: je              g78 #56 ~l0003
       print_ret       "Only you can do that."
l0003: je              g78 #2d ~l0004
       print_ret       "You'll have to do that on your own."
l0004: je              g78 #33 ~l0005
       print_ret       "Auto-cannibalism is not the answer."
l0005: je              g78 #2a #13 ~l0007
       jz              g77 l0006
       test_attr       g77 #1d ~l0006
       call            r0431 s164 -> sp
       ret_popped      
l0006: print_ret       "Suicide is not the answer."
l0007: je              g78 #5d ~l0008
       print_ret       "How romantic!"
l0008: je              g78 #38 ~rfalse
       get_parent      "mirror" -> local0
       get_parent      "mirror" -> sp
       je              g00 local0 sp ~l0009
       print_ret       "Your image in the mirror looks tired."
l0009: print_ret       "That's difficult unless your eyes are prehensile."

Routine r0019, 0 locals ()

       je              g78 #3d #5d ~l0001
       print_ret       "You must specify a direction to go."
l0001: je              g78 #3c ~l0002
       print_ret       "I can't help you there...."
l0002: je              g78 #2c ~rfalse
       print_ret       "Not a chance."

Routine r0020, 0 locals ()

       je              g78 #38 ~l0001
       print_ret       "The zorkmid is the unit of currency of the Great
Underground Empire."
l0001: je              g78 #3c ~rfalse
       print_ret       "The best way to find zorkmids is to go out and look for
them."

Routine r0021, 3 locals (0000, 0000, 0000)

       call            r0023 local0 #01 -> local2
       storew          local2 #01 local1
       ret             local2

Routine r0022, 3 locals (0000, 0000, 0000)

       call            r0023 local0 -> local2
       storew          local2 #01 local1
       ret             local2

Routine r0023, 5 locals (0000, 0000, 0000, 0000, 0000)

       add             g84 #b4 -> local2
       add             g84 g82 -> local3
l0001: je              local3 local2 ~l0003
       sub             g82 #06 -> g82
       jz              local1 l0002
       sub             g83 #06 -> g83
l0002: add             g84 g82 -> local4
       storew          local4 #02 local0
       ret             local4
l0003: loadw           local3 #02 -> sp
       je              sp local0 ~l0004
       ret             local3
l0004: add             local3 #06 -> local3
       jump            l0001

Routine r0024, 4 locals (0000, 0000, 0000, 0000)

       jz              g81 l0001
       store           g81 #00
       rfalse          
l0001: jz              g7f l0002
       push            g82
       jump            l0003
l0002: push            g83
l0003: add             g84 sp -> local0
       add             g84 #b4 -> local1
l0004: je              local0 local1 ~l0006
       inc_chk         g02 #03e7 ~l0005
       store           g02 #00
l0005: ret             local3
l0006: loadw           local0 #00 -> sp
       jz              sp l0008
       loadw           local0 #01 -> local2
       jz              local2 ~l0007
       jump            l0008
l0007: sub             local2 #01 -> sp
       storew          local0 #01 sp
       jg              local2 #01 l0008
       loadw           local0 #02 -> sp
       call            sp -> sp
       jz              sp l0008
       store           local3 #01
l0008: add             local0 #06 -> local0
       jump            l0004

Routine r0025, 10 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000)

l0001: store           local3 #00
       store           local4 #00
       store           local7 #01
       call            r0027 -> g7f
       jz              g7f ?l0039
       loadw           g55 g51 -> local0
       loadw           g56 g51 -> local1
       jz              local1 ~l0002
       push            local1
       jump            l0007
l0002: jg              local1 #01 ~l0005
       store           local5 g56
       jz              local0 ~l0003
       store           local4 #00
       jump            l0004
l0003: loadw           g55 #01 -> local4
l0004: push            local1
       jump            l0007
l0005: jg              local0 #01 ~l0006
       store           local7 #00
       store           local5 g55
       loadw           g56 #01 -> local4
       push            local0
       jump            l0007
l0006: push            #01
l0007: store           local2 sp
       jz              local4 ~l0008
       je              local0 #01 ~l0008
       loadw           g55 #01 -> local4
l0008: je              g78 #89 ~l0009
       call            r0026 g78 g76 -> local6
       jump            l0035
l0009: jz              local2 ?~l0012
       loadb           g73 #00 -> sp
       and             sp #03 -> sp
       jz              sp ~l0010
       call            r0026 g78 -> local6
       store           g76 #00
       jump            l0035
l0010: jz              g42 ~l0011
       print           "It's too dark to see."
       new_line        
       jump            l0035
l0011: print           "It's not clear what you're referring to."
       new_line        
       store           local6 #00
       jump            l0035
l0012: store           g7a #00
       store           g7b #00
       jg              local2 #01 ~l0013
       store           g7b #01
l0013: store           local9 #00
l0014: inc_chk         local3 local2 ?~l0020
       jg              g7a #00 ?~l0019
       print           "The "
       je              g7a local2 l0015
       print           "other "
l0015: print           "object"
       je              g7a #01 l0016
       print           "s"
l0016: print           " that you mentioned "
       je              g7a #01 l0017
       print           "are"
       jump            l0018
l0017: print           "is"
l0018: print           "n't here."
       new_line        
       jump            l0035
l0019: jz              local9 ?~l0035
       print           "There's nothing here you can take."
       new_line        
       jump            l0035
l0020: jz              local7 l0021
       loadw           g56 local3 -> local8
       jump            l0022
l0021: loadw           g55 local3 -> local8
l0022: jz              local7 l0023
       push            local8
       jump            l0024
l0023: push            local4
l0024: store           g76 sp
       jz              local7 l0025
       push            local4
       jump            l0026
l0025: push            local8
l0026: store           g77 sp
       jg              local2 #01 l0027
       loadw           g64 #06 -> sp
       loadw           sp #00 -> sp
       je              sp "all" ?~l0034
l0027: je              local8 #0b ~l0028
       inc             g7a
       jump            l0014
l0028: je              g78 #5d ~l0029
       jz              g77 l0029
       loadw           g64 #06 -> sp
       loadw           sp #00 -> sp
       je              sp "all" ~l0029
       jin             g76 g77 l0029
       jump            l0014
l0029: je              g50 #01 ~l0031
       je              g78 #5d ~l0031
       get_parent      local8 -> sp
       je              sp g6f g00 l0030
       get_parent      local8 -> sp
       test_attr       sp #0a ?~l0014
l0030: test_attr       local8 #11 l0031
       test_attr       local8 #0d l0031
       jump            l0014
l0031: je              local8 #0c ~l0032
       print_obj       g6b
       jump            l0033
l0032: print_obj       local8
l0033: print           ": "
l0034: store           local9 #01
       call            r0026 g78 g76 g77 -> local6
       je              local6 #02 ?~l0014
       jump            l0035
l0035: je              local6 #02 l0036
       get_parent      g6f -> sp
       get_prop        sp #11 -> sp
       call            sp #06 -> local6
l0036: je              g78 #08 #89 #0f l0038
       je              g78 #0c #09 #07 ~l0037
       jump            l0038
l0037: store           g7e g78
       store           g7d g76
       store           g7c g77
l0038: je              local6 #02 ~l0040
       store           g6c #00
       jump            l0040
l0039: store           g6c #00
l0040: jz              g7f ?l0001
       je              g78 #02 #01 #6f ?l0001
       je              g78 #0c #08 #00 ?l0001
       je              g78 #09 #06 #05 ?l0001
       je              g78 #07 #0b #0a ~l0041
       jump            l0001
l0041: call            r0024 -> local6
       jump            l0001

Routine r0026, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       store           local4 g78
       store           local5 g76
       store           local6 g77
       je              #0c local2 local1 ~l0001
       je              g6a g00 l0001
       print           "I don't see what you are referring to."
       new_line        
       ret             #02
l0001: je              local1 #0c ~l0002
       store           local1 g6b
l0002: je              local2 #0c ~l0003
       store           local2 g6b
l0003: store           g78 local0
       store           g76 local1
       jz              g76 l0004
       je              g77 #0c l0004
       je              g78 #89 l0004
       store           g6b g76
       store           g6a g00
l0004: store           g77 local2
       je              #0b g76 g77 ~l0005
       call            r0009 -> local3
       jz              local3 l0005
       jump            l0012
l0005: store           local1 g76
       store           local2 g77
       get_prop        g6f #11 -> sp
       call            sp -> local3
       jz              local3 l0006
       jump            l0012
l0006: get_parent      g6f -> sp
       get_prop        sp #11 -> sp
       call            sp #01 -> local3
       jz              local3 l0007
       jump            l0012
l0007: loadw           g9c local0 -> sp
       call            sp -> local3
       jz              local3 l0008
       jump            l0012
l0008: jz              local2 l0009
       get_prop        local2 #11 -> sp
       call            sp -> local3
       jz              local3 l0009
       jump            l0012
l0009: jz              local1 l0010
       je              local0 #89 l0010
       get_parent      local1 -> sp
       jz              sp l0010
       get_parent      local1 -> sp
       get_prop        sp #02 -> sp
       call            sp -> local3
       jz              local3 l0010
       jump            l0012
l0010: jz              local1 l0011
       je              local0 #89 l0011
       get_prop        local1 #11 -> sp
       call            sp -> local3
       jz              local3 l0011
       jump            l0012
l0011: loadw           g9b local0 -> sp
       call            sp -> local3
       jz              local3 l0012
l0012: store           g78 local4
       store           g76 local5
       store           g77 local6
       ret             local3

Routine r0027, 11 locals (0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, ffff)

l0001: inc_chk         local10 #09 ~l0002
       jump            l0003
l0002: storew          g64 local10 #00
       jump            l0001
l0003: store           g58 #00
       store           g68 #00
       storew          g56 g51 #00
       storew          g55 g51 #00
       storew          g54 g51 #00
       jz              g60 ~l0005
       je              g6f g80 l0005
       store           g6f g80
       get_parent      g6f -> sp
       test_attr       sp #1b l0004
       get_parent      g6f -> g00
l0004: call            r0063 g00 -> g42
l0005: jz              g6c l0007
       store           local0 g6c
       jz              g46 ~l0006
       je              g80 g6f ~l0006
       je              g78 #70 l0006
       new_line        
l0006: store           g6c #00
       jump            l0010
l0007: store           g6f g80
       store           g60 #00
       get_parent      g6f -> sp
       test_attr       sp #1b l0008
       get_parent      g6f -> g00
l0008: call            r0063 g00 -> g42
       jz              g46 ~l0009
       new_line        
l0009: print           ">"
       read            g6d g6e
l0010: loadb           g6e #01 -> g71
       jz              g71 ~l0011
       print           "I beg your pardon?"
       new_line        
       rfalse          
l0011: store           local4 g71
       store           g70 #00
       store           g61 #00
       store           g50 #00
l0012: dec_chk         g71 #00 ~l0013
       store           g60 #00
       jump            l0040
l0013: loadw           g6e local0 -> local1
       jz              local1 ~l0014
       call            r0030 local0 -> local1
       jz              local1 ?l0038
l0014: je              local1 "to" ~l0015
       je              local3 #ef ~l0015
       store           local1 "~"
       jump            l0016
l0015: je              local1 "then" ~l0016
       jz              local3 ~l0016
       jz              g60 ~l0016
       storew          g64 #00 #ef
       storew          g64 #01 #00
       store           local1 "~"
l0016: je              local1 "then" "." l0017
       je              local1 "~" ~l0021
l0017: je              local1 "~" ~l0019
       jz              g60 l0018
       store           g60 #00
       jump            l0019
l0018: store           g60 #01
l0019: jz              g71 l0020
       add             local0 #02 -> g6c
l0020: storeb          g6e #01 g71
       jump            l0040
l0021: call            r0028 local1 #10 #03 -> local2
       jz              local2 ?l0027
       je              local3 #00 #f8 ?~l0027
       je              local4 #01 ?l0025
       je              local4 #02 ~l0022
       je              local3 #f8 l0025
l0022: add             local0 #02 -> sp
       loadw           g6e sp -> local6
       je              local6 "then" "." "~" ~l0023
       jl              local4 #02 ~l0025
l0023: jz              g60 l0024
       je              local4 #02 ~l0024
       je              local6 "~" l0025
l0024: jg              local4 #02 ~l0027
       je              local6 "," "and" ~l0027
l0025: store           local5 local2
       je              local6 "," "and" ~l0026
       add             local0 #02 -> sp
       storew          g6e sp "then"
l0026: jg              local4 #02 ?l0039
       store           g60 #00
       jump            l0040
l0027: call            r0028 local1 #40 #01 -> local2
       jz              local2 l0028
       jz              local3 ~l0028
       store           local3 local2
       storew          g64 #00 local2
       storew          g64 #01 g62
       storew          g62 #00 local1
       mul             local0 #02 -> sp
       add             sp #02 -> local8
       loadb           g6e local8 -> sp
       storeb          g62 #02 sp
       add             local8 #01 -> sp
       loadb           g6e sp -> sp
       storeb          g62 #03 sp
       jump            l0039
l0028: call            r0028 local1 #08 #00 -> local2
       jz              local2 ~l0030
       je              local1 "all" "one" l0029
       call            r0028 local1 #20 -> sp
       jz              sp ~l0029
       call            r0028 local1 #80 -> sp
       jz              sp ?l0035
l0029: store           local2 #00
l0030: jg              g71 #00 ~l0031
       add             local0 #02 -> sp
       loadw           g6e sp -> sp
       je              sp "of" ~l0031
       jz              local2 ~l0031
       je              local1 "all" "one" "a" l0031
       jump            l0039
l0031: jz              local2 l0033
       jz              g71 l0032
       add             local0 #02 -> sp
       loadw           g6e sp -> sp
       je              sp "then" "." ~l0033
l0032: jl              g61 #02 ?~l0039
       storew          g64 #02 local2
       storew          g64 #03 local1
       jump            l0039
l0033: je              g61 #02 ~l0034
       print           "There were too many nouns in that sentence."
       new_line        
       rfalse          
l0034: inc             g61
       call            r0029 local0 local2 local1 -> local0
       jz              local0 rfalse
       jl              local0 #00 ?~l0039
       store           g60 #00
       jump            l0040
l0035: call            r0028 local1 #04 -> sp
       jz              sp l0036
       jump            l0039
l0036: je              local3 #ef ?~l0037
       call            r0028 local1 #40 #01 -> sp
       jz              sp l0037
       print           "Please consult your manual for the correct way to talk
to other people or creatures."
       new_line        
       rfalse          
l0037: call            r0035 local0 -> sp
       rfalse          
l0038: call            r0034 local0 -> sp
       rfalse          
l0039: store           local7 local1
       add             local0 #02 -> local0
       jump            l0012
l0040: jz              local5 l0041
       store           g78 #89
       store           g76 local5
       store           g5f local5
       ret             #01
l0041: store           g5f #00
       jz              g69 l0042
       call            r0031 -> sp
l0042: call            r0036 -> sp
       jz              sp rfalse
       call            r0048 -> sp
       jz              sp rfalse
       call            r0060 -> sp
       jz              sp rfalse
       call            r0058 -> sp
       jz              sp rfalse
       rtrue           

Routine r0028, 5 locals (0000, 0000, 0005, 0005, 0000)

       loadb           local0 #04 -> local4
       test            local4 local1 ~rfalse
       jg              local2 #04 rtrue
       and             local4 #03 -> local4
       je              local4 local2 l0001
       inc             local3
l0001: loadb           local0 local3 -> sp
       ret_popped      

Routine r0029, 10 locals (0000, 0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000,
                          0000)

       sub             g61 #01 -> sp
       mul             sp #02 -> local3
       jz              local1 l0001
       add             #02 local3 -> local4
       storew          g64 local4 local1
       add             local4 #01 -> sp
       storew          g64 sp local2
       add             local0 #02 -> local0
       jump            l0002
l0001: inc             g71
l0002: jz              g71 ~l0003
       dec             g61
       ret             #ffff
l0003: add             #06 local3 -> local4
       mul             local0 #02 -> sp
       add             g6e sp -> sp
       storew          g64 local4 sp
       loadw           g6e local0 -> sp
       je              sp "the" "a" "an" ~l0004
       loadw           g64 local4 -> sp
       add             sp #04 -> sp
       storew          g64 local4 sp
l0004: dec_chk         g71 #00 ~l0005
       add             local4 #01 -> local9
       mul             local0 #02 -> sp
       add             g6e sp -> sp
       storew          g64 local9 sp
       ret             #ffff
l0005: loadw           g6e local0 -> local2
       jz              local2 ~l0006
       call            r0030 local0 -> local2
       jz              local2 ?l0022
l0006: jz              g71 ~l0007
       store           local7 #00
       jump            l0008
l0007: add             local0 #02 -> sp
       loadw           g6e sp -> local7
l0008: je              local2 "and" "," ~l0009
       store           local5 #01
       jump            l0023
l0009: je              local2 "all" "one" ~l0010
       je              local7 "of" ?~l0023
       dec             g71
       add             local0 #02 -> local0
       jump            l0023
l0010: je              local2 "then" "." l0011
       call            r0028 local2 #08 -> sp
       jz              sp l0012
       loadw           g64 #00 -> sp
       jz              sp l0012
       jz              local6 ~l0012
l0011: inc             g71
       add             local4 #01 -> local9
       mul             local0 #02 -> sp
       add             g6e sp -> sp
       storew          g64 local9 sp
       sub             local0 #02 -> sp
       ret             sp
l0012: call            r0028 local2 #80 -> sp
       jz              sp ?l0016
       jg              g71 #00 ~l0013
       je              local7 "of" ~l0013
       je              local2 "all" "one" l0013
       jump            l0023
l0013: call            r0028 local2 #20 #02 -> sp
       jz              sp l0014
       jz              local7 l0014
       call            r0028 local7 #80 -> sp
       jz              sp l0014
       jump            l0023
l0014: jz              local5 ~l0015
       je              local7 "but" "except" l0015
       je              local7 "and" "," l0015
       add             local4 #01 -> local9
       add             local0 #02 -> sp
       mul             sp #02 -> sp
       add             g6e sp -> sp
       storew          g64 local9 sp
       ret             local0
l0015: store           local5 #00
       jump            l0023
l0016: jz              g68 ~l0017
       jz              g69 ~l0017
       loadw           g64 #00 -> sp
       jz              sp l0018
l0017: call            r0028 local2 #20 -> sp
       jz              sp ?~l0023
       call            r0028 local2 #04 -> sp
       jz              sp l0018
       jump            l0023
l0018: jz              local5 l0020
       call            r0028 local2 #10 -> sp
       jz              sp ~l0019
       call            r0028 local2 #40 -> sp
       jz              sp l0020
l0019: sub             local0 #04 -> local0
       add             local0 #02 -> sp
       storew          g6e sp "then"
       add             g71 #02 -> g71
       jump            l0023
l0020: call            r0028 local2 #08 -> sp
       jz              sp l0021
       jump            l0023
l0021: call            r0035 local0 -> sp
       rfalse          
l0022: call            r0034 local0 -> sp
       rfalse          
l0023: store           local8 local2
       store           local6 #00
       add             local0 #02 -> local0
       jump            l0004

Routine r0030, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       mul             local0 #02 -> sp
       add             g6e sp -> sp
       loadb           sp #02 -> local1
       mul             local0 #02 -> sp
       add             g6e sp -> sp
       loadb           sp #03 -> local2
l0001: dec_chk         local1 #00 ~l0002
       jump            l0005
l0002: loadb           g6d local2 -> local3
       je              local3 #3a ~l0003
       store           local5 local4
       store           local4 #00
       jump            l0004
l0003: jg              local4 #2710 rfalse
       jl              local3 #3a ~rfalse
       jg              local3 #2f ~rfalse
       mul             local4 #0a -> local6
       sub             local3 #30 -> sp
       add             local6 sp -> local4
l0004: inc             local2
       jump            l0001
l0005: storew          g6e local0 "intnum"
       jg              local4 #03e8 rfalse
       jz              local5 l0008
       jl              local5 #08 ~l0006
       add             local5 #0c -> local5
       jump            l0007
l0006: jg              local5 #17 rfalse
l0007: mul             local5 #3c -> sp
       add             local4 sp -> local4
l0008: store           g5e local4
       ret             "intnum"

Routine r0031, 8 locals (ffff, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       store           g69 #00
       loadw           g64 #01 -> sp
       loadw           sp #00 -> sp
       call            r0028 sp #20 #02 -> sp
       jz              sp l0001
       store           local5 #01
l0001: loadw           g64 #00 -> local2
       jz              local2 l0002
       jz              local5 ~l0002
       loadw           g63 #00 -> sp
       je              local2 sp ~rfalse
l0002: je              g61 #02 rfalse
       loadw           g63 #06 -> sp
       je              sp #01 ?~l0005
       loadw           g64 #02 -> local1
       loadw           g63 #02 -> sp
       je              local1 sp l0003
       jz              local1 ~rfalse
l0003: jz              local5 l0004
       add             g6e #02 -> sp
       storew          g63 #06 sp
       add             g6e #06 -> sp
       storew          g63 #07 sp
       jump            l0018
l0004: loadw           g64 #06 -> sp
       storew          g63 #06 sp
       loadw           g64 #07 -> sp
       storew          g63 #07 sp
       jump            l0018
l0005: loadw           g63 #08 -> sp
       je              sp #01 ?~l0008
       loadw           g64 #02 -> local1
       loadw           g63 #04 -> sp
       je              local1 sp l0006
       jz              local1 ~rfalse
l0006: jz              local5 l0007
       add             g6e #02 -> sp
       storew          g64 #06 sp
       add             g6e #06 -> sp
       storew          g64 #07 sp
l0007: loadw           g64 #06 -> sp
       storew          g63 #08 sp
       loadw           g64 #07 -> sp
       storew          g63 #09 sp
       store           g61 #02
       jump            l0018
l0008: jz              g67 ?l0018
       je              g61 #01 l0009
       jz              local5 ~l0009
       store           g67 #00
       rfalse          
l0009: loadw           g64 #06 -> local3
       jz              local5 l0010
       add             g6e #02 -> local3
       store           local5 #00
l0010: loadw           g64 #07 -> local4
l0011: loadw           local3 #00 -> local6
       je              local3 local4 ~l0013
       jz              local5 l0012
       call            r0032 local5 -> sp
       jump            l0018
l0012: store           g67 #00
       rfalse          
l0013: jz              local5 ~l0015
       loadb           local6 #04 -> sp
       test            sp #20 l0014
       je              local6 "all" "one" ~l0015
l0014: store           local5 local6
       jump            l0017
l0015: loadb           local6 #04 -> sp
       test            sp #80 l0016
       je              local6 "one" ~l0017
l0016: je              local6 g66 "one" ~rfalse
       call            r0032 local5 -> sp
       jump            l0018
l0017: add             local3 #04 -> local3
       jz              local4 ?~l0011
       store           local4 local3
       store           g61 #01
       sub             local3 #04 -> sp
       storew          g64 #06 sp
       storew          g64 #07 local3
       jump            l0011
l0018: inc_chk         local0 #09 ~l0019
       store           g68 #01
       rtrue           
l0019: loadw           g63 local0 -> sp
       storew          g64 local0 sp
       jump            l0018

Routine r0032, 1 local (0000)

       loadw           g63 #00 -> sp
       storew          g64 #00 sp
       store           g72 g63
       add             g67 #01 -> sp
       call            r0043 g67 sp local0 -> sp
       loadw           g63 #08 -> sp
       jz              sp l0001
       store           g61 #02
l0001: store           g67 #00
       rtrue           

Routine r0033, 2 locals (0000, 0000)

l0001: dec_chk         local0 #00 rtrue
       loadb           g6d local1 -> sp
       print_char      sp
       inc             local1
       jump            l0001

Routine r0034, 3 locals (0000, 0000, 0000)

       je              g78 #70 ~l0001
       print           "Nothing happens."
       new_line        
       rfalse          
l0001: print           "I don't know the word ~"
       mul             local0 #02 -> local1
       add             g6e local1 -> sp
       loadb           sp #02 -> local2
       add             g6e local1 -> sp
       loadb           sp #03 -> sp
       call            r0033 local2 sp -> sp
       print           "~."
       new_line        
       store           g60 #00
       store           g69 #00
       ret             g69

Routine r0035, 3 locals (0000, 0000, 0000)

       je              g78 #70 ~l0001
       print           "Nothing happens."
       new_line        
       rfalse          
l0001: print           "You used the word ~"
       mul             local0 #02 -> local1
       add             g6e local1 -> sp
       loadb           sp #02 -> local2
       add             g6e local1 -> sp
       loadb           sp #03 -> sp
       call            r0033 local2 sp -> sp
       print           "~ in a way that I don't understand."
       new_line        
       store           g60 #00
       store           g69 #00
       ret             g69

Routine r0036, 11 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000)

       loadw           g64 #00 -> local7
       jz              local7 ~l0001
       print           "There was no verb in that sentence!"
       new_line        
       rfalse          
l0001: sub             #ff local7 -> sp
       loadw           g9d sp -> local0
       loadb           local0 #00 -> local1
       add             #01 local0 -> local0
l0002: loadb           local0 #00 -> sp
       and             sp #03 -> local2
       jg              g61 local2 ~l0003
       jump            l0007
l0003: jl              local2 #01 l0005
       jz              g61 ~l0005
       loadw           g64 #02 -> local6
       jz              local6 l0004
       loadb           local0 #01 -> sp
       je              local6 sp ~l0005
l0004: store           local4 local0
       jump            l0007
l0005: loadb           local0 #01 -> local10
       loadw           g64 #02 -> sp
       je              local10 sp ~l0007
       je              local2 #02 ~l0006
       je              g61 #01 ~l0006
       store           local5 local0
       jump            l0007
l0006: loadb           local0 #02 -> local10
       loadw           g64 #04 -> sp
       je              local10 sp ~l0007
       call            r0046 local0 -> sp
       rtrue           
l0007: dec_chk         local1 #01 ~l0009
       jz              local4 ~l0010
       jz              local5 l0008
       jump            l0010
l0008: print           "That sentence isn't one I recognize."
       new_line        
       rfalse          
l0009: add             local0 #08 -> local0
       jump            l0002
l0010: jz              local4 l0011
       loadb           local4 #03 -> local9
       loadb           local4 #05 -> local10
       loadb           local4 #01 -> sp
       call            r0047 local9 local10 sp -> local3
       jz              local3 l0011
       storew          g56 g51 #01
       storew          g56 #01 local3
       call            r0046 local4 -> sp
       ret_popped      
l0011: jz              local5 l0012
       loadb           local5 #04 -> local9
       loadb           local5 #06 -> local10
       loadb           local5 #02 -> sp
       call            r0047 local9 local10 sp -> local3
       jz              local3 l0012
       storew          g55 g51 #01
       storew          g55 #01 local3
       call            r0046 local5 -> sp
       ret_popped      
l0012: je              local7 #ac ~l0013
       print           "That question can't be answered."
       new_line        
       rfalse          
l0013: je              g6f g80 l0014
       call            r0037 -> sp
       ret_popped      
l0014: call            r0038 local4 local5 -> sp
       print           "What do you want to "
       loadw           g63 #01 -> local8
       jz              local8 ~l0015
       print           "tell"
       jump            l0017
l0015: loadb           g62 #02 -> sp
       jz              sp ~l0016
       loadw           local8 #00 -> sp
       print_addr      sp
       jump            l0017
l0016: loadb           local8 #02 -> local10
       loadb           local8 #03 -> sp
       call            r0033 local10 sp -> sp
       storeb          g62 #02 #00
l0017: jz              local5 l0018
       call            r0039 #06 #07 -> sp
l0018: store           g69 #01
       jz              local4 l0019
       loadb           local4 #01 -> sp
       jump            l0020
l0019: loadb           local5 #02 -> sp
l0020: call            r0042 sp -> sp
       print           "?"
       new_line        
       rfalse          

Routine r0037, 0 locals ()

       print           "~I don't understand! What are you referring to?~"
       new_line        
       rfalse          

Routine r0038, 3 locals (0000, 0000, ffff)

       storew          g52 g51 #00
       store           g72 g64
l0001: inc_chk         local2 #09 ~l0002
       jump            l0003
l0002: loadw           g64 local2 -> sp
       storew          g63 local2 sp
       jump            l0001
l0003: je              g61 #02 ~l0004
       call            r0043 #08 #09 -> sp
l0004: jl              g61 #01 l0005
       call            r0043 #06 #07 -> sp
l0005: jz              local0 l0006
       loadb           local0 #01 -> sp
       storew          g63 #02 sp
       storew          g63 #06 #01
       rtrue           
l0006: jz              local1 rfalse
       loadb           local1 #02 -> sp
       storew          g63 #04 sp
       storew          g63 #08 #01
       rtrue           

Routine r0039, 4 locals (0000, 0000, 0001, 0000)

       loadw           g64 local0 -> local3
       loadw           g64 local1 -> sp
       call            r0040 local3 sp local2 -> sp
       ret_popped      

Routine r0040, 8 locals (0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000)

l0001: je              local0 local1 rtrue
       jz              local3 l0002
       store           local3 #00
       jump            l0003
l0002: print           " "
l0003: loadw           local0 #00 -> local4
       je              local4 "." ~l0004
       store           local3 #01
       jump            l0010
l0004: jz              local5 l0005
       jz              local6 ~l0005
       jz              local2 l0005
       print           "the "
l0005: jz              g69 ~l0006
       jz              g68 l0007
l0006: print_addr      local4
       jump            l0009
l0007: je              local4 "it" ~l0008
       je              g6a g00 ~l0008
       print_obj       g6b
       jump            l0009
l0008: loadb           local0 #02 -> local7
       loadb           local0 #03 -> sp
       call            r0033 local7 sp -> sp
l0009: store           local5 #00
l0010: add             local0 #04 -> local0
       jump            l0001

Routine r0041, 2 locals (0000, 0000)

       loadb           local0 #03 -> sp
       loadb           g6d sp -> sp
       sub             sp #20 -> sp
       print_char      sp
       loadb           local0 #02 -> sp
       sub             sp #01 -> local1
       loadb           local0 #03 -> sp
       add             sp #01 -> sp
       call            r0033 local1 sp -> sp
       ret_popped      

Routine r0042, 2 locals (0000, 0000)

       jz              local0 rfalse
       print           " "
       call            r0045 local0 -> local1
       print_addr      local1
       rtrue           

Routine r0043, 5 locals (0000, 0000, 0000, 0000, 0000)

       loadw           g72 local0 -> local3
       loadw           g72 local1 -> local4
       loadw           g52 g51 -> sp
       mul             sp #02 -> sp
       add             sp #02 -> sp
       add             g52 sp -> sp
       storew          g63 local0 sp
l0001: je              local3 local4 ~l0002
       loadw           g52 g51 -> sp
       mul             sp #02 -> sp
       add             sp #02 -> sp
       add             g52 sp -> sp
       storew          g63 local1 sp
       rtrue           
l0002: jz              local2 l0003
       loadw           local3 #00 -> sp
       je              g66 sp ~l0003
       call            r0044 local2 -> sp
l0003: loadw           local3 #00 -> sp
       call            r0044 sp -> sp
       add             local3 #04 -> local3
       jump            l0001

Routine r0044, 2 locals (0000, 0000)

       loadw           g52 g51 -> sp
       add             sp #02 -> local1
       sub             local1 #01 -> sp
       storew          g52 sp local0
       storew          g52 local1 #00
       storew          g52 g51 local1
       rtrue           

Routine r0045, 3 locals (0000, 0000, 0000)

       loadw           g9a #00 -> sp
       mul             sp #02 -> local2
l0001: inc_chk         local1 local2 rfalse
       loadw           g9a local1 -> sp
       je              sp local0 ?~l0001
       sub             local1 #01 -> sp
       loadw           g9a sp -> sp
       ret             sp

Routine r0046, 1 local (0000)

       store           g73 local0
       loadb           local0 #07 -> g78
       ret             g78

Routine r0047, 4 locals (0000, 0000, 0000, 0000)

       je              local0 #12 ~l0001
       ret             #52
l0001: store           g5b local0
       store           g5c local1
       storew          g53 g51 #00
       call            r0051 g53 #00 -> sp
       jz              sp ?l0006
       store           g5b #00
       loadw           g53 g51 -> sp
       je              sp #01 ~rfalse
       loadw           g53 #01 -> local3
       je              local3 #05 rfalse
       print           "("
       jz              local2 l0004
       call            r0045 local2 -> local2
       print_addr      local2
       je              local2 "out" ~l0002
       print           " of"
l0002: je              local3 #01 ~l0003
       print           " your hands)"
       new_line        
       jump            l0004
l0003: print           " the "
l0004: je              local3 #01 l0005
       print_obj       local3
       print           ")"
       new_line        
l0005: ret             local3
l0006: store           g5b #00
       rfalse          

Routine r0048, 1 local (0000)

       loadw           g64 #06 -> local0
       jz              local0 l0001
       loadb           g73 #05 -> g5c
       loadw           g64 #07 -> sp
       call            r0050 local0 sp g56 -> sp
       jz              sp rfalse
       loadw           g54 g51 -> sp
       jz              sp l0001
       call            r0049 g56 -> g56
l0001: loadw           g64 #08 -> local0
       jz              local0 rtrue
       loadb           g73 #06 -> g5c
       loadw           g64 #09 -> sp
       call            r0050 local0 sp g55 -> sp
       jz              sp rfalse
       loadw           g54 g51 -> sp
       jz              sp rtrue
       loadw           g55 g51 -> sp
       je              sp #01 ~l0002
       call            r0049 g56 -> g56
       rtrue           
l0002: call            r0049 g55 -> g55
       rtrue           

Routine r0049, 7 locals (0000, 0000, 0000, 0001, 0000, 0000, 0000)

       loadw           local0 g51 -> local1
       storew          g53 g51 #00
l0001: dec_chk         local1 #00 ~l0002
       jump            l0005
l0002: loadw           local0 local3 -> local5
       call            r0061 local5 g54 -> sp
       jz              sp l0003
       jump            l0004
l0003: add             local4 #01 -> sp
       storew          g53 sp local5
       inc             local4
l0004: inc             local3
       jump            l0001
l0005: storew          g53 g51 local4
       store           local6 g53
       store           g53 local0
       ret             local6

Routine r0050, 8 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       store           g50 #00
       store           g4f local0
       store           g4e local1
       store           g4d #00
       storew          g54 g51 #00
       storew          local2 g51 #00
       loadw           local0 #00 -> local6
l0001: je              local0 local1 ~l0004
       jz              local3 l0002
       push            local3
       jump            l0003
l0002: push            local2
l0003: call            r0051 sp -> sp
       ret             sp
l0004: loadw           local0 #02 -> local7
       je              local6 "all" ~l0005
       store           g50 #01
       je              local7 "of" ?~l0020
       add             local0 #04 -> local0
       jump            l0020
l0005: je              local6 "but" "except" ~l0008
       jz              local3 l0006
       push            local3
       jump            l0007
l0006: push            local2
l0007: call            r0051 sp -> sp
       jz              sp rfalse
       store           local3 g54
       storew          local3 g51 #00
       jump            l0020
l0008: je              local6 "a" "one" ~l0012
       jz              g59 ~l0009
       store           g50 #02
       je              local7 "of" ?~l0020
       add             local0 #04 -> local0
       jump            l0020
l0009: store           g5a g74
       jz              local3 l0010
       push            local3
       jump            l0011
l0010: push            local2
l0011: call            r0051 sp -> sp
       jz              sp rfalse
       jz              local7 rtrue
       jump            l0020
l0012: je              local6 "and" "," ~l0015
       je              local7 "and" "," l0015
       store           g4d #01
       jz              local3 l0013
       push            local3
       jump            l0014
l0013: push            local2
l0014: call            r0051 sp -> sp
       jz              sp ?~l0020
       rfalse          
l0015: call            r0028 local6 #04 -> sp
       jz              sp l0016
       jump            l0020
l0016: je              local6 "and" "," ~l0017
       jump            l0020
l0017: je              local6 "of" ~l0018
       jz              g50 ~l0020
       store           g50 #04
       jump            l0020
l0018: call            r0028 local6 #20 #02 -> local5
       jz              local5 l0019
       jz              g59 ~l0019
       store           g59 local5
       store           g57 local6
       jump            l0020
l0019: call            r0028 local6 #80 #00 -> sp
       jz              sp l0020
       store           g5a local6
       store           g74 local6
l0020: je              local0 local1 ?l0001
       add             local0 #04 -> local0
       store           local6 local7
       jump            l0001

Routine r0051, 9 locals (0000, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       store           local4 g5c
       loadw           local0 g51 -> local5
       test            g50 #04 rtrue
       jz              g5a ~l0001
       jz              g59 l0001
       call            r0028 g57 #80 #00 -> sp
       jz              sp l0001
       store           g5a g57
       store           g59 #00
l0001: jz              g5a ~l0002
       jz              g59 ~l0002
       je              g50 #01 l0002
       jz              g5b ~l0002
       jz              local1 rfalse
       print           "There seems to be a noun missing in that sentence!"
       new_line        
       rfalse          
l0002: je              g50 #01 ~l0003
       jz              g5c ~l0004
l0003: store           g5c #ffff
l0004: store           g75 local0
l0005: jz              local6 l0006
       call            r0054 local0 -> sp
       jump            l0008
l0006: jz              g42 l0007
       clear_attr      g80 #0c
       call            r0055 g00 #10 #20 -> sp
       set_attr        g80 #0c
l0007: call            r0055 g80 #80 #40 -> sp
l0008: loadw           local0 g51 -> sp
       sub             sp local5 -> local3
       test            g50 #01 ~l0009
       jump            l0024
l0009: test            g50 #02 ~l0011
       jz              local3 l0011
       je              local3 #01 l0010
       random          local3 -> sp
       loadw           local0 sp -> sp
       storew          local0 #01 sp
       print           "(How about the "
       loadw           local0 #01 -> sp
       print_obj       sp
       print           "?)"
       new_line        
l0010: storew          local0 g51 #01
       jump            l0024
l0011: jg              local3 #01 l0012
       jz              local3 ?~l0020
       je              g5c #ffff ?l0020
l0012: je              g5c #ffff ~l0013
       store           g5c local4
       store           local7 local3
       loadw           local0 g51 -> sp
       sub             sp local3 -> sp
       storew          local0 g51 sp
       jump            l0005
l0013: jz              local3 ~l0014
       store           local3 local7
l0014: je              g6f g80 l0015
       call            r0037 -> sp
       rfalse          
l0015: jz              local1 l0018
       jz              g5a l0018
       call            r0053 local5 local3 local0 -> sp
       je              local0 g56 ~l0016
       push            #06
       jump            l0017
l0016: push            #08
l0017: store           g67 sp
       store           g65 g59
       store           g66 g5a
       call            r0038 #00 #00 -> sp
       store           g69 #01
       jump            l0019
l0018: jz              local1 l0019
       print           "There seems to be a noun missing in that sentence!"
       new_line        
l0019: store           g5a #00
       store           g59 #00
       rfalse          
l0020: jz              local3 ~l0023
       jz              local6 l0023
       jz              local1 l0022
       jz              g42 l0021
       call            r0057 #0b local0 -> sp
       store           g4b g5a
       store           g4a g59
       store           g49 g57
       store           g5a #00
       store           g59 #00
       store           g57 #00
       rtrue           
l0021: print           "It's too dark to see!"
       new_line        
l0022: store           g5a #00
       store           g59 #00
       rfalse          
l0023: jz              local3 ~l0024
       store           local6 #01
       jump            l0005
l0024: store           g5c local4
       store           g5a #00
       store           g59 #00
       rtrue           

Routine r0052, 3 locals (0000, 0000, 0000)

       store           g5c #ffff
       store           g5a g4b
       store           g59 g4a
       storew          local0 g51 #00
       get_child       #52 -> local1 l0001
l0001: jz              local1 ~l0002
       jump            l0004
l0002: call            r0056 local1 local0 #01 -> sp
       get_sibling     local1 -> local1 l0003
l0003: jump            l0001
l0004: loadw           local0 g51 -> local2
       jz              local2 ~l0005
       call            r0055 #f9 #01 #01 -> sp
l0005: loadw           local0 g51 -> local2
       jz              local2 ~l0006
       call            r0055 #52 #01 #01 -> sp
l0006: loadw           local0 g51 -> local2
       je              local2 #01 ~l0007
       loadw           local0 #01 -> g4c
l0007: store           g5a #00
       store           g59 #00
       ret             local2

Routine r0053, 5 locals (0000, 0000, 0000, 0000, 0000)

       store           local4 local1
       print           "Which"
       jz              g69 ~l0001
       jz              g68 ~l0001
       jz              g4d l0002
l0001: print           " "
       print_addr      g5a
       jump            l0004
l0002: je              local2 g56 ~l0003
       call            r0039 #06 #07 #00 -> sp
       jump            l0004
l0003: call            r0039 #08 #09 #00 -> sp
l0004: print           " do you mean, "
l0005: inc             local0
       loadw           local2 local0 -> local3
       print           "the "
       print_obj       local3
       je              local1 #02 ~l0007
       je              local4 #02 l0006
       print           ","
l0006: print           " or "
       jump            l0008
l0007: jg              local1 #02 ~l0008
       print           ", "
l0008: dec_chk         local1 #01 ?~l0005
       print_ret       "?"

Routine r0054, 8 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       loadw           local0 g51 -> local1
       store           local6 g5c
       get_prop_addr   g00 #05 -> local2
       jz              local2 l0003
       get_prop_len    local2 -> sp
       sub             sp #01 -> local3
l0001: loadb           local2 local4 -> local5
       call            r0066 local5 local0 -> sp
       jz              sp l0002
       call            r0057 local5 local0 -> sp
l0002: inc_chk         local4 local3 ?~l0001
l0003: get_prop_addr   g00 #04 -> local2
       jz              local2 ?l0006
       get_prop_len    local2 -> sp
       div             sp #04 -> sp
       sub             sp #01 -> local3
       store           local4 #00
l0004: mul             local4 #02 -> sp
       loadw           local2 sp -> sp
       je              g5a sp ~l0005
       mul             local4 #02 -> sp
       add             sp #01 -> sp
       loadw           local2 sp -> sp
       put_prop        "pseudo" #11 sp
       get_prop_addr   "pseudo" #11 -> sp
       sub             sp #05 -> local7
       loadw           g5a #00 -> sp
       storew          local7 #00 sp
       loadw           g5a #01 -> sp
       storew          local7 #01 sp
       call            r0057 #0d local0 -> sp
       jump            l0006
l0005: inc_chk         local4 local3 ?~l0004
l0006: loadw           local0 g51 -> sp
       je              sp local1 ~rfalse
       store           g5c #ffff
       store           g75 local0
       call            r0055 #f7 #01 #01 -> sp
       store           g5c local6
       loadw           local0 g51 -> sp
       jz              sp ~rfalse
       je              g78 #39 #71 #38 ~rfalse
       call            r0055 #52 #01 #01 -> sp
       ret_popped      

Routine r0055, 4 locals (0000, 0000, 0000, 0000)

       add             local1 local2 -> sp
       test            g5c sp ~l0001
       call            r0056 local0 g75 #01 -> sp
       ret_popped      
l0001: test            g5c local1 ~l0002
       call            r0056 local0 g75 #00 -> sp
       ret_popped      
l0002: test            g5c local2 ~rtrue
       call            r0056 local0 g75 #02 -> sp
       ret_popped      

Routine r0056, 5 locals (0000, 0000, 0000, 0000, 0000)

       get_child       local0 -> local0 ~rfalse
l0001: je              local2 #02 l0002
       get_prop_addr   local0 #12 -> sp
       jz              sp l0002
       call            r0066 local0 local1 -> sp
       jz              sp l0002
       call            r0057 local0 local1 -> sp
l0002: je              local2 #00 ~l0003
       test_attr       local0 #08 l0003
       test_attr       local0 #0a ~l0008
l0003: get_child       local0 -> local4 ~l0008
       test_attr       local0 #0b l0004
       test_attr       local0 #0c ~l0008
l0004: test_attr       local0 #0a ~l0005
       push            #01
       jump            l0007
l0005: test_attr       local0 #08 ~l0006
       push            #01
       jump            l0007
l0006: push            #00
l0007: call            r0056 local0 local1 sp -> local3
l0008: get_sibling     local0 -> local0 ?l0001
       rtrue           

Routine r0057, 3 locals (0000, 0000, 0000)

       loadw           local1 g51 -> local2
       add             local2 #01 -> sp
       storew          local1 sp local0
       add             local2 #01 -> sp
       storew          local1 g51 sp
       rtrue           

Routine r0058, 0 locals ()

       loadb           g73 #05 -> sp
       call            r0059 g56 sp -> sp
       jz              sp rfalse
       loadb           g73 #06 -> sp
       call            r0059 g55 sp -> sp
       ret_popped      

Routine r0059, 5 locals (0000, 0000, 0000, 0000, 0000)

       loadw           local0 g51 -> local2
       jz              local2 rtrue
       test            local1 #02 l0001
       test            local1 #08 ~rtrue
l0001: dec_chk         local2 #00 rtrue
       add             local2 #01 -> sp
       loadw           local0 sp -> local3
       je              local3 #0c ~l0002
       store           local3 g6b
l0002: call            r0252 local3 -> sp
       jz              sp ?~l0001
       je              local3 #01 ?l0001
       store           g76 local3
       test_attr       local3 #0d ~l0003
       store           local4 #01
       jump            l0006
l0003: je              g6f #04 l0004
       store           local4 #00
       jump            l0006
l0004: test            local1 #08 ~l0005
       call            r0238 #00 -> sp
       je              sp #01 ~l0005
       store           local4 #00
       jump            l0006
l0005: store           local4 #01
l0006: jz              local4 l0008
       test            local1 #02 ~l0008
       je              local3 #0b ~l0007
       print           "You don't have that!"
       new_line        
       rfalse          
l0007: print           "You don't have the "
       print_obj       local3
       print           "."
       new_line        
       rfalse          
l0008: jz              local4 ?~l0001
       je              g6f #04 ?~l0001
       print           "(Taken)"
       new_line        
       jump            l0001

Routine r0060, 3 locals (0000, 0000, 0000)

       loadw           g56 g51 -> sp
       jg              sp #01 ~l0001
       loadb           g73 #05 -> sp
       test            sp #04 l0001
       store           local0 #01
       jump            l0002
l0001: loadw           g55 g51 -> sp
       jg              sp #01 ~l0002
       loadb           g73 #06 -> sp
       test            sp #04 l0002
       store           local0 #02
l0002: jz              local0 rtrue
       print           "You can't use multiple "
       je              local0 #02 ~l0003
       print           "in"
l0003: print           "direct objects with ~"
       loadw           g64 #01 -> local1
       jz              local1 ~l0004
       print           "tell"
       jump            l0007
l0004: jz              g69 ~l0005
       jz              g68 l0006
l0005: loadw           local1 #00 -> sp
       print_addr      sp
       jump            l0007
l0006: loadb           local1 #02 -> local2
       loadb           local1 #03 -> sp
       call            r0033 local2 sp -> sp
l0007: print           "~."
       new_line        
       rfalse          

Routine r0061, 4 locals (0000, 0000, ffff, 0001)

       jz              local1 rfalse
       jl              local2 #00 l0001
       store           local3 #00
       jump            l0002
l0001: loadw           local1 #00 -> local2
l0002: loadw           local1 local3 -> sp
       je              local0 sp rtrue
       inc_chk         local3 local2 ?~l0002
       rfalse          

Routine r0062, 4 locals (0000, 0000, 0000, 0000)

l0001: loadb           local1 local3 -> sp
       je              local0 sp rtrue
       inc_chk         local3 local2 ?~l0001
       rfalse          

Routine r0063, 4 locals (0000, 0001, 0000, 0000)

       jz              g48 l0001
       je              g6f g80 rtrue
l0001: store           g5b #14
       store           local2 g00
       store           g00 local0
       jz              local1 l0002
       test_attr       local0 #14 ~l0002
       store           local3 #01
       jump            l0004
l0002: storew          g53 g51 #00
       store           g75 g53
       store           g5c #ffff
       je              local2 local0 ~l0003
       call            r0055 g6f #01 #01 -> sp
       je              g6f g80 l0003
       jin             g80 local0 ~l0003
       call            r0055 g80 #01 #01 -> sp
l0003: call            r0055 local0 #01 #01 -> sp
       loadw           g75 g51 -> sp
       jg              sp #00 ~l0004
       store           local3 #01
l0004: store           g00 local2
       store           g5b #00
       ret             local3

Routine r0064, 1 local (0000)

       jz              g68 ~l0001
       loadw           g64 #06 -> local0
       loadw           local0 #00 -> sp
       je              sp "it" ~l0002
l0001: print           " "
       print_obj       g76
       rtrue           
l0002: loadw           g64 #07 -> sp
       call            r0040 local0 sp #00 -> sp
       ret_popped      

Routine r0065, 1 local (0000)

       jz              g68 ~l0001
       loadw           g64 #08 -> local0
       loadw           local0 #00 -> sp
       je              sp "it" ~l0002
l0001: print           " "
       print_obj       g76
       rtrue           
l0002: loadw           g64 #09 -> sp
       call            r0040 local0 sp #00 -> sp
       ret_popped      

Routine r0066, 4 locals (0000, 0000, 0000, 0000)

       test_attr       local0 #07 rfalse
       jz              g5a l0001
       get_prop_addr   local0 #12 -> local2
       get_prop_len    local2 -> sp
       div             sp #02 -> sp
       sub             sp #01 -> sp
       call            r0061 g5a local2 sp -> sp
       jz              sp rfalse
l0001: jz              g59 l0002
       get_prop_addr   local0 #10 -> local2
       jz              local2 rfalse
       get_prop_len    local2 -> sp
       sub             sp #01 -> sp
       call            r0062 g59 local2 sp -> sp
       jz              sp rfalse
l0002: jz              g5b rtrue
       test_attr       local0 g5b rtrue
       rfalse          

Routine r0067, 0 locals ()
    Action routine for:
        "verbos"

       store           g47 #01
       store           g46 #00
       print_ret       "Maximum verbosity."

Routine r0068, 0 locals ()
    Action routine for:
        "brief"

       store           g47 #00
       store           g46 #00
       print_ret       "Brief descriptions."

Routine r0069, 0 locals ()
    Action routine for:
        "super"

       store           g46 #01
       print_ret       "Super-brief descriptions."

Routine r0070, 0 locals ()
    Action routine for:
        "i"

       get_child       g6f -> sp ~l0001
       call            r0231 g6f -> sp
       ret_popped      
l0001: print_ret       "You are empty-handed."

Routine r0071, 2 locals (0001, 0000)
    Action routine for:
        "q"

       call            r0430 -> sp
       jz              local0 l0001
       print           "Do you wish to leave the game? (Y is affirmative): "
       call            r0237 -> sp
       jz              sp ~l0002
l0001: jz              local0 ~l0003
l0002: quit            
       rtrue           
l0003: print_ret       "Ok."

Routine r0072, 0 locals ()
    Action routine for:
        "restar"

       call            r0430 #01 -> sp
       print           "Do you wish to restart? (Y is affirmative): "
       call            r0237 -> sp
       jz              sp rfalse
       print           "Restarting."
       new_line        
       restart         
       print_ret       "Failed."

Routine r0073, 0 locals ()
    Action routine for:
        "restor"

       restore         ~l0001
       print           "Ok."
       new_line        
       call            r0226 -> sp
       ret_popped      
l0001: print_ret       "Failed."

Routine r0074, 0 locals ()
    Action routine for:
        "save"

       save            ~l0001
       print_ret       "Ok."
l0001: print_ret       "Failed."

Routine r0075, 0 locals ()
    Action routine for:
        "script"

       loadw           #00 #08 -> sp
       or              sp #01 -> sp
       storew          #00 #08 sp
       print           "Here begins a transcript of interaction with"
       new_line        
       call            r0077 -> sp
       rtrue           

Routine r0076, 0 locals ()
    Action routine for:
        "unscri"

       print           "Here ends a transcript of interaction with"
       new_line        
       call            r0077 -> sp
       loadw           #00 #08 -> sp
       and             sp #fffe -> sp
       storew          #00 #08 sp
       rtrue           

Routine r0077, 1 local (0011)
    Action routine for:
        "versio"

       print           "ZORK I: The Great Underground Empire^Copyright (c)
1981, 1982, 1983 Infocom, Inc. "
       print           "All rights reserved."
       new_line        
       loadb           #00 #01 -> sp
       and             sp #08 -> sp
       jz              sp l0001
       print           "Licensed to Tandy Corporation."
       new_line        
l0001: print           "ZORK is a registered trademark of Infocom,
Inc.^Revision "
       loadw           #00 #01 -> sp
       and             sp #07ff -> sp
       print_num       sp
       print           " / Serial number "
l0002: inc_chk         local0 #17 ~l0003
       jump            l0004
l0003: loadb           #00 local0 -> sp
       print_char      sp
       jump            l0002
l0004: new_line        
       rtrue           

Routine r0078, 0 locals ()
    Action routine for:
        "$ve"

       print           "Verifying disk..."
       new_line        
       verify          ~l0001
       print_ret       "The disk is correct."
l0001: new_line        
       print_ret       "** Disk Failure **"

Routine r0079, 0 locals ()
    Action routine for:
        "plugh"

       print_ret       "A hollow voice says ~Fool.~"

Routine r0080, 1 local (0000)
    Action routine for:
        "again"

       je              g7e #89 ~l0001
       call            r0026 g7e g7d -> sp
       ret_popped      
l0001: jz              g7d l0003
       get_parent      g7d -> sp
       jz              sp l0002
       test_attr       g7d #07 ~l0003
l0002: store           local0 g7d
l0003: jz              g7c l0005
       get_parent      g7c -> sp
       jz              sp l0004
       test_attr       g7c #07 ~l0005
l0004: store           local0 g7c
l0005: jz              local0 l0006
       je              local0 #0d #52 l0006
       print           "You can't see the "
       print_obj       local0
       print           " anymore."
       new_line        
       ret             #02
l0006: call            r0026 g7e g7d g7c -> sp
       ret_popped      

Routine r0081, 0 locals ()
    Action routine for:
        "awake up OBJ"
        "awake OBJ"

       test_attr       g76 #1e ?~l0002
       get_prop        g76 #07 -> sp
       jl              sp #00 ~l0001
       print           "The "
       print_obj       g76
       print           " is rudely awakened."
       new_line        
       call            r0421 g76 -> sp
       ret_popped      
l0001: print_ret       "He's wide awake, or haven't you noticed..."
l0002: print           "The "
       print_obj       g76
       print_ret       " isn't sleeping."

Routine r0082, 0 locals ()
    Action routine for:
        "answer"

       print           "Nobody seems to be awaiting your answer."
       new_line        
       store           g6c #00
       store           g60 #00
       rtrue           

Routine r0083, 0 locals ()
    Action routine for:
        "strike OBJ with OBJ"
        "knock down OBJ"
        "stab OBJ with OBJ"
        "dispat OBJ with OBJ"
        "attack OBJ with OBJ"

       test_attr       g76 #1e l0001
       print           "I've known strange people, but fighting a "
       print_obj       g76
       print_ret       "?"
l0001: jz              g77 l0002
       je              g77 #01 ~l0003
l0002: print           "Trying to attack a "
       print_obj       g76
       print_ret       " with your bare hands is suicidal."
l0003: jin             g77 g6f l0004
       print           "You aren't even holding the "
       print_obj       g77
       print_ret       "."
l0004: test_attr       g77 #1d l0005
       print           "Trying to attack the "
       print_obj       g76
       print           " with a "
       print_obj       g77
       print_ret       " is suicidal."
l0005: call            r0415 -> sp
       ret_popped      

Routine r0084, 0 locals ()
    Action routine for:
        "back"

       print_ret       "Sorry, my memory is poor. Please give a direction."

Routine r0085, 0 locals ()
    Action routine for:
        "blow up OBJ"
        "blast"

       print_ret       "You can't blast anything by using words."

Routine r0086, 1 local (0000)
    Pre-action routine for:
        "carry in OBJ"
        "climb in OBJ"
        "board OBJ"

       get_parent      g6f -> local0
       call            r0013 -> sp
       jz              sp ~rtrue
       test_attr       g76 #1b ~l0002
       jin             g76 g00 l0001
       print           "The "
       print_obj       g76
       print           " must be on the ground to be boarded."
       new_line        
       ret             #02
l0001: test_attr       local0 #1b ~rfalse
       print           "You are already in the "
       print_obj       local0
       print           "!"
       new_line        
       ret             #02
l0002: print           "You have a theory on how to board a "
       print_obj       g76
       print           ", perhaps?"
       new_line        
       ret             #02

Routine r0087, 1 local (0000)
    Action routine for:
        "carry in OBJ"
        "climb in OBJ"
        "board OBJ"

       print           "You are now in the "
       print_obj       g76
       print           "."
       new_line        
       insert_obj      g6f g76
       get_prop        g76 #11 -> sp
       call            sp #02 -> sp
       rtrue           

Routine r0088, 0 locals ()
    Action routine for:
        "blow in OBJ"

       call            r0026 #17 g76 #06 -> sp
       ret_popped      

Routine r0089, 0 locals ()
    Action routine for:
        "brush OBJ with OBJ"
        "brush OBJ"

       print_ret       "If you wish, but heaven only knows why."

Routine r0090, 0 locals ()
    Action routine for:
        "bug"

       print_ret       "Bug? Not in a flawless program like this! (Cough,
cough)."

Routine r0091, 0 locals ()
    Pre-action routine for:
        "light OBJ with OBJ"
        "burn down OBJ with OBJ"
        "burn OBJ with OBJ"

       test_attr       g77 #19 ~l0001
       test_attr       g77 #14 rfalse
l0001: print           "With a "
       print_obj       g77
       print_ret       "??!?"

Routine r0092, 0 locals ()
    Action routine for:
        "light OBJ with OBJ"
        "burn down OBJ with OBJ"
        "burn OBJ with OBJ"

       call            r0013 -> sp
       jz              sp ~rfalse
       test_attr       g76 #1a ?~l0005
       jin             g76 g6f l0001
       jin             g6f g76 ~l0004
l0001: call            r0116 g76 -> sp
       print           "The "
       print_obj       g76
       print           " catches fire. Unfortunately, you were "
       jin             g6f g76 ~l0002
       print           "in"
       jump            l0003
l0002: print           "holding"
l0003: call            r0431 s165 -> sp
       ret_popped      
l0004: call            r0116 g76 -> sp
       print           "The "
       print_obj       g76
       print_ret       " catches fire and is consumed."
l0005: print           "You can't burn a "
       print_obj       g76
       print_ret       "."

Routine r0093, 0 locals ()
    Action routine for:
        "barf"

       print_ret       "Preposterous!"

Routine r0094, 0 locals ()
    Action routine for:
        "go down OBJ"
        "climb down OBJ"
        "climb"

       call            r0097 #16 g76 -> sp
       ret_popped      

Routine r0095, 0 locals ()
    Action routine for:
        "climb OBJ"

       call            r0097 #17 g76 -> sp
       ret_popped      

Routine r0096, 0 locals ()
    Action routine for:
        "carry on OBJ"
        "climb on OBJ"

       test_attr       g76 #1b ~l0001
       call            r0026 #19 g76 -> sp
       rtrue           
l0001: print           "You can't climb onto the "
       print_obj       g76
       print_ret       "."

Routine r0097, 5 locals (0017, 0000, 0000, 0000, 0000)
    Action routine for:
        "go up OBJ"
        "climb up OBJ"
        "climb"

       jz              local1 ~l0001
       jz              g76 l0001
       store           local1 g76
l0001: get_prop_addr   g00 local0 -> local3
       jz              local3 ?l0007
       jz              local1 ?l0006
       get_prop_len    local3 -> local2
       je              local2 #02 l0002
       je              local2 #04 #05 #01 ?~l0006
       loadb           local3 #00 -> sp
       call            r0249 g76 sp -> sp
       jz              sp ~l0006
l0002: print           "The "
       print_obj       local1
       print           " do"
       je              local1 #49 l0003
       print           "es"
l0003: print           "n't lead "
       je              local0 #17 ~l0004
       print           "up"
       jump            l0005
l0004: print           "down"
l0005: print_ret       "ward."
l0006: call            r0247 local0 -> sp
       rtrue           
l0007: jz              local1 ~l0008
       print_ret       "You can't go that way."
l0008: jz              local1 l0009
       get_prop_addr   g76 #12 -> local2
       get_prop_len    local2 -> sp
       call            r0061 "wall" local2 sp -> sp
       jz              sp l0009
       print_ret       "Climbing the walls is to no avail."
l0009: print_ret       "You can't do that!"

Routine r0098, 0 locals ()
    Action routine for:
        "close OBJ"

       test_attr       g76 #13 l0001
       test_attr       g76 #17 l0001
       print           "You must tell me how to do that to a "
       print_obj       g76
       print_ret       "."
l0001: test_attr       g76 #0a l0003
       get_prop        g76 #0a -> sp
       jz              sp l0003
       test_attr       g76 #0b ~l0002
       clear_attr      g76 #0b
       print           "Closed."
       new_line        
       jz              g42 rtrue
       call            r0063 g00 -> g42
       jz              g42 ~rtrue
       print_ret       "It is now pitch black."
l0002: print_ret       "It is already closed."
l0003: test_attr       g76 #17 ~l0005
       test_attr       g76 #0b ~l0004
       clear_attr      g76 #0b
       print           "The "
       print_obj       g76
       print_ret       " is now closed."
l0004: print_ret       "It is already closed."
l0005: print_ret       "You cannot close that."

Routine r0099, 0 locals ()
    Action routine for:
        "comman OBJ"

       test_attr       g76 #1e ~l0001
       print           "The "
       print_obj       g76
       print_ret       " pays no attention."
l0001: print_ret       "You cannot talk to that!"

Routine r0100, 0 locals ()
    Action routine for:
        "count OBJ"

       je              g76 #0a ~l0001
       print_ret       "Well, for one, you are playing Zork..."
l0001: print_ret       "You have lost your mind."

Routine r0101, 0 locals ()
    Action routine for:
        "cross OBJ"

       print_ret       "You can't cross that!"

Routine r0102, 0 locals ()
    Action routine for:
        "curse OBJ"
        "curse"

       jz              g76 l0002
       test_attr       g76 #1e ~l0001
       print_ret       "Insults of this nature won't help you."
l0001: print_ret       "What a loony!"
l0002: print_ret       "Such language in a high-class establishment like this!"

Routine r0103, 0 locals ()
    Action routine for:
        "cut OBJ with OBJ"

       test_attr       g76 #1e ~l0001
       call            r0026 #13 g76 g77 -> sp
       ret_popped      
l0001: test_attr       g76 #1a ?~l0003
       test_attr       g77 #1d ?~l0003
       jin             g6f g76 ~l0002
       print_ret       "Not a bright idea, especially since you're in it."
l0002: call            r0116 g76 -> sp
       print           "Your skillful "
       print_obj       g77
       print           "smanship slices the "
       print_obj       g76
       print_ret       " into innumerable slivers which blow away."
l0003: test_attr       g77 #1d l0004
       print           "The ~cutting edge~ of a "
       print_obj       g77
       print_ret       " is hardly adequate."
l0004: print           "Strange concept, cutting the "
       print_obj       g76
       print_ret       "...."

Routine r0104, 0 locals ()
    Action routine for:
        "deflat OBJ"

       print_ret       "Come on, now!"

Routine r0105, 0 locals ()
    Action routine for:
        "dig OBJ with OBJ"
        "dig in OBJ with OBJ"

       jz              g77 ~l0001
       store           g77 #01
l0001: je              g77 #79 ~l0002
       print_ret       "There's no reason to be digging here."
l0002: test_attr       g77 #1c ~l0003
       print           "Digging with the "
       print_obj       g77
       print_ret       " is slow and tedious."
l0003: print           "Digging with a "
       print_obj       g77
       print_ret       " is silly."

Routine r0106, 0 locals ()
    Action routine for:
        "carry out OBJ"
        "disemb OBJ"

       get_parent      g6f -> sp
       je              sp g76 l0001
       print           "You're not in that!"
       new_line        
       ret             #02
l0001: test_attr       g00 #06 ~l0002
       print           "You are on your own feet again."
       new_line        
       insert_obj      g6f g00
       rtrue           
l0002: print           "You realize that getting out here would be fatal."
       new_line        
       ret             #02

Routine r0107, 0 locals ()
    Action routine for:
        "disenc OBJ"

       print_ret       "Nothing happens."

Routine r0108, 0 locals ()
    Action routine for:
        "drink OBJ"

       call            r0112 -> sp
       ret_popped      

Routine r0109, 0 locals ()
    Action routine for:
        "drink from OBJ"

       print_ret       "How peculiar!"

Routine r0110, 0 locals ()
    Pre-action routine for:
        "hide down OBJ"
        "pour OBJ from OBJ"
        "pour OBJ in OBJ"
        "pour OBJ"
        "leave OBJ"
        "drop OBJ"

       get_parent      g6f -> sp
       je              g76 sp ~rfalse
       call            r0026 #2d g76 -> sp
       rtrue           

Routine r0111, 0 locals ()
    Action routine for:
        "hide down OBJ"
        "pour OBJ from OBJ"
        "pour OBJ in OBJ"
        "pour OBJ"
        "leave OBJ"
        "drop OBJ"

       call            r0239 -> sp
       jz              sp rfalse
       print_ret       "Dropped."

Routine r0112, 3 locals (0000, 0000, 0000)
    Action routine for:
        "bite OBJ"

       test_attr       g76 #15 l0001
       push            #00
       jump            l0002
l0001: push            #01
l0002: store           local0 sp
       jz              local0 ?l0006
       jin             g76 g6f l0003
       get_parent      g76 -> sp
       jin             sp g6f l0003
       print           "You're not holding that."
       new_line        
       jump            l0005
l0003: je              g78 #2f ~l0004
       print           "How can you drink that?"
       jump            l0005
l0004: print           "Thank you very much. It really hit the spot."
       call            r0116 g76 -> sp
l0005: new_line        
       rtrue           
l0006: test_attr       g76 #16 ?~l0012
       store           local1 #01
       get_parent      g76 -> local2
       jin             g76 #f7 l0007
       jin             g76 #f9 l0007
       je              g76 #0d ~l0008
l0007: call            r0113 -> sp
       ret_popped      
l0008: jz              local2 ~l0009
       print_ret       "You don't have any to drink."
l0009: jin             local2 g6f l0010
       print           "You have to be holding the "
       print_obj       local2
       print_ret       " first."
l0010: test_attr       local2 #0b l0011
       print           "You'll have to open the "
       print_obj       local2
       print_ret       " first."
l0011: call            r0113 -> sp
       ret_popped      
l0012: jz              local0 ~rfalse
       jz              local1 ~rfalse
       print           "I don't think that the "
       print_obj       g76
       print_ret       " would agree with you."

Routine r0113, 0 locals ()

       print           "Thank you very much. I was rather thirsty (from all
this talking, probably)."
       new_line        
       call            r0116 g76 -> sp
       ret_popped      

Routine r0114, 5 locals (0000, 0000, 0000, 0000, 0000)
    Action routine for:
        "echo"

       loadb           g6e #01 -> sp
       jg              sp #00 ?~l0006
       loadb           g6e #01 -> sp
       mul             sp #04 -> sp
       add             g6e sp -> local0
       loadb           local0 #00 -> local4
       loadb           local0 #01 -> sp
       add             local4 sp -> sp
       sub             sp #01 -> local1
l0001: inc_chk         local2 #02 ~l0002
       print_ret       "..."
l0002: loadb           local0 #01 -> sp
       sub             sp #01 -> local3
l0003: inc_chk         local3 local1 ~l0004
       jump            l0005
l0004: loadb           g6d local3 -> sp
       print_char      sp
       jump            l0003
l0005: print           " "
       jump            l0001
l0006: print_ret       "echo echo ..."

Routine r0115, 0 locals ()
    Action routine for:
        "enchan OBJ"

       call            r0013 -> sp
       call            r0107 -> sp
       ret_popped      

Routine r0116, 2 locals (0000, 0000)

       je              local0 g6b ~l0001
       store           g6b #00
       store           g6a #00
l0001: store           local1 g42
       remove_obj      local0
       call            r0063 g00 -> g42
       jz              local1 rtrue
       je              local1 g42 rtrue
       print_ret       "You are left in the dark..."

Routine r0117, 0 locals ()
    Action routine for:
        "enter"

       call            r0247 #15 -> sp
       ret_popped      

Routine r0118, 0 locals ()
    Action routine for:
        "gaze at OBJ"
        "descri OBJ"

       get_prop        g76 #08 -> sp
       jz              sp l0001
       get_prop        g76 #08 -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0001: test_attr       g76 #13 l0002
       test_attr       g76 #17 ~l0003
l0002: call            r0146 -> sp
       ret_popped      
l0003: print           "There's nothing special about the "
       print_obj       g76
       print_ret       "."

Routine r0119, 0 locals ()
    Action routine for:
        "exit OBJ"
        "exit"

       call            r0247 #14 -> sp
       ret_popped      

Routine r0120, 0 locals ()
    Action routine for:
        "banish away OBJ"
        "banish out OBJ"
        "banish OBJ"

       print_ret       "What a bizarre concept!"

Routine r0121, 1 local (0000)
    Pre-action routine for:
        "fill OBJ"
        "fill OBJ with OBJ"

       jz              g77 ~l0002
       get_prop_addr   g00 #05 -> local0
       jz              local0 l0002
       get_prop_len    local0 -> sp
       sub             sp #01 -> sp
       call            r0062 #ee local0 sp -> sp
       jz              sp l0001
       store           g77 #ee
       rfalse          
l0001: print_ret       "There is nothing to fill it with."
l0002: je              g77 #ee rfalse
       call            r0026 #12 g77 g76 -> sp
       rtrue           

Routine r0122, 0 locals ()
    Action routine for:
        "fill OBJ"
        "fill OBJ with OBJ"

       jz              g77 ~l0003
       call            r0249 #ee g00 -> sp
       jz              sp l0001
       call            r0026 #3b g76 #ee -> sp
       rtrue           
l0001: get_parent      g6f -> sp
       jin             "quantity of water" sp ~l0002
       call            r0026 #3b g76 #ed -> sp
       rtrue           
l0002: print_ret       "There's nothing to fill it with."
l0003: print_ret       "You may know how to do that, but I don't."

Routine r0123, 1 local (0000)
    Action routine for:
        "search for OBJ"
        "gaze for OBJ"
        "find OBJ"

       get_parent      g76 -> local0
       je              g76 #01 #06 ~l0001
       print_ret       "Within six feet of your head, assuming you haven't left
that somewhere."
l0001: je              g76 #05 ~l0002
       print_ret       "You're around here somewhere..."
l0002: je              local0 #f7 ~l0003
       print_ret       "You find it."
l0003: jin             g76 g6f ~l0004
       print_ret       "You have it."
l0004: jin             g76 g00 l0005
       call            r0249 g76 g00 -> sp
       jz              sp ~l0005
       je              g76 #0d ~l0006
l0005: print_ret       "It's right here."
l0006: test_attr       local0 #1e ~l0007
       print           "The "
       print_obj       local0
       print_ret       " has it."
l0007: test_attr       local0 #0a ~l0008
       print           "It's on the "
       print_obj       local0
       print_ret       "."
l0008: test_attr       local0 #13 ~l0009
       print           "It's in the "
       print_obj       local0
       print_ret       "."
l0009: print_ret       "Beats me."

Routine r0124, 0 locals ()
    Action routine for:
        "chase OBJ"
        "chase"

       print_ret       "You're nuts!"

Routine r0125, 0 locals ()
    Action routine for:
        "froboz"

       print_ret       "The FROBOZZ Corporation created, owns, and operates
this dungeon."

Routine r0126, 0 locals ()
    Pre-action routine for:
        "hand OBJ to OBJ"
        "donate OBJ to OBJ"

       call            r0252 g76 -> sp
       jz              sp ~rfalse
       print           "That's easy for you to say since you don't even have
the "
       print_obj       g76
       print_ret       "."

Routine r0127, 0 locals ()
    Action routine for:
        "hand OBJ to OBJ"
        "donate OBJ to OBJ"

       test_attr       g77 #1e l0001
       print           "You can't give a "
       print_obj       g76
       print           " to a "
       print_obj       g77
       print_ret       "!"
l0001: print           "The "
       print_obj       g77
       print_ret       " refuses it politely."

Routine r0128, 0 locals ()
    Action routine for:
        "hatch OBJ"

       print_ret       "Bizarre!"

Routine r0129, 0 locals ()
    Action routine for:
        "hello OBJ"
        "hello"

       jz              g76 ?l0002
       test_attr       g76 #1e ~l0001
       print           "The "
       print_obj       g76
       print_ret       " bows his head to you in greeting."
l0001: print           "It's a well known fact that only schizophrenics say
~Hello~ to a "
       print_obj       g76
       print_ret       "."
l0002: call            r0004 g36 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0130, 0 locals ()
    Action routine for:
        "chant"

       print           "The incantation echoes back faintly, but nothing else
happens."
       new_line        
       store           g60 #00
       store           g6c #00
       rtrue           

Routine r0131, 0 locals ()
    Action routine for:
        "inflat OBJ with OBJ"
        "blow up OBJ with OBJ"

       print_ret       "How can you inflate that?"

Routine r0132, 0 locals ()
    Action routine for:
        "is OBJ on OBJ"
        "is OBJ in OBJ"

       jin             g76 g77 ~l0003
       print           "Yes, it is "
       test_attr       g77 #0a ~l0001
       print           "on"
       jump            l0002
l0001: print           "in"
l0002: print           " the "
       print_obj       g77
       print_ret       "."
l0003: print_ret       "No, it isn't."

Routine r0133, 0 locals ()
    Action routine for:
        "kick OBJ"

       call            r0242 s166 -> sp
       ret_popped      

Routine r0134, 0 locals ()
    Action routine for:
        "kiss OBJ"

       print_ret       "I'd sooner kiss a pig."

Routine r0135, 0 locals ()
    Action routine for:
        "knock on OBJ"
        "knock at OBJ"

       test_attr       g76 #17 ~l0001
       print_ret       "Nobody's home."
l0001: print           "Why knock on a "
       print_obj       g76
       print_ret       "?"

Routine r0136, 0 locals ()
    Action routine for:
        "flip off OBJ"
        "hide out OBJ"
        "douse OBJ"
        "blow out OBJ"

       test_attr       g76 #1f ?~l0003
       test_attr       g76 #14 l0001
       print_ret       "It is already off."
l0001: clear_attr      g76 #14
       jz              g42 l0002
       call            r0063 g00 -> g42
l0002: print           "The "
       print_obj       g76
       print           " is now off."
       new_line        
       jz              g42 ~rtrue
       print           "It is now pitch black."
       new_line        
       rtrue           
l0003: print_ret       "You can't turn that off."

Routine r0137, 0 locals ()
    Action routine for:
        "flip on OBJ with OBJ"
        "flip on OBJ"
        "light OBJ"
        "activa OBJ"

       test_attr       g76 #1f ~l0002
       test_attr       g76 #14 ~l0001
       print_ret       "It is already on."
l0001: set_attr        g76 #14
       print           "The "
       print_obj       g76
       print           " is now on."
       new_line        
       jz              g42 ~rtrue
       call            r0063 g00 -> g42
       new_line        
       call            r0144 -> sp
       rtrue           
l0002: print_ret       "You can't turn that on."

Routine r0138, 0 locals ()
    Action routine for:
        "launch OBJ"

       test_attr       g76 #1b ~l0001
       print_ret       "You can't launch that by saying ~launch~!"
l0001: print_ret       "That's pretty weird."

Routine r0139, 0 locals ()
    Action routine for:
        "lean on OBJ"

       print_ret       "Getting tired?"

Routine r0140, 2 locals (0000, 0000)
    Action routine for:
        "go over OBJ"
        "dive off OBJ"
        "dive from OBJ"
        "dive in OBJ"
        "dive across OBJ"
        "dive over OBJ"
        "dive"

       jz              g76 l0003
       jin             g76 g00 ~l0002
       test_attr       g76 #1e ~l0001
       print           "The "
       print_obj       g76
       print_ret       " is too big to jump over."
l0001: call            r0190 -> sp
       ret_popped      
l0002: print_ret       "That would be a good trick."
l0003: get_prop_addr   g00 #16 -> local0
       jz              local0 ?l0007
       get_prop_len    local0 -> local1
       je              local1 #02 l0004
       je              local1 #04 ~l0005
       loadb           local0 #01 -> sp
       load            [sp] -> sp
       jz              sp ~l0005
l0004: print           "This was not a very safe place to try jumping."
       new_line        
       call            r0004 g44 -> sp
       call            r0431 sp -> sp
       ret_popped      
l0005: je              g00 #58 ?~l0006
       print           "In a feat of unaccustomed daring, you manage to land on
your feet without killing yourself."
       new_line        
       new_line        
       call            r0247 #16 -> sp
       rtrue           
l0006: call            r0190 -> sp
       ret_popped      
l0007: call            r0190 -> sp
       ret_popped      

Routine r0141, 0 locals ()
    Action routine for:
        "leave"

       call            r0247 #14 -> sp
       ret_popped      

Routine r0142, 0 locals ()
    Action routine for:
        "listen for OBJ"
        "listen to OBJ"

       print           "The "
       print_obj       g76
       print_ret       " makes no sound."

Routine r0143, 0 locals ()
    Action routine for:
        "lock OBJ with OBJ"

       print_ret       "It doesn't seem to work."

Routine r0144, 0 locals ()
    Action routine for:
        "gaze down OBJ"
        "gaze up OBJ"
        "gaze around OBJ"
        "gaze"

       call            r0227 #01 -> sp
       jz              sp rfalse
       call            r0228 #01 -> sp
       ret_popped      

Routine r0145, 0 locals ()
    Action routine for:
        "gaze behind OBJ"

       print           "There is nothing behind the "
       print_obj       g76
       print_ret       "."

Routine r0146, 0 locals ()
    Action routine for:
        "gaze in OBJ"
        "gaze with OBJ"
        "descri on OBJ"
        "descri in OBJ"

       test_attr       g76 #17 ~l0003
       test_attr       g76 #0b ~l0001
       print           "The "
       print_obj       g76
       print           " is open, but I can't tell what's beyond it."
       jump            l0002
l0001: print           "The "
       print_obj       g76
       print           " is closed."
l0002: new_line        
       rtrue           
l0003: test_attr       g76 #13 ?~l0007
       test_attr       g76 #1e ~l0004
       print_ret       "There is nothing special to be seen."
l0004: call            r0233 g76 -> sp
       jz              sp l0006
       get_child       g76 -> sp ~l0005
       call            r0231 g76 -> sp
       jz              sp ~rtrue
l0005: print           "The "
       print_obj       g76
       print_ret       " is empty."
l0006: print           "The "
       print_obj       g76
       print_ret       " is closed."
l0007: print           "You can't look inside a "
       print_obj       g76
       print_ret       "."

Routine r0147, 0 locals ()
    Action routine for:
        "gaze on OBJ"

       test_attr       g76 #0a ~l0001
       call            r0026 #39 g76 -> sp
       rtrue           
l0001: print           "Look on a "
       print_obj       g76
       print_ret       "???"

Routine r0148, 0 locals ()
    Action routine for:
        "gaze under OBJ"

       print_ret       "There is nothing but dust there."

Routine r0149, 0 locals ()
    Action routine for:
        "lower OBJ"

       call            r0242 s170 -> sp
       ret_popped      

Routine r0150, 0 locals ()
    Action routine for:
        "make OBJ"

       print_ret       "You can't do that."

Routine r0151, 0 locals ()
    Action routine for:
        "liquif OBJ with OBJ"

       print           "It's not clear that a "
       print_obj       g76
       print_ret       " can be melted."

Routine r0152, 0 locals ()
    Pre-action routine for:
        "pull up OBJ"
        "pull on OBJ"
        "pull OBJ"
        "roll OBJ"
        "roll up OBJ"
        "move OBJ"

       call            r0252 g76 -> sp
       jz              sp rfalse
       print_ret       "You aren't an accomplished enough juggler."

Routine r0153, 0 locals ()
    Action routine for:
        "pull up OBJ"
        "pull on OBJ"
        "pull OBJ"
        "roll OBJ"
        "roll up OBJ"
        "move OBJ"

       test_attr       g76 #11 ~l0001
       print           "Moving the "
       print_obj       g76
       print_ret       " reveals nothing."
l0001: print           "You can't move the "
       print_obj       g76
       print_ret       "."

Routine r0154, 0 locals ()
    Action routine for:
        "mumble"

       print_ret       "You'll have to speak up if you expect me to hear you!"

Routine r0155, 0 locals ()
    Pre-action routine for:
        "punctu OBJ with OBJ"
        "poke OBJ with OBJ"
        "block down OBJ with OBJ"
        "block OBJ with OBJ"

       call            r0013 -> sp
       jz              sp ~rtrue
       jz              g77 l0001
       test_attr       g77 #1d rfalse
l0001: print           "Trying to destroy the "
       print_obj       g76
       print           " with "
       jz              g77 ~l0002
       print           "your bare hands"
       jump            l0003
l0002: print           "a "
       print_obj       g77
l0003: print_ret       " is futile."

Routine r0156, 0 locals ()
    Action routine for:
        "punctu OBJ with OBJ"
        "poke OBJ with OBJ"
        "block down OBJ with OBJ"
        "block OBJ with OBJ"

       test_attr       g76 #1e ~l0001
       call            r0026 #13 g76 -> sp
       rtrue           
l0001: print_ret       "Nice try."

Routine r0157, 0 locals ()
    Action routine for:
        "odysse"

       je              g00 #b9 ?~l0001
       jin             "cyclops" g00 ?~l0001
       jz              g95 ?~l0001
       call            r0023 #649f -> sp
       storew          sp #00 #00
       store           g95 #01
       print           "The cyclops, hearing the name of his father's deadly
nemesis, flees the room by knocking down the wall on the east of the room."
       new_line        
       store           g8f #01
       clear_attr      "cyclops" #02
       call            r0116 #ba -> sp
       ret_popped      
l0001: print_ret       "Wasn't he a sailor?"

Routine r0158, 0 locals ()
    Action routine for:
        "grease OBJ with OBJ"

       print_ret       "You probably put spinach in your gas tank, too."

Routine r0159, 2 locals (0000, 0000)
    Action routine for:
        "open OBJ with OBJ"
        "open up OBJ"
        "open OBJ"
        "block in OBJ"

       test_attr       g76 #13 ?~l0005
       get_prop        g76 #0a -> sp
       jz              sp ?l0005
       test_attr       g76 #0b ~l0001
       print_ret       "It is already open."
l0001: set_attr        g76 #0b
       set_attr        g76 #03
       get_child       g76 -> sp ~l0002
       test_attr       g76 #0c ~l0003
l0002: print_ret       "Opened."
l0003: get_child       g76 -> local0 ~l0004
       get_sibling     local0 -> sp l0004
       test_attr       local0 #03 l0004
       get_prop        local0 #0e -> local1
       jz              local1 l0004
       print           "The "
       print_obj       g76
       print           " opens."
       new_line        
       print_paddr     local1
       new_line        
       rtrue           
l0004: print           "Opening the "
       print_obj       g76
       print           " reveals "
       call            r0230 g76 -> sp
       print_ret       "."
l0005: test_attr       g76 #17 ~l0007
       test_attr       g76 #0b ~l0006
       print_ret       "It is already open."
l0006: print           "The "
       print_obj       g76
       print           " opens."
       new_line        
       set_attr        g76 #0b
       rtrue           
l0007: print           "You must tell me how to do that to a "
       print_obj       g76
       print_ret       "."

Routine r0160, 1 local (0000)
    Action routine for:
        "chuck OBJ OBJ"

       je              g77 #f8 ~l0002
       get_parent      g6f -> local0
       test_attr       local0 #1b ~l0001
       get_parent      local0 -> sp
       insert_obj      g76 sp
       print           "Ahoy -- "
       print_obj       g76
       print_ret       " overboard!"
l0001: print_ret       "You're not in anything!"
l0002: print_ret       "Huh?"

Routine r0161, 0 locals ()
    Action routine for:
        "pick OBJ with OBJ"
        "pick OBJ"

       print_ret       "You can't pick that."

Routine r0162, 0 locals ()
    Action routine for:
        "play OBJ"

       print_ret       "That's silly!"

Routine r0163, 0 locals ()
    Action routine for:
        "fix OBJ with OBJ"

       print_ret       "This has no effect."

Routine r0164, 0 locals ()
    Action routine for:
        "pour OBJ on OBJ"

       je              g76 #ed ?~l0002
       call            r0116 g76 -> sp
       test_attr       g77 #19 ~l0001
       test_attr       g77 #14 ~l0001
       print           "The "
       print_obj       g77
       print           " is extinguished."
       new_line        
       clear_attr      g77 #14
       clear_attr      g77 #19
       rtrue           
l0001: print           "The water spills over the "
       print_obj       g77
       print_ret       ", to the floor, and evaporates."
l0002: je              g76 #62 ~l0003
       call            r0026 #12 #62 g77 -> sp
       ret_popped      
l0003: print_ret       "You can't pour that."

Routine r0165, 0 locals ()
    Action routine for:
        "pray"

       je              g00 #d4 ~l0001
       call            r0244 #4e -> sp
       ret_popped      
l0001: print_ret       "If you pray enough, your prayers may be answered."

Routine r0166, 0 locals ()
    Action routine for:
        "pump up OBJ with OBJ"
        "pump up OBJ"

       jz              g77 l0001
       je              g77 #ad l0001
       print           "Pump it up with a "
       print_obj       g77
       print_ret       "?"
l0001: jin             "hand-held air pump" g6f ~l0002
       call            r0026 #17 g76 #ad -> sp
       ret_popped      
l0002: print_ret       "It's really not clear how."

Routine r0167, 0 locals ()
    Action routine for:
        "press on OBJ"
        "press OBJ"

       call            r0242 s171 -> sp
       ret_popped      

Routine r0168, 0 locals ()
    Action routine for:
        "slide OBJ to OBJ"
        "slide OBJ OBJ"
        "press OBJ to OBJ"
        "press OBJ OBJ"

       print_ret       "You can't push things to that."

Routine r0169, 0 locals ()
    Pre-action routine for:
        "chuck OBJ in OBJ"
        "squeez OBJ on OBJ"
        "hide OBJ in OBJ"
        "move OBJ in OBJ"
        "drop OBJ in OBJ"
        "drop OBJ down OBJ"
        "apply OBJ to OBJ"
        "chuck OBJ on OBJ"
        "hide OBJ on OBJ"
        "drop OBJ on OBJ"

       call            r0013 -> sp
       jz              sp ~rfalse
       call            r0126 -> sp
       ret_popped      

Routine r0170, 1 local (0000)
    Action routine for:
        "chuck OBJ in OBJ"
        "squeez OBJ on OBJ"
        "hide OBJ in OBJ"
        "move OBJ in OBJ"
        "drop OBJ in OBJ"
        "drop OBJ down OBJ"
        "apply OBJ to OBJ"

       test_attr       g77 #0b l0003
       test_attr       g77 #17 l0001
       test_attr       g77 #13 l0003
l0001: test_attr       g77 #1b ~l0002
       jump            l0003
l0002: print_ret       "You can't do that."
l0003: test_attr       g77 #0b l0004
       print           "The "
       print_obj       g77
       print           " isn't open."
       new_line        
       call            r0255 g77 -> sp
       ret_popped      
l0004: je              g77 g76 ~l0005
       print_ret       "How can you do that?"
l0005: jin             g76 g77 ~l0006
       print           "The "
       print_obj       g76
       print           " is already in the "
       print_obj       g77
       print_ret       "."
l0006: call            r0241 g77 -> local0
       call            r0241 g76 -> sp
       add             local0 sp -> local0
       get_prop        g77 #0f -> sp
       sub             local0 sp -> local0
       get_prop        g77 #0a -> sp
       jg              local0 sp ~l0007
       print_ret       "There's no room."
l0007: call            r0252 g76 -> sp
       jz              sp ~l0008
       test_attr       g76 #0d ~l0008
       print           "You don't have the "
       print_obj       g76
       print_ret       "."
l0008: call            r0252 g76 -> sp
       jz              sp ~l0009
       call            r0238 -> sp
       jz              sp rtrue
l0009: insert_obj      g76 g77
       set_attr        g76 #03
       call            r0235 g76 -> sp
       print_ret       "Done."

Routine r0171, 0 locals ()
    Action routine for:
        "hide OBJ behind OBJ"

       print_ret       "That hiding place is too obvious."

Routine r0172, 0 locals ()
    Action routine for:
        "chuck OBJ on OBJ"
        "hide OBJ on OBJ"
        "drop OBJ on OBJ"

       je              g77 #08 ~l0001
       call            r0026 #31 g76 -> sp
       rtrue           
l0001: test_attr       g77 #0a ~l0002
       call            r0170 -> sp
       ret_popped      
l0002: print           "There's no good surface on the "
       print_obj       g77
       print_ret       "."

Routine r0173, 0 locals ()
    Action routine for:
        "slide OBJ under OBJ"
        "hide OBJ under OBJ"
        "press OBJ under OBJ"

       print_ret       "You can't do that."

Routine r0174, 0 locals ()
    Action routine for:
        "lift up OBJ"
        "lift OBJ"

       call            r0149 -> sp
       ret_popped      

Routine r0175, 0 locals ()
    Action routine for:
        "molest OBJ"

       print_ret       "What a (ahem!) strange idea."

Routine r0176, 0 locals ()
    Pre-action routine for:
        "read OBJ with OBJ"
        "read from OBJ"
        "read OBJ"
        "gaze at OBJ with OBJ"

       jz              g42 ~l0001
       print_ret       "It is impossible to read in the dark."
l0001: jz              g77 rfalse
       test_attr       g77 #0c rfalse
       print           "How does one look through a "
       print_obj       g77
       print_ret       "?"

Routine r0177, 0 locals ()
    Action routine for:
        "read OBJ with OBJ"
        "read from OBJ"
        "read OBJ"
        "gaze at OBJ with OBJ"

       test_attr       g76 #10 l0001
       print           "How does one read a "
       print_obj       g76
       print_ret       "?"
l0001: get_prop        g76 #08 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0178, 0 locals ()
    Action routine for:
        "read OBJ OBJ"

       call            r0026 #53 g76 -> sp
       rtrue           

Routine r0179, 0 locals ()
    Action routine for:
        "repent"

       print_ret       "It could very well be too late!"

Routine r0180, 0 locals ()
    Action routine for:
        "answer OBJ"

       print           "It is hardly likely that the "
       print_obj       g76
       print           " is interested."
       new_line        
       store           g6c #00
       store           g60 #00
       rtrue           

Routine r0181, 0 locals ()
    Action routine for:
        "peal OBJ with OBJ"
        "peal OBJ"

       print_ret       "How, exactly, can you ring that?"

Routine r0182, 0 locals ()
    Action routine for:
        "feel OBJ with OBJ"
        "feel OBJ"

       call            r0242 s172 -> sp
       ret_popped      

Routine r0183, 1 local (0000)
    Action routine for:
        "say"

       jz              g6c ~l0001
       print_ret       "Say what?"
l0001: store           g60 #00
       rtrue           

orphan code fragment:

       call            r0250 g00 #1e -> local0
       jz              local0 l0002
       print           "You must address the "
       print_obj       local0
       print           " directly."
       new_line        
       store           g60 #00
       store           g6c #00
       ret             g6c
l0002: loadw           g6e g6c -> sp
       je              sp "hello" ~l0003
       store           g60 #00
       rtrue           
l0003: store           g60 #00
       store           g6c #00
       print_ret       "Talking to yourself is a sign of impending mental
collapse."

Routine r0184, 0 locals ()
    Action routine for:
        "search in OBJ"
        "search OBJ"

       print_ret       "You find nothing unusual."

Routine r0185, 0 locals ()
    Action routine for:
        "send for OBJ"

       test_attr       g76 #1e ~l0001
       print           "Why would you send for the "
       print_obj       g76
       print_ret       "?"
l0001: print_ret       "That doesn't make sends."

Routine r0186, 0 locals ()
    Pre-action routine for:
        "hand OBJ OBJ"
        "donate OBJ OBJ"

       call            r0026 #3f g77 g76 -> sp
       rtrue           

Routine r0187, 0 locals ()
    Action routine for:
        "hand OBJ OBJ"
        "donate OBJ OBJ"

       print_ret       "Foo!"

Routine r0188, 0 locals ()
    Action routine for:
        "shake OBJ"

       test_attr       g76 #1e ~l0001
       print_ret       "This seems to have no effect."
l0001: test_attr       g76 #11 l0002
       print_ret       "You can't take it; thus, you can't shake it!"
l0002: test_attr       g76 #13 ?~l0008
       test_attr       g76 #0b ?~l0006
       get_child       g76 -> sp ~l0005
       call            r0189 -> sp
       print           "The contents of the "
       print_obj       g76
       print           " spills "
       test_attr       g00 #06 l0003
       print           "out and disappears"
       jump            l0004
l0003: print           "to the ground"
l0004: print_ret       "."
l0005: print_ret       "Shaken."
l0006: get_child       g76 -> sp ~l0007
       print           "It sounds like there is something inside the "
       print_obj       g76
       print_ret       "."
l0007: print           "The "
       print_obj       g76
       print_ret       " sounds empty."
l0008: print_ret       "Shaken."

Routine r0189, 1 local (0000)

l0001: get_child       g76 -> local0 ~rtrue
       set_attr        local0 #03
       je              g00 #58 ~l0002
       push            #4b
       jump            l0004
l0002: test_attr       g00 #06 l0003
       push            #0d
       jump            l0004
l0003: push            g00
l0004: insert_obj      local0 sp
       jump            l0001

Routine r0190, 0 locals ()
    Action routine for:
        "hop"

       call            r0004 g43 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0191, 0 locals ()
    Action routine for:
        "smell OBJ"

       print           "It smells like a "
       print_obj       g76
       print_ret       "."

Routine r0192, 0 locals ()
    Action routine for:
        "spin OBJ"

       print_ret       "You can't spin that!"

Routine r0193, 0 locals ()
    Action routine for:
        "spray OBJ on OBJ"

       call            r0194 -> sp
       ret_popped      

Routine r0194, 0 locals ()
    Action routine for:
        "squeez OBJ"

       test_attr       g76 #1e ~l0001
       print           "The "
       print_obj       g76
       print           " does not understand this."
       jump            l0002
l0001: print           "How singularly useless."
l0002: new_line        
       rtrue           

Routine r0195, 0 locals ()
    Action routine for:
        "spray OBJ with OBJ"

       call            r0026 #77 g77 g76 -> sp
       ret_popped      

Routine r0196, 1 local (0000)
    Action routine for:
        "stab OBJ"

       call            r0413 g6f -> local0
       jz              local0 l0001
       call            r0026 #13 g76 local0 -> sp
       rtrue           
l0001: print           "No doubt you propose to stab the "
       print_obj       g76
       print_ret       " with your pinky?"

Routine r0197, 0 locals ()
    Action routine for:
        "carry up OBJ"
        "stand up OBJ"
        "stand"

       get_parent      g6f -> sp
       test_attr       sp #1b ~l0001
       get_parent      g6f -> sp
       call            r0026 #2d sp -> sp
       rtrue           
l0001: print_ret       "You are already standing, I think."

Routine r0198, 0 locals ()
    Action routine for:
        "stay"

       print_ret       "You will be lost without me!"

Routine r0199, 0 locals ()
    Action routine for:
        "strike OBJ"

       test_attr       g76 #1e ?~l0001
       print           "Since you aren't versed in hand-to-hand combat, you'd
better attack the "
       print_obj       g76
       print_ret       " with a weapon."
l0001: call            r0026 #0e g76 -> sp
       rtrue           

Routine r0200, 0 locals ()
    Action routine for:
        "bathe in OBJ"
        "bathe"

       call            r0249 #ee g00 -> sp
       jz              sp l0003
       print           "Swimming isn't usually allowed in the "
       jz              g76 l0001
       print_obj       g76
       print           "."
       jump            l0002
l0001: print           "dungeon."
l0002: new_line        
       rtrue           
l0003: call            r0013 -> sp
       jz              sp ~rfalse
       print_ret       "Go jump in a lake!"

Routine r0201, 0 locals ()
    Action routine for:
        "swing OBJ at OBJ"
        "swing OBJ"

       jz              g77 ~l0001
       print_ret       "Whoosh!"
l0001: call            r0026 #13 g77 g76 -> sp
       ret_popped      

Routine r0202, 0 locals ()
    Pre-action routine for:
        "carry OBJ from OBJ"
        "carry OBJ off OBJ"
        "carry OBJ out OBJ"
        "carry OBJ"
        "pick up OBJ"

       jin             g76 g6f ~l0002
       test_attr       g76 #00 ~l0001
       print_ret       "You are already wearing it."
l0001: print_ret       "You already have that!"
l0002: get_parent      g76 -> sp
       test_attr       sp #13 ~l0003
       get_parent      g76 -> sp
       test_attr       sp #0b l0003
       print_ret       "You can't reach something that's inside a closed
container."
l0003: jz              g77 l0006
       je              g77 #08 ~l0004
       store           g77 #00
       rfalse          
l0004: get_parent      g76 -> sp
       je              g77 sp l0005
       print           "The "
       print_obj       g76
       print           " isn't in the "
       print_obj       g77
       print_ret       "."
l0005: store           g77 #00
       rfalse          
l0006: get_parent      g6f -> sp
       je              g76 sp ~rfalse
       print_ret       "You're inside of it!"

Routine r0203, 0 locals ()
    Action routine for:
        "carry OBJ from OBJ"
        "carry OBJ off OBJ"
        "carry OBJ out OBJ"
        "carry OBJ"
        "pick up OBJ"

       call            r0238 -> sp
       je              sp #01 ~rfalse
       test_attr       g76 #00 ~l0001
       print           "You are now wearing the "
       print_obj       g76
       print_ret       "."
l0001: print_ret       "Taken."

Routine r0204, 0 locals ()
    Action routine for:
        "ask OBJ"
        "talk to OBJ"

       test_attr       g76 #1e ?~l0002
       jz              g6c l0001
       store           g6f g76
       get_parent      g6f -> g00
       ret             g00
l0001: print           "The "
       print_obj       g76
       print_ret       " pauses for a moment, perhaps thinking that you should
re-read the manual."
l0002: print           "You can't talk to the "
       print_obj       g76
       print           "!"
       new_line        
       store           g60 #00
       store           g6c #00
       ret             #02

Routine r0205, 2 locals (0000, 0000)
    Action routine for:
        "go on OBJ"
        "go with OBJ"
        "go in OBJ"
        "enter OBJ"
        "climb with OBJ"

       test_attr       g76 #17 ~l0001
       call            r0253 g76 -> sp
       call            r0247 sp -> sp
       rtrue           
l0001: jz              local0 ~l0002
       test_attr       g76 #1b ~l0002
       call            r0026 #19 g76 -> sp
       rtrue           
l0002: jz              local0 ?~l0003
       test_attr       g76 #11 ?l0003
       call            r0013 -> sp
       jz              sp ~rtrue
       call            r0013 -> sp
       jz              sp ~rtrue
       call            r0013 -> sp
       jz              sp ~rtrue
       call            r0013 -> sp
       jz              sp ~rtrue
       print           "You hit your head against the "
       print_obj       g76
       print_ret       " as you attempt this feat."
l0003: jz              local0 l0004
       print_ret       "You can't do that!"
l0004: jin             g76 g6f ~l0005
       print_ret       "That would involve quite a contortion!"
l0005: call            r0004 g35 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0206, 0 locals ()
    Action routine for:
        "chuck OBJ with OBJ"
        "chuck OBJ at OBJ"

       call            r0239 -> sp
       jz              sp rfalse
       je              g77 #05 ~l0001
       print           "A terrific throw! The "
       print_obj       g76
       call            r0431 s177 -> sp
       ret_popped      
l0001: test_attr       g77 #1e ~l0002
       print           "The "
       print_obj       g77
       print           " ducks as the "
       print_obj       g76
       print_ret       " flies by and crashes to the ground."
l0002: print_ret       "Thrown."

Routine r0207, 0 locals ()
    Action routine for:
        "chuck OBJ over OBJ"
        "chuck OBJ off OBJ"

       print_ret       "You can't throw anything off of that!"

Routine r0208, 0 locals ()
    Action routine for:
        "attach OBJ to OBJ"

       je              g77 g6f ~l0001
       print_ret       "You can't tie anything to yourself."
l0001: print           "You can't tie the "
       print_obj       g76
       print_ret       " to that."

Routine r0209, 0 locals ()
    Action routine for:
        "attach up OBJ with OBJ"

       print_ret       "You could certainly never tie it with that!"

Routine r0210, 0 locals ()
    Action routine for:
        "temple"

       je              g00 #dc ~l0001
       call            r0244 #be -> sp
       ret_popped      
l0001: je              g00 #be ~l0002
       call            r0244 #dc -> sp
       ret_popped      
l0002: print_ret       "Nothing happens."

Routine r0211, 0 locals ()
    Pre-action routine for:
        "flip OBJ for OBJ"
        "flip OBJ to OBJ"
        "flip OBJ with OBJ"
        "press OBJ with OBJ"
        "move OBJ with OBJ"

       test_attr       g76 #0f rfalse
       print_ret       "You can't turn that!"

Routine r0212, 0 locals ()
    Action routine for:
        "flip OBJ for OBJ"
        "flip OBJ to OBJ"
        "flip OBJ with OBJ"
        "press OBJ with OBJ"
        "move OBJ with OBJ"

       print_ret       "This has no effect."

Routine r0213, 0 locals ()
    Action routine for:
        "unlock OBJ with OBJ"

       call            r0143 -> sp
       ret_popped      

Routine r0214, 0 locals ()
    Action routine for:
        "free OBJ from OBJ"
        "free OBJ"

       print_ret       "This cannot be tied, so it cannot be untied!"

Routine r0215, 1 local (0003)
    Action routine for:
        "wait"

       print           "Time passes..."
       new_line        
l0001: dec_chk         local0 #00 ~l0002
       jump            l0003
l0002: call            r0024 -> sp
       jz              sp ?l0001
l0003: store           g81 #01
       ret             g81

Routine r0216, 5 locals (0000, 0000, 0000, 0000, 0000)
    Action routine for:
        "go away OBJ"
        "go OBJ"

       jz              g5f ~l0001
       call            r0026 #8a g76 -> sp
       rtrue           
l0001: get_prop_addr   g00 g76 -> local0
       jz              local0 ?l0011
       get_prop_len    local0 -> local1
       je              local1 #01 ~l0002
       loadb           local0 #00 -> sp
       call            r0244 sp -> sp
       ret_popped      
l0002: je              local1 #02 ~l0003
       loadw           local0 #00 -> sp
       print_paddr     sp
       new_line        
       ret             #02
l0003: je              local1 #03 ~l0005
       loadw           local0 #00 -> sp
       call            sp -> local4
       jz              local4 l0004
       call            r0244 local4 -> sp
       ret_popped      
l0004: call            r0013 -> sp
       jz              sp ~rfalse
       ret             #02
l0005: je              local1 #04 ~l0008
       loadb           local0 #01 -> sp
       load            [sp] -> sp
       jz              sp l0006
       loadb           local0 #00 -> sp
       call            r0244 sp -> sp
       ret_popped      
l0006: loadw           local0 #01 -> local2
       jz              local2 l0007
       print_paddr     local2
       new_line        
       ret             #02
l0007: print           "You can't go that way."
       new_line        
       ret             #02
l0008: je              local1 #05 ~rfalse
       loadb           local0 #01 -> local3
       test_attr       local3 #0b ~l0009
       loadb           local0 #00 -> sp
       call            r0244 sp -> sp
       ret_popped      
l0009: loadw           local0 #01 -> local2
       jz              local2 l0010
       print_paddr     local2
       new_line        
       ret             #02
l0010: print           "The "
       print_obj       local3
       print           " is closed."
       new_line        
       call            r0255 local3 -> sp
       ret             #02
l0011: jz              g42 ?~l0013
       random          #64 -> sp
       jg              #50 sp ?~l0013
       test_attr       g00 #04 ?l0013
       jz              g41 l0012
       print           "There are odd noises in the darkness, and there is no
exit in that direction."
       new_line        
       ret             #02
l0012: call            r0013 -> sp
       jz              sp ~rfalse
       call            r0431 s178 -> sp
       ret_popped      
l0013: print           "You can't go that way."
       new_line        
       ret             #02

Routine r0217, 0 locals ()
    Action routine for:
        "go around OBJ"

       print_ret       "Use compass directions for movement."

Routine r0218, 0 locals ()
    Action routine for:
        "go to OBJ"

       jin             g76 g00 l0001
       call            r0249 g76 g00 -> sp
       jz              sp l0002
l0001: print_ret       "It's here!"
l0002: print_ret       "You should supply a direction!"

Routine r0219, 0 locals ()
    Action routine for:
        "brandi OBJ at OBJ"
        "brandi OBJ"

       call            r0242 s179 -> sp
       ret_popped      

Routine r0220, 0 locals ()
    Action routine for:
        "wear OBJ"
        "hide on OBJ"

       test_attr       g76 #00 l0001
       print           "You can't wear the "
       print_obj       g76
       print_ret       "."
l0001: call            r0026 #5d g76 -> sp
       rtrue           

Routine r0221, 0 locals ()
    Action routine for:
        "win"

       print_ret       "Naturally!"

Routine r0222, 0 locals ()
    Action routine for:
        "wind up OBJ"
        "wind OBJ"

       print           "You cannot wind up a "
       print_obj       g76
       print_ret       "."

Routine r0223, 0 locals ()
    Action routine for:
        "wish"

       print_ret       "With luck, your wish will come true."

Routine r0224, 0 locals ()
    Action routine for:
        "scream"

       print_ret       "Aaaarrrrgggghhhh!"

Routine r0225, 0 locals ()
    Action routine for:
        "zork"

       print_ret       "At your service!"

Routine r0226, 0 locals ()

       call            r0227 -> sp
       jz              sp rfalse
       jz              g46 ~rfalse
       call            r0228 -> sp
       ret_popped      

Routine r0227, 4 locals (0000, 0000, 0000, 0000)

       jz              local0 l0001
       push            local0
       jump            l0002
l0001: push            g47
l0002: pull            local1
       jz              g42 ~l0004
       print           "It is pitch black."
       jz              g41 ~l0003
       print           " You are likely to be eaten by a grue."
l0003: new_line        
       call            r0013 -> sp
       ret             #00
l0004: test_attr       g00 #03 l0005
       set_attr        g00 #03
       store           local1 #01
l0005: test_attr       g00 #05 ~l0006
       clear_attr      g00 #03
l0006: jin             g00 #52 ~l0008
       print_obj       g00
       get_parent      g6f -> local3
       test_attr       local3 #1b ~l0007
       print           ", in the "
       print_obj       local3
l0007: new_line        
l0008: jz              local0 ~l0009
       jz              g46 ~rtrue
l0009: get_parent      g6f -> local3
       jz              local1 l0010
       get_prop        g00 #11 -> sp
       call            sp #03 -> sp
       jz              sp ~rtrue
l0010: jz              local1 l0011
       get_prop        g00 #0b -> local2
       jz              local2 l0011
       print_paddr     local2
       new_line        
       jump            l0012
l0011: get_prop        g00 #11 -> sp
       call            sp #04 -> sp
l0012: je              g00 local3 rtrue
       test_attr       local3 #1b ~rtrue
       get_prop        local3 #11 -> sp
       call            sp #03 -> sp
       rtrue           

Routine r0228, 1 local (0000)

       jz              g42 l0003
       get_child       g00 -> sp ~rfalse
       jz              local0 l0001
       push            local0
       jump            l0002
l0001: push            g47
l0002: pull            local0
       call            r0231 g00 local0 #ffff -> sp
       ret_popped      
l0003: print_ret       "Only bats can see in the dark. And you're not one."

Routine r0229, 5 locals (0000, 0000, 0000, 0000, 0000)

       store           g40 local0
       jz              local2 ~l0001
       get_prop        local0 #09 -> sp
       call            sp #05 -> sp
       jz              sp ~rtrue
l0001: jz              local2 ~l0004
       test_attr       local0 #03 l0002
       get_prop        local0 #0e -> local3
       jz              local3 ~l0003
l0002: get_prop        local0 #0b -> local3
       jz              local3 l0004
l0003: print_paddr     local3
       jump            l0008
l0004: jz              local2 ~l0006
       print           "There is a "
       print_obj       local0
       print           " here"
       test_attr       local0 #14 ~l0005
       print           " (providing light)"
l0005: print           "."
       jump            l0008
l0006: loadw           g39 local2 -> sp
       print_paddr     sp
       print           "A "
       print_obj       local0
       test_attr       local0 #14 ~l0007
       print           " (providing light)"
       jump            l0008
l0007: test_attr       local0 #00 ~l0008
       print           " (being worn)"
l0008: call            r0013 -> sp
       jz              local2 ~l0009
       get_parent      g6f -> local4
       jz              local4 l0009
       test_attr       local4 #1b ~l0009
       print           " (outside the "
       print_obj       local4
       print           ")"
l0009: new_line        
       call            r0233 local0 -> sp
       jz              sp rfalse
       get_child       local0 -> sp ~rfalse
       call            r0231 local0 local1 local2 -> sp
       ret_popped      

Routine r0230, 6 locals (0000, 0000, 0000, 0001, 0000, 0000)

       get_child       local0 -> local1 ~rfalse
l0001: get_sibling     local1 -> local2 l0002
l0002: jz              local3 l0003
       store           local3 #00
       jump            l0004
l0003: print           ", "
       jz              local2 ~l0004
       print           "and "
l0004: print           "a "
       print_obj       local1
       jz              local4 ~l0005
       jz              local5 ~l0005
       store           local4 local1
       jump            l0006
l0005: store           local5 #01
       store           local4 #00
l0006: store           local1 local2
       jz              local1 ?~l0001
       jz              local4 rtrue
       jz              local5 ~rtrue
       call            r0255 local4 -> sp
       rtrue           

Routine r0231, 10 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000)

       get_child       local0 -> local3 ~rtrue
       get_parent      g6f -> local6
       jz              local6 l0001
       test_attr       local6 #1b ~l0001
       jump            l0002
l0001: store           local6 #00
l0002: store           local4 #01
       store           local5 #01
       get_parent      local0 -> sp
       je              g6f local0 sp ~l0003
       store           local9 #01
       jump            l0010
l0003: jz              local3 ~l0004
       jump            l0010
l0004: je              local3 local6 ~l0005
       store           local8 #01
       jump            l0008
l0005: je              local3 g6f ~l0006
       jump            l0008
l0006: test_attr       local3 #07 ?l0008
       test_attr       local3 #03 l0008
       get_prop        local3 #0e -> local7
       jz              local7 l0008
       test_attr       local3 #0e l0007
       print_paddr     local7
       new_line        
       store           local5 #00
l0007: call            r0233 local3 -> sp
       jz              sp l0008
       get_parent      local3 -> sp
       get_prop        sp #09 -> sp
       jz              sp ~l0008
       get_child       local3 -> sp ~l0008
       call            r0231 local3 local1 #00 -> sp
       jz              sp l0008
       store           local4 #00
l0008: get_sibling     local3 -> local3 l0009
l0009: jump            l0003
l0010: get_child       local0 -> local3 l0011
l0011: jz              local3 ~l0012
       jz              local8 ?l0021
       jz              local6 ?l0021
       get_child       local6 -> sp ?~l0021
       inc             local2
       call            r0231 local6 local1 local2 -> sp
       jump            l0021
l0012: je              local3 local6 #04 ~l0013
       jump            l0019
l0013: test_attr       local3 #07 ?l0019
       jz              local9 ~l0014
       test_attr       local3 #03 l0014
       get_prop        local3 #0e -> sp
       jz              sp ?~l0019
l0014: test_attr       local3 #0e l0018
       jz              local4 l0016
       call            r0232 local0 local2 -> sp
       jz              sp l0015
       jl              local2 #00 ~l0015
       store           local2 #00
l0015: inc             local2
       store           local4 #00
l0016: jl              local2 #00 ~l0017
       store           local2 #00
l0017: call            r0229 local3 local1 local2 -> sp
       jump            l0019
l0018: get_child       local3 -> sp ~l0019
       call            r0233 local3 -> sp
       jz              sp l0019
       inc             local2
       call            r0231 local3 local1 local2 -> sp
l0019: get_sibling     local3 -> local3 l0020
l0020: jump            l0011
l0021: jz              local4 rtrue
       jz              local5 rtrue
       rfalse          

Routine r0232, 2 locals (0000, 0000)

       je              local0 #c2 ~l0001
       print_ret       "Your collection of treasures consists of:"
l0001: je              local0 g6f ~l0002
       print_ret       "You are carrying:"
l0002: jin             local0 #52 rfalse
       jg              local1 #00 ~l0003
       loadw           g39 local1 -> sp
       print_paddr     sp
l0003: test_attr       local0 #0a ~l0004
       print           "Sitting on the "
       print_obj       local0
       print_ret       " is: "
l0004: test_attr       local0 #1e ~l0005
       print           "The "
       print_obj       local0
       print_ret       " is holding: "
l0005: print           "The "
       print_obj       local0
       print_ret       " contains:"

Routine r0233, 1 local (0000)

       test_attr       local0 #07 rfalse
       test_attr       local0 #0c rtrue
       test_attr       local0 #0b rtrue
       rfalse          

Routine r0234, 1 local (0000)

       add             g3f local0 -> g3f
       add             g01 local0 -> g01
       je              g01 #015e ~rtrue
       jz              g8c ~rtrue
       store           g8c #01
       clear_attr      "ancient map" #07
       clear_attr      "West of House" #03
       print_ret       "An almost inaudible voice whispers in your ear, ~Look
to your treasures for the final secret.~"

Routine r0235, 2 locals (0000, 0000)

       get_prop        local0 #0d -> local1
       jg              local1 #00 ~rfalse
       call            r0234 local1 -> sp
       put_prop        local0 #0d #00
       rtrue           

Routine r0236, 0 locals ()

       call            r0430 -> sp
       quit            

Routine r0237, 0 locals ()

       print           ">"
       read            g6d g6e
       loadw           g6e #01 -> sp
       je              sp "yes" "y" ~rfalse
       rtrue           

Routine r0238, 4 locals (0001, 0000, 0000, 0000)

       jz              g3e l0001
       jz              local0 rfalse
       print           "Your hand passes through its object."
       new_line        
       rfalse          
l0001: test_attr       g76 #11 l0002
       jz              local0 rfalse
       call            r0004 g35 -> sp
       print_paddr     sp
       new_line        
       rfalse          
l0002: call            r0013 -> sp
       jz              sp ~rfalse
       get_parent      g76 -> sp
       test_attr       sp #13 ~l0003
       get_parent      g76 -> sp
       test_attr       sp #0b ~rfalse
l0003: get_parent      g76 -> sp
       jin             sp g6f ?l0007
       call            r0241 g76 -> local3
       call            r0241 g6f -> sp
       add             local3 sp -> sp
       jg              sp g85 ~l0007
       jz              local0 l0006
       print           "Your load is too heavy"
       jl              g85 g86 ~l0004
       print           ", especially in light of your condition."
       jump            l0005
l0004: print           "."
l0005: new_line        
l0006: ret             #02
l0007: je              g78 #5d ~l0008
       call            r0240 g6f -> local1
       jg              local1 g3b ~l0008
       mul             local1 g3a -> local3
       random          #64 -> sp
       jg              local3 sp ~l0008
       print           "You're holding too many things already!"
       new_line        
       rfalse          
l0008: insert_obj      g76 g6f
       set_attr        g76 #03
       call            r0013 -> sp
       call            r0235 g76 -> sp
       rtrue           

Routine r0239, 0 locals ()

       jin             g76 g6f l0001
       get_parent      g76 -> sp
       jin             sp g6f l0001
       print           "You're not carrying the "
       print_obj       g76
       print           "."
       new_line        
       rfalse          
l0001: jin             g76 g6f l0002
       get_parent      g76 -> sp
       test_attr       sp #0b l0002
       print           "The "
       print_obj       g76
       print           " is closed."
       new_line        
       rfalse          
l0002: get_parent      g6f -> sp
       insert_obj      g76 sp
       rtrue           

Routine r0240, 3 locals (0000, 0000, 0000)

       get_child       local0 -> local2 ~l0003
l0001: test_attr       local2 #00 l0002
       inc             local1
l0002: get_sibling     local2 -> local2 ?l0001
l0003: ret             local1

Routine r0241, 3 locals (0000, 0000, 0000)

       get_child       local0 -> local1 ~l0004
l0001: je              local0 g80 ~l0002
       test_attr       local1 #00 ~l0002
       inc             local2
       jump            l0003
l0002: call            r0241 local1 -> sp
       add             local2 sp -> local2
l0003: get_sibling     local1 -> local1 ?l0001
l0004: get_prop        local0 #0f -> sp
       add             local2 sp -> sp
       ret_popped      

Routine r0242, 1 local (0000)

       jin             g76 #f7 ~l0001
       je              g78 #54 #69 #8c ~l0001
       print           "The "
       print_obj       g76
       print_ret       " isn't here!"
l0001: print_paddr     local0
       print_obj       g76
       call            r0004 g38 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0243, 2 locals (0000, 0000)

       jz              local0 l0001
       print           "You can't go there in a "
       print_obj       local1
       print           "."
       jump            l0002
l0001: print           "You can't go there without a vehicle."
l0002: new_line        
       rtrue           

Routine r0244, 6 locals (0000, 0001, 0000, 0000, 0000, 0000)

       test_attr       local0 #06 l0001
       push            #00
       jump            l0002
l0001: push            #01
l0002: store           local2 sp
       get_parent      g6f -> local3
       store           local5 g42
       test_attr       local3 #1b ~l0003
       get_prop        local3 #06 -> local4
l0003: jz              local2 ~l0004
       jz              local4 ~l0004
       call            r0243 local4 local3 -> sp
       rfalse          
l0004: jz              local2 ~l0005
       test_attr       local0 local4 l0005
       call            r0243 local4 local3 -> sp
       rfalse          
l0005: test_attr       g00 #06 ~l0006
       jz              local2 l0006
       jz              local4 l0006
       je              local4 #06 l0006
       test_attr       local0 local4 l0006
       call            r0243 local4 local3 -> sp
       rfalse          
l0006: test_attr       local0 #12 ~l0007
       get_prop        local0 #0b -> sp
       print_paddr     sp
       new_line        
       rfalse          
l0007: jz              local2 l0008
       test_attr       g00 #06 l0008
       jz              g3e ~l0008
       test_attr       local3 #1b ~l0008
       print           "The "
       print_obj       local3
       print           " comes to a rest on the shore."
       new_line        
       new_line        
l0008: jz              local4 l0009
       insert_obj      local3 local0
       jump            l0010
l0009: insert_obj      g6f local0
l0010: store           g00 local0
       call            r0063 g00 -> g42
       jz              local5 ?~l0014
       jz              g42 ?~l0014
       random          #64 -> sp
       jg              #50 sp ?~l0014
       jz              g41 l0011
       print           "There are sinister gurgling noises in the darkness all
around you!"
       new_line        
       jump            l0014
l0011: call            r0013 -> sp
       jz              sp ~rfalse
       print           "Oh, no! A lurking grue slithered into the "
       get_parent      g6f -> sp
       test_attr       sp #1b ~l0012
       get_parent      g6f -> sp
       print_obj       sp
       jump            l0013
l0012: print           "room"
l0013: call            r0431 s188 -> sp
       rtrue           
l0014: jz              g42 ~l0015
       je              g6f #04 ~l0015
       print           "You have moved into a dark place."
       new_line        
       store           g6c #00
l0015: get_prop        g00 #11 -> sp
       call            sp #02 -> sp
       call            r0235 local0 -> sp
       je              g00 local0 ~rtrue
       je              #04 g6f l0016
       print           "The "
       print_obj       g6f
       print_ret       " leaves the room."
l0016: jz              local1 rtrue
       call            r0226 -> sp
       rtrue           

Routine r0245, 2 locals (0000, 0000)

       call            r0246 g00 local0 -> local1
       jz              local1 rfalse
       call            r0244 local1 -> sp
       jz              sp ~rtrue
       ret             #02

Routine r0246, 4 locals (0000, 0000, 0000, 0000)

       loadw           local1 #00 -> local3
l0001: inc_chk         local2 local3 rfalse
       loadw           local1 local2 -> sp
       je              sp local0 ?~l0001
       je              local2 local3 rfalse
       add             local2 #01 -> sp
       loadw           local1 sp -> sp
       ret             sp

Routine r0247, 1 local (0000)

       store           g5f local0
       call            r0026 #89 local0 -> sp
       ret_popped      

Routine r0248, 4 locals (0000, 0000, 0000, 0000)

       get_prop_addr   local0 #12 -> local2
       get_prop_len    local2 -> sp
       div             sp #02 -> sp
       sub             sp #01 -> sp
       call            r0061 local1 local2 sp -> sp
       ret_popped      

Routine r0249, 3 locals (0000, 0000, 0000)

       get_prop_addr   local1 #05 -> local2
       jz              local2 rfalse
       get_prop_len    local2 -> sp
       sub             sp #01 -> sp
       call            r0062 local0 local2 sp -> sp
       ret_popped      

Routine r0250, 3 locals (0000, 0000, 0000)

       get_child       local0 -> local2 l0001
l0001: jz              local2 rfalse
l0002: test_attr       local2 local1 ~l0003
       je              local2 #04 l0003
       ret             local2
l0003: get_sibling     local2 -> local2 ?l0002
       rfalse          

Routine r0251, 1 local (0000)

       jin             local0 g00 rtrue
       call            r0249 local0 g00 -> sp
       ret_popped      

Routine r0252, 1 local (0000)

l0001: get_parent      local0 -> local0
       jz              local0 rfalse
       je              local0 g6f ?~l0001
       rtrue           

Routine r0253, 3 locals (0000, 0000, 0000)

l0001: get_next_prop   g00 local1 -> local1
       jl              local1 g98 rfalse
       get_prop_addr   g00 local1 -> local2
       get_prop_len    local2 -> sp
       je              sp #05 ?~l0001
       loadb           local2 #01 -> sp
       je              sp local0 ?~l0001
       ret             local1

Routine r0254, 2 locals (0000, 0000)

       set_attr        local0 #12
       put_prop        local0 #0b local1
       rtrue           

Routine r0255, 1 local (0000)

       store           g6b local0
       store           g6a g00
       ret             g6a

Routine r0256, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "You are standing in an open field west of a white
house, with a boarded front door."
       jz              g8c l0001
       print           " A secret path leads southwest into the forest."
l0001: new_line        
       rtrue           

Routine r0257, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "You are behind the white house. A path leads into the
forest to the east. In one corner of the house there is a small window which is
"
       test_attr       "kitchen window" #0b ~l0001
       print           "open."
       jump            l0002
l0001: print           "slightly ajar."
l0002: new_line        
       rtrue           

Routine r0258, 3 locals (0000, 0000, 0000)

       je              g78 #2b ~l0003
       test_attr       local0 #0b ~l0001
       call            r0004 g34 -> sp
       print_paddr     sp
       jump            l0002
l0001: print_paddr     local1
       set_attr        local0 #0b
l0002: new_line        
       rtrue           
l0003: je              g78 #23 ~rfalse
       test_attr       local0 #0b ~l0004
       print_paddr     local2
       clear_attr      local0 #0b
       jump            l0005
l0004: call            r0004 g34 -> sp
       print_paddr     sp
l0005: new_line        
       rtrue           

Routine r0259, 0 locals ()

       je              g78 #38 #5d ~rfalse
       print_ret       "The boards are securely fastened."

Routine r0260, 0 locals ()

       je              g78 #1a ~rfalse
       je              g76 #f8 ~rfalse
       je              g77 #62 ~l0001
       jin             g77 g6f ~l0001
       call            r0431 s201 -> sp
       ret_popped      
l0001: jz              g77 ~l0002
       print_ret       "Dental hygiene is highly recommended, but I'm not sure
what you want to brush them with."
l0002: print           "A nice idea, but with a "
       print_obj       g77
       print_ret       "?"

Routine r0261, 0 locals ()

       je              g00 #dc ~l0001
       je              g78 #3c ~rfalse
       print_ret       "The west wall is solid granite here."
l0001: je              g00 #be ~l0002
       je              g78 #3c ~rfalse
       print_ret       "The east wall is solid granite here."
l0002: je              g00 #0f ~l0004
       je              g78 #53 #3c ~l0003
       print_ret       "It only SAYS ~Granite Wall~."
l0003: print_ret       "The wall isn't granite."
l0004: print_ret       "There is no granite wall here."

Routine r0262, 0 locals ()

       je              g78 #5d #3c ~l0001
       print_ret       "The songbird is not here but is probably nearby."
l0001: je              g78 #4d ~l0002
       print_ret       "You can't hear the songbird now."
l0002: je              g78 #3d ~l0003
       print_ret       "It can't be followed."
l0003: print_ret       "You can't see any songbird here."

Routine r0263, 0 locals ()

       je              g00 #cb #c1 #c9 ~l0002
       je              g78 #3c ~l0001
       print_ret       "Why not find your brains?"
l0001: je              g78 #8b ~rfalse
       call            r0245 g88 -> sp
       rtrue           
l0002: je              g00 #4f #b4 ?l0005
       je              g00 #51 #50 ?l0005
       je              g78 #3c ~l0004
       je              g00 #4a ~l0003
       print_ret       "It seems to be to the west."
l0003: print_ret       "It was here just a minute ago...."
l0004: print_ret       "You're not at the house."
l0005: je              g78 #3c ~l0006
       print_ret       "It's right here! Are you blind or something?"
l0006: je              g78 #8b ~l0007
       call            r0245 g8a -> sp
       rtrue           
l0007: je              g78 #38 ?~l0008
       print_ret       "The house is a beautiful colonial house which is
painted white. It is clear that the owners must have been extremely wealthy."
l0008: je              g78 #2b #22 ~l0011
       je              g00 #4f ~l0010
       test_attr       "kitchen window" #0b ~l0009
       call            r0244 #cb -> sp
       ret_popped      
l0009: print           "The window is closed."
       new_line        
       call            r0255 #eb -> sp
       ret_popped      
l0010: print_ret       "I can't see how to get in from here."
l0011: je              g78 #1c ~rfalse
       print_ret       "You must be joking."

Routine r0264, 0 locals ()

       je              g78 #8b ~l0001
       call            r0245 g89 -> sp
       ret_popped      
l0001: je              g78 #2d ~l0002
       print_ret       "You will have to specify a direction."
l0002: je              g78 #3c ~l0003
       print_ret       "You cannot see the forest for the trees."
l0003: je              g78 #4d ~rfalse
       print_ret       "The pines and the hemlocks seem to be murmuring."

Routine r0265, 0 locals ()

       je              g78 #20 #1f #1e ~rfalse
       print_ret       "Don't you believe me? The mountains are impassable!"

Routine r0266, 3 locals (0000, 0000, 0000)

       je              g78 #40 rfalse
       je              g78 #22 ~l0001
       call            r0004 g37 -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0001: je              g78 #3b ~l0002
       store           local1 g77
       store           g78 #12
       store           g77 g76
       store           g76 local1
       store           local2 #00
       jump            l0005
l0002: je              g76 #ee l0003
       je              g76 #ed ~l0004
l0003: store           local1 g76
       store           local2 #00
       jump            l0005
l0004: store           local1 g77
       jz              local1 l0005
       store           local2 #01
l0005: je              local1 #ee ~l0006
       store           local1 #ed
       je              g78 #12 #5d ~l0006
       call            r0116 local1 -> sp
l0006: jz              local2 l0007
       store           g77 local1
       jump            l0008
l0007: store           g76 local1
l0008: get_parent      g6f -> local0
       test_attr       local0 #1b l0009
       store           local0 #00
l0009: je              g78 #12 #5d ?~l0017
       jz              local2 ?~l0017
       jz              local0 l0011
       je              local0 g77 l0010
       jz              g77 ~l0011
       jin             local1 local0 l0011
l0010: print           "There is now a puddle in the bottom of the "
       print_obj       local0
       print           "."
       new_line        
       call            r0116 g76 -> sp
       insert_obj      g76 local0
       rtrue           
l0011: jz              g77 l0012
       je              g77 #ec l0012
       print           "The water leaks out of the "
       print_obj       g77
       print           " and evaporates immediately."
       new_line        
       call            r0116 local1 -> sp
       ret_popped      
l0012: jin             "glass bottle" g6f ?~l0015
       test_attr       "glass bottle" #0b l0013
       print           "The bottle is closed."
       new_line        
       call            r0255 #ec -> sp
       ret_popped      
l0013: get_child       "glass bottle" -> sp l0014
       insert_obj      "quantity of water" "glass bottle"
       print_ret       "The bottle is now full of water."
l0014: print_ret       "The water slips through your fingers."
l0015: jin             g76 "glass bottle" ~l0016
       je              g78 #5d ~l0016
       jz              g77 ~l0016
       print_ret       "It's in the bottle. Perhaps you should take that
instead."
l0016: print_ret       "The water slips through your fingers."
l0017: jz              local2 l0018
       print_ret       "Nice try."
l0018: je              g78 #3f #31 ?~l0020
       call            r0116 #ed -> sp
       jz              local0 l0019
       print           "There is now a puddle in the bottom of the "
       print_obj       local0
       print           "."
       new_line        
       insert_obj      "quantity of water" local0
       rtrue           
l0019: print           "The water spills to the floor and evaporates
immediately."
       new_line        
       call            r0116 #ed -> sp
       ret_popped      
l0020: je              g78 #7f ~rfalse
       print           "The water splashes on the walls and evaporates
immediately."
       new_line        
       call            r0116 #ed -> sp
       ret_popped      

Routine r0267, 0 locals ()

       je              g78 #23 #2b ~l0001
       store           g33 #01
       call            r0258 #eb s202 s203 -> sp
       ret_popped      
l0001: je              g78 #38 ~l0002
       jz              g33 ~l0002
       print_ret       "The window is slightly ajar, but not enough to allow
entry."
l0002: je              g78 #22 #19 #89 ~l0004
       je              g00 #cb ~l0003
       call            r0247 #1e -> sp
       rtrue           
l0003: call            r0247 #1d -> sp
       rtrue           
l0004: je              g78 #39 ~rfalse
       print           "You can see "
       je              g00 #cb ~l0005
       print_ret       "a clear area leading towards a forest."
l0005: print_ret       "what appears to be a kitchen."

Routine r0268, 0 locals ()

       je              g78 #6f ~l0001
       print           "The spirits jeer loudly and ignore you."
       new_line        
       store           g6c #00
       ret             g6c
l0001: je              g78 #3a ~l0002
       print_ret       "Only the ceremony itself has any effect."
l0002: je              g78 #2a #13 ~l0003
       je              g76 #e9 ~l0003
       print_ret       "How can you attack a spirit with material objects?"
l0003: print_ret       "You seem unable to interact with these spirits."

Routine r0269, 0 locals ()

       je              g78 #69 ~l0002
       jz              g32 l0001
       call            r0004 g34 -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0001: insert_obj      "basket" "Shaft Room"
       insert_obj      "basket" "Drafty Room"
       store           g32 #01
       call            r0255 #e3 -> sp
       print_ret       "The basket is raised to the top of the shaft."
l0002: je              g78 #54 ?~l0004
       jz              g32 ~l0003
       call            r0004 g34 -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0003: insert_obj      "basket" "Drafty Room"
       insert_obj      "basket" "Shaft Room"
       call            r0255 #e5 -> sp
       print           "The basket is lowered to the bottom of the shaft."
       new_line        
       store           g32 #00
       jz              g42 rtrue
       call            r0063 g00 -> g42
       jz              g42 ~rtrue
       print           "It is now pitch black."
       new_line        
       rtrue           
l0004: je              g76 #e5 l0005
       je              g77 #e5 ~l0006
l0005: print_ret       "The basket is at the other end of the chain."
l0006: je              g78 #5d ~rfalse
       je              g76 #e3 #e5 ~rfalse
       print_ret       "The cage is securely fastened to the iron chain."

Routine r0270, 0 locals ()

       je              g78 #6f ~l0001
       call            r0272 #06 -> sp
       store           g6c #00
       ret             g6c
l0001: je              g78 #2a #13 #5d ~rfalse
       get_parent      "clove of garlic" -> sp
       je              sp g6f g00 ~l0002
       print_ret       "You can't reach him; he's on the ceiling."
l0002: call            r0271 -> sp
       ret_popped      

Routine r0271, 0 locals ()

       call            r0272 #04 -> sp
       new_line        
       print           "The bat grabs you by the scruff of your neck and lifts
you away...."
       new_line        
       new_line        
       call            r0004 g31 -> sp
       call            r0244 sp #00 -> sp
       call            r0226 -> sp
       rtrue           

Routine r0272, 1 local (0000)

l0001: dec_chk         local0 #01 ~l0002
       jump            l0003
l0002: print           "    Fweep!"
       new_line        
       jump            l0001
l0003: new_line        
       rtrue           

Routine r0273, 0 locals ()

       je              g78 #6d ~rfalse
       je              g00 #5a7f ~l0001
       jz              g91 rfalse
l0001: print_ret       "Ding, dong."

Routine r0274, 0 locals ()

       je              g78 #5d ~l0001
       print_ret       "The bell is very hot and cannot be taken."
l0001: je              g78 #6e l0002
       je              g78 #6d ?~l0005
       jz              g77 ?l0005
l0002: test_attr       g77 #1a ~l0003
       print           "The "
       print_obj       g77
       print           " burns and is consumed."
       new_line        
       call            r0116 g77 -> sp
       ret_popped      
l0003: je              g77 #01 ~l0004
       print_ret       "The bell is too hot to touch."
l0004: print_ret       "The heat from the bell is too intense."
l0005: je              g78 #61 ~l0006
       call            r0116 g76 -> sp
       print           "The water cools the bell and is evaporated."
       new_line        
       call            r0022 #5c72 #00 -> sp
       call            r0313 -> sp
       ret_popped      
l0006: je              g78 #6d ~rfalse
       print_ret       "The bell is too hot to reach."

Routine r0275, 0 locals ()

       je              g78 #2b ~l0001
       print_ret       "The windows are boarded and can't be opened."
l0001: je              g78 #2a ~rfalse
       print_ret       "You can't break the windows open."

Routine r0276, 0 locals ()

       je              g78 #5d ~rfalse
       print_ret       "The nails, deeply imbedded in the door, cannot be
removed."

Routine r0277, 0 locals ()

       je              g78 #22 ~rfalse
       print_ret       "You can't fit through the crack."

Routine r0278, 1 local (0000)

       je              local0 #03 ?~l0002
       print           "You are in the kitchen of the white house. A table
seems to have been used recently for the preparation of food. A passage leads
to the west and a dark staircase can be seen leading upward. A dark chimney
leads down and to the east is a small window which is "
       test_attr       "kitchen window" #0b ~l0001
       print_ret       "open."
l0001: print_ret       "slightly ajar."
l0002: je              local0 #01 ~rfalse
       je              g78 #1e ~l0003
       je              g76 #49 ~l0003
       call            r0247 #17 -> sp
       ret_popped      
l0003: je              g78 #1e ~rfalse
       je              g76 #49 ~rfalse
       print_ret       "There are no stairs leading down."

Routine r0279, 1 local (0000)

       je              local0 #01 ~rfalse
       je              g78 #36 l0002
       je              g78 #89 ~l0001
       je              g76 #1d #15 l0002
l0001: je              g78 #22 ~rfalse
       je              g76 #b1 ~rfalse
l0002: print           "Inside the Barrow^As you enter the barrow, the door
closes inexorably behind you. Around you it is dark, but ahead is an enormous
cavern, brightly lit. Through its center runs a wide stream. Spanning the
stream is a small wooden footbridge, and beyond a path leads into a dark
tunnel. Above the bridge, floating in the air, is a large sign. It reads:  All
ye who stand before this bridge have completed a great and perilous adventure
which has tested your wit and courage. You have mastered"
       loadb           #00 #01 -> sp
       and             sp #08 -> sp
       jz              sp ?~l0003
       print           " the first part of the ZORK trilogy. Those who pass
over this bridge must be prepared to undertake an even greater adventure that
will severely test your skill and bravery!^^The ZORK trilogy continues with
~ZORK II: The Wizard of Frobozz~ and is completed in ~ZORK III: The Dungeon
Master.~"
       new_line        
       jump            l0004
l0003: print           " ZORK: The Great Underground Empire.^"
       new_line        
l0004: call            r0071 #00 -> sp
       ret_popped      

Routine r0280, 0 locals ()

       je              g78 #23 #2b ~rfalse
       print_ret       "The door is too heavy."

Routine r0281, 0 locals ()

       je              g78 #22 ~rfalse
       call            r0247 #1d -> sp
       ret_popped      

Routine r0282, 0 locals ()

       je              g78 #5d ~rfalse
       je              g76 #c2 ~rfalse
       print_ret       "The trophy case is securely fastened to the wall."

Routine r0283, 3 locals (0000, 0000, 0000)

       je              local0 #03 ?~l0007
       print           "You are in the living room. There is a doorway to the
east"
       jz              g8f ?l0001
       print           ". To the west is a cyclops-shaped opening in an old
wooden door, above which is some strange gothic lettering, "
       jump            l0002
l0001: print           ", a wooden door with strange gothic lettering to the
west, which appears to be nailed shut, "
l0002: print           "a trophy case, "
       store           local1 g30
       jz              local1 l0003
       test_attr       "trap door" #0b ~l0003
       print           "and a rug lying beside an open trap door."
       jump            l0006
l0003: jz              local1 l0004
       print           "and a closed trap door at your feet."
       jump            l0006
l0004: test_attr       "trap door" #0b ~l0005
       print           "and an open trap door at your feet."
       jump            l0006
l0005: print           "and a large oriental rug in the center of the room."
l0006: new_line        
       rtrue           
l0007: je              local0 #06 ~rfalse
       je              g78 #5d l0008
       je              g78 #12 ~rfalse
       je              g77 #c2 ~rfalse
l0008: jin             g76 "trophy case" ~l0009
       call            r0284 g76 -> sp
l0009: call            r0285 -> sp
       add             g3f sp -> g01
       call            r0234 #00 -> sp
       rfalse          

Routine r0284, 2 locals (0000, 0000)

       get_child       local0 -> local1 l0001
l0001: jz              local1 rtrue
       set_attr        local1 #03
       get_child       local1 -> sp ~l0002
       call            r0284 local1 -> sp
l0002: get_sibling     local1 -> local1 l0003
l0003: jump            l0001

Routine r0285, 3 locals (00c2, 0000, 0000)

       get_child       local0 -> local1 l0001
l0001: jz              local1 ~l0002
       ret             local2
l0002: get_prop        local1 #0c -> sp
       add             local2 sp -> local2
       get_child       local1 -> sp ~l0003
       call            r0285 local1 -> sp
l0003: get_sibling     local1 -> local1 l0004
l0004: jump            l0001

Routine r0286, 0 locals ()

       je              g78 #69 ~l0001
       call            r0026 #2b #b7 -> sp
       rtrue           
l0001: je              g78 #23 #2b ~l0002
       je              g00 #c1 ~l0002
       call            r0258 g76 s204 s205 -> sp
       ret_popped      
l0002: je              g78 #51 ~l0004
       je              g00 #c1 ~l0004
       test_attr       "trap door" #0b ~l0003
       print_ret       "You see a rickety staircase descending into darkness."
l0003: print_ret       "It's closed."
l0004: je              g00 #48 ~rfalse
       je              g78 #85 #2b ~l0005
       test_attr       "trap door" #0b l0005
       print_ret       "The door is locked from above."
l0005: je              g78 #23 ~l0006
       test_attr       "trap door" #0b l0006
       clear_attr      "trap door" #03
       clear_attr      "trap door" #0b
       print_ret       "The door closes and locks."
l0006: je              g78 #23 #2b ~rfalse
       call            r0004 g34 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0287, 1 local (0000)

       je              local0 #03 ?~l0001
       print_ret       "You are in a dark and damp cellar with a narrow
passageway leading north, and a crawlway to the south. On the west is the
bottom of a steep metal ramp which is unclimbable."
l0001: je              local0 #02 ~rfalse
       test_attr       "trap door" #0b ~rfalse
       test_attr       "trap door" #03 rfalse
       clear_attr      "trap door" #0b
       set_attr        "trap door" #03
       print           "The trap door crashes shut, and you hear someone
barring it."
       new_line        
       new_line        
       rtrue           

Routine r0288, 0 locals ()

       je              g78 #38 ~rfalse
       print           "The chimney leads "
       je              g00 #cb ~l0001
       print           "down"
       jump            l0002
l0001: print           "up"
l0002: print_ret       "ward, and looks climbable."

Routine r0289, 1 local (0000)

       get_child       g6f -> local0 l0001
       print           "Going up empty-handed is a bad idea."
       new_line        
       rfalse          
l0001: get_sibling     local0 -> local0 ~l0002
       get_sibling     local0 -> sp l0004
l0002: jin             "brass lantern" g6f ~l0004
       test_attr       "trap door" #0b l0003
       clear_attr      "trap door" #03
       ret             #cb
l0003: ret             #cb
l0004: print           "You can't get up there with what you're carrying."
       new_line        
       rfalse          

Routine r0290, 0 locals ()

       jz              g30 l0002
       test_attr       "trap door" #0b ~l0001
       ret             #48
l0001: print           "The trap door is closed."
       new_line        
       call            r0255 #b7 -> sp
       rfalse          
l0002: print           "You can't go that way."
       new_line        
       rfalse          

Routine r0291, 0 locals ()

       je              g78 #69 ?~l0002
       print           "The rug is too heavy to lift"
       jz              g30 l0001
       print_ret       "."
l0001: print_ret       ", but in trying to take it you have noticed an
irregularity beneath it."
l0002: je              g78 #65 #58 ?~l0004
       jz              g30 l0003
       print_ret       "Having moved the carpet previously, you find it
impossible to move it again."
l0003: print           "With a great effort, the rug is moved to one side of
the room, revealing the dusty cover of a closed trap door."
       new_line        
       clear_attr      "trap door" #07
       call            r0255 #b7 -> sp
       store           g30 #01
       ret             g30
l0004: je              g78 #5d ~l0005
       print_ret       "The rug is extremely heavy and cannot be carried."
l0005: je              g78 #51 ?~l0006
       jz              g30 ?~l0006
       test_attr       "trap door" #0b ?l0006
       print_ret       "Underneath the rug is a closed trap door. As you drop
the corner of the rug, the trap door is once again concealed from view."
l0006: je              g78 #21 ~rfalse
       jz              g30 ?~l0007
       test_attr       "trap door" #0b ?l0007
       print_ret       "As you sit, you notice an irregularity underneath it.
Rather than be uncomfortable, you stand up again."
l0007: print_ret       "I suppose you think it's a magic carpet?"

Routine r0292, 0 locals ()

       jz              g8d ~rfalse
       call            r0294 #da #d9 -> sp
       ret_popped      

Routine r0293, 0 locals ()

       call            r0294 #71 #72 -> sp
       ret_popped      

Routine r0294, 2 locals (0000, 0000)

       jin             local1 g00 ~rfalse
       je              g78 #5d ~rfalse
       jin             local0 local1 ~l0001
       print           "The "
       print_obj       local1
       print_ret       " swings it out of your reach."
l0001: print           "The "
       print_obj       local0
       print           " seems white-hot. You can't hold on to it."
       new_line        
       rtrue           

Routine r0295, 1 local (0000)

       je              g78 #6f ~l0001
       print           "The troll isn't much of a conversationalist."
       new_line        
       store           g6c #00
       ret             g6c
l0001: je              local0 #01 ?~l0003
       jin             "bloody axe" "troll" rfalse
       jin             "bloody axe" g00 ?~l0002
       call            r0002 #4b -> sp
       jz              sp ?l0002
       set_attr        "bloody axe" #0e
       clear_attr      "bloody axe" #1d
       insert_obj      "bloody axe" "troll"
       put_prop        "troll" #0b s206
       jin             "troll" g00 ~rtrue
       print_ret       "The troll, angered and humiliated, recovers his weapon.
He appears to have an axe to grind with you."
l0002: jin             "troll" g00 ~rfalse
       put_prop        "troll" #0b s207
       print           "The troll, disarmed, cowers in terror, pleading for his
life in the guttural tongue of the trolls."
       new_line        
       rtrue           
l0003: je              local0 #02 ~l0005
       jin             "bloody axe" "troll" ~l0004
       insert_obj      "bloody axe" g00
       clear_attr      "bloody axe" #0e
       set_attr        "bloody axe" #1d
l0004: store           g8d #01
       ret             g8d
l0005: je              local0 #03 ~l0007
       clear_attr      "troll" #02
       jin             "bloody axe" "troll" ~l0006
       insert_obj      "bloody axe" g00
       clear_attr      "bloody axe" #0e
       set_attr        "bloody axe" #1d
l0006: put_prop        "troll" #0b s208
       store           g8d #01
       ret             g8d
l0007: je              local0 #04 ?~l0012
       jin             "troll" g00 ~l0008
       set_attr        "troll" #02
       print           "The troll stirs, quickly resuming a fighting stance."
       new_line        
l0008: jin             "bloody axe" "troll" ~l0009
       put_prop        "troll" #0b s209
       jump            l0011
l0009: jin             "bloody axe" "The Troll Room" ~l0010
       set_attr        "bloody axe" #0e
       clear_attr      "bloody axe" #1d
       insert_obj      "bloody axe" "troll"
       put_prop        "troll" #0b s209
       jump            l0011
l0010: put_prop        "troll" #0b s210
l0011: store           g8d #00
       ret             g8d
l0012: je              local0 #05 ~l0013
       random          #64 -> sp
       jg              #21 sp ~rfalse
       set_attr        "troll" #02
       store           g6c #00
       rtrue           
l0013: jz              local0 ~rfalse
       je              g78 #38 ~l0014
       get_prop        "troll" #0b -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0014: je              g78 #3f #7f ~l0015
       jz              g76 l0015
       je              g77 #d9 l0016
l0015: je              g78 #2a #58 #5d ?~l0025
l0016: call            r0421 #d9 -> sp
       je              g78 #3f #7f ?~l0023
       je              g76 #da ~l0017
       jin             "bloody axe" g6f ~l0017
       print           "The troll scratches his head in confusion, then takes
the axe."
       new_line        
       set_attr        "troll" #02
       insert_obj      "bloody axe" "troll"
       rtrue           
l0017: je              g76 #d9 #da ~l0018
       print           "You would have to get the "
       print_obj       g76
       print_ret       " first, and that seems unlikely."
l0018: je              g78 #7f ~l0019
       print           "The troll, who is remarkably coordinated, catches the "
       print_obj       g76
       jump            l0020
l0019: print           "The troll, who is not overly proud, graciously accepts
the gift"
l0020: random          #64 -> sp
       jg              #14 sp ?~l0021
       je              g76 #a9 #6e #da ?~l0021
       call            r0116 g76 -> sp
       print           " and eats it hungrily. Poor troll, he dies from an
internal hemorrhage and his carcass disappears in a sinister black fog."
       new_line        
       call            r0116 #d9 -> sp
       get_prop        "troll" #11 -> sp
       call            sp #02 -> sp
       store           g8d #01
       ret             g8d
l0021: je              g76 #a9 #6e #da ?~l0022
       insert_obj      g76 g00
       print           " and, being for the moment sated, throws it back.
Fortunately, the troll has poor control, and the "
       print_obj       g76
       print           " falls to the floor. He does not look pleased."
       new_line        
       set_attr        "troll" #02
       rtrue           
l0022: print           " and not having the most discriminating tastes,
gleefully eats it."
       new_line        
       call            r0116 g76 -> sp
       ret_popped      
l0023: je              g78 #58 #5d ~l0024
       print_ret       "The troll spits in your face, grunting ~Better luck
next time~ in a rather barbarous accent."
l0024: je              g78 #2a ~rfalse
       print_ret       "The troll laughs at your puny gesture."
l0025: je              g78 #4d ~l0026
       print_ret       "Every so often the troll says something, probably
uncomplimentary, in his guttural tongue."
l0026: jz              g8d rfalse
       je              g78 #42 ~rfalse
       print_ret       "Unfortunately, the troll can't hear you."

Routine r0296, 0 locals ()

       test_attr       "grating" #0b rfalse
       jz              g2e ~rfalse
       je              g78 #5d #58 ~l0001
       print           "In disturbing the pile of leaves, a grating is
revealed."
       new_line        
       jump            l0002
l0001: print           "With the leaves moved, a grating is revealed."
       new_line        
l0002: clear_attr      "grating" #07
       store           g2e #01
       rfalse          

Routine r0297, 0 locals ()

       je              g78 #25 ~l0001
       print_ret       "There are 69,105 leaves here."
l0001: je              g78 #1c ~l0003
       call            r0296 -> sp
       call            r0116 g76 -> sp
       jin             g76 g00 ~l0002
       print_ret       "The leaves burn."
l0002: call            r0431 s211 -> sp
       ret_popped      
l0003: je              g78 #27 ~l0004
       print           "You rustle the leaves around, making quite a mess."
       new_line        
       call            r0296 -> sp
       rtrue           
l0004: je              g78 #5d #58 ~l0006
       je              g78 #58 ~l0005
       print           "Done."
       new_line        
l0005: jz              g2e ~rfalse
       call            r0296 -> sp
       je              g78 #5d ~rtrue
       rfalse          
l0006: je              g78 #51 ~rfalse
       jz              g2e ~rfalse
       print_ret       "Underneath the pile of leaves is a grating. As you
release the leaves, the grating is once again concealed from view."

Routine r0298, 1 local (0000)

       je              local0 #02 ~l0001
       jz              g2e ~rfalse
       set_attr        "grating" #07
       rtrue           
l0001: je              local0 #03 ~rfalse
       print           "You are in a clearing, with a forest surrounding you on
all sides. A path leads south."
       test_attr       "grating" #0b ~l0002
       new_line        
       print           "There is an open grating, descending into darkness."
       jump            l0003
l0002: jz              g2e l0003
       new_line        
       print           "There is a grating securely fastened into the ground."
l0003: new_line        
       rtrue           

Routine r0299, 1 local (0000)

       je              local0 #02 ~l0001
       clear_attr      "grating" #07
       rtrue           
l0001: je              local0 #03 ~rfalse
       print           "You are in a small room near the maze. There are twisty
passages in the immediate vicinity."
       new_line        
       test_attr       "grating" #0b ~l0002
       print           "Above you is an open grating with sunlight pouring in."
       jump            l0004
l0002: jz              g2d l0003
       print           "Above you is a grating."
       jump            l0004
l0003: print           "Above you is a grating locked with a
skull-and-crossbones lock."
l0004: new_line        
       rtrue           

Routine r0300, 0 locals ()

       je              g78 #2b ~l0001
       je              g77 #7a ~l0001
       call            r0026 #85 #ae #7a -> sp
       rtrue           
l0001: je              g78 #4e ~l0003
       je              g00 #39 ~l0002
       store           g2d #00
       print_ret       "The grate is locked."
l0002: je              g00 #8f ~rfalse
       print_ret       "You can't lock it from this side."
l0003: je              g78 #85 ?~l0006
       je              g76 #ae ?~l0006
       je              g00 #39 ~l0004
       je              g77 #7a ~l0004
       store           g2d #01
       print_ret       "The grate is unlocked."
l0004: je              g00 #8f ~l0005
       je              g77 #7a ~l0005
       print_ret       "You can't reach the lock from here."
l0005: print           "Can you unlock a grating with a "
       print_obj       g77
       print_ret       "?"
l0006: je              g78 #5c ~l0007
       print_ret       "You can't pick the lock."
l0007: je              g78 #23 #2b ?~l0013
       jz              g2d ?l0012
       je              g00 #4a ~l0008
       push            s212
       jump            l0009
l0008: push            s213
l0009: call            r0258 #ae sp s090 -> sp
       test_attr       "grating" #0b ~l0011
       je              g00 #4a l0010
       jz              g2e ~l0010
       print           "A pile of leaves falls onto your head and to the
ground."
       new_line        
       store           g2e #01
       insert_obj      "pile of leaves" g00
l0010: set_attr        "Grating Room" #14
       rtrue           
l0011: clear_attr      "Grating Room" #14
       rtrue           
l0012: print_ret       "The grating is locked."
l0013: je              g78 #12 ~rfalse
       je              g77 #ae ~rfalse
       get_prop        g76 #0f -> sp
       jg              sp #14 ~l0014
       print_ret       "It won't fit through the grating."
l0014: insert_obj      g76 "Grating Room"
       print           "The "
       print_obj       g76
       print_ret       " goes through the grating into the darkness below."

Routine r0301, 0 locals ()

       print           "You won't be able to get back up to the tunnel you are
going through when it gets to the next room."
       new_line        
       new_line        
       je              g00 #45 ~l0001
       ret             #43
l0001: je              g00 #3f ~l0002
       ret             #42
l0002: je              g00 #3c ~l0003
       ret             #3a
l0003: je              g00 #38 ~rfalse
       ret             #a7

Routine r0302, 0 locals ()

       je              g78 #5d ?~l0001
       jin             "sword" g6f ~rfalse
       print           "As you touch the rusty knife, your sword gives a single
pulse of blinding blue light."
       new_line        
       rfalse          
l0001: je              g77 #80 ~l0002
       je              g78 #13 l0003
l0002: je              g78 #7e ~rfalse
       je              g76 #80 ~rfalse
       jz              g77 rfalse
l0003: call            r0116 #80 -> sp
       call            r0431 s214 -> sp
       ret_popped      

Routine r0303, 0 locals ()

       je              g78 #5d ~rfalse
       clear_attr      "table" #0e
       rfalse          

Routine r0304, 0 locals ()

       je              g78 #58 #6e #5d l0001
       je              g78 #54 #69 #65 l0001
       je              g78 #48 #46 #13 ~rfalse
l0001: print           "A ghost appears in the room and is appalled at your
desecration of the remains of a fellow adventurer. He casts a curse on your
valuables and banishes them to the Land of the Living Dead. The ghost leaves,
muttering obscenities."
       new_line        
       call            r0428 g00 #e6 #64 -> sp
       call            r0428 #04 #e6 -> sp
       rtrue           

Routine r0305, 0 locals ()

       je              g78 #38 ~l0001
       print_ret       "The torch is burning."
l0001: je              g78 #61 ~l0002
       je              g77 #68 ~l0002
       print_ret       "The water evaporates before it gets close."
l0002: je              g78 #16 ~rfalse
       test_attr       g76 #14 ~rfalse
       print_ret       "You nearly burn your hand trying to extinguish the
flame."

Routine r0306, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "You are in a large square room with tall ceilings. On
the south wall is an enormous mirror which fills the entire wall. There are
exits on the other three sides of the room."
       new_line        
       jz              g2c rfalse
       print_ret       "Unfortunately, the mirror has been destroyed by your
recklessness."

Routine r0307, 4 locals (0098, 0000, 0000, 0000)

       jz              g2c ?~l0011
       je              g78 #6e ?~l0011
       jz              g77 l0001
       je              g77 #01 l0001
       print           "You feel a faint tingling transmitted through the "
       print_obj       g77
       print_ret       "."
l0001: je              g00 local0 ~l0002
       store           local0 #96
l0002: get_child       g00 -> local1 l0003
l0003: get_child       local0 -> local2 l0004
l0004: jz              local1 ~l0005
       jump            l0007
l0005: get_sibling     local1 -> local3 l0006
l0006: insert_obj      local1 local0
       store           local1 local3
       jump            l0004
l0007: jz              local2 ~l0008
       jump            l0010
l0008: get_sibling     local2 -> local3 l0009
l0009: insert_obj      local2 g00
       store           local2 local3
       jump            l0007
l0010: call            r0244 local0 #00 -> sp
       print_ret       "There is a rumble from deep within the earth and the
room shakes."
l0011: je              g78 #38 #39 ~l0014
       jz              g2c l0012
       print           "The mirror is broken into many pieces."
       jump            l0013
l0012: print           "There is an ugly person staring back at you."
l0013: new_line        
       rtrue           
l0014: je              g78 #5d ~l0015
       print_ret       "The mirror is many times your size. Give up."
l0015: je              g78 #13 #7f #2a ~rfalse
       jz              g2c l0016
       print_ret       "Haven't you done enough damage already?"
l0016: store           g2c #01
       store           g3c #00
       print_ret       "You have broken the mirror. I hope you have a seven
years' supply of good luck handy."

Routine r0308, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "This is a large room with a prominent doorway leading
to a down staircase. Above you is a large dome. Up around the edge of the dome
(20 feet up) is a wooden railing. In the center of the room sits a white marble
pedestal."
       new_line        
       jz              g93 rfalse
       print_ret       "A piece of rope descends from the railing above, ending
some five feet above your head."

Routine r0309, 1 local (0000)

       je              local0 #03 ?~l0001
       print           "You are at the periphery of a large dome, which forms
the ceiling of another room below. Protecting you from a precipitous drop is a
wooden railing which circles the dome."
       new_line        
       jz              g93 rfalse
       print_ret       "Hanging down from the railing is a rope which ends
about ten feet from the floor below."
l0001: je              local0 #02 ~rfalse
       jz              g3e ?l0002
       print           "As you enter the dome you feel a strong pull as if from
a wind drawing you over the railing and down."
       new_line        
       insert_obj      g6f "Torch Room"
       store           g00 #69
       rtrue           
l0002: je              g78 #45 ~rfalse
       call            r0431 s215 -> sp
       ret_popped      

Routine r0310, 1 local (0000)

       je              local0 #03 ?~l0001
       print           "You are outside a large gateway, on which is
inscribed^^  Abandon every hope all ye who enter here!^^The gate is open;
through it you can see a desolation, with a pile of mangled bodies in one
corner. Thousands of voices, lamenting some hideous fate, can be heard."
       new_line        
       jz              g91 ~rfalse
       jz              g3e ~rfalse
       print_ret       "The way through the gate is barred by evil spirits, who
jeer at your attempts to pass."
l0001: je              local0 #01 ?~l0006
       je              g78 #3a ~l0003
       jz              g91 ~rfalse
       jin             "brass bell" g6f ~l0002
       jin             "black book" g6f ~l0002
       jin             "pair of candles" g6f ~l0002
       print_ret       "You must perform the ceremony."
l0002: print_ret       "You aren't equipped for an exorcism."
l0003: jz              g91 ?~l0005
       je              g78 #6d ?~l0005
       je              g76 #dd ?~l0005
       store           g2a #01
       call            r0116 #dd -> sp
       call            r0255 #db -> sp
       insert_obj      "red hot brass bell" g00
       print           "The bell suddenly becomes red hot and falls to the
ground. The wraiths, as if paralyzed, stop their jeering and slowly turn to
face you. On their ashen faces, the expression of a long-forgotten terror takes
shape."
       new_line        
       jin             "pair of candles" g6f ~l0004
       print           "In your confusion, the candles drop to the ground (and
they are out)."
       new_line        
       insert_obj      "pair of candles" g00
       clear_attr      "pair of candles" #14
       call            r0023 #6f6a -> sp
       storew          sp #00 #00
l0004: call            r0022 #5c3e #06 -> sp
       storew          sp #00 #01
       call            r0022 #5c72 #14 -> sp
       storew          sp #00 #01
       rtrue           
l0005: jz              g29 rfalse
       je              g78 #53 ~rfalse
       je              g76 #d3 ~rfalse
       jz              g91 ~rfalse
       print           "Each word of the prayer reverberates through the hall
in a deafening confusion. As the last word fades, a voice, loud and commanding,
speaks: ~Begone, fiends!~ A heart-stopping scream fills the cavern, and the
spirits, sensing a greater power, flee through the walls."
       new_line        
       call            r0116 #e9 -> sp
       store           g91 #01
       call            r0023 #5c6d -> sp
       storew          sp #00 #00
       rtrue           
l0006: je              local0 #06 ~rfalse
       jz              g2a rfalse
       jin             "pair of candles" g6f ~rfalse
       test_attr       "pair of candles" #14 ~rfalse
       jz              g29 ~rfalse
       store           g29 #01
       print           "The flames flicker wildly and appear to dance. The
earth beneath your feet trembles, and your legs nearly buckle beneath you. The
spirits cower at your unearthly power."
       new_line        
       call            r0023 #5c3e -> sp
       storew          sp #00 #00
       call            r0022 #5c6d #03 -> sp
       storew          sp #00 #01
       rtrue           

Routine r0311, 0 locals ()

       jz              g29 ?~l0001
       je              g00 #e8 ?~l0001
       print           "The tension of this ceremony is broken, and the
wraiths, amused but shaken at your clumsy attempt, resume their hideous
jeering."
       new_line        
l0001: store           g2a #00
       ret             g2a

Routine r0312, 0 locals ()

       store           g29 #00
       call            r0311 -> sp
       ret_popped      

Routine r0313, 0 locals ()

       call            r0116 #db -> sp
       insert_obj      "brass bell" "Entrance to Hades"
       je              g00 #e8 ~rfalse
       print_ret       "The bell appears to have cooled down."

Routine r0314, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "You are standing on the top of the Flood Control Dam
#3, which was quite a tourist attraction in times far distant. There are paths
to the north, south, and west, and a scramble down."
       new_line        
       jz              g90 ?l0001
       jz              g27 ?l0001
       print           "The water level behind the dam is low: The sluice gates
have been opened. Water rushes through the dam and downstream."
       new_line        
       jump            l0004
l0001: jz              g27 l0002
       print           "The sluice gates are open, and water rushes through the
dam. The water level behind the dam is still high."
       new_line        
       jump            l0004
l0002: jz              g90 l0003
       print           "The sluice gates are closed. The water level in the
reservoir is quite low, but the level is rising quickly."
       new_line        
       jump            l0004
l0003: print           "The sluice gates on the dam are closed. Behind the dam,
there can be seen a wide reservoir. Water is pouring over the top of the now
abandoned dam."
       new_line        
l0004: print           "There is a control panel here, on which a large metal
bolt is mounted. Directly above the bolt is a small green plastic bubble"
       jz              g28 l0005
       print           " which is glowing serenely"
l0005: print_ret       "."

Routine r0315, 0 locals ()

       je              g78 #59 ?~l0005
       je              g77 #5b ?~l0003
       jz              g28 ?l0002
       clear_attr      "Reservoir South" #03
       jz              g27 ?l0001
       store           g27 #00
       clear_attr      "Loud Room" #03
       print           "The sluice gates close and water starts to collect
behind the dam."
       new_line        
       call            r0022 #5e14 #08 -> sp
       storew          sp #00 #01
       call            r0022 #5e94 #00 -> sp
       rtrue           
l0001: store           g27 #01
       print           "The sluice gates open and water pours through the dam."
       new_line        
       call            r0022 #5e94 #08 -> sp
       storew          sp #00 #01
       call            r0022 #5e14 #00 -> sp
       rtrue           
l0002: print_ret       "The bolt won't turn with your best effort."
l0003: jz              g77 l0004
       print           "The bolt won't turn using the "
       print_obj       g77
       print_ret       "."
l0004: print_ret       "You can't with your bare hands."
l0005: je              g78 #5d ~l0006
       call            r0317 -> sp
       ret_popped      
l0006: je              g78 #55 ~rfalse
       print_ret       "Hmm. It appears the tube contained glue, not oil.
Turning the bolt won't get any easier...."

Routine r0316, 0 locals ()

       je              g78 #5d ~rfalse
       call            r0317 -> sp
       ret_popped      

Routine r0317, 0 locals ()

       print_ret       "It is an integral part of the control panel."

Routine r0318, 0 locals ()

       set_attr        "Reservoir" #04
       clear_attr      "Reservoir" #06
       clear_attr      "Deep Canyon" #03
       clear_attr      "Loud Room" #03
       jin             "trunk of jewels" "Reservoir" ~l0001
       set_attr        "trunk of jewels" #07
l0001: store           g90 #00
       je              g00 #64 ~l0003
       get_parent      g6f -> sp
       test_attr       sp #1b ~l0002
       print_ret       "The boat lifts gently out of the mud and is now
floating on the reservoir."
l0002: call            r0431 s216 -> sp
       rtrue           
l0003: je              g00 #28 ~l0004
       print_ret       "A sound, like that of flowing water, starts to come
from below."
l0004: je              g00 #8a ?~l0005
       print           "All of a sudden, an alarmingly loud roaring sound fills
the room. Filled with fear, you scramble away."
       new_line        
       call            r0004 g26 -> sp
       call            r0244 sp -> sp
       rtrue           
l0005: je              g00 #ac #32 ~rtrue
       print_ret       "You notice that the water level has risen to the point
that it is impossible to cross."

Routine r0319, 0 locals ()

       set_attr        "Reservoir" #06
       clear_attr      "Reservoir" #04
       clear_attr      "Deep Canyon" #03
       clear_attr      "Loud Room" #03
       clear_attr      "trunk of jewels" #07
       store           g90 #01
       je              g00 #64 ?~l0001
       get_parent      g6f -> sp
       test_attr       sp #1b ~l0001
       print_ret       "The water level has dropped to the point at which the
boat can no longer stay afloat. It sinks into the mud."
l0001: je              g00 #28 ~l0002
       print_ret       "The roar of rushing water is quieter now."
l0002: je              g00 #ac #32 ~rtrue
       print_ret       "The water level is now quite low here and you could
easily cross over to the other side."

Routine r0320, 0 locals ()

       je              g78 #53 ~l0001
       print_ret       "They're greek to you."
l0001: je              g78 #65 ~rfalse
       je              g76 #c3 ?~l0003
       jz              g24 ?~l0002
       clear_attr      "leak" #07
       print           "There is a rumbling sound and a stream of water appears
to burst from the east wall of the room (apparently, a leak has occurred in a
pipe)."
       new_line        
       store           g24 #01
       call            r0022 #5f89 #ffff -> sp
       storew          sp #00 #01
       rtrue           
l0002: print_ret       "The blue button appears to be jammed."
l0003: je              g76 #c4 ~l0005
       print           "The lights within the room "
       test_attr       g00 #14 ~l0004
       clear_attr      g00 #14
       print_ret       "shut off."
l0004: set_attr        g00 #14
       print_ret       "come on."
l0005: je              g76 #c5 ~l0006
       clear_attr      "Dam" #03
       store           g28 #00
       print_ret       "Click."
l0006: je              g76 #c6 ~rfalse
       clear_attr      "Dam" #03
       store           g28 #01
       print_ret       "Click."

Routine r0321, 0 locals ()

       je              g78 #38 ~l0001
       print_ret       "The chests are all empty."
l0001: je              g78 #12 #2b #5d ~l0002
       call            r0116 #c8 -> sp
       print_ret       "The chests are so rusty and corroded that they crumble
when you touch them."
l0002: je              g78 #2b ~rfalse
       print_ret       "The chests are already open."

Routine r0322, 1 local (0000)

       je              g00 #c7 l0001
       push            #00
       jump            l0002
l0001: push            #01
l0002: store           local0 sp
       jz              local0 l0003
       print           "The water level here is now "
       div             g24 #02 -> sp
       loadw           g25 sp -> sp
       print_paddr     sp
       new_line        
l0003: inc             g24
       jl              g24 #0e l0004
       call            r0254 #c7 s226 -> sp
       call            r0022 #5f89 #00 -> sp
       jz              local0 rtrue
       call            r0431 s227 -> sp
       rtrue           
l0004: jin             g6f "magic boat" ~rtrue
       je              g00 #c7 #d7 #9a ~rtrue
       call            r0431 s228 -> sp
       rtrue           

Routine r0323, 0 locals ()

       jg              g24 #00 ~rfalse
       je              g78 #32 #12 ~l0001
       je              g76 #62 ~l0001
       call            r0324 -> sp
       ret_popped      
l0001: je              g78 #5f ~rfalse
       je              g77 #62 ~l0002
       call            r0324 -> sp
       ret_popped      
l0002: call            r0328 g77 -> sp
       ret_popped      

Routine r0324, 0 locals ()

       store           g24 #ffff
       call            r0022 #5f89 #00 -> sp
       print_ret       "By some miracle of Zorkian technology, you have managed
to stop the leak in the dam."

Routine r0325, 0 locals ()

       je              g78 #55 ~l0001
       je              g77 #62 l0002
l0001: je              g78 #12 ~rfalse
       je              g76 #62 ~rfalse
l0002: print_ret       "The all-purpose gunk isn't a lubricant."

Routine r0326, 0 locals ()

       je              g78 #12 ~l0001
       je              g77 #63 ~l0001
       print_ret       "The tube refuses to accept anything."
l0001: je              g78 #79 ~rfalse
       test_attr       g76 #0b ~l0002
       jin             "viscous material" g76 ~l0002
       insert_obj      "viscous material" g6f
       print_ret       "The viscous material oozes into your hand."
l0002: test_attr       g76 #0b ~l0003
       print_ret       "The tube is apparently empty."
l0003: print_ret       "The tube is closed."

Routine r0327, 0 locals ()

       je              g78 #23 #2b ~l0001
       print_ret       "Sounds reasonable, but this isn't how."
l0001: je              g78 #5f ~rfalse
       je              g77 #01 ~l0002
       print_ret       "Are you the little Dutch boy, then? Sorry, this is a
big dam."
l0002: print           "With a "
       print_obj       g77
       print_ret       "? Do you know how big this dam is? You could only stop
a tiny leak with that."

Routine r0328, 1 local (0000)

       print           "With a "
       print_obj       local0
       print_ret       "?"

Routine r0329, 1 local (0000)

       je              local0 #03 ~rfalse
       jz              g90 ?l0001
       jz              g27 ?l0001
       print           "You are in a long room, to the north of which was
formerly a lake. However, with the water level lowered, there is merely a wide
stream running through the center of the room."
       jump            l0004
l0001: jz              g27 ?l0002
       print           "You are in a long room. To the north is a large lake,
too deep to cross. You notice, however, that the water level appears to be
dropping at a rapid rate. Before long, it might be possible to cross to the
other side from here."
       jump            l0004
l0002: jz              g90 ?l0003
       print           "You are in a long room, to the north of which is a wide
area which was formerly a reservoir, but now is merely a stream. You notice,
however, that the level of the stream is rising quickly and that before long it
will be impossible to cross here."
       jump            l0004
l0003: print           "You are in a long room on the south shore of a large
lake, far too deep and wide for crossing."
l0004: new_line        
       print_ret       "There is a path along the stream to the east or west, a
steep pathway climbing southwest along the edge of a chasm, and a path leading
into a canyon to the southeast."

Routine r0330, 1 local (0000)

       je              local0 #06 ?~l0001
       get_parent      g6f -> sp
       test_attr       sp #1b ?l0001
       jz              g27 ?~l0001
       jz              g90 ?l0001
       print_ret       "You notice that the water level here is rising rapidly.
The currents are also becoming stronger. Staying here seems quite perilous!"
l0001: je              local0 #03 ~rfalse
       jz              g90 l0002
       print           "You are on what used to be a large lake, but which is
now a large mud pile. There are ~shores~ to the north and south."
       jump            l0003
l0002: print           "You are on the lake. Beaches can be seen north and
south. Upstream a small stream enters the lake through a narrow cleft in the
rocks. The dam can be seen downstream."
l0003: new_line        
       rtrue           

Routine r0331, 1 local (0000)

       je              local0 #03 ~rfalse
       jz              g90 ?l0001
       jz              g27 ?l0001
       print           "You are in a large cavernous room, the south of which
was formerly a lake. However, with the water level lowered, there is merely a
wide stream running through there."
       jump            l0004
l0001: jz              g27 l0002
       print           "You are in a large cavernous area. To the south is a
wide lake, whose water level appears to be falling rapidly."
       jump            l0004
l0002: jz              g90 ?l0003
       print           "You are in a cavernous area, to the south of which is a
very wide stream. The level of the stream is rising rapidly, and it appears
that before long it will be impossible to cross to the other side."
       jump            l0004
l0003: print           "You are in a large cavernous room, north of a large
lake."
l0004: new_line        
       print_ret       "There is a slimy stairway leaving the room to the
north."

Routine r0332, 1 local (0000)

       je              g78 #7f ~l0001
       je              g76 #ec ~l0001
       call            r0116 g76 -> sp
       store           local0 #01
       print           "The bottle hits the far wall and shatters."
       new_line        
       jump            l0003
l0001: je              g78 #2a ~l0002
       store           local0 #01
       call            r0116 g76 -> sp
       print           "A brilliant maneuver destroys the bottle."
       new_line        
       jump            l0003
l0002: je              g78 #73 ~l0003
       test_attr       g76 #0b ~l0003
       jin             "quantity of water" g76 ~l0003
       store           local0 #01
l0003: jz              local0 l0004
       jin             "quantity of water" g76 ~l0004
       print           "The water spills to the floor and evaporates."
       new_line        
       call            r0116 #ed -> sp
       rtrue           
l0004: jz              local0 rfalse
       rtrue           

Routine r0333, 1 local (0000)

       store           local0 g23
       je              g6f #ba ?~l0003
       jz              g95 l0001
       print_ret       "No use talking to him. He's fast asleep."
l0001: je              g78 #5b ~l0002
       store           g6f #04
       call            r0026 #5b -> sp
       rtrue           
l0002: print_ret       "The cyclops prefers eating to making conversation."
l0003: jz              g95 ?l0007
       je              g78 #38 ~l0004
       print_ret       "The cyclops is sleeping like a baby, albeit a very ugly
one."
l0004: je              g78 #13 #46 #88 l0005
       je              g78 #2a #1c ~rfalse
l0005: print           "The cyclops yawns and stares at the thing that woke him
up."
       new_line        
       store           g95 #00
       set_attr        "cyclops" #02
       jl              local0 #00 ~l0006
       sub             #00 local0 -> g23
       ret             g23
l0006: store           g23 local0
       ret             g23
l0007: je              g78 #38 ~l0008
       print_ret       "A hungry cyclops is standing at the foot of the
stairs."
l0008: je              g78 #3f ?~l0015
       je              g77 #ba ?~l0015
       je              g76 #e1 ?~l0010
       jl              local0 #00 ?l0009
       call            r0116 #e1 -> sp
       print           "The cyclops says ~Mmm Mmm. I love hot peppers! But oh,
could I use a drink. Perhaps I could drink the blood of that thing.~  From the
gleam in his eye, it could be surmised that you are ~that thing~."
       new_line        
       sub             #00 local0 -> sp
       call            r0360 #ffff sp -> g23
l0009: call            r0022 #649f #ffff -> sp
       storew          sp #00 #01
       rtrue           
l0010: je              g76 #ed l0011
       je              g76 #ec ?~l0013
       jin             "quantity of water" "glass bottle" ?~l0013
l0011: jl              local0 #00 ?~l0012
       call            r0116 #ed -> sp
       insert_obj      "glass bottle" g00
       set_attr        "glass bottle" #0b
       clear_attr      "cyclops" #02
       print           "The cyclops takes the bottle, checks that it's open,
and drinks the water. A moment later, he lets out a yawn that nearly blows you
over, and then falls fast asleep (what did you put in that drink, anyway?)."
       new_line        
       store           g95 #01
       ret             g95
l0012: print_ret       "The cyclops apparently is not thirsty and refuses your
generous offer."
l0013: je              g76 #bd ~l0014
       print_ret       "The cyclops may be hungry, but there is a limit."
l0014: print_ret       "The cyclops is not so stupid as to eat THAT!"
l0015: je              g78 #2a #13 #7f ?~l0017
       call            r0022 #649f #ffff -> sp
       storew          sp #00 #01
       je              g78 #2a ~l0016
       print_ret       "~Do you think I'm as stupid as my father was?~, he
says, dodging."
l0016: print           "The cyclops shrugs but otherwise ignores your pitiful
attempt."
       new_line        
       je              g78 #7f ~rtrue
       insert_obj      g76 g00
       rtrue           
l0017: je              g78 #5d ~l0018
       print_ret       "The cyclops doesn't take kindly to being grabbed."
l0018: je              g78 #82 ~l0019
       print_ret       "You cannot tie the cyclops, though he is fit to be
tied."
l0019: je              g78 #4d ~rfalse
       print_ret       "You can hear his stomach rumbling."

Routine r0334, 0 locals ()

       jz              g95 ~rtrue
       jz              g3e ~rtrue
       je              g00 #b9 l0001
       call            r0023 #649f -> sp
       storew          sp #00 #00
       rtrue           
l0001: jl              g23 #00 ~l0002
       sub             #00 g23 -> sp
       jump            l0003
l0002: push            g23
l0003: jg              sp #05 ~l0004
       call            r0023 #649f -> sp
       storew          sp #00 #00
       call            r0431 s229 -> sp
       ret_popped      
l0004: jl              g23 #00 ~l0005
       dec             g23
       jump            l0006
l0005: inc             g23
l0006: jz              g95 ~rfalse
       jl              g23 #00 ~l0007
       sub             #00 g23 -> sp
       jump            l0008
l0007: push            g23
l0008: sub             sp #01 -> sp
       loadw           g22 sp -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0335, 1 local (0000)

       je              local0 #03 ?~l0005
       print           "This room has an exit on the northwest, and a staircase
leading up."
       new_line        
       jz              g95 l0001
       jz              g8f ~l0001
       print_ret       "The cyclops is sleeping blissfully at the foot of the
stairs."
l0001: jz              g8f l0002
       print_ret       "The east wall, previously solid, now has a
cyclops-sized opening in it."
l0002: jz              g23 ?~l0003
       print_ret       "A cyclops, who looks prepared to eat horses (much less
mere adventurers), blocks the staircase. From his state of health, and the
bloodstains on the walls, you gather that he is not very friendly, though he
likes people."
l0003: jg              g23 #00 ?~l0004
       print_ret       "The cyclops is standing in the corner, eyeing you
closely. I don't think he likes you very much. He looks extremely hungry, even
for a cyclops."
l0004: jl              g23 #00 ~rfalse
       print_ret       "The cyclops, having eaten the hot peppers, appears to
be gasping. His enflamed tongue protrudes from his man-sized mouth."
l0005: je              local0 #02 ~rfalse
       jz              g23 rtrue
       call            r0023 #649f -> sp
       storew          sp #00 #01
       rtrue           

Routine r0336, 2 locals (0000, 0000)

       je              local0 #03 ?~l0004
       print           "This is a large room with a ceiling which cannot be
detected from the ground. There is a narrow passage from east to west and a
stone stairway leading upward."
       jz              g21 ~l0001
       jz              g27 ~l0002
       jz              g90 l0002
l0001: print           " The room is eerie in its quietness."
       jump            l0003
l0002: print           " The room is deafeningly loud with an undetermined
rushing sound. The sound seems to reverberate from all of the walls, making it
difficult even to think."
l0003: new_line        
       rtrue           
l0004: je              local0 #06 ?~l0005
       jz              g27 ?l0005
       jz              g90 ?~l0005
       print           "It is unbearably loud here, with an ear-splitting roar
seeming to come from all around you. There is a pounding in your head which
won't stop. With a tremendous effort, you scramble out of the room."
       new_line        
       new_line        
       call            r0004 g26 -> sp
       call            r0244 sp -> sp
       rfalse          
l0005: je              local0 #02 ~rfalse
       jz              g21 ~rfalse
       jz              g27 ~l0006
       jz              g90 ~rfalse
l0006: jz              g27 l0007
       jz              g90 rfalse
l0007: call            r0226 -> sp
       jz              g6c l0008
       print           "The rest of your commands have been lost in the noise."
       new_line        
       store           g6c #00
l0008: new_line        
       print           ">"
       read            g6d g6e
       loadb           g6e #01 -> sp
       jz              sp ~l0009
       print           "I beg your pardon?"
       new_line        
       jump            l0008
l0009: loadw           g6e #01 -> local1
       je              local1 "go" "walk" "run" ~l0010
       loadw           g6e #03 -> local1
       jump            l0011
l0010: je              local1 "say" ~l0011
       loadw           g6e #05 -> local1
l0011: je              local1 "save" ~l0012
       call            r0074 -> sp
       jump            l0008
l0012: je              local1 "restor" ~l0013
       call            r0073 -> sp
       jump            l0008
l0013: je              local1 "q" "quit" ~l0014
       call            r0071 -> sp
       jump            l0008
l0014: je              local1 "w" "west" ~l0015
       call            r0244 #6b -> sp
       ret             sp
l0015: je              local1 "e" "east" ~l0016
       call            r0244 #27 -> sp
       ret             sp
l0016: je              local1 "u" "up" ~l0017
       call            r0244 #28 -> sp
       ret             sp
l0017: je              local1 "bug" ~l0018
       print           "That's only your opinion."
       new_line        
       jump            l0008
l0018: je              local1 "echo" ~l0019
       store           g21 #01
       clear_attr      "platinum bar" #09
       print           "The acoustics of the room change subtly."
       new_line        
       new_line        
       rtrue           
l0019: call            r0114 -> sp
       jump            l0008

Routine r0337, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "You are on the south edge of a deep canyon. Passages
lead off to the east, northwest and southwest. A stairway leads down."
       jz              g27 l0001
       jz              g90 ~l0001
       print           " You can hear a loud roaring sound, like that of
rushing water, from below."
       jump            l0003
l0001: jz              g27 ~l0002
       jz              g90 l0002
       new_line        
       rtrue           
l0002: print           " You can hear the sound of flowing water from below."
l0003: new_line        
       rtrue           

Routine r0338, 4 locals (0000, 0000, 0000, 0000)

       jz              g3e ~l0001
       je              g00 #be rfalse
l0001: jz              g1f ?~l0015
       jz              g3e ?~l0003
       jz              local0 ?~l0003
       random          #64 -> sp
       jg              #1e sp ?~l0003
       jin             "stiletto" "thief" ?~l0002
       clear_attr      "thief" #07
       print           "Someone carrying a large bag is casually leaning
against one of the walls here. He does not speak, but it is clear from his
aspect that the bag will be taken only over his dead body."
       new_line        
       store           g1f #01
       rtrue           
l0002: jin             "stiletto" g6f ~rfalse
       insert_obj      "stiletto" "thief"
       set_attr        "stiletto" #0e
       clear_attr      "thief" #07
       print           "You feel a light finger-touch, and turning, notice a
grinning figure holding a large bag in one hand and a stiletto in the other."
       store           g1f #01
       rtrue           
l0003: jz              local0 ?l0004
       test_attr       "thief" #02 ?~l0004
       call            r0418 #72 -> sp
       jz              sp ?~l0004
       print           "Your opponent, determining discretion to be the better
part of valor, decides to terminate this little contretemps. With a rueful nod
of his head, he steps backward into the gloom and disappears."
       new_line        
       set_attr        "thief" #07
       clear_attr      "thief" #02
       call            r0426 -> sp
       rtrue           
l0004: jz              local0 l0005
       test_attr       "thief" #02 ~l0005
       random          #64 -> sp
       jg              #5a sp rfalse
l0005: jz              local0 ?l0006
       random          #64 -> sp
       jg              #1e sp ~l0006
       print           "The holder of the large bag just left, looking
disgusted. Fortunately, he took nothing."
       new_line        
       set_attr        "thief" #07
       call            r0426 -> sp
       rtrue           
l0006: random          #64 -> sp
       jg              #46 sp rfalse
       jz              g3e ~rfalse
       call            r0428 g00 #72 #64 -> sp
       jz              sp l0007
       store           local1 #01
       jump            l0008
l0007: call            r0428 g6f #72 -> sp
       jz              sp l0008
       store           local1 #01
       store           local2 #01
l0008: store           g1f #01
       jz              local1 ?l0009
       jz              local0 ?~l0009
       print           "A seedy-looking individual with a large bag just
wandered through the room. On the way through, he quietly abstracted some
valuables from the room and from your possession, mumbling something about
~Doing unto others before...~"
       new_line        
       call            r0339 -> sp
       rfalse          
l0009: jz              local0 ?l0014
       call            r0426 -> sp
       jz              local1 ?l0012
       print           "The thief just left, still carrying his large bag. You
may not have noticed that he "
       jz              local2 l0010
       print           "robbed you blind first."
       jump            l0011
l0010: print           "appropriated the valuables in the room."
l0011: new_line        
       call            r0339 -> sp
       jump            l0013
l0012: print           "The thief, finding nothing of value, left disgusted."
       new_line        
l0013: set_attr        "thief" #07
       store           local0 #00
       rtrue           
l0014: print_ret       "A ~lean and hungry~ gentleman just wandered through,
carrying a large bag. Finding nothing of value, he left disgruntled."
l0015: jz              local0 rfalse
       random          #64 -> sp
       jg              #1e sp ~rfalse
       call            r0428 g00 #72 #64 -> sp
       pull            local3
       jz              local3 l0016
       push            local3
       jump            l0017
l0016: call            r0428 g6f #72 -> sp
l0017: pull            local1
       jz              local1 ?l0018
       print           "The thief just left, still carrying his large bag. You
may not have noticed that he robbed you blind first."
       new_line        
       call            r0339 -> sp
       jump            l0019
l0018: print           "The thief, finding nothing of value, left disgusted."
       new_line        
l0019: set_attr        "thief" #07
       store           local0 #00
       call            r0426 -> sp
       rfalse          

Routine r0339, 1 local (0000)

       store           local0 g42
       call            r0063 g00 -> g42
       jz              g42 ~rtrue
       jz              local0 rtrue
       print_ret       "The thief seems to have left you in the dark."

Routine r0340, 1 local (0000)

       call            r0426 -> sp
       set_attr        "thief" #07
       get_child       "Treasure Room" -> local0 l0001
l0001: jz              local0 rtrue
       clear_attr      local0 #07
       get_sibling     local0 -> local0 l0002
l0002: jump            l0001

Routine r0341, 4 locals (0000, 0000, 0000, 0000)

       get_child       "thief" -> local1 l0001
l0001: jz              local1 ~l0002
       ret             local3
l0002: get_sibling     local1 -> local2 l0003
l0003: je              local1 #71 #73 ~l0004
       jump            l0005
l0004: get_prop        local1 #0c -> sp
       jg              sp #00 ~l0005
       insert_obj      local1 local0
       store           local3 #01
       je              local1 #57 ~l0005
       store           g20 #01
       set_attr        "jewel-encrusted egg" #0b
l0005: store           local1 local2
       jump            l0001

Routine r0342, 3 locals (0000, 0000, 0000)

       get_child       local0 -> local1 l0001
l0001: jz              local1 rfalse
       get_sibling     local1 -> local2 l0002
l0002: test_attr       local1 #11 ?~l0003
       test_attr       local1 #07 ?l0003
       random          #64 -> sp
       jg              #28 sp ?~l0003
       print           "You hear, off in the distance, someone saying ~My, I
wonder what this fine "
       print_obj       local1
       print           " is doing here.~"
       new_line        
       call            r0002 #3c -> sp
       jz              sp rtrue
       insert_obj      local1 "thief"
       set_attr        local1 #03
       set_attr        local1 #07
       rtrue           
l0003: store           local1 local2
       jump            l0001

Routine r0343, 4 locals (0000, 0000, 0000, 0000)

       je              g78 #6f ~l0001
       print           "The thief is a strong, silent type."
       new_line        
       store           g6c #00
       ret             g6c
l0001: jz              local0 ?~l0012
       je              g78 #42 ?~l0002
       get_prop        "thief" #0b -> sp
       je              sp g1c ?~l0002
       print_ret       "The thief, being temporarily incapacitated, is unable
to acknowledge your greeting with his usual graciousness."
l0002: je              g76 #a9 ?~l0006
       je              g78 #7f ?~l0006
       test_attr       "thief" #02 ?l0006
       call            r0002 #0a -> sp
       jz              sp ?l0005
       print           "You evidently frightened the robber, though you didn't
hit him. He flees"
       get_child       "thief" -> local2 ~l0003
       call            r0345 #72 g00 -> sp
       print           ", but the contents of his bag fall on the floor."
       jump            l0004
l0003: print           "."
l0004: new_line        
       set_attr        "thief" #07
       rtrue           
l0005: print           "You missed. The thief makes no attempt to take the
knife, though it would be a fine addition to the collection in his bag. He does
seem angered by your attempt."
       new_line        
       set_attr        "thief" #02
       rtrue           
l0006: je              g78 #3f #7f ?~l0009
       jz              g76 ?l0009
       je              g76 #72 ?l0009
       je              g77 #72 ?~l0009
       get_prop        "thief" #07 -> sp
       jl              sp #00 ?~l0007
       get_prop        "thief" #07 -> sp
       sub             #00 sp -> sp
       put_prop        "thief" #07 sp
       call            r0023 #80f0 -> sp
       storew          sp #00 #01
       call            r0426 -> sp
       put_prop        "thief" #0b g1d
       print           "Your proposed victim suddenly recovers consciousness."
       new_line        
l0007: insert_obj      g76 "thief"
       get_prop        g76 #0c -> sp
       jg              sp #00 ?~l0008
       store           g1e #01
       print           "The thief is taken aback by your unexpected generosity,
but accepts the "
       print_obj       g76
       print_ret       " and stops to admire its beauty."
l0008: print           "The thief places the "
       print_obj       g76
       print_ret       " in his bag and thanks you politely."
l0009: je              g78 #5d ~l0010
       print_ret       "Once you got him, what would you do with him?"
l0010: je              g78 #39 #38 ?~l0011
       print_ret       "The thief is a slippery character with beady eyes that
flit back and forth. He carries, along with an unmistakable arrogance, a large
bag over his shoulder and a vicious stiletto, whose blade is aimed menacingly
in your direction. I'd watch out if I were you."
l0011: je              g78 #4d ~rfalse
       print_ret       "The thief says nothing, as you have not been formally
introduced."
l0012: je              local0 #01 ?~l0013
       jin             "stiletto" "thief" rfalse
       get_parent      "thief" -> sp
       jin             "stiletto" sp ~rfalse
       insert_obj      "stiletto" "thief"
       set_attr        "stiletto" #0e
       jin             "thief" g00 ~rtrue
       print           "The robber, somewhat surprised at this turn of events,
nimbly retrieves his stiletto."
       new_line        
       rtrue           
l0013: je              local0 #02 ?~l0022
       insert_obj      "stiletto" g00
       clear_attr      "stiletto" #0e
       call            r0341 g00 -> local2
       je              g00 #be ?~l0020
       get_child       g00 -> local2 l0014
l0014: jz              local2 ~l0015
       print           "The chalice is now safe to take."
       new_line        
       jump            l0021
l0015: je              local2 #bf #72 #04 ?l0018
       clear_attr      local2 #07
       jz              local1 ~l0016
       store           local1 #01
       print           "As the thief dies, the power of his magic decreases,
and his treasures reappear:"
       new_line        
l0016: print           "  A "
       print_obj       local2
       get_child       local2 -> sp ~l0017
       call            r0233 local2 -> sp
       jz              sp l0017
       print           ", with "
       call            r0230 local2 -> sp
l0017: new_line        
l0018: get_sibling     local2 -> local2 l0019
l0019: jump            l0014
l0020: jz              local2 l0021
       print           "His booty remains."
       new_line        
l0021: call            r0023 #80f0 -> sp
       storew          sp #00 #00
       rtrue           
l0022: je              local0 #05 ~l0023
       jz              g1f rfalse
       test_attr       "thief" #07 rfalse
       random          #64 -> sp
       jg              #14 sp ~rfalse
       set_attr        "thief" #02
       store           g6c #00
       rtrue           
l0023: je              local0 #03 ~l0024
       call            r0023 #80f0 -> sp
       storew          sp #00 #00
       clear_attr      "thief" #02
       insert_obj      "stiletto" g00
       clear_attr      "stiletto" #0e
       put_prop        "thief" #0b g1c
       rtrue           
l0024: je              local0 #04 ~rfalse
       get_parent      "thief" -> sp
       je              sp g00 ?~l0025
       set_attr        "thief" #02
       print           "The robber revives, briefly feigning continued
unconsciousness, and, when he sees his moment, scrambles away from you."
       new_line        
l0025: call            r0023 #80f0 -> sp
       storew          sp #00 #01
       put_prop        "thief" #0b g1d
       call            r0426 -> sp
       ret_popped      

Routine r0344, 0 locals ()

       je              g78 #5d ?~l0002
       get_prop        "thief" #0b -> sp
       je              sp g1c ~l0001
       print_ret       "Sadly for you, the robber collapsed on top of the bag.
Trying to take it would wake him."
l0001: print_ret       "The bag will be taken over his dead body."
l0002: je              g78 #12 ~l0003
       je              g77 #73 ~l0003
       print_ret       "It would be a good trick."
l0003: je              g78 #23 #2b ~l0004
       print_ret       "Getting close enough would be a good trick."
l0004: je              g78 #39 #38 ~rfalse
       print_ret       "The bag is underneath the thief, so one can't say what,
if anything, is inside."

Routine r0345, 4 locals (0000, 0000, 0000, 0000)

       get_child       local0 -> local2 ~rfalse
l0001: jz              local2 rtrue
       get_sibling     local2 -> local3 l0002
l0002: clear_attr      local2 #07
       insert_obj      local2 local1
       store           local2 local3
       jump            l0001

Routine r0346, 0 locals ()

       je              g78 #5d ~l0001
       jin             g76 "Treasure Room" ~rfalse
       jin             "thief" "Treasure Room" ~rfalse
       test_attr       "thief" #02 ~rfalse
       test_attr       "thief" #07 rfalse
       get_prop        "thief" #0b -> sp
       je              sp g1c rfalse
       print_ret       "You'd be stabbed in the back first."
l0001: je              g78 #12 ~l0002
       je              g77 #bf ~l0002
       print_ret       "You can't. It's not a very good chalice, is it?"
l0002: call            r0437 -> sp
       ret_popped      

Routine r0347, 3 locals (0000, 0000, 0000)

       je              local0 #02 ~rfalse
       call            r0023 #80f0 -> sp
       loadw           sp #00 -> sp
       je              sp #01 ~rfalse
       jz              g3e ~rfalse
       jin             "thief" g00 l0001
       push            #01
       jump            l0002
l0001: push            #00
l0002: store           local1 sp
       jz              local1 ?l0003
       print           "You hear a scream of anguish as you violate the
robber's hideaway. Using passages unknown to you, he rushes to its defense."
       new_line        
       insert_obj      "thief" g00
       set_attr        "thief" #02
       clear_attr      "thief" #07
       jump            l0004
l0003: set_attr        "thief" #02
l0004: call            r0348 -> sp
       ret_popped      

Routine r0348, 2 locals (0000, 0000)

       get_child       g00 -> local0 l0001
l0001: jz              local0 l0002
       get_sibling     local0 -> sp ~l0002
       print           "The thief gestures mysteriously, and the treasures in
the room suddenly vanish."
       new_line        
       new_line        
l0002: jz              local0 rtrue
       je              local0 #bf l0003
       je              local0 #72 l0003
       set_attr        local0 #07
l0003: get_sibling     local0 -> local0 l0004
l0004: jump            l0002

Routine r0349, 0 locals ()

       je              g78 #2b ~l0001
       print_ret       "The door cannot be opened."
l0001: je              g78 #1c ~l0002
       print_ret       "You cannot burn this door."
l0002: je              g78 #2a ~l0003
       print_ret       "You can't seem to damage the door."
l0003: je              g78 #52 ~rfalse
       print_ret       "It won't open."

Routine r0350, 0 locals ()

       je              g78 #5d ~l0001
       print_ret       "A force keeps you from taking the bodies."
l0001: je              g78 #1c #2a ~rfalse
       call            r0431 s238 -> sp
       ret_popped      

Routine r0351, 0 locals ()

       je              g78 #2b ~l0001
       print_ret       "The book is already open to page 569."
l0001: je              g78 #23 ~l0002
       print_ret       "As hard as you try, the book cannot be closed."
l0002: je              g78 #59 l0003
       je              g78 #6b ?~l0004
       je              g77 #0e ?~l0004
       je              g5e #0239 ?l0004
l0003: print_ret       "Beside page 569, there is only one other page with any
legible printing on it. Most of it is unreadable, but the subject seems to be
the banishment of evil. Apparently, certain noises, lights, and prayers are
efficacious in this regard."
l0004: je              g78 #1c ~rfalse
       call            r0116 g76 -> sp
       call            r0431 s239 -> sp
       ret_popped      

Routine r0352, 0 locals ()

       je              g78 #2a ~rfalse
       put_prop        g76 #0c #00
       put_prop        g76 #0b s240
       print_ret       "Congratulations! Unlike the other vandals, who merely
stole the artist's masterpieces, you have destroyed one."

Routine r0353, 0 locals ()

       je              g78 #7f ~l0001
       print           "The lamp has smashed into the floor, and the light has
gone out."
       new_line        
       call            r0023 #6f55 -> sp
       storew          sp #00 #00
       call            r0116 #a4 -> sp
       insert_obj      "broken lantern" g00
       rtrue           
l0001: je              g78 #0e ~l0003
       test_attr       "brass lantern" #12 ~l0002
       print_ret       "A burned-out lamp won't light."
l0002: call            r0023 #6f55 -> sp
       storew          sp #00 #01
       rfalse          
l0003: je              g78 #16 ~l0005
       test_attr       "brass lantern" #12 ~l0004
       print_ret       "The lamp has already burned out."
l0004: call            r0023 #6f55 -> sp
       storew          sp #00 #00
       rfalse          
l0005: je              g78 #38 ~rfalse
       print           "The lamp "
       test_attr       "brass lantern" #12 ~l0006
       print           "has burned out."
       jump            l0008
l0006: test_attr       "brass lantern" #14 ~l0007
       print           "is on."
       jump            l0008
l0007: print           "is turned off."
l0008: new_line        
       rtrue           

Routine r0354, 0 locals ()

       je              g78 #5d ~rfalse
       je              g76 #a0 ~rfalse
       print_ret       "It is securely anchored."

Routine r0355, 1 local (0000)

       je              g78 #1c #0e ?~l0004
       je              g76 #9b ?~l0004
       jg              g1a #00 ~l0001
       dec             g1a
l0001: jg              g1a #00 l0002
       print_ret       "I'm afraid that you have run out of matches."
l0002: je              g00 #e4 #ce ~l0003
       print_ret       "This room is drafty, and the match goes out instantly."
l0003: set_attr        "matchbook" #19
       set_attr        "matchbook" #14
       call            r0022 #6f46 #02 -> sp
       storew          sp #00 #01
       print           "One of the matches starts to burn."
       new_line        
       jz              g42 ~rtrue
       store           g42 #01
       call            r0144 -> sp
       rtrue           
l0004: je              g78 #16 ~l0006
       test_attr       "matchbook" #19 ~l0006
       print           "The match is out."
       new_line        
       clear_attr      "matchbook" #19
       clear_attr      "matchbook" #14
       call            r0063 g00 -> g42
       jz              g42 ~l0005
       print           "It's pitch black in here!"
       new_line        
l0005: call            r0022 #6f46 #00 -> sp
       rtrue           
l0006: je              g78 #2b #25 ~l0011
       print           "You have "
       sub             g1a #01 -> local0
       jg              local0 #00 l0007
       print           "no"
       jump            l0008
l0007: print_num       local0
l0008: print           " match"
       je              local0 #01 l0009
       print           "es."
       jump            l0010
l0009: print           "."
l0010: new_line        
       rtrue           
l0011: je              g78 #38 ~rfalse
       test_attr       "matchbook" #14 ~l0012
       print           "The match is burning."
       jump            l0013
l0012: print           "The matchbook isn't very interesting, except for what's
written on it."
l0013: new_line        
       rtrue           

Routine r0356, 0 locals ()

       print           "The match has gone out."
       new_line        
       clear_attr      "matchbook" #19
       clear_attr      "matchbook" #14
       call            r0063 g00 -> g42
       rtrue           

Routine r0357, 2 locals (0000, 0000)

       load            g1b -> local1
       loadw           local1 #00 -> local0
       call            r0022 #6f55 local0 -> sp
       storew          sp #00 #01
       call            r0359 #a4 local1 local0 -> sp
       jz              local0 rfalse
       add             local1 #04 -> g1b
       ret             g1b

Routine r0358, 2 locals (0000, 0000)

       load            g19 -> local1
       set_attr        "pair of candles" #03
       loadw           local1 #00 -> local0
       call            r0022 #6f6a local0 -> sp
       storew          sp #00 #01
       call            r0359 #93 local1 local0 -> sp
       jz              local0 rfalse
       add             local1 #04 -> g19
       ret             g19

Routine r0359, 3 locals (0000, 0000, 0000)

       jz              local2 ~l0001
       clear_attr      local0 #14
       set_attr        local0 #12
l0001: call            r0252 local0 -> sp
       jz              sp ~l0002
       jin             local0 g00 ~rfalse
l0002: jz              local2 ~l0003
       print           "You'd better have more light than from the "
       print_obj       local0
       print_ret       "."
l0003: loadw           local1 #01 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0360, 2 locals (0000, 0000)

       jl              local0 local1 ~l0001
       ret             local0
l0001: ret             local1

Routine r0361, 0 locals ()

       test_attr       "pair of candles" #03 l0001
       call            r0023 #6f6a -> sp
       storew          sp #00 #01
l0001: je              #93 g77 rfalse
       je              g78 #1c #0e ?~l0009
       test_attr       "pair of candles" #12 ~l0002
       print_ret       "Alas, there's not much left of the candles. Certainly
not enough to burn."
l0002: jz              g77 ~l0004
       test_attr       "matchbook" #19 ~l0003
       print           "(with the match)"
       new_line        
       call            r0026 #0e #93 #9b -> sp
       rtrue           
l0003: print           "You should say what to light them with."
       new_line        
       ret             #02
l0004: je              g77 #9b ~l0006
       test_attr       "matchbook" #14 ~l0006
       print           "The candles are "
       test_attr       "pair of candles" #14 ~l0005
       print_ret       "already lit."
l0005: set_attr        "pair of candles" #14
       print           "lit."
       new_line        
       call            r0023 #6f6a -> sp
       storew          sp #00 #01
       rtrue           
l0006: je              g77 #68 ?~l0008
       test_attr       "pair of candles" #14 ~l0007
       print_ret       "You realize, just in time, that the candles are already
lighted."
l0007: print           "The heat from the torch is so intense that the candles
are vaporized."
       new_line        
       call            r0116 #93 -> sp
       ret_popped      
l0008: print_ret       "You have to light them with something that's burning,
you know."
l0009: je              g78 #25 ~l0010
       print_ret       "Let's see, how many objects in a pair? Don't tell me,
I'll get it."
l0010: je              g78 #16 ?~l0013
       call            r0023 #6f6a -> sp
       storew          sp #00 #00
       test_attr       "pair of candles" #14 ~l0012
       print           "The flame is extinguished."
       clear_attr      "pair of candles" #14
       call            r0063 g00 -> g42
       jz              g42 ~l0011
       print           " It's really dark in here...."
l0011: new_line        
       rtrue           
l0012: print_ret       "The candles are not lighted."
l0013: je              g78 #12 ~l0014
       test_attr       g77 #1a ~l0014
       print_ret       "That wouldn't be smart."
l0014: je              g78 #38 ~rfalse
       print           "The candles are "
       test_attr       "pair of candles" #14 ~l0015
       print           "burning."
       jump            l0016
l0015: print           "out."
l0016: new_line        
       rtrue           

Routine r0362, 1 local (0000)

       je              local0 #06 ~rfalse
       jin             "pair of candles" g6f ~rfalse
       call            r0002 #32 -> sp
       jz              sp rfalse
       test_attr       "pair of candles" #14 ~rfalse
       call            r0023 #6f6a -> sp
       storew          sp #00 #00
       clear_attr      "pair of candles" #14
       print           "A gust of wind blows out your candles!"
       new_line        
       call            r0063 g00 -> g42
       jz              g42 ~rfalse
       print_ret       "It is now completely dark."

Routine r0363, 1 local (0000)

       je              g78 #5d ~l0001
       je              g6f #04 ~l0001
       call            r0022 #807c #ffff -> sp
       storew          sp #00 #01
       rfalse          
l0001: je              g78 #38 ~rfalse
       get_prop        "sword" #0c -> local0
       je              local0 #01 ~l0002
       print_ret       "Your sword is glowing with a faint blue glow."
l0002: je              local0 #02 ~rfalse
       print_ret       "Your sword is glowing very brightly."

Routine r0364, 3 locals (0000, 0000, 0000)

       je              local0 #06 ~rfalse
       je              local0 #06 ~l0001
       je              g78 #1c #0e ~l0001
       je              g76 #93 #68 #9b ~l0001
       store           local1 #01
l0001: call            r0252 #93 -> sp
       jz              sp l0002
       test_attr       "pair of candles" #14 l0004
l0002: call            r0252 #68 -> sp
       jz              sp l0003
       test_attr       "torch" #14 l0004
l0003: call            r0252 #9b -> sp
       jz              sp rfalse
       test_attr       "matchbook" #14 ~rfalse
l0004: jz              local1 ?l0005
       print           "How sad for an aspiring adventurer to light a "
       print_obj       g76
       print           " in a room which reeks of gas. Fortunately, there is
justice in the world."
       new_line        
       jump            l0006
l0005: print           "Oh dear. It appears that the smell coming from this
room was coal gas. I would have thought twice about carrying flaming objects in
here."
       new_line        
l0006: call            r0431 s247 -> sp
       ret_popped      

Routine r0365, 1 local (0000)

       get_parent      "clove of garlic" -> sp
       je              sp g6f g00 ?~l0001
       print_ret       "In the corner of the room on the ceiling is a large
vampire bat who is obviously deranged and holding his nose."
l0001: print_ret       "A large vampire bat, hanging from the ceiling, swoops
down at you!"

Routine r0366, 1 local (0000)

       je              local0 #03 ~l0001
       print_ret       "You are in a small room which has doors only to the
east and south."
l0001: je              local0 #02 ~rfalse
       jz              g3e ~rfalse
       get_parent      "clove of garlic" -> sp
       je              sp g6f g00 rfalse
       call            r0144 -> sp
       call            r0271 -> sp
       ret_popped      

Routine r0367, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "This is a large, cold room whose sole exit is to the
north. In one corner there is a machine which is reminiscent of a clothes
dryer. On its face is a switch which is labelled ~START~. The switch does not
appear to be manipulable by any human hand (unless the fingers are about 1/16
by 1/4 inch). On the front of the machine is a large lid, which is "
       test_attr       "machine" #0b ~l0001
       print           "open."
       jump            l0002
l0001: print           "closed."
l0002: new_line        
       rtrue           

Routine r0368, 0 locals ()

       je              g78 #5d ~l0001
       print_ret       "It is far too large to carry."
l0001: je              g78 #2b ?~l0004
       test_attr       "machine" #0b ~l0002
       call            r0004 g34 -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0002: get_child       "machine" -> sp ~l0003
       print           "The lid opens, revealing "
       call            r0230 #9e -> sp
       print           "."
       new_line        
       set_attr        "machine" #0b
       rtrue           
l0003: print           "The lid opens."
       new_line        
       set_attr        "machine" #0b
       rtrue           
l0004: je              g78 #23 ~l0006
       test_attr       "machine" #0b ~l0005
       print           "The lid closes."
       new_line        
       clear_attr      "machine" #0b
       rtrue           
l0005: call            r0004 g34 -> sp
       print_paddr     sp
       new_line        
       rtrue           
l0006: je              g78 #0e ~rfalse
       jz              g77 ~l0007
       print_ret       "It's not clear how to turn it on with your bare hands."
l0007: call            r0026 #59 #70 g77 -> sp
       rtrue           

Routine r0369, 1 local (0000)

       je              g78 #59 ~rfalse
       je              g77 #7b ?~l0004
       test_attr       "machine" #0b ~l0001
       print_ret       "The machine doesn't seem to want to do anything."
l0001: print           "The machine comes to life (figuratively) with a
dazzling display of colored lights and bizarre noises. After a few moments, the
excitement abates."
       new_line        
       jin             "small pile of coal" "machine" ~l0002
       call            r0116 #77 -> sp
       insert_obj      "huge diamond" "machine"
       rtrue           
l0002: get_child       "machine" -> local0 ~l0003
       call            r0116 local0 -> sp
       jump            l0002
l0003: insert_obj      "small piece of vitreous slag" "machine"
       rtrue           
l0004: jz              g77 ~l0005
       print_ret       "You can't turn it with your hands..."
l0005: print           "It seems that a "
       print_obj       g77
       print_ret       " won't do."

Routine r0370, 0 locals ()

       call            r0116 #92 -> sp
       print_ret       "The slag was rather insubstantial, and crumbles into
dust at your touch."

Routine r0371, 2 locals (0000, 0000)

       je              local0 #01 ~rfalse
       get_child       g6f -> local1 l0001
l0001: store           g92 #01
l0002: jz              local1 ~l0003
       jump            l0006
l0003: call            r0241 local1 -> sp
       jg              sp #04 ~l0004
       store           g92 #00
       jump            l0006
l0004: get_sibling     local1 -> local1 l0005
l0005: jump            l0002
l0006: je              g00 #e4 ~rfalse
       jz              g42 rfalse
       call            r0234 g18 -> sp
       store           g18 #00
       rfalse          

Routine r0372, 1 local (0000)

       je              local0 #01 ~rfalse
       jin             "gold coffin" g6f l0001
       push            #01
       jump            l0002
l0001: push            #00
l0002: store           g8b sp
       rfalse          

Routine r0373, 1 local (0000)

       je              local0 #06 ~rfalse
       jin             "magic boat" g6f ~l0001
       store           g94 #00
       ret             g94
l0001: store           g94 #01
       ret             g94

Routine r0374, 0 locals ()

       je              g78 #69 #8c ~rfalse
       je              g00 #1d l0001
       je              g00 #88 ?~l0004
l0001: jz              g8e ?~l0003
       clear_attr      "pot of gold" #07
       print           "Suddenly, the rainbow appears to become solid and, I
venture, walkable (I think the giveaway was the stairs and bannister)."
       new_line        
       je              g00 #88 ~l0002
       jin             "pot of gold" "End of Rainbow" ~l0002
       print           "A shimmering pot of gold appears at the end of the
rainbow."
       new_line        
l0002: store           g8e #01
       ret             g8e
l0003: call            r0428 #1c #f6 -> sp
       print           "The rainbow seems to have become somewhat
run-of-the-mill."
       new_line        
       store           g8e #00
       ret             g8e
l0004: je              g00 #1c ~l0005
       store           g8e #00
       call            r0431 s248 -> sp
       ret_popped      
l0005: print_ret       "A dazzling display of color briefly emanates from the
sceptre."

Routine r0375, 1 local (0000)

       je              local0 #03 ~rfalse
       print           "You are at the top of Aragain Falls, an enormous
waterfall with a drop of about 450 feet. The only path here is on the north
end."
       new_line        
       jz              g8e l0001
       print           "A solid rainbow spans the falls."
       jump            l0002
l0001: print           "A beautiful rainbow can be seen over the falls and to
the west."
l0002: new_line        
       rtrue           

Routine r0376, 0 locals ()

       je              g78 #22 #26 ?~l0005
       je              g00 #19 ~l0001
       print_ret       "From here?!?"
l0001: jz              g8e l0004
       je              g00 #1d ~l0002
       call            r0244 #88 -> sp
       ret_popped      
l0002: je              g00 #88 ~l0003
       call            r0244 #1d -> sp
       ret_popped      
l0003: print_ret       "You'll have to say which way..."
l0004: print_ret       "Can you walk on water vapor?"
l0005: je              g78 #51 ~rfalse
       print_ret       "The Frigid River flows under the rainbow."

Routine r0377, 0 locals ()

       je              g78 #32 #12 ~l0001
       je              g76 #62 ~l0001
       call            r0378 -> sp
       ret_popped      
l0001: je              g78 #3b #17 ~l0002
       print_ret       "No chance. Some moron punctured it."
l0002: je              g78 #5f ~rfalse
       je              g77 #62 ~l0003
       call            r0378 -> sp
       ret_popped      
l0003: call            r0328 g77 -> sp
       ret_popped      

Routine r0378, 0 locals ()

       print           "Well done. The boat is repaired."
       new_line        
       get_parent      "punctured boat" -> sp
       insert_obj      "pile of plastic" sp
       call            r0116 #8e -> sp
       ret_popped      

Routine r0379, 0 locals ()

       je              g78 #12 ?~l0004
       je              g77 #83 ~rfalse
       je              g76 #05 ~l0001
       call            r0431 s249 -> sp
       ret_popped      
l0001: je              g76 #9c ~l0002
       print_ret       "You should get in the boat then launch it."
l0002: test_attr       g76 #1a ~l0003
       call            r0116 g76 -> sp
       print           "The "
       print_obj       g76
       print_ret       " floats for a moment, then sinks."
l0003: call            r0116 g76 -> sp
       print           "The "
       print_obj       g76
       print_ret       " splashes into the water and is gone forever."
l0004: je              g78 #22 #45 ~rfalse
       print_ret       "A look before leaping reveals that the river is wide
and dangerous, with swift currents and large, half-hidden rocks. You decide to
forgo your swim."

Routine r0380, 1 local (0000)

       je              g00 #24 #23 #22 l0001
       je              g00 #82 #1f l0001
       call            r0023 #74f1 -> sp
       storew          sp #00 #00
       rtrue           
l0001: call            r0246 g00 g16 -> local0
       jz              local0 l0002
       print           "The flow of the river carries you downstream."
       new_line        
       new_line        
       call            r0244 local0 -> sp
       call            r0246 g00 g17 -> sp
       call            r0022 #74f1 sp -> sp
       storew          sp #00 #01
       rtrue           
l0002: call            r0431 s250 -> sp
       ret_popped      

Routine r0381, 2 locals (0000, 0000)

       je              local0 #02 #06 #03 rfalse
       je              local0 #01 ?~l0018
       je              g78 #89 ~l0003
       je              g76 #13 #1e #1d rfalse
       je              g00 #64 ~l0001
       je              g76 #1f #1c rfalse
l0001: je              g00 #30 ~l0002
       je              g76 #1c rfalse
l0002: print_ret       "Read the label for the boat's instructions."
l0003: je              g78 #4a ?~l0010
       je              g00 #24 #23 #22 l0004
       je              g00 #82 #64 #30 ~l0008
l0004: print           "You are on the "
       je              g00 #64 ~l0005
       print           "reservoir"
       jump            l0007
l0005: je              g00 #30 ~l0006
       print           "stream"
       jump            l0007
l0006: print           "river"
l0007: print_ret       ", or have you forgotten?"
l0008: call            r0245 g15 -> local1
       je              local1 #01 ~l0009
       call            r0246 g00 g17 -> sp
       call            r0022 #74f1 sp -> sp
       storew          sp #00 #01
       rtrue           
l0009: je              local1 #02 rtrue
       print_ret       "You can't launch it here."
l0010: je              g78 #31 ~l0011
       test_attr       g76 #1d l0013
l0011: je              g78 #12 ~l0012
       test_attr       g76 #1d ~l0012
       je              g77 #9c l0013
l0012: je              g78 #2a #13 ?~l0017
       test_attr       g77 #1d ?~l0017
l0013: call            r0116 #9c -> sp
       insert_obj      "punctured boat" g00
       call            r0428 #9c g00 -> sp
       insert_obj      g6f g00
       print           "It seems that the "
       je              g78 #12 #31 ~l0014
       print_obj       g76
       jump            l0015
l0014: print_obj       g77
l0015: print           " didn't agree with the boat, as evidenced by the loud
hissing noise issuing therefrom. With a pathetic sputter, the boat deflates,
leaving you without."
       new_line        
       test_attr       g00 #04 ~rtrue
       new_line        
       je              g00 #64 #30 ~l0016
       call            r0431 s251 -> sp
       rtrue           
l0016: call            r0431 s252 -> sp
       rtrue           
l0017: je              g78 #4a ~rfalse
       print_ret       "You're not in the boat!"
l0018: je              g78 #19 ?~l0020
       jin             "sceptre" g6f l0019
       jin             "nasty knife" g6f l0019
       jin             "sword" g6f l0019
       jin             "rusty knife" g6f l0019
       jin             "bloody axe" g6f l0019
       jin             "stiletto" g6f ~rfalse
l0019: print           "Oops! Something sharp seems to have slipped and
punctured the boat. The boat deflates to the sounds of hissing, sputtering, and
cursing."
       new_line        
       call            r0116 #9c -> sp
       insert_obj      "punctured boat" g00
       call            r0255 #8e -> sp
       rtrue           
l0020: je              g78 #3b #17 ~l0021
       print_ret       "Inflating it further would probably burst it."
l0021: je              g78 #29 ~rfalse
       get_parent      g6f -> sp
       je              sp #9c ~l0022
       print_ret       "You can't deflate the boat while you're in it."
l0022: jin             "magic boat" g00 l0023
       print_ret       "The boat must be on the ground to be deflated."
l0023: print           "The boat deflates."
       new_line        
       store           g94 #01
       call            r0116 #9c -> sp
       insert_obj      "pile of plastic" g00
       call            r0255 #8d -> sp
       ret_popped      

Routine r0382, 0 locals ()

       call            r0026 #17 g76 #06 -> sp
       ret_popped      

Routine r0383, 0 locals ()

       je              g78 #3b #17 ~rfalse
       jin             "pile of plastic" g00 l0001
       print_ret       "The boat must be on the ground to be inflated."
l0001: je              g77 #ad ?~l0003
       print           "The boat inflates and appears seaworthy."
       new_line        
       test_attr       "tan label" #03 l0002
       print           "A tan label is lying inside the boat."
       new_line        
l0002: store           g94 #00
       call            r0116 #8d -> sp
       insert_obj      "magic boat" g00
       call            r0255 #9c -> sp
       ret_popped      
l0003: je              g77 #06 ~l0004
       print_ret       "You don't have enough lung power to inflate it."
l0004: print           "With a "
       print_obj       g77
       print_ret       "? Surely you jest!"

Routine r0384, 1 local (0000)

       je              local0 #06 ~rfalse
       jin             "red buoy" g6f ~rfalse
       jz              g14 rfalse
       print           "You notice something funny about the feel of the buoy."
       new_line        
       store           g14 #00
       ret             g14

Routine r0385, 0 locals ()

       je              g78 #2c ~rfalse
       je              g77 #79 ~rfalse
       inc             g13
       jg              g13 #03 ~l0002
       store           g13 #ffff
       jin             "beautiful jeweled scarab" g00 ~l0001
       set_attr        "beautiful jeweled scarab" #07
l0001: call            r0431 s253 -> sp
       ret_popped      
l0002: je              g13 #03 ~l0003
       test_attr       "beautiful jeweled scarab" #07 ~rfalse
       print           "You can see a scarab here in the sand."
       new_line        
       call            r0255 #74 -> sp
       clear_attr      "beautiful jeweled scarab" #07
       rtrue           
l0003: loadw           g12 g13 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0386, 2 locals (0000, 0000)

       je              local0 #03 ?~l0001
       print           "You are about 10 feet above the ground nestled among
some large branches. The nearest branch above you is above your reach."
       new_line        
       get_child       "Forest Path" -> local1 ~rfalse
       get_sibling     local1 -> sp ~rfalse
       print           "On the ground below you can see:  "
       call            r0230 #4b -> sp
       print_ret       "."
l0001: je              local0 #01 ?~l0007
       je              g78 #1f ~l0002
       je              g76 #f1 ~l0002
       call            r0247 #16 -> sp
       ret_popped      
l0002: je              g78 #20 #1e ~l0003
       je              g76 #f1 ~l0003
       call            r0247 #17 -> sp
       ret_popped      
l0003: je              g78 #31 ~rfalse
       call            r0239 -> sp
       jz              sp rtrue
       je              g76 #59 ?~l0004
       jin             "jewel-encrusted egg" "bird's nest" ~l0004
       print           "The nest falls to the ground, and the egg spills out of
it, seriously damaged."
       new_line        
       call            r0116 #57 -> sp
       insert_obj      "broken jewel-encrusted egg" "Forest Path"
       rtrue           
l0004: je              g76 #57 ~l0005
       print           "The egg falls to the ground and springs open, seriously
damaged."
       insert_obj      "jewel-encrusted egg" "Forest Path"
       call            r0388 -> sp
       new_line        
       rtrue           
l0005: je              g76 g6f #f1 l0006
       insert_obj      g76 "Forest Path"
       print           "The "
       print_obj       g76
       print_ret       " falls to the ground."
l0006: je              g78 #45 ~rfalse
       call            r0431 s257 -> sp
       ret_popped      
l0007: je              local0 #02 ~rfalse
       call            r0022 #7954 #ffff -> sp
       storew          sp #00 #01
       rtrue           

Routine r0387, 0 locals ()

       je              g78 #2a #2b ?~l0007
       je              g76 #57 ?~l0007
       test_attr       g76 #0b ~l0001
       print_ret       "The egg is already open."
l0001: jz              g77 ~l0002
       print_ret       "You have neither the tools nor the expertise."
l0002: je              g77 #01 ~l0003
       print_ret       "I doubt you could do that without damaging it."
l0003: test_attr       g77 #1d l0004
       test_attr       g77 #1c l0004
       je              g78 #2a ?~l0005
l0004: print           "The egg is now open, but the clumsiness of your attempt
has seriously compromised its esthetic appeal."
       call            r0388 -> sp
       new_line        
       rtrue           
l0005: test_attr       g76 #02 ~l0006
       print           "Not to say that using the "
       print_obj       g77
       print_ret       " isn't original too..."
l0006: print           "The concept of using a "
       print_obj       g77
       print           " is certainly original."
       new_line        
       set_attr        g76 #02
       rtrue           
l0007: je              g78 #41 #21 ?~l0008
       print           "There is a noticeable crunch from beneath you, and
inspection reveals that the egg is lying open, badly damaged."
       call            r0388 -> sp
       new_line        
       rtrue           
l0008: je              g78 #7f #2a #2b ~rfalse
       je              g78 #7f ~l0009
       insert_obj      g76 g00
l0009: print           "Your rather indelicate handling of the egg has caused
it some damage, although you have succeeded in opening it."
       call            r0388 -> sp
       new_line        
       rtrue           

Routine r0388, 1 local (0000)

       jin             "golden clockwork canary" "jewel-encrusted egg" ~l0001
       print           " "
       get_prop        "broken clockwork canary" #0e -> sp
       print_paddr     sp
       jump            l0002
l0001: call            r0116 #53 -> sp
l0002: get_parent      "jewel-encrusted egg" -> sp
       insert_obj      "broken jewel-encrusted egg" sp
       call            r0116 #57 -> sp
       rtrue           

Routine r0389, 0 locals ()

       je              g78 #8e ~rfalse
       je              g76 #54 ?~l0004
       jz              g11 ?~l0003
       call            r0390 -> sp
       jz              sp ?l0003
       print           "The canary chirps, slightly off-key, an aria from a
forgotten opera. From out of the greenery flies a lovely songbird. It perches
on a limb just over your head and opens its beak to sing. As it does so a
beautiful brass bauble drops from its mouth, bounces off the top of your head,
and lands glimmering in the grass. As the canary winds down, the songbird flies
away."
       new_line        
       store           g11 #01
       je              g00 #58 ~l0001
       push            #4b
       jump            l0002
l0001: push            g00
l0002: insert_obj      "beautiful brass bauble" sp
       rtrue           
l0003: print_ret       "The canary chirps blithely, if somewhat tinnily, for a
short time."
l0004: print_ret       "There is an unpleasant grinding noise from inside the
canary."

Routine r0390, 0 locals ()

       je              g00 #4e #4d #4c rtrue
       je              g00 #4b #58 rtrue
       rfalse          

Routine r0391, 0 locals ()

       call            r0390 -> sp
       jz              sp ~l0001
       call            r0023 #7954 -> sp
       storew          sp #00 #00
       rfalse          
l0001: random          #64 -> sp
       jg              #0f sp ~rfalse
       print_ret       "You hear in the distance the chirping of a song bird."

Routine r0392, 1 local (0000)

       je              local0 #02 ~l0001
       call            r0022 #7954 #ffff -> sp
       storew          sp #00 #01
       rtrue           
l0001: je              local0 #01 ~rfalse
       je              g78 #1e #20 ~rfalse
       je              g76 #f1 ~rfalse
       call            r0247 #17 -> sp
       ret_popped      

Routine r0393, 0 locals ()

       je              g78 #20 #1f #1e ~rfalse
       print_ret       "The cliff is too steep for climbing."

Routine r0394, 0 locals ()

       je              g78 #45 l0001
       je              g78 #12 ~l0002
       je              g76 #05 ~l0002
l0001: print_ret       "That would be very unwise. Perhaps even fatal."
l0002: je              g77 #5d ~rfalse
       je              g78 #81 #12 ~rfalse
       print           "The "
       print_obj       g76
       print           " tumbles into the river and is seen no more."
       new_line        
       call            r0116 g76 -> sp
       ret_popped      

Routine r0395, 1 local (0000)

       je              g00 #85 l0001
       store           g93 #00
       je              g78 #82 ~rfalse
       print_ret       "You can't tie the rope to that."
l0001: je              g78 #82 ?~l0004
       je              g77 #86 ~rfalse
       jz              g93 l0002
       print_ret       "The rope is already tied to it."
l0002: print           "The rope drops over the side and comes within ten feet
of the floor."
       new_line        
       store           g93 #01
       set_attr        "rope" #0e
       get_parent      "rope" -> local0
       jz              local0 l0003
       jin             local0 #52 rtrue
l0003: insert_obj      "rope" g00
       rtrue           
l0004: je              g78 #1f ~l0005
       je              g76 #81 ~l0005
       jz              g93 l0005
       call            r0247 #16 -> sp
       ret_popped      
l0005: je              g78 #83 ?~l0008
       je              #81 g77 ?~l0008
       test_attr       g76 #1e ?~l0007
       get_prop        g76 #07 -> sp
       jl              sp #00 ~l0006
       print           "Your attempt to tie up the "
       print_obj       g76
       print           " awakens him."
       call            r0421 g76 -> sp
       ret_popped      
l0006: print           "The "
       print_obj       g76
       print_ret       " struggles and you cannot tie him up."
l0007: print           "Why would you tie up a "
       print_obj       g76
       print_ret       "?"
l0008: je              g78 #86 ~l0010
       jz              g93 l0009
       store           g93 #00
       clear_attr      "rope" #0e
       print_ret       "The rope is now untied."
l0009: print_ret       "It is not tied to anything."
l0010: je              g78 #31 ~l0011
       je              g00 #85 ~l0011
       jz              g93 ~l0011
       insert_obj      "rope" "Torch Room"
       print_ret       "The rope drops gently to the floor below."
l0011: je              g78 #5d ~rfalse
       jz              g93 rfalse
       print_ret       "The rope is tied to the railing."

Routine r0396, 0 locals ()

       je              g76 #81 ~l0001
       jz              g93 l0001
       je              g77 #86 ~l0001
       call            r0026 #86 g76 -> sp
       ret_popped      
l0001: print_ret       "It's not attached to that!"

Routine r0397, 0 locals ()

       je              g78 #1f #1e #22 l0001
       je              g78 #20 l0002
l0001: je              g78 #12 ~l0004
       je              g76 #05 ~l0004
l0002: je              g00 #48 ~l0003
       call            r0247 #1d -> sp
       rtrue           
l0003: print           "You tumble down the slide...."
       new_line        
       call            r0244 #48 -> sp
       ret_popped      
l0004: je              g78 #12 ~rfalse
       call            r0398 g76 -> sp
       ret_popped      

Routine r0398, 1 local (0000)

       test_attr       local0 #11 ~l0002
       print           "The "
       print_obj       local0
       print           " falls into the slide and is gone."
       new_line        
       je              local0 #ed ~l0001
       call            r0116 local0 -> sp
       ret_popped      
l0001: insert_obj      local0 "Cellar"
       rtrue           
l0002: call            r0004 g35 -> sp
       print_paddr     sp
       new_line        
       rtrue           

Routine r0399, 0 locals ()

       je              g78 #75 ~rfalse
       jin             "lunch" g76 ~rfalse
       print_ret       "It smells of hot peppers."

Routine r0400, 2 locals (0000, 0000)

       je              g78 #89 ~l0001
       je              g00 #ce ~rfalse
       je              g76 #1d ~rfalse
       print_ret       "You cannot enter in your condition."
l0001: je              g78 #02 #00 #01 rfalse
       je              g78 #08 #0f #0c rfalse
       je              g78 #06 #05 #07 rfalse
       je              g78 #88 #2a #13 l0002
       je              g78 #7e ~l0003
l0002: print_ret       "All such attacks are vain in your condition."
l0003: je              g78 #33 #23 #2b l0004
       je              g78 #29 #17 #2f l0004
       je              g78 #82 #1c #59 l0004
       je              g78 #6e #86 ~l0005
l0004: print_ret       "Even such an action is beyond your capabilities."
l0005: je              g78 #87 ~l0006
       print_ret       "Might as well. You've got an eternity."
l0006: je              g78 #0e ~l0007
       print_ret       "You need no light to guide you."
l0007: je              g78 #09 ~l0008
       print_ret       "You're dead! How can you think of your score?"
l0008: je              g78 #5d ~l0009
       print_ret       "Your hand passes through its object."
l0009: je              g78 #04 #7f #31 ~l0010
       print_ret       "You have no possessions."
l0010: je              g78 #03 ~l0011
       print_ret       "You are dead."
l0011: je              g78 #4f ?~l0015
       print           "The room looks strange and unearthly"
       get_child       g00 -> sp l0012
       print           "."
       jump            l0013
l0012: print           " and objects appear indistinct."
l0013: new_line        
       test_attr       g00 #14 l0014
       print           "Although there is no light, the room seems dimly
illuminated."
       new_line        
l0014: new_line        
       rfalse          
l0015: je              g78 #62 ?~l0018
       je              g00 #d4 ?~l0017
       clear_attr      "brass lantern" #07
       put_prop        g6f #11 #00
       store           g79 #00
       store           g48 #00
       store           g3e #00
       jin             "troll" "The Troll Room" ~l0016
       store           g8d #00
l0016: print           "From the distance the sound of a lone trumpet is heard.
The room becomes very bright and you feel disembodied. In a moment, the
brightness fades and you find yourself rising as if from a long sleep, deep in
the woods. In the distance you can faintly hear a songbird and the sounds of
the forest."
       new_line        
       new_line        
       call            r0244 #4e -> sp
       ret_popped      
l0017: print_ret       "Your prayers are not heard."
l0018: print           "You can't even do that."
       new_line        
       store           g6c #00
       ret             #02

Routine r0401, 0 locals ()

       jz              g90 l0001
       print_ret       "There's not much lake left...."
l0001: je              g78 #26 ~l0002
       print_ret       "It's too wide to cross."
l0002: je              g78 #22 ~rfalse
       print_ret       "You can't swim in this lake."

Routine r0402, 0 locals ()

       je              g78 #22 #7d ~l0001
       print_ret       "You can't swim in the stream."
l0001: je              g78 #26 ~rfalse
       print_ret       "The other side is a sheer rock cliff."

Routine r0403, 0 locals ()

       je              g78 #45 l0001
       je              g78 #12 ~l0002
       je              g76 #05 ~l0002
l0001: print_ret       "You look before leaping, and realize that you would
never survive."
l0002: je              g78 #26 ~l0003
       print_ret       "It's too far to jump, and there's no bridge."
l0003: je              g78 #81 #12 ~rfalse
       je              g77 #0d ~rfalse
       print           "The "
       print_obj       g76
       print           " drops out of sight into the chasm."
       new_line        
       call            r0116 g76 -> sp
       ret_popped      

Routine r0404, 0 locals ()

       je              g78 #48 ~rfalse
       print_ret       "No."

Routine r0405, 0 locals ()

       je              g78 #22 ~l0001
       call            r0247 #15 -> sp
       rtrue           
l0001: print_ret       "The gate is protected by an invisible force. It makes
your teeth ache to touch it."

Routine r0406, 0 locals ()

       je              g78 #23 #2b ~l0001
       print_ret       "The door won't budge."
l0001: je              g78 #22 ~rfalse
       call            r0247 #1c -> sp
       ret_popped      

Routine r0407, 0 locals ()

       je              g78 #2a ~rfalse
       print_ret       "Some paint chips away, revealing more paint."

Routine r0408, 0 locals ()

       je              g78 #18 ~l0001
       print_ret       "There is too much gas to blow away."
l0001: je              g78 #75 ~rfalse
       print_ret       "It smells like coal gas in here."

Routine r0409, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

l0001: store           local1 #00
l0002: inc             local1
       je              local1 local0 ~l0003
       store           local2 #01
       jump            l0007
l0003: loadw           g03 local1 -> local4
       loadw           local4 #00 -> local3
       test_attr       local3 #02 l0004
       jump            l0002
l0004: get_prop        local3 #11 -> sp
       call            sp #01 -> sp
       jz              sp l0005
       jump            l0002
l0005: call            r0414 local4 local5 -> local2
       jz              local2 ~l0006
       store           local2 #00
       jump            l0007
l0006: je              local2 #02 ?~l0002
       random          #03 -> sp
       add             #01 sp -> local5
       jump            l0002
l0007: jz              local2 rtrue
       jz              local5 rtrue
       dec             [local5]
       jz              local5 ?~l0001
       rtrue           

Routine r0410, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       loadw           local0 #00 -> local3
l0001: inc_chk         local4 local3 ~l0002
       jump            l0005
l0002: loadw           local0 local4 -> local5
       je              local5 #00 ~l0003
       print_obj       local2
       jump            l0001
l0003: je              local5 #01 ~l0004
       print_obj       local1
       jump            l0001
l0004: print_paddr     local5
       jump            l0001
l0005: new_line        
       rtrue           

Routine r0411, 2 locals (0001, 0000)

       sub             #07 #02 -> sp
       div             g97 sp -> sp
       div             g01 sp -> sp
       add             #02 sp -> local1
       jz              local0 l0001
       get_prop        g6f #07 -> sp
       add             local1 sp -> sp
       ret_popped      
l0001: ret             local1

Routine r0412, 4 locals (0000, 0000, 0000, 0000)

       loadw           local0 #00 -> local1
       get_prop        local1 #07 -> local2
       jl              local2 #00 l0004
       je              local1 #72 ~l0002
       jz              g1e l0002
       jg              local2 #02 ~l0001
       store           local2 #02
l0001: store           g1e #00
l0002: jz              g77 l0004
       test_attr       g77 #1d ~l0004
       loadw           local0 #01 -> sp
       je              sp g77 ~l0004
       loadw           local0 #02 -> sp
       sub             local2 sp -> local3
       jl              local3 #01 ~l0003
       store           local3 #01
l0003: store           local2 local3
l0004: ret             local2

Routine r0413, 2 locals (0000, 0000)

       get_child       local0 -> local1 l0001
l0001: jz              local1 rfalse
l0002: je              local1 #71 #da #6e l0003
       je              local1 #a9 #80 ~l0004
l0003: ret             local1
l0004: get_sibling     local1 -> local1 ?l0002
       rfalse          

Routine r0414, 12 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000, 0000)

       loadw           local0 #00 -> local2
       loadw           local0 #04 -> local3
       clear_attr      g6f #01
       test_attr       local2 #01 ~l0001
       print           "The "
       print_obj       local2
       print           " slowly regains his feet."
       new_line        
       clear_attr      local2 #01
       rtrue           
l0001: call            r0412 local0 -> sp
       store           local5 sp
       store           local7 #01
       call            r0411 -> local6
       jg              local6 #00 ~rtrue
       call            r0411 #00 -> local8
       call            r0413 g6f -> local4
       jl              local6 #00 ~l0002
       store           local10 #03
       jump            l0013
l0002: je              local6 #01 ~l0004
       jg              local5 #02 ~l0003
       store           local5 #03
l0003: sub             local5 #01 -> sp
       loadw           g0a sp -> local9
       jump            l0009
l0004: je              local6 #02 ~l0006
       jg              local5 #03 ~l0005
       store           local5 #04
l0005: sub             local5 #01 -> sp
       loadw           g09 sp -> local9
       jump            l0009
l0006: jg              local6 #02 ~l0009
       sub             local5 local6 -> local5
       jl              local5 #ffff ~l0007
       store           local5 #fffe
       jump            l0008
l0007: jg              local5 #01 ~l0008
       store           local5 #02
l0008: add             local5 #02 -> sp
       loadw           g08 sp -> local9
l0009: random          #09 -> sp
       sub             sp #01 -> sp
       loadw           local9 sp -> local10
       jz              local1 l0011
       je              local10 #06 ~l0010
       store           local10 #08
       jump            l0011
l0010: store           local10 #09
l0011: je              local10 #06 ~l0012
       jz              local4 l0012
       call            r0002 #19 -> sp
       jz              sp l0012
       store           local10 #07
l0012: sub             local10 #01 -> sp
       loadw           local3 sp -> sp
       call            r0003 sp -> sp
       call            r0410 sp g6f local4 -> sp
l0013: je              local10 #01 ?l0024
       je              local10 #08 ~l0014
       jump            l0024
l0014: je              local10 #02 ~l0015
       jump            l0024
l0015: je              local10 #03 l0016
       je              local10 #09 ~l0017
l0016: store           local6 #00
       jump            l0024
l0017: je              local10 #04 ~l0019
       dec             local6
       jl              local6 #00 ~l0018
       store           local6 #00
l0018: jg              g85 #32 ?~l0024
       sub             g85 #0a -> g85
       jump            l0024
l0019: je              local10 #05 ~l0021
       sub             local6 #02 -> local6
       jl              local6 #00 ~l0020
       store           local6 #00
l0020: jg              g85 #32 ~l0024
       sub             g85 #14 -> g85
       jump            l0024
l0021: je              local10 #06 ~l0022
       set_attr        g6f #01
       jump            l0024
l0022: je              local10 #07 ~l0023
l0023: insert_obj      local4 g00
       call            r0413 g6f -> local11
       jz              local11 l0024
       print           "Fortunately, you still have a "
       print_obj       local11
       print           "."
       new_line        
l0024: call            r0416 local6 local10 local8 -> sp
       ret_popped      

Routine r0415, 13 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000, 0000, 0000)

       loadw           g03 #00 -> local12
l0001: inc             local6
       je              local6 local12 ~l0002
       jump            l0003
l0002: loadw           g03 local6 -> local0
       loadw           local0 #00 -> sp
       je              sp g76 ?~l0001
l0003: set_attr        g76 #02
       test_attr       g6f #01 ~l0004
       print           "You are still recovering from that last blow, so your
attack is ineffective."
       new_line        
       clear_attr      g6f #01
       rtrue           
l0004: call            r0411 -> local4
       jl              local4 #01 ~l0005
       store           local4 #01
l0005: store           local7 local4
       loadw           local0 #00 -> local1
       call            r0412 local0 -> sp
       store           local5 sp
       store           local8 #01
       jz              local8 ~l0007
       je              g76 g6f ~l0006
       call            r0431 s258 -> sp
       ret_popped      
l0006: print           "Attacking the "
       print_obj       local1
       print_ret       " is pointless."
l0007: call            r0413 local1 -> local3
       jz              local3 l0008
       jl              local5 #00 ~l0011
l0008: print           "The "
       jz              local3 ~l0009
       print           "unarmed"
       jump            l0010
l0009: print           "unconscious"
l0010: print           " "
       print_obj       local1
       print           " cannot defend himself: He dies."
       new_line        
       store           local10 #03
       jump            l0022
l0011: je              local5 #01 ~l0013
       jg              local4 #02 ~l0012
       store           local4 #03
l0012: sub             local4 #01 -> sp
       loadw           g0a sp -> local9
       jump            l0018
l0013: je              local5 #02 ~l0015
       jg              local4 #03 ~l0014
       store           local4 #04
l0014: sub             local4 #01 -> sp
       loadw           g09 sp -> local9
       jump            l0018
l0015: jg              local5 #02 ~l0018
       sub             local4 local5 -> local4
       jl              local4 #ffff ~l0016
       store           local4 #fffe
       jump            l0017
l0016: jg              local4 #01 ~l0017
       store           local4 #02
l0017: add             local4 #02 -> sp
       loadw           g08 sp -> local9
l0018: random          #09 -> sp
       sub             sp #01 -> sp
       loadw           local9 sp -> local10
       jz              local2 l0020
       je              local10 #06 ~l0019
       store           local10 #08
       jump            l0020
l0019: store           local10 #09
l0020: je              local10 #06 ~l0021
       jz              local3 l0021
       random          #64 -> sp
       jg              #19 sp ~l0021
       store           local10 #07
l0021: sub             local10 #01 -> sp
       loadw           g07 sp -> sp
       call            r0003 sp -> sp
       call            r0410 sp g76 g77 -> sp
l0022: je              local10 #01 ?l0031
       je              local10 #08 ~l0023
       jump            l0031
l0023: je              local10 #02 ~l0024
       sub             #00 local5 -> local5
       jump            l0031
l0024: je              local10 #03 l0025
       je              local10 #09 ~l0026
l0025: store           local5 #00
       jump            l0031
l0026: je              local10 #04 ~l0027
       dec             local5
       jl              local5 #00 ~l0031
       store           local5 #00
       jump            l0031
l0027: je              local10 #05 ~l0028
       sub             local5 #02 -> local5
       jl              local5 #00 ~l0031
       store           local5 #00
       jump            l0031
l0028: je              local10 #06 ~l0029
       set_attr        g76 #01
       jump            l0031
l0029: je              local10 #07 ~l0030
l0030: clear_attr      local3 #0e
       set_attr        local3 #1d
       insert_obj      local3 g00
       call            r0255 local3 -> sp
l0031: call            r0417 g76 local5 local10 -> sp
       ret_popped      

Routine r0416, 3 locals (0000, 0000, 0000)

       jz              local0 ~l0001
       push            #d8f0
       jump            l0002
l0001: sub             local0 local2 -> sp
l0002: put_prop        g6f #07 sp
       sub             local0 local2 -> sp
       jl              sp #00 ~l0003
       call            r0022 #7fea #1e -> sp
       storew          sp #00 #01
l0003: call            r0411 -> sp
       jg              sp #00 l0004
       call            r0411 #00 -> sp
       sub             #00 sp -> sp
       add             #01 sp -> sp
       put_prop        g6f #07 sp
       call            r0431 s259 -> sp
       rfalse          
l0004: ret             local1

Routine r0417, 3 locals (0000, 0000, 0000)

       put_prop        local0 #07 local1
       jz              local1 ?~l0001
       clear_attr      local0 #02
       print           "Almost as soon as the "
       print_obj       local0
       print           " breathes his last breath, a cloud of sinister black
fog envelops him, and when the fog lifts, the carcass has disappeared."
       new_line        
       call            r0116 local0 -> sp
       get_prop        local0 #11 -> sp
       call            sp #02 -> sp
       ret             local2
l0001: je              local2 #02 ~l0002
       get_prop        local0 #11 -> sp
       call            sp #03 -> sp
       ret             local2
l0002: ret             local2

Routine r0418, 3 locals (0000, 0000, 0000)

       get_prop        local0 #07 -> local1
       call            r0411 -> sp
       sub             local1 sp -> local2
       jg              local2 #03 ~l0001
       random          #64 -> sp
       jg              #5a sp rtrue
       rfalse          
l0001: jg              local2 #00 ~l0002
       random          #64 -> sp
       jg              #4b sp rtrue
       rfalse          
l0002: jz              local2 ~l0003
       random          #64 -> sp
       jg              #32 sp rtrue
       rfalse          
l0003: jg              local1 #01 ~l0004
       random          #64 -> sp
       jg              #19 sp rtrue
       rfalse          
l0004: random          #64 -> sp
       jg              #0a sp rtrue
       rfalse          

Routine r0419, 1 local (0000)

       get_prop        g6f #07 -> local0
       jg              local0 #00 ~l0001
       store           local0 #00
       put_prop        g6f #07 local0
       jump            l0002
l0001: jl              local0 #00 ~l0002
       inc             local0
       put_prop        g6f #07 local0
l0002: jl              local0 #00 ~l0004
       jl              g85 g86 ~l0003
       add             g85 #0a -> g85
l0003: call            r0022 #7fea #1e -> sp
       storew          sp #00 #01
       rtrue           
l0004: store           g85 g86
       call            r0023 #7fea -> sp
       storew          sp #00 #00
       rtrue           

Routine r0420, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       loadw           g03 #00 -> local1
       jz              g3e ~rfalse
       store           local2 #00
l0001: inc             local2
       je              local2 local1 ~l0002
       jump            l0010
l0002: loadw           g03 local2 -> local3
       loadw           local3 #00 -> local4
       jin             local4 g00 ?~l0007
       test_attr       local4 #07 ?l0007
       je              local4 #72 ~l0003
       jz              g1e l0003
       store           g1e #00
       jump            l0001
l0003: get_prop        local4 #07 -> sp
       jl              sp #00 ~l0005
       loadw           local3 #03 -> local5
       jz              local5 l0004
       random          #64 -> sp
       jg              local5 sp ~l0004
       storew          local3 #03 #00
       call            r0421 local4 -> sp
       jump            l0001
l0004: add             local5 #19 -> sp
       storew          local3 #03 sp
       jump            l0001
l0005: test_attr       local4 #02 l0006
       get_prop        local4 #11 -> sp
       call            sp #05 -> sp
       jz              sp ?l0001
l0006: store           local0 #01
       jump            l0001
l0007: test_attr       local4 #02 ~l0008
       get_prop        local4 #11 -> sp
       call            sp #01 -> sp
l0008: je              local4 #72 ~l0009
       store           g1e #00
l0009: clear_attr      g6f #01
       clear_attr      local4 #01
       clear_attr      local4 #02
       call            r0421 local4 -> sp
       jump            l0001
l0010: jz              local0 rfalse
       call            r0409 local1 -> sp
       ret_popped      

Routine r0421, 2 locals (0000, 0000)

       get_prop        local0 #07 -> local1
       jl              local1 #00 ~rtrue
       sub             #00 local1 -> sp
       put_prop        local0 #07 sp
       get_prop        local0 #11 -> sp
       call            sp #04 -> sp
       rtrue           

Routine r0422, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       call            r0023 #807c -> local0
       get_prop        "sword" #0c -> local1
       jin             "sword" "cretin" ?~l0008
       call            r0423 g00 -> sp
       jz              sp l0001
       store           local2 #02
       jump            l0004
l0001: store           local3 #00
l0002: get_next_prop   g00 local3 -> local3
       jz              local3 ~l0003
       jump            l0004
l0003: jl              local3 g98 ?l0002
       get_prop_addr   g00 local3 -> local4
       get_prop_len    local4 -> local5
       je              local5 #01 #04 #05 ?~l0002
       loadb           local4 #00 -> sp
       call            r0423 sp -> sp
       jz              sp ?l0002
       store           local2 #01
l0004: je              local2 local1 rfalse
       je              local2 #02 ~l0005
       print           "Your sword has begun to glow very brightly."
       new_line        
       jump            l0007
l0005: je              local2 #01 ~l0006
       print           "Your sword is glowing with a faint blue glow."
       new_line        
       jump            l0007
l0006: jz              local2 ~l0007
       print           "Your sword is no longer glowing."
       new_line        
l0007: put_prop        "sword" #0c local2
       rtrue           
l0008: storew          local0 #00 #00
       rfalse          

Routine r0423, 2 locals (0000, 0000)

       get_child       local0 -> local1 l0001
l0001: jz              local1 rfalse
       test_attr       local1 #1e ~l0002
       test_attr       local1 #07 ~rtrue
l0002: get_sibling     local1 -> local1 ?l0001
       rfalse          

Routine r0424, 5 locals (0000, 0000, 0000, 0000, 0000)

       get_parent      "thief" -> local0
l0001: test_attr       "thief" #07 l0002
       push            #01
       jump            l0003
l0002: push            #00
l0003: store           local2 sp
       jz              local2 l0004
       get_parent      "thief" -> local0
l0004: je              local0 #be ~l0006
       je              local0 g00 l0006
       jz              local2 l0005
       call            r0340 -> sp
       store           local2 #00
l0005: call            r0341 #be -> sp
       jump            l0011
l0006: je              local0 g00 ~l0007
       test_attr       local0 #14 l0007
       jin             "troll" g00 l0007
       call            r0338 local2 -> sp
       jz              sp ~rtrue
       test_attr       "thief" #07 ?~l0011
       store           local2 #00
       jump            l0011
l0007: jin             "thief" local0 ~l0008
       test_attr       "thief" #07 l0008
       set_attr        "thief" #07
       store           local2 #00
l0008: test_attr       local0 #03 ~l0011
       call            r0428 local0 #72 #4b -> sp
       test_attr       local0 #05 ~l0009
       test_attr       g00 #05 ~l0009
       call            r0342 local0 -> sp
       jump            l0010
l0009: call            r0427 local0 -> sp
l0010: store           local4 sp
l0011: jz              local3 ~l0012
       push            #01
       jump            l0013
l0012: push            #00
l0013: store           local3 sp
       jz              local3 l0017
       jz              local2 ~l0017
       call            r0426 -> sp
l0014: jz              local0 l0015
       get_sibling     local0 -> local0 ~l0015
       jump            l0016
l0015: get_child       #52 -> local0 l0016
l0016: test_attr       local0 #09 ?l0014
       test_attr       local0 #06 ?~l0014
       insert_obj      "thief" local0
       clear_attr      "thief" #02
       set_attr        "thief" #07
       store           g1f #00
       jump            l0001
l0017: je              local0 #be l0018
       call            r0425 local0 -> sp
       ret             local4
l0018: ret             local4

Routine r0425, 4 locals (0000, 0000, 0000, 0000)

       get_child       "thief" -> local1 l0001
l0001: jz              local1 ~l0002
       ret             local3
l0002: get_sibling     local1 -> local2 l0003
l0003: je              local1 #71 #73 ~l0004
       jump            l0005
l0004: get_prop        local1 #0c -> sp
       jz              sp ?~l0005
       call            r0002 #1e -> sp
       jz              sp ?l0005
       clear_attr      local1 #07
       insert_obj      local1 local0
       jz              local3 ~l0005
       je              local0 g00 ~l0005
       print           "The robber, rummaging through his bag, dropped a few
items he found valueless."
       new_line        
       store           local3 #01
l0005: store           local1 local2
       jump            l0001

Routine r0426, 0 locals ()

       get_parent      "thief" -> sp
       jin             "stiletto" sp ~rfalse
       set_attr        "stiletto" #0e
       insert_obj      "stiletto" "thief"
       rtrue           

Routine r0427, 3 locals (0000, 0000, 0000)

       get_child       local0 -> local1 l0001
l0001: jz              local1 rfalse
       get_sibling     local1 -> local2 l0002
l0002: get_prop        local1 #0c -> sp
       jz              sp ?~l0005
       test_attr       local1 #11 ?~l0005
       test_attr       local1 #09 ?l0005
       test_attr       local1 #07 ?l0005
       je              local1 #71 l0003
       call            r0002 #0a -> sp
       jz              sp l0005
l0003: insert_obj      local1 "thief"
       set_attr        local1 #03
       set_attr        local1 #07
       je              local1 #81 ~l0004
       store           g93 #00
l0004: je              local0 g00 ~rfalse
       print           "You suddenly notice that the "
       print_obj       local1
       print_ret       " vanished."
l0005: store           local1 local2
       jump            l0001

Routine r0428, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       get_child       local0 -> local4 l0001
l0001: jz              local4 ~l0002
       ret             local5
l0002: get_sibling     local4 -> local3 l0003
l0003: test_attr       local4 #07 l0006
       test_attr       local4 #09 l0006
       get_prop        local4 #0c -> sp
       jg              sp #00 ~l0006
       jz              local2 l0004
       random          #64 -> sp
       jg              local2 sp ~l0006
l0004: insert_obj      local4 local1
       set_attr        local4 #03
       je              local1 local1 ~l0005
       set_attr        local4 #07
l0005: store           local5 #01
l0006: store           local4 local3
       jump            l0001

Routine r0429, 4 locals (0000, 0000, 0000, 0000)
    Action routine for:
        "diagno"

       call            r0411 #00 -> local0
       get_prop        g6f #07 -> local1
       add             local0 local1 -> local2
       call            r0023 #7fea -> sp
       loadw           sp #00 -> sp
       jz              sp ~l0001
       store           local1 #00
       jump            l0002
l0001: sub             #00 local1 -> local1
l0002: jz              local1 ~l0003
       print           "You are in perfect health."
       jump            l0007
l0003: print           "You have "
       je              local1 #01 ~l0004
       print           "a light wound,"
       jump            l0007
l0004: je              local1 #02 ~l0005
       print           "a serious wound,"
       jump            l0007
l0005: je              local1 #03 ~l0006
       print           "several wounds,"
       jump            l0007
l0006: jg              local1 #03 ~l0007
       print           "serious wounds,"
l0007: jz              local1 l0008
       print           " which will be cured after "
       sub             local1 #01 -> sp
       mul             #1e sp -> local3
       call            r0023 #7fea -> sp
       loadw           sp #01 -> sp
       add             local3 sp -> sp
       print_num       sp
       print           " moves."
l0008: new_line        
       print           "You can "
       jz              local2 ~l0009
       print           "expect death soon"
       jump            l0013
l0009: je              local2 #01 ~l0010
       print           "be killed by one more light wound"
       jump            l0013
l0010: je              local2 #02 ~l0011
       print           "be killed by a serious wound"
       jump            l0013
l0011: je              local2 #03 ~l0012
       print           "survive one serious wound"
       jump            l0013
l0012: jg              local2 #03 ~l0013
       print           "strong enough to take several wounds."
l0013: print           "."
       new_line        
       jz              g3d rfalse
       print           "You have been killed "
       je              g3d #01 ~l0014
       print           "once"
       jump            l0015
l0014: print           "twice"
l0015: print_ret       "."

Routine r0430, 1 local (0001)
    Action routine for:
        "score"

       print           "Your score is "
       print_num       g01
       print           " (total of 350 points), in "
       print_num       g02
       je              g02 #01 ~l0001
       print           " move."
       jump            l0002
l0001: print           " moves."
l0002: new_line        
       print           "This gives you the rank of "
       je              g01 #015e ~l0003
       print           "Master Adventurer"
       jump            l0010
l0003: jg              g01 #014a ~l0004
       print           "Wizard"
       jump            l0010
l0004: jg              g01 #012c ~l0005
       print           "Master"
       jump            l0010
l0005: jg              g01 #c8 ~l0006
       print           "Adventurer"
       jump            l0010
l0006: jg              g01 #64 ~l0007
       print           "Junior Adventurer"
       jump            l0010
l0007: jg              g01 #32 ~l0008
       print           "Novice Adventurer"
       jump            l0010
l0008: jg              g01 #19 ~l0009
       print           "Amateur Adventurer"
       jump            l0010
l0009: print           "Beginner"
l0010: print           "."
       new_line        
       ret             g01

Routine r0431, 2 locals (0000, 0000)

       jz              g3e ?l0001
       print           "^It takes a talented person to be killed while already
dead. YOU are such a talent. Unfortunately, it takes a talented person to deal
with it. I am not such a talent. Sorry."
       new_line        
       call            r0236 -> sp
l0001: print_paddr     local0
       new_line        
       jz              g3c ~l0002
       print           "Bad luck, huh?"
       new_line        
l0002: call            r0234 #fff6 -> sp
       print           " ^   ****  You have died  **** ^^"
       get_parent      g6f -> sp
       test_attr       sp #1b ~l0003
       insert_obj      g6f g00
l0003: jl              g3d #02 ?l0004
       print           "You clearly are a suicidal maniac. We don't allow
psychotics in the cave, since they may harm other adventurers. Your remains
will be installed in the Land of the Living Dead, where your fellow adventurers
may gloat over them."
       new_line        
       call            r0236 -> sp
       ret_popped      
l0004: inc             g3d
       insert_obj      g6f g00
       test_attr       "Altar" #03 ?~l0005
       print           "As you take your last breath, you feel relieved of your
burdens. The feeling passes as you find yourself before the gates of Hell,
where the spirits jeer at you and deny you entry. Your senses are disturbed.
The objects in the dungeon appear indistinct, bleached of color, even unreal."
       new_line        
       new_line        
       store           g3e #01
       store           g8d #01
       store           g79 #01
       store           g48 #01
       put_prop        g6f #11 #7ad5
       call            r0244 #e8 -> sp
       jump            l0006
l0005: print           "Now, let's take a look here... Well, you probably
deserve another chance. I can't quite fix you up completely, but you can't have
everything."
       new_line        
       new_line        
       call            r0244 #4e -> sp
l0006: clear_attr      "trap door" #03
       store           g6c #00
       call            r0432 -> sp
       call            r0433 -> sp
       ret_popped      

Routine r0432, 4 locals (0000, 0000, 0000, 0000)

       jin             "brass lantern" g6f ~l0001
       insert_obj      "brass lantern" "Living Room"
l0001: jin             "gold coffin" g6f ~l0002
       insert_obj      "gold coffin" "Egyptian Room"
l0002: put_prop        "sword" #0c #00
       get_child       g6f -> local2 l0003
l0003: loadw           g87 #00 -> local3
l0004: store           local1 local2
       jz              local1 rtrue
       get_sibling     local1 -> local2 l0005
l0005: get_prop        local1 #0c -> sp
       jg              sp #00 ~l0010
l0006: jz              local0 ~l0007
       get_child       #52 -> local0 l0007
l0007: test_attr       local0 #06 ~l0008
       test_attr       local0 #14 l0008
       random          #64 -> sp
       jg              #32 sp ~l0008
       insert_obj      local1 local0
       jump            l0004
l0008: get_sibling     local0 -> local0 l0009
l0009: jump            l0006
l0010: random          local3 -> sp
       loadw           g87 sp -> sp
       insert_obj      local1 sp
       jump            l0004

Routine r0433, 0 locals ()

       call            r0023 #5c3e -> sp
       storew          sp #00 #00
       call            r0023 #5c6d -> sp
       storew          sp #00 #00
       call            r0023 #649f -> sp
       storew          sp #00 #00
       call            r0023 #6f55 -> sp
       storew          sp #00 #00
       call            r0023 #6f6a -> sp
       storew          sp #00 #00
       call            r0023 #807c -> sp
       storew          sp #00 #00
       call            r0023 #7954 -> sp
       storew          sp #00 #00
       call            r0023 #6f46 -> sp
       storew          sp #00 #00
       clear_attr      "matchbook" #14
       rtrue           

Routine r0434, 0 locals ()

       call            r0436 #a5 s384 -> sp
       ret_popped      

Routine r0435, 0 locals ()

       call            r0436 #65 s385 -> sp
       ret_popped      

Routine r0436, 2 locals (0000, 0000)

       je              g78 #23 #2b ~l0001
       print           "The "
       print_paddr     local1
       print_ret       " are safely inside; there's no need to do that."
l0001: je              g78 #38 #39 ~l0002
       print           "There are lots of "
       print_paddr     local1
       print_ret       " in there."
l0002: je              g78 #12 ~rfalse
       je              g77 local0 ~rfalse
       print           "Don't be silly. It wouldn't be a "
       print_obj       local0
       print_ret       " anymore."

Routine r0437, 0 locals ()

       je              g78 #39 #23 #2b ~l0001
       print_ret       "You can't do that."
l0001: je              g78 #38 ~rfalse
       print           "It looks pretty much like a "
       print_obj       g76
       print_ret       "."

Routine r0438, 0 locals ()

       je              g78 #33 ~rfalse
       call            r0116 g76 -> sp
       print_ret       "What the heck! You won't make friends this way, but
nobody around here is too friendly anyhow. Gulp!"

Routine r0439, 0 locals ()

       je              g78 #58 #5d ~l0001
       print_ret       "The chain is secure."
l0001: je              g78 #54 #69 ~l0002
       print_ret       "Perhaps you should do that to the basket."
l0002: je              g78 #38 ~rfalse
       print_ret       "The chain secures a basket within the shaft."

Routine r0440, 1 local (0000)

       je              local0 #02 ~rfalse
       jin             "troll" g00 ~rfalse
       call            r0255 #d9 -> sp
       ret_popped      

[End of code]

[Start of text]

s001: "Lying in one corner of the room is a beautifully carved crystal skull.
It appears to be grinning at you rather nastily."
s002: "From the chain is suspended a basket."
s003: "At the end of the chain is a basket."
s004: "A hot pepper sandwich is here."
s005: "On the ground is a red hot bell."
s006: "On the altar is a large black book, open to page 569."
s007: "Commandment #12592^^Oh ye who go about saying unto each:  ~Hello
sailor~:^Dost thou know the magnitude of thy sin before the gods?^Yea, verily,
thou shalt be ground between two stones.^Shall the angry gods cast thy body
into the whirlpool?^Surely, thy eye shall be put out with a sharp stick!^Even
unto the ends of the earth shalt thou wander and^Unto the land of the dead
shalt thou be sent at last.^Surely thou shalt repent of thy cunning."
s008: "An ornamented sceptre, tapering to a sharp point, is here."
s009: "A sceptre, possibly that of ancient Egypt itself, is in the coffin. The
sceptre is ornamented with colored enamel, and tapers to a sharp point."
s010: "On the table is an elongated brown sack, smelling of hot peppers."
s011: "There is a silver chalice, intricately engraved, here."
s012: "On the shore lies Poseidon's own crystal trident."
s013: "A bottle is sitting on the table."
s014: "The solid-gold coffin used for the burial of Ramses II is here."
s015: "There is an enormous diamond (perfectly cut) here."
s016: "There is an exquisite jade figurine here."
s017: "On a table is a nasty-looking knife."
s018: "The deceased adventurer's useless lantern is here."
s019: "An old leather bag, bulging with coins, is here."
s020: "A battery-powered brass lantern is on the trophy case."
s021: "There is a brass lantern (battery-powered) here."
s022: "A small leaflet is on the ground."
s023: "~WELCOME TO ZORK!^^ZORK is a game of adventure, danger, and low cunning.
In it you will explore some of the most amazing territory ever seen by mortals.
No computer should be without one!~^"
s024: "There is a matchbook whose cover says ~Visit Beautiful FCD#3~ here."
s025: "^(Close cover before striking)^^YOU too can make BIG MONEY in the
exciting field of PAPER SHUFFLING!^^Mr. Anderson of Muddle, Mass. says: ~Before
I took this course I was a lowly bit twiddler. Now with what I learned at GUE
Tech I feel really important and can obfuscate and confuse with the best.~^^Dr.
Blank had this to say: ~Ten short days ago all I could look forward to was a
dead-end job as a doctor. Now I have a promising future and make really big
Zorkmids.~^^GUE Tech can't promise these fantastic results to everyone. But
when you earn your degree from GUE Tech, your future will be brighter.^"
s026: "Fortunately, there is still one chance for you to be a vandal, for on
the far wall is a painting of unparalleled beauty."
s027: "A painting by a neglected genius is here."
s028: "On the two ends of the altar are burning candles."
s029: "On the ground is a pile of leaves."
s030: "There is a folded pile of plastic here which has a small valve
attached."
s031: "On the ground is a large platinum bar."
s032: "At the end of the rainbow is a pot of gold."
s033: "The prayer is inscribed in an ancient script, rarely used today. It
seems to be a philippic against small insects, absent-mindedness, and the
picking up and dropping of small objects. The final verse consigns trespassers
to the land of the dead. All evidence indicates that the beliefs of the ancient
Zorkers were obscure."
s034: "There is a red buoy here (probably a warning)."
s035: "A large coil of rope is lying in the corner."
s036: "Beside the skeleton is a rusty knife."
s037: "The engravings translate to ~This space intentionally left blank.~"
s038: "Above the trophy case hangs an elvish sword of great antiquity."
s039: "In the trophy case is an ancient parchment which appears to be a map."
s040: "The map shows a forest with three clearings. The largest clearing
contains a house. Three paths leave the large clearing. One of these paths,
leading southwest, is marked ~To Stone Barrow~."
s041: "   !!!!  FROBOZZ MAGIC BOAT COMPANY  !!!!^^Hello, Sailor!^^Instructions
for use:^^   To get into a body of water, say ~Launch~.^   To get to shore, say
~Land~ or the direction in which you want to maneuver the boat.^^Warranty:^^ 
This boat is guaranteed against all defects for a period of 76 milliseconds
from date of purchase or until first used, whichever comes first.^^Warning:^  
This boat is made of thin plastic.^   Good Luck!^"
s042: "There is a suspicious-looking individual, holding a large bag, leaning
against one wall. He is armed with a deadly stiletto."
s043: "Sitting on the pedestal is a flaming torch, made of ivory."
s044: "Some guidebooks entitled ~Flood Control Dam #3~ are on the reception
desk."
s045: "~ Flood Control Dam #3^^FCD#3 was constructed in year 783 of the Great
Underground Empire to harness the mighty Frigid River. This work was supported
by a grant of 37 million zorkmids from your omnipotent local tyrant Lord Dimwit
Flathead the Excessive. This impressive structure is composed of 370,000 cubic
feet of concrete, is 256 feet tall at the center, and 193 feet wide at the top.
The lake created behind the dam has a volume of 1.7 billion cubic feet, an area
of 12 million square feet, and a shore line of 36 thousand feet.^^We will now
point out some of the more interesting features of FCD#3 as we conduct you on a
guided tour of the facilities:^        1) You start your tour here in the Dam
Lobby. You will notice on your right that...."
s046: "A nasty-looking troll, brandishing a bloody axe, blocks all passages out
of the room."
s047: "Lying half buried in the mud is an old trunk, bulging with jewels."
s048: "There is an old trunk here, bulging with assorted jewels."
s049: "There is an object which looks like a tube of toothpaste here."
s050: "---> Frobozz Magic Gunk Company <---^   All-Purpose Gunk"
s051: "There are old engravings on the walls here."
s052: "The engravings were incised in the living rock of the cave wall by an
unknown hand. They depict, in symbolic form, the beliefs of the ancient
Zorkers. Skillfully interwoven with the bas reliefs are excerpts illustrating
the major religious tenets of that time. Unfortunately, a later age seems to
have considered them blasphemous and just as skillfully excised them."
s053: "Loosely attached to a wall is a small piece of paper."
s054: "^Congratulations!^^You are the privileged owner of ZORK I: The Great
Underground Empire, a self-contained and self-maintaining universe. If used and
maintained in accordance with normal operating practices for small universes,
ZORK will provide many months of trouble-free operation.^^"
s055: "Beside you on the branch is a small bird's nest."
s056: "In the bird's nest is a large egg encrusted with precious jewels,
apparently scavenged by a childless songbird. The egg is covered with fine gold
inlay, and ornamented in lapis lazuli and mother-of-pearl. Unlike most eggs,
this one is hinged and closed with a delicate looking clasp. The egg appears
extremely fragile."
s057: "There is a somewhat ruined egg here."
s058: "There is a golden clockwork canary nestled in the egg. It has ruby eyes
and a silver beak. Through a crystal window below its left wing you can see
intricate machinery inside. It appears to have wound down."
s059: "There is a golden clockwork canary nestled in the egg. It seems to have
recently had a bad experience. The mountings for its jewel-like eyes are empty,
and its silver beak is crumpled. Through a cracked crystal window below its
left wing you can see the remains of intricate machinery. It is not clear what
result winding it would have, as the mainspring seems sprung."
s060: "The door is boarded and you can't remove the boards."
s061: "You are standing in front of a massive barrow of stone. In the east face
is a huge stone door which is open. You cannot see into the dark of the tomb."
s062: "You are facing the north side of a white house. There is no door here,
and all the windows are boarded up. To the north a narrow path winds through
the trees."
s063: "The windows are all boarded."
s064: "You are facing the south side of a white house. There is no door here,
and all the windows are boarded."
s065: "This is a forest, with trees in all directions. To the east, there
appears to be sunlight."
s066: "There is no tree here suitable for climbing."
s067: "You would need a machete to go further west."
s068: "This is a dimly lit forest, with large trees all around."
s069: "The forest becomes impenetrable to the north."
s070: "The forest thins out, revealing impassable mountains."
s071: "The mountains are impassable."
s072: "The rank undergrowth prevents eastward movement."
s073: "Storm-tossed trees block your way."
s074: "This is a path winding through a dimly lit forest. The path heads
north-south here. One particularly large tree with some low branches stands at
the edge of the path."
s075: "You cannot climb any higher."
s076: "You are in a small clearing in a well marked forest path that extends to
the east and west."
s077: "Only Santa Claus climbs down chimneys."
s078: "This is the attic. The only exit is a stairway leading down."
s079: "The door is nailed shut."
s080: "You try to ascend the ramp, but it is impossible, and you slide back
down."
s081: "This is a small room with passages to the east and south and a
forbidding hole leading west. Bloodstains and deep scratches (perhaps made by
an axe) mar the walls."
s082: "The troll fends you off with a menacing gesture."
s083: "You are on the east edge of a chasm, the bottom of which cannot be seen.
A narrow passage goes north, and the path you are on continues to the east."
s084: "The chasm probably leads straight to the infernal regions."
s085: "This is an art gallery. Most of the paintings have been stolen by
vandals with exceptional taste. The vandals left through either the north or
west exits."
s086: "This appears to have been an artist's studio. The walls and floors are
splattered with paints of 69 different colors. Strangely enough, nothing of
value is hanging here. At the south end of the room is an open door (also
covered with paint). A dark and narrow chimney leads up from a fireplace;
although you might be able to get up it, it seems unlikely you could get back
down."
s087: "This is part of a maze of twisty little passages, all alike."
s088: "You have come to a dead end in the maze."
s089: "This is part of a maze of twisty little passages, all alike. A skeleton,
probably the remains of a luckless adventurer, lies here."
s090: "The grating is closed."
s091: "The east wall is solid rock."
s092: "The cyclops doesn't look like he'll let you past."
s093: "This is a long passage. To the west is one entrance. On the east there
is an old wooden door, with a large opening in it (about cyclops sized)."
s094: "This is a large room, whose east wall is solid granite. A number of
discarded bags, which crumble at your touch, are scattered about on the floor.
There is an exit down a staircase."
s095: "You would drown."
s096: "The dam blocks your way."
s097: "You are standing on a path beside a gently flowing stream. The path
follows the stream, which flows from west to east."
s098: "The stream emerges from a spot too small for you to enter."
s099: "You are on the gently flowing stream. The upstream route is too narrow
to navigate, and the downstream route is invisible due to twisting walls. There
is a narrow beach to land on."
s100: "The channel is too narrow."
s101: "This is a tiny cave with entrances west and north, and a staircase
leading down."
s102: "This is a tiny cave with entrances west and north, and a dark,
forbidding staircase leading down."
s103: "This is a cold and damp corridor where a long east-west passageway turns
into a southward path."
s104: "This is a long and narrow corridor where a long north-south passageway
briefly narrows even further."
s105: "This is a winding passage. It seems that there are only exits on the
east and north."
s106: "This is an ancient room, long under water. There is an exit to the south
and a staircase leading up."
s107: "This is a narrow east-west passageway. There is a narrow stairway
leading down at the north end of the room."
s108: "This is a circular stone room with passages in all directions. Several
of them have unfortunately been blocked by cave-ins."
s109: "This cave has exits to the west and east, and narrows to a crack toward
the south. The earth is particularly damp here."
s110: "It is too narrow for most insects."
s111: "This is a high north-south passage, which forks to the northeast."
s112: "A chasm runs southwest to northeast and the path follows it. You are on
the south side of the chasm, where a crack opens into a passage."
s113: "Are you out of your mind?"
s114: "Some invisible force prevents you from passing through the gate."
s115: "You have entered the Land of the Living Dead. Thousands of lost souls
can be heard weeping and moaning. In the corner are stacked the remains of
dozens of previous adventurers less fortunate than yourself. A passage exits to
the north."
s116: "You have entered a low cave with passages leading northwest and east."
s117: "This is a room which looks like an Egyptian tomb. There is an ascending
staircase to the west."
s118: "You cannot go down without fracturing many bones."
s119: "You cannot reach the rope."
s120: "This is the north end of a large temple. On the east wall is an ancient
inscription, probably a prayer in a long-forgotten language. Below the prayer
is a staircase leading down. The west wall is solid granite. The exit to the
north end of the room is through huge marble pillars."
s121: "This is the south end of a large temple. In front of you is what appears
to be an altar. In one corner is a small hole in the floor which leads into
darkness. You probably could not get back up it."
s122: "You haven't a prayer of getting the coffin down there."
s123: "This room appears to have been the waiting room for groups touring the
dam. There are open doorways here to the north and east marked ~Private~, and
there is a path leading south over the top of the dam."
s124: "This is what appears to have been the maintenance room for Flood Control
Dam #3. Apparently, this room has been ransacked recently, for most of the
valuable equipment is gone. On the wall in front of you is a group of buttons
colored blue, yellow, brown, and red. There are doorways to the west and
south."
s125: "You are at the base of Flood Control Dam #3, which looms above you and
to the north. The river Frigid is flowing by here. Along the river are the
White Cliffs which seem to form giant walls stretching from north to south
along the shores of the river as it winds its way downstream."
s126: "You are on the Frigid River in the vicinity of the Dam. The river flows
quietly here. There is a landing on the west shore."
s127: "You cannot go upstream due to strong currents."
s128: "The White Cliffs prevent your landing here."
s129: "The river turns a corner here making it impossible to see the Dam. The
White Cliffs loom on the east bank and large rocks prevent landing on the
west."
s130: "There is no safe landing spot here."
s131: "Just in time you steer away from the rocks."
s132: "The river descends here into a valley. There is a narrow beach on the
west shore below the cliffs. In the distance a faint rumbling can be heard."
s133: "You are on a narrow strip of beach which runs along the base of the
White Cliffs. There is a narrow path heading south along the Cliffs and a tight
passage leading west into the cliffs themselves."
s134: "The path is too narrow."
s135: "You are on a rocky, narrow strip of beach beside the Cliffs. A narrow
path leads north along the shore."
s136: "The river is running faster here and the sound ahead appears to be that
of rushing water. On the east shore is a sandy beach. A small area of beach can
also be seen below the cliffs on the west shore."
s137: "You can land either to the east or the west."
s138: "The sound of rushing water is nearly unbearable here. On the east shore
is a large landing area."
s139: "You are on the east shore of the river. The water here seems somewhat
treacherous. A path travels from north to south here, the south end quickly
turning around a sharp corner."
s140: "You are on a large sandy beach on the east shore of the river, which is
flowing quickly by. A path runs beside the river to the south here, and a
passage is partially buried in sand to the northeast."
s141: "This is a sand-filled cave whose exit is to the southwest."
s142: "It's a long way..."
s143: "You are on top of a rainbow (I bet you never thought you would walk on a
rainbow), with a magnificent view of the Falls. The rainbow travels east-west
here."
s144: "You are on a small, rocky beach on the continuation of the Frigid River
past the Falls. The beach is narrow due to the presence of the White Cliffs.
The river canyon opens here and sunlight shines in from above. A rainbow
crosses over the falls to the east and a narrow path continues to the
southwest."
s145: "You are beneath the walls of the river canyon which may be climbable
here. The lesser part of the runoff of Aragain Falls flows by below. To the
north is a narrow path."
s146: "You are on a ledge about halfway up the wall of the river canyon. You
can see from here that the main flow from Aragain Falls twists along a passage
which it is impossible for you to enter. Below you is the canyon bottom. Above
you is more cliff, which appears climbable."
s147: "You are at the top of the Great Canyon on its west wall. From here there
is a marvelous view of the canyon and parts of the Frigid River upstream.
Across the canyon, the walls of the White Cliffs join the mighty ramparts of
the Flathead Mountains to the east. Following the Canyon upstream to the north,
Aragain Falls may be seen, complete with rainbow. The mighty Frigid River flows
out from a great dark cavern. To the west and south can be seen an immense
forest, stretching for miles around. A path leads northwest. It is possible to
climb down into the canyon from here."
s148: "Nice view, lousy place to jump."
s149: "You are standing at the entrance of what might have been a coal mine.
The shaft enters the west wall, and there is another exit on the south end of
the room."
s150: "You are in a small room. Strange squeaky sounds may be heard coming from
the passage at the north end. You may also escape to the east."
s151: "This is a large room, in the middle of which is a small shaft descending
through the floor into darkness below. To the west and the north are exits from
this room. Constructed over the top of the shaft is a metal framework to which
a heavy iron chain is attached."
s152: "You wouldn't fit and would die if you could."
s153: "This is a small non-descript room. However, from the direction of a
small descending staircase a foul odor can be detected. To the south is a
narrow tunnel."
s154: "This is a small room which smells strongly of coal gas. There is a short
climb up some stairs and a narrow tunnel leading east."
s155: "This is a very small room. In the corner is a rickety wooden ladder,
leading downward. It might be safe to descend. There is also a staircase
leading upward."
s156: "This is a rather wide room. On one side is the bottom of a narrow wooden
ladder. To the west and the south are passages leaving the room."
s157: "You have come to a dead end in the mine."
s158: "This is a long and narrow passage, which is cluttered with broken
timbers. A wide passage comes from the east and turns at the west end of the
room into a very narrow passageway. From the west comes a strong draft."
s159: "You cannot fit through this passage with that load."
s160: "This is a small drafty room in which is the bottom of a long shaft. To
the south is a passageway and to the east a very narrow passage. In the shaft
can be seen a heavy iron chain."
s161: "This is a non-descript part of a coal mine."
s162: "This is a small chamber, which appears to have been part of a coal mine.
On the south wall of the chamber the letters ~Granite Wall~ are etched in the
rock. To the east is a long passage, and there is a steep metal slide twisting
downward. To the north is a small opening."
s163: "F"
s164: "If you insist.... Poof, you're dead!"
s165: " it at the time."
s166: "Kicking the "
s167: "You should have looked before you leaped."
s168: "In the movies, your life would be passing before your eyes."
s169: "Geronimo..."
s170: "Playing in this way with the "
s171: "Pushing the "
s172: "Fiddling with the "
s173: "Very good. Now you can go to the second grade."
s174: "Are you enjoying yourself?"
s175: "Wheeeeeeeeee!!!!!"
s176: "Do you expect me to applaud?"
s177: " hits you squarely in the head. Normally, this wouldn't do much damage,
but by incredible mischance, you fall over backwards trying to duck, and break
your neck, justice being swift and merciful in the Great Underground Empire."
s178: "Oh, no! You have walked into the slavering fangs of a lurking grue!"
s179: "Waving the "
s180: "  "
s181: "    "
s182: "      "
s183: "        "
s184: "          "
s185: " doesn't seem to work."
s186: " isn't notably helpful."
s187: " has no effect."
s188: " and devoured you!"
s189: "You can't swim in the dungeon."
s190: "Hello."
s191: "Good day."
s192: "Nice weather we've been having lately."
s193: "Goodbye."
s194: "A valiant attempt."
s195: "You can't be serious."
s196: "An interesting idea..."
s197: "What a concept!"
s198: "Look around."
s199: "Too late for that."
s200: "Have your eyes checked."
s201: "Well, you seem to have been brushing your teeth with some sort of glue.
As a result, your mouth gets glued together (with your nose) and you die of
respiratory failure."
s202: "With great effort, you open the window far enough to allow entry."
s203: "The window closes (more easily than it opened)."
s204: "The door reluctantly opens to reveal a rickety staircase descending into
darkness."
s205: "The door swings shut and closes."
s206: "A nasty-looking troll, brandishing a bloody axe, blocks all passages out
of the room."
s207: "A pathetically babbling troll is here."
s208: "An unconscious troll is sprawled on the floor. All passages out of the
room are open."
s209: "A nasty-looking troll, brandishing a bloody axe, blocks all passages out
of the room."
s210: "A troll is here."
s211: "The leaves burn, and so do you."
s212: "The grating opens."
s213: "The grating opens to reveal trees above you."
s214: "As the knife approaches its victim, your mind is submerged by an
overmastering will. Slowly, your hand turns, until the rusty blade is an inch
from your neck. The knife seems to sing as it savagely slits your throat."
s215: "I'm afraid that the leap you attempted has done you in."
s216: "You are lifted up by the rising river! You try to swim, but the currents
are too strong. You come closer, closer to the awesome structure of Flood
Control Dam #3. The dam beckons to you. The roar of the water nearly deafens
you, but you remain conscious as you tumble over the dam toward your certain
doom among the rocks at its base."
s217: "up to your ankles."
s218: "up to your shin."
s219: "up to your knees."
s220: "up to your hips."
s221: "up to your waist."
s222: "up to your chest."
s223: "up to your neck."
s224: "over your head."
s225: "high in your lungs."
s226: "The room is full of water and cannot be entered."
s227: "I'm afraid you have done drowned yourself."
s228: "The rising water carries the boat over the dam, down the river, and over
the falls. Tsk, tsk."
s229: "The cyclops, tired of all of your games and trickery, grabs you firmly.
As he licks his chops, he says ~Mmm. Just like Mom used to make 'em.~ It's nice
to be appreciated."
s230: "The cyclops seems somewhat agitated."
s231: "The cyclops appears to be getting more agitated."
s232: "The cyclops is moving about the room, looking for something."
s233: "The cyclops was looking for salt and pepper. No doubt they are
condiments for his upcoming snack."
s234: "The cyclops is moving toward you in an unfriendly manner."
s235: "You have two choices: 1. Leave  2. Become dinner."
s236: "There is a suspicious-looking individual, holding a bag, leaning against
one wall. He is armed with a vicious-looking stiletto."
s237: "There is a suspicious-looking individual lying unconscious on the
ground."
s238: "The voice of the guardian of the dungeon booms out from the darkness,
~Your disrespect costs you your life!~ and places your head on a sharp pole."
s239: "A booming voice says ~Wrong, cretin!~ and you notice that you have
turned into a pile of dust. How, I can't imagine."
s240: "There is a worthless piece of canvas here."
s241: "The lamp appears a bit dimmer."
s242: "The lamp is definitely dimmer now."
s243: "The lamp is nearly out."
s244: "The candles grow shorter."
s245: "The candles are becoming quite short."
s246: "The candles won't last long now."
s247: "^      ** BOOOOOOOOOOOM **"
s248: "The structural integrity of the rainbow is severely compromised, leaving
you hanging in mid-air, supported only by water vapor. Bye."
s249: "You splash around for a while, fighting the current, then you drown."
s250: "Unfortunately, the magic boat doesn't provide protection from the rocks
and boulders one meets at the bottom of waterfalls. Including this one."
s251: "Another pathetic sputter, this time from you, heralds your drowning."
s252: "In other words, fighting the fierce currents of the Frigid River. You
manage to hold your own for a bit, but then you are carried over a waterfall
and into some nasty rocks. Ouch!"
s253: "The hole collapses, smothering you."
s254: "You seem to be digging a hole here."
s255: "The hole is getting deeper, but that's about it."
s256: "You are surrounded by a wall of sand on all sides."
s257: "That was just a bit too far down."
s258: "Well, you really did it that time. Is suicide painless?"
s259: "It appears that that last blow was too much for you. I'm afraid you are
dead."
s260: "Your "
s261: " misses the "
s262: " by an inch."
s263: "A good slash, but it misses the "
s264: " by a mile."
s265: "You charge, but the "
s266: " jumps nimbly aside."
s267: "Clang! Crash! The "
s268: " parries."
s269: "A quick stroke, but the "
s270: " is on guard."
s271: "A good stroke, but it's too slow; the "
s272: " dodges."
s273: " crashes down, knocking the "
s274: " into dreamland."
s275: "The "
s276: " is battered into unconsciousness."
s277: "A furious exchange, and the "
s278: " is knocked out!"
s279: "The haft of your "
s280: " knocks out the "
s281: "."
s282: "It's curtains for the "
s283: " as your "
s284: " removes his head."
s285: "The fatal blow strikes the "
s286: " square in the heart:  He dies."
s287: " takes a fatal blow and slumps to the floor dead."
s288: " is struck on the arm; blood begins to trickle down."
s289: " pinks the "
s290: " on the wrist, but it's not serious."
s291: "Your stroke lands, but it was only the flat of the blade."
s292: "The blow lands, making a shallow gash in the "
s293: "'s arm!"
s294: " receives a deep gash in his side."
s295: "A savage blow on the thigh! The "
s296: " is stunned but can still fight!"
s297: "Slash! Your blow lands! That one hit an artery, it could be serious!"
s298: "Slash! Your stroke connects! This could be serious!"
s299: " is staggered, and drops to his knees."
s300: " is momentarily disoriented and can't fight back."
s301: "The force of your blow knocks the "
s302: " back, stunned."
s303: " is confused and can't fight back."
s304: "The quickness of your thrust knocks the "
s305: "'s weapon is knocked to the floor, leaving him unarmed."
s306: " is disarmed by a subtle feint past his guard."
s307: "The Cyclops misses, but the backwash almost knocks you over."
s308: "The Cyclops rushes you, but runs into the wall."
s309: "The Cyclops sends you crashing to the floor, unconscious."
s310: "The Cyclops breaks your neck with a massive smash."
s311: "A quick punch, but it was only a glancing blow."
s312: "A glancing blow from the Cyclops' fist."
s313: "The monster smashes his huge fist into your chest, breaking several
ribs."
s314: "The Cyclops almost knocks the wind out of you with a quick punch."
s315: "The Cyclops lands a punch that knocks the wind out of you."
s316: "Heedless of your weapons, the Cyclops tosses you against the rock wall
of the room."
s317: "The Cyclops grabs your "
s318: ", tastes it, and throws it to the ground in disgust."
s319: "The monster grabs you on the wrist, squeezes, and you drop your "
s320: " in pain."
s321: "The Cyclops seems unable to decide whether to broil or stew his dinner."
s322: "The Cyclops, no sportsman, dispatches his unconscious victim."
s323: "The troll swings his axe, but it misses."
s324: "The troll's axe barely misses your ear."
s325: "The axe sweeps past as you jump aside."
s326: "The axe crashes against the rock, throwing sparks!"
s327: "The flat of the troll's axe hits you delicately on the head, knocking
you out."
s328: "The troll neatly removes your head."
s329: "The troll's axe stroke cleaves you from the nave to the chops."
s330: "The troll's axe removes your head."
s331: "The axe gets you right in the side. Ouch!"
s332: "The flat of the troll's axe skins across your forearm."
s333: "The troll's swing almost knocks you over as you barely parry in time."
s334: "The troll swings his axe, and it nicks your arm as you dodge."
s335: "The troll charges, and his axe slashes you on your "
s336: " arm."
s337: "An axe stroke makes a deep wound in your leg."
s338: "The troll's axe swings down, gashing your shoulder."
s339: "The troll hits you with a glancing blow, and you are momentarily
stunned."
s340: "The troll swings; the blade turns on your armor but crashes broadside
into your head."
s341: "You stagger back under a hail of axe strokes."
s342: "The troll's mighty blow drops you to your knees."
s343: "The axe hits your "
s344: " and knocks it spinning."
s345: "The troll swings, you parry, but the force of his blow knocks your "
s346: " away."
s347: "The axe knocks your "
s348: " out of your hand. It falls to the floor."
s349: "The troll hesitates, fingering his axe."
s350: "The troll scratches his head ruminatively:  Might you be magically
protected, he wonders?"
s351: "Conquering his fears, the troll puts you to death."
s352: "The thief stabs nonchalantly with his stiletto and misses."
s353: "You dodge as the thief comes in low."
s354: "You parry a lightning thrust, and the thief salutes you with a grim
nod."
s355: "The thief tries to sneak past your guard, but you twist away."
s356: "Shifting in the midst of a thrust, the thief knocks you unconscious with
the haft of his stiletto."
s357: "The thief knocks you out."
s358: "Finishing you off, the thief inserts his blade into your heart."
s359: "The thief comes in from the side, feints, and inserts the blade into
your ribs."
s360: "The thief bows formally, raises his stiletto, and with a wry grin, ends
the battle and your life."
s361: "A quick thrust pinks your left arm, and blood starts to trickle down."
s362: "The thief draws blood, raking his stiletto across your arm."
s363: "The stiletto flashes faster than you can follow, and blood wells from
your leg."
s364: "The thief slowly approaches, strikes like a snake, and leaves you
wounded."
s365: "The thief strikes like a snake! The resulting wound is serious."
s366: "The thief stabs a deep cut in your upper arm."
s367: "The stiletto touches your forehead, and the blood obscures your vision."
s368: "The thief strikes at your wrist, and suddenly your grip is slippery with
blood."
s369: "The butt of his stiletto cracks you on the skull, and you stagger back."
s370: "The thief rams the haft of his blade into your stomach, leaving you out
of breath."
s371: "The thief attacks, and you fall back desperately."
s372: "A long, theatrical slash. You catch it on your "
s373: ", but the thief twists his knife, and the "
s374: " goes flying."
s375: "The thief neatly flips your "
s376: " out of your hands, and it drops to the floor."
s377: "You parry a low thrust, and your "
s378: " slips out of your hand."
s379: "The thief, a man of superior breeding, pauses for a moment to consider
the propriety of finishing you off."
s380: "The thief amuses himself by searching your pockets."
s381: "The thief entertains himself by rifling your pack."
s382: "The thief, forgetting his essentially genteel upbringing, cuts your
throat."
s383: "The thief, a pragmatist, dispatches you as a threat to his livelihood."
s384: "coins"
s385: "jewels"

[End of text]

[End of file]
