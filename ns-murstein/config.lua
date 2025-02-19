Config = {}

----- SUPPORT QB/QBX
framework = "qbx" ---- write "qb" for QBCore or qbx for Qbox
itemname = "murstein" ---- Item Name
target = "ox_target" ---- Support for ox_target an qb-target
inv = "ox_inventory" ---- if you use QB write qb-inventory 
mursteiner = { ----  Here you can add which prop to pickup bricks
    "prop_pile_dirt_02",
    "ng_proc_brick_01a",
    "prop_conc_blocks01b",
}
time = -1 ---- How long you want the car to drive before it stops in ms example time = 30000 means 30 seconds
breakcar = false ----- if you want to break the car when it hits stuff "One way trip then turn this to true"

--- Language --- 

pickup = "Pickup brick"  ---- Pickup brick
placedonpedal = "You placed the brick on the pedal" ---- Place brick on pedal
locked = "Vehicle is locked"  --- Car is locked
close = "You need to be closer to the vehicle" --- You need to be closer to a vehicle
plasserpedal = "Place the brick on the pedal"  --- for target Place brick on pedal
missingbrick = "You are missing a brick" --- You need a brick to do this
