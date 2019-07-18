module Map exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

camps = List.sortBy Tuple.second [("A0","[re]connect [re]connection temple")
        ,("A0","[re]connect chameleons closet")
        ,("A0","[re]connect humans of now")
        ,("A0","[re]connect treatment tent")
        ,("A0","[re]connect inside out")
        ,("A0","[re]connect living room")
        ,("A0","[re]connect vesica")
        ,("A0","[re]connect sanctuary living room")
        ,("A0","[re]connect gul stue")
        ,("A0","[re]connect spiritual nomads")
        ,("A0","[re]connect glow stone")
        ,("A1","[re]connect private camping")
        ,("A1","[re]connect Borderland Post office")
        ,("A2","[re]connect private camping")
        ,("A2","[re]connect forgotten dream")
        ,("A3","Sensorial POP-UP experience Camp tents, kitchen")
        ,("A3","Big Boy Balkans Big Band The Living Room")
        ,("A3","Camp Keksi Beach Fun Times")
        ,("A4","TuttiFrutti Harmonograph, Tribe of Mentors")
        ,("A4","ElDorado WaterWake Solar Zipline")
        ,("A5","[re]connect private camping")
        ,("A5","[re]connect Kitchen")
        ,("A5","The Lingonberry Girls The Lingonberry")
        ,("A6","[re]connect private camping")
        ,("A6","[re]connect project space")
        ,("A6","Favela Rv’s Basecamp by the path way up to the Favelas, 6-7 Rv’s Favela basecamp")
        ,("A6","Calm baby RV’s Wishing Tree")
        ,("B0","The Space Zirkus The Space Zirkus")
        ,("B0","The Space Zirkus Space Backstage Tent")
        ,("B0","The Space Zirkus The Space Timetable")
        ,("B0","Play Clay Video Café Play Clay Video Café")
        ,("B0","Borderland Wellness Club Spa and Resport Wellness Club Spa and resort")
        ,("B1","The coulor café The coulor café")
        ,("B1","The coulor café Lost & Found")
        ,("B1","The coulor café Coffee junction")
        ,("B2","Research Camp (Psyence) Research Camp")
        ,("B2","The coulor café The coulor café")
        ,("B2","Dawn Our own Connecting Space")
        ,("B2","Mazlows piramid Escape room")
        ,("B3","The Space Zirkus Tents and some public spaces inc 6m bell tent")
        ,("B3","Lovers Love life art")
        ,("B3","secret chemists BurnSafe")
        ,("B3","Space Zirkus 6m bell tent")
        ,("B4","The Space Zirkus The Space Container")
        ,("B4","The Space Zirkus Kitchen, Cooking and Dining Area")
        ,("B4","The Space Zirkus Storage and Construction")
        ,("B4","The Space Zirkus Yurt + Bedouin Tent")
        ,("B5","Fuzzynation Fuzzynation")
        ,("B5","Camp Tiny Camp The Sauna Caravan")
        ,("B6","Borderland Wellness Club Borderland Wellness Club")
        ,("C0","Belle Époque Absinthe Bar by camp Carnifornication Belle Époque")
        ,("C0","Spank-a-lot - Spanking and Sensory Bar Spank-a-lot")
        ,("C0","Bodyland Workshop Bodyland")
        ,("C0","NoName Trashdrumrack (some noize)")
        ,("C0","Elements Elements plaza")
        ,("C0","Elements Fire Bar")
        ,("C0","Elements Air Nation")
        ,("C0","Elements Elementary Blender")
        ,("C0","Elements Elementary School")
        ,("C0","Camp of No Time Clock Tower of No Time + The great wall of colours and textures")
        ,("C0","Elements Water Nation")
        ,("C1","Elements Camping #1")
        ,("C1","Elements The Kitchen")
        ,("C2","NoName Tents")
        ,("C2","NoName Music Wagon")
        ,("C2","Camp NoCamp Camping, kitchen, community area")
        ,("C3","wadobe Camping")
        ,("C3","Camp of No Time Clock Tower of No Time in C center")
        ,("C3","Elements Camping #2")
        ,("C4","Carnifornication Camping")
        ,("C4","Carnifornication Cooking")
        ,("C4","Bodyland cooking Bodyland")
        ,("C4","Shithole camping")
        ,("C5","Elements Earth Nation: The Cave & HBN kitchen tent")
        ,("C5","Elements Earth Nation: Camping")
        ,("C5","Bodyland Bodyland camping")
        ,("C6","Cube Noir Cube Noir")
        ,("C6","The Witches Burn A witchy pagan atmosphere")
        ,("C6","Insomnia Mini art")
        ,("D0","Camp Serendipity Serendipity Kinbaku Playground")
        ,("D0","QQQ Queer Qastle")
        ,("D0","The Kids Herb Garden")
        ,("D0","The Dying Camp Balls of Bliss")
        ,("D0","Shame Pain Glory The Decadently fancy playhouse")
        ,("D0","PlemPlem Sauna Tent")
        ,("D0","PlemPlem Black Light Lounge")
        ,("D0","Camp Serendipity Camp Serendipity Workshop Lounge")
        ,("D0","MY DICK MY 1000+1 tiny DICK")
        ,("D0","QQQ Queer Qloset")
        ,("D0","Oily Space Mermaids UFO")
        ,("D1","QQQ Queer Plaza")
        ,("D1","QQQ Slut on a stick")
        ,("D1","QQQ QQQ qamping")
        ,("D2","QQQ Heavy Petting Zoo")
        ,("D2","QQQ Naked Lunch Kitchen")
        ,("D2","QQQ Starving Queer Kitchen")
        ,("D2","QQQ/Macho Kitchen Macho Kitchen")
        ,("D3","Oily Space Mermaids UFO")
        ,("D3","PlemPlem privat camping, salon, kitchen, (+bus, car)")
        ,("D3","MY DICK MY 1000+1 tiny DICK kitchen")
        ,("D3","MY 1000+1 tiny DICK camp")
        ,("D4","The Dying Camp The Pancake Oasis")
        ,("D4","The Kids kitchen/tents, herb garden in center")
        ,("D4","sexycool")
        ,("D4","MY DICK MY 1000+1 Dick camp")
        ,("D4","My Dick Camping")
        ,("D5","Shame pain glory Private camping, kitchen, tents")
        ,("D5","Co-Munity Private camping, kitchen, tents")
        ,("D5","JJ and SF Private camping, kitchen, tents")
        ,("D6","Camp Serendipity Camp Serendipity and our Workshop Lounge")
        ,("D6","Oyster Camp Emotional Striptease, Oinkville")
        ,("E0","Camp at the End of the Universe The Psychonautic Chilldome")
        ,("E0","Camp at the End of the Universe Chilldome Patio Area")
        ,("E0","Camp at the End of the Universe Fire spinning space")
        ,("E0","Jam Camp Music & Theatre Improv JamSpace")
        ,("E0","Camp at the End of the Universe Movement Space")
        ,("E0","The might be Espresso Bar Espresso lounge")
        ,("E0","SolarPunks Solar Chill dome An insulated 6.2m dome with AC cooling powered by solar!")
        ,("E0","Camp at the end of the universe free safety space around fire area")
        ,("E1","Camp at the End of the Universe Camp")
        ,("E1","Camp at the End of the Universe kitchen")
        ,("E1","No Shit Shirlock Camp")
        ,("E2","SolarPunks SolarPunks")
        ,("E2","Less is More")
        ,("E2","La Kris Camp")
        ,("E2","Space Cunt Astrobingo, tarotkort")
        ,("E2","Cooking Corpses Camping incl RV + food camp.")
        ,("E3","Jam Camp Kitchen + bell tent")
        ,("E3","Jam Camp camping")
        ,("E3","Dampsa-hippyvan camping + camper van")
        ,("E3","Uncamp Camp + bar")
        ,("E4","The Hippie Trap Fireballoon")
        ,("E4","Tunnel of 1000 lights")
        ,("E4","Bodyworkers Bodyworks temple")
        ,("E4","Esmeralda`s Esmeralda`s small things")
        ,("E5","Improv Camp Camp + Kitchen, Improv scene")
        ,("E5","Camp Short Camp")
        ,("E5","Rawr & Rest Camp (working name) Camp Rawr & Rest")
        ,("E5","Rawr & Rest Camp (working name) Intercourse Incorporated")
        ,("E6","Pass Camp")
        ,("E6","The Oasis Make-your-own dream house + Camp")
        ,("E6","The holly cup of time 2 Camp + caravan")
        ,("E6","The might be Espresso Bar Camp")
        ,("F0","Feywild Feywomb")
        ,("F0","Temple of Visions Meditation & Ceremony Yurt")
        ,("F0","Plan B Open workshop tent")
        ,("F0","Camp Nonsense Dome think too hard")
        ,("F0","Butterfly Effect Camp Workshop space and camp infrastructure")
        ,("F0","Hokuspokus Tea Town Hygge")
        ,("F1","Fjorderlings Borderland playpark and ChillLounge")
        ,("F1","Polyrose Camping, Workshops")
        ,("F1","Plan B Camping, workshops")
        ,("F2","Highbearnation/Elements camping De Waarde tent")
        ,("F2","Feywild Feywomb")
        ,("F2","Creature Creators improv, blarping, character creation, acting, comedy shows")
        ,("F2","Mjau camping, being")
        ,("F3","Camp Eclectica Chill vibes/Camping.")
        ,("F3","That was it N/A")
        ,("F3","Rainbow Midwives Bubbly birth of Unicorns/camping")
        ,("F3","GlowFurDome")
        ,("F4","Other End of the Universe Camping")
        ,("F4","The FLOWer garden Cozy home-space (big kitchen and chill out space with roofs), sharing flow and chill vibes")
        ,("F4","Kinky leif camping")
        ,("F5","Camp Nonsense Camping, kitchen, dome")
        ,("F5","Frogs Against Humanity x")
        ,("F5","the camp camp camping.")
        ,("F5","Butterfly Effect Camp Camping")
        ,("F6","Temple of Visions Camp & Kitchen/Dining tent")
        ,("G0","Kidsville Kidsville big white play tent")
        ,("G0","Kidsville Kidsville vegetarian meal plan")
        ,("G0","Kidsville Kidsville bar")
        ,("G0","Kidsville Carl’s Dome")
        ,("G0","Kidsville The Tipi / Parents Playground")
        ,("G0","Kidsville The @sshole")
        ,("G0","The wild sacred Fire: The Lightbringers Wild Sacred Fire’s main kitchen")
        --,(ty")
        ,("G0","The Clear Frequency 100 % sober space (workshop tent)")
        ,("G0","The Saddu Camp (the two Saddhus in the camp will be camping in G5 which is then full) The New Eccentric Altar")
        ,("G0","Camp Gayvid Obama/Biden vibe zone")
        ,("G1","Free Campers & Some Cloth Free Private camping")
        ,("G1","The clear frequency TCF member camping space")
        ,("G1","The Clear frequency TCF kitchen structure etc")
        ,("G1","Beyoncé Camps, tents, chillout, workshops")
        ,("G2","Kidsville Space for small camps (2-6 ppl)")
        ,("G2","Kidsville: Camp Ohana Pipe Dream")
        ,("G2","Kidsville: Snuffle Pups Shaded chill space")
        ,("G2","Kidsville: The mixed experience The mixed experience")
        ,("G3","Kidsville: Camp Hostile The Roastery")
        ,("G3","Kidsville Space for small camps (2-6 ppl)")
        ,("G4","Kidsville: The ‘mixed experience’ The ‘mixed experience’")
        ,("G4","Kidsville Space for small camps (2-6 ppl)")
        ,("G5","Kidsville: Camp I am So Bored")
        ,("G5","Kidsville Camp Hang Around")
        ,("G5","Kidsville: Camp Nightlight Kidsville bar!")
        ,("G5","Kidsville; The terrible twos Some minor installations")
        ,("G6","Camp burnt toast II Electric art cars, radios, radio repeater station, The Orb, Digital Mandela, CO2 neutral Borderland")
        ,("G6","Lazy Noodles camp Lazy Noodles")
        ,("G6","The wild sacred Fire: The Lightbringers Space for inhabitants of The WSF")
        ,("G6","Beduin Boudoir (will be moved to RV zone, just put here for preliminery info)")
        ,("G6","Camels and snakes")
        ,("H1","aVANgers Group of 5 free Campervans")
        ,("H1","aVANgers SHade in the centre")
        ,("H2","Less is More")
        ,("H4","{Adult} LittleSpace [beta] Place only used, if not needed for bigger camps. (workshops, camping, play sessions.)")
        ,("H6","Space travel jam jamming sessions, small sound system, tent and shady area with coziness and gemütlichkeit")
        ,("X1","Theater of Touch Theater of Touch")
        ,("X1","Tantric Tipi The Tantric Tipi 2.0")
        ,("X1","Tapestry Weaver’s Guild Grand Treasure Hunt")
        ,("X2","Foxhole The Foxhole")
        ,("X2","Foxhole Kitchen")
        ,("X2","Foxhole Personal tents")
        ,("X3","Silly Sanctuary Silly Sanctuary")
        ,("X3","Silly Sanctuary Craft Maddness")
        ,("X3","Silly Sanctuary Magical tree")
        ,("X4","Silly Sanctuary")
        ,("X4","Kitchen and Glamping tents")
        ,("X4","Dressing room and bathroom")
        ,("X5","Zine better days The Hiding place")
        ,("X6","Temple of Tokamak")
        ,("X6","The Wild Sacred Fire: Bringer of darkness Extended camp for partyshamans")
        ,("X7","Zip-Ties Enginerding, Inc (option 2) Sticks, Ropes & Lights")
        ,("X7","Butterfly effect camp Camp and art")
        ,("X8","The Neighbours Fields of flowes")
        ,("X8","The Village Wishing tree")
        ,("X8","Coffe Camp Music machine")
        ,("X8","BFFriends Surprise neoncorner & spontatnious art")
        ,("X9","Chill Out Queen Favelas")
        ,("X9","The Little Hut of Infinity Vibrations")
        ,("X9","The other village QUEENS GLITTER")
        ,("X9","The chill out shady lounge The Little Hut of Infinity Vibrations")
        ,("X9","The sailcanvas-shade HoLy Coffe!")
        ,("X10","Tea By the SEA")
        ,("X10","Tea tent, Lighthouse")
        ,("X10","Tea by the Sea camp village")
        ,("X11 ","Tentacle Tiki Lounge")
        ,("X11 ","Fugtiga Frallan/ Wet Baguette")
        ,("X11 ","The Brainy Bunch (The Brain Machine) – camp The Brain Machine + Labyrinth")
        ,("X12","Camp Azylum")
        ,("X12","Azylum Kitchen")
        ,("X12","The Brainy Bunch (The Brain Machine) – camp")
        ,("X12","The Brainy Azylum Co-created Chillout")
        ,("X13","Camp Croquis")
        ,("X13","Camp Croquis Platform and Guided sessions: Croquis & Collaborative Arts")
        ,("X13","Camp Croquis Confession session")
        ,("X13","Camp Croquis The bar of Requirement - A doubble bar espeziale-surprise")
        ,("X14","Wonderland Tent / structure for workshops")
        ,("X14","Wonderland")
        ,("X14","Wonderland Kitchen tent")
        ,("X15","Tricky Trip TP Tricky Trip ft. Space Mountain")
        ,("X15","The Spectators")
        ,("X15","The trip stoppers")
        ,("X16","Orgyrobot Orgyrobot")
        ,("X17","Camp Short Introvert’s Recharging Station")
        ,("X17","Zip-Ties Enginerding, Inc (option 1) Sticks, Ropes & Lights")
        ,("X19","The Miau-Miau Lounge The Glowfur Dome")
        ,("X19","Barsuk & Friend")
        ,("X21","The Mighty Jungle")
        ,("X23","The federal Government of the Borderland The Supreme Court")
        ,("X24","Camp of Failure common chillout area, private space")
        ,("X25","Champ pain Chill out space")
        ,("X25","Champ pain Kitchen and hangout")
        ,("X27","Shadow bunnies BunnyHorse Bar")
        ,("X27","Shadow bunnies Bar and camp lounge area")
        ,("X28","The Edge The Shameless Whorehouse")
        ,("X28","The Porn Cinema")
        ,("X29","The Edge kitchen / personal camping")
        ,("X30","The Mighty Jungle Lounge, music,")
        ,("X30","The retirement home: elders of whine-on")
        ,("X30","TIG")
        ,("X30","Nadja")
        ,("X31","The Glade camp The Glade")
        ,("X31","Family Hüppin Magic Key Tree")
        ,("X31","Family Hüppin Magic garden")
        ,("X31","Family Hüppin Kitchen and Sructure")
        ,("X32","Shadow bunnies kitchen")
        ,("X32","Shadow bunnies")
        ,("X33","Shadow bunnies")
        ,("X33","Muumimaa Camp [ Kitchen & Sleeps ]")
        ,("X34","Muumimaa Camp [ Kitchen & Sleeps ]")
        ,("X34","Turbo Libido [ Kitchen & Sleeps ]")
        ,("SC1","Tvorpet Tiny stage")
        ,("SC1","Outer Bass Ship large van, producing shaking grounds")
        ,("SC2","Deep Dive Sacred Shrine")
        ,("SC3","The Glade")]

viewMap : List (Html msg)
viewMap = [ a [ href "/map.png"
              , target "_blank" ] [ img [ class "map"
                                        , src "/map.png" ] [] ]
          , h2 [] [ text "List of camps" ]
          , viewCamps
          ]

viewCamps : Html msg
viewCamps = ul [ class "camplist" ] <| List.map (\c ->
                                                     li [] [ span [ class "campname" ]
                                                                 [ Tuple.second c
                                                                 |> String.slice 0 30
                                                                 |> text ]
                                                     , span [ class "camplocation" ]
                                                                 [ Tuple.first c
                                                                 |> String.padRight 3 ' '
                                                                 |> text ] ])
            camps


