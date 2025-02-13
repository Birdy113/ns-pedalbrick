Config = {}

----- SUPPORT QB/QBX
framework = "qbx" --------- write "qb" for QBCore or qbx for Qbox
itemname = "murstein" ------ Item Name
target = "ox_target" ---- Support for ox_target an qb-target
inv = "ox_inventory" ----- if you use QB write qb-inventory 
mursteiner = { ------  Here you can add which prop to pickup bricks
    "prop_pile_dirt_02",
    "ng_proc_brick_01a",
    "prop_conc_blocks01b",
}
time = -1 ---- How long you want the car to drive before it stops in ms example time = 30000 means 30 seconds
useitem = false  ---- True if you want to use the item in inventory --- False means you use target to place the brick by hovering over the door with target
breakcar = false ----- if you want to break the car when it hits stuff "One way trip then turn this to true"

--- Language --- 

pickup = "Plukk opp murstein"  ---- Pickup brick
placedonpedal = "Du satt murstein på gasspedalen" ----- Place brick on pedal
locked = "Bilen er låst"  --------- Car is locked
close = "Du må være i nærheten av et kjøretøy" -------- You need to be closer to a vehicle
plasserpedal = "Plasser mursteinen på pedalen"  ------- for target Place brick on pedal