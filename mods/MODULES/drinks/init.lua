local slab_str = "stairs:slab_wood"

--Craft Recipes

minetest.register_craft({
    output = 'drinks:juice_press',
    recipe = {
      {'default:stick', 'default:steel_ingot', 'default:stick'},
      {'default:stick', 'mesecraft_bucket:bucket_empty', 'default:stick'},
      {slab_str, slab_str, 'vessels:drinking_glass'},
    }
  })

minetest.register_craft({
    output = 'drinks:liquid_barrel',
    recipe = {
      {'group:wood', 'group:wood', 'group:wood'},
      {'group:wood', 'group:wood', 'group:wood'},
      {slab_str, '', slab_str},
    }
  })

drinks = {
  drink_table = {},
  juiceable = {},
  shortname = {
    ['jcu'] = {size = 2, name = 'vessels:drinking_glass'},
    ['jbo'] = {size = 4, name = 'vessels:glass_bottle'},
    ['jsb'] = {size = 4, name = 'vessels:steel_bottle'},
    ['jbu'] = {size = 16, name = 'mesecraft_bucket:bucket_empty'}
  },
  longname = {
    ['vessels:drinking_glass'] = {size = 2, name = 'jcu'},
    ['vessels:glass_bottle'] = {size = 4, name = 'jbo'},
    ['vessels:steel_bottle'] = {size = 4, name = 'jsb'},
    ['mesecraft_bucket:bucket_empty'] = {size = 16, name = 'jbu'},
  },
}


-- Honestly not needed for default, but used as an example to add support to other mods.
-- Basically to use this all you need to do is add the name of the fruit to make juiceable (see line 14 for example)
-- Add the new fruit to a table like I've done in line 16.
-- The table should follow this scheme: internal name, Displayed name, colorize code.
-- Check out the drinks.lua file for more info how how the colorize code is used.

if minetest.get_modpath('default') then
  drinks.juiceable['apple'] = true -- Name of fruit to make juiceable.
  drinks.juiceable['cactus'] = { amount = 2 }
  drinks.drink_table['apple'] = { desc = 'Apple', color = '#ecff56'}
  drinks.drink_table['cactus'] = { desc = 'Cactus', color = '#96F97B'}
end

if minetest.get_modpath('bushes_classic') then
  drinks.juiceable['blackberry'] = true
  drinks.juiceable['blueberry'] = true
  drinks.juiceable['gooseberry'] = true
  drinks.juiceable['raspberry'] = true
  drinks.juiceable['strawberry'] = true
  drinks.drink_table['blackberry'] = { desc = 'Blackberry', color = '#581845'}
  drinks.drink_table['blueberry'] = { desc = 'Blueberry', color = '#521dcb'}
  drinks.drink_table['gooseberry'] = { desc = 'Gooseberry', color = '#9cf57c'}
  drinks.drink_table['raspberry'] = { desc = 'Raspberry', color = '#C70039'}
  drinks.drink_table['strawberry'] = { desc = 'Strawberry', color = '#ff3636'}
end

if minetest.get_modpath('farming_plus') then
  drinks.juiceable['banana'] = true
  drinks.juiceable['melon'] = { amount = 2 }
  drinks.juiceable['lemon_item'] = true
  drinks.juiceable['orange_item'] = true
  drinks.juiceable['peach_item'] = true
  drinks.juiceable['rhubarb_item'] = true
  drinks.juiceable['tomato_item'] = true
  drinks.juiceable['strawberry_item'] = true
  drinks.juiceable['raspberry_item'] = true
  drinks.drink_table['banana'] = { desc = 'Banana', color = '#eced9f'}
  drinks.drink_table['lemon'] = { desc = 'Lemon', color = '#feffaa'}
  drinks.drink_table['melon'] = { desc = 'Melon', color = '#ef4646'}
  drinks.drink_table['orange'] = { desc = 'Orange', color = '#ffc417'}
  drinks.drink_table['peach'] = { desc = 'Peach', color = '#f2bc1e'}
  drinks.drink_table['rhubarb'] = { desc = 'Rhubarb', color = '#fb8461'}
  drinks.drink_table['tomato'] = { desc = 'Tomato', color = '#d03a0e'}
  drinks.drink_table['strawberry'] = { desc = 'Strawberry', color = '#ff3636'}
  drinks.drink_table['raspberry'] = { desc = 'Raspberry', color = '#C70039'}
end

if minetest.get_modpath('crops') then
  drinks.juiceable['melon'] = { amount = 4 }
  drinks.juiceable['melon_slice'] = { juice = 'melon' }
  drinks.juiceable['tomato'] = true
  drinks.juiceable['pumpkin'] = true
  drinks.drink_table['melon'] = { desc = 'Melon', color = '#ef4646'}
  drinks.drink_table['tomato'] = { desc = 'Tomato', color = '#d03a0e'}
  drinks.drink_table['pumpkin'] = { desc = 'Pumpkin', color = '#ffc04c'}
end

if minetest.get_modpath('farming') then
  drinks.juiceable['melon_8'] = { juice = 'melon', amount = 4 }
  drinks.juiceable['melon_slice'] = { juice = 'melon' }
  drinks.juiceable['tomato'] = true
  drinks.juiceable['carrot'] = true
  drinks.juiceable['cucumber'] = true
  drinks.juiceable['grapes'] = true
  drinks.juiceable['pumpkin'] = true
  drinks.juiceable['raspberries'] = true
  drinks.juiceable['rhubarb'] = true
  drinks.juiceable['pineapple'] = { amount = 5 }
  drinks.juiceable['pineapple_ring'] = { juice = 'pineapple' }
  drinks.drink_table['melon'] = { desc = 'Melon', color = '#ef4646'}
  drinks.drink_table['tomato'] = { desc = 'Tomato', color = '#990000'}
  drinks.drink_table['carrot'] = { desc = 'Carrot', color = '#ed9121'}
  drinks.drink_table['cucumber'] = { desc = 'Cucumber', color = '#73af59'}
  drinks.drink_table['grapes'] = { desc = 'Grape', color = '#b20056'}
  drinks.drink_table['pumpkin'] = { desc = 'Pumpkin', color = '#ffc04c'}
  drinks.drink_table['raspberries'] = { desc = 'Raspberry', color = '#C70039'}
  drinks.drink_table['rhubarb'] = { desc = 'Rhubarb', color = '#fb8461'}
  drinks.drink_table['pineapple'] = { desc = 'Pineapple', color = '#DCD611'}
  minetest.unregister_item('farming:pineapple_juice')
  minetest.register_alias('farming:pineapple_juice', 'drinks:jcu_pineapple')
  minetest.unregister_item('farming:carrot_juice')
  minetest.register_alias('farming:carrot_juice', 'drinks:jcu_carrot')
  minetest.unregister_item('farming:cactus_juice')
  minetest.register_alias('farming:cactus_juice', 'drinks:jcu_cactus')
end

if minetest.get_modpath('fruit') then
  drinks.juiceable['pear'] = true
  drinks.juiceable['plum'] = true
  drinks.juiceable['peach'] = true
  drinks.juiceable['orange'] = true
  drinks.drink_table['pear'] = { desc = 'Pear', color = '#ecff56'}
  drinks.drink_table['plum'] = { desc = 'Plum', color = '#8e4585'}
  drinks.drink_table['peach'] = { desc = 'Peach', color = '#f2bc1e'}
  drinks.drink_table['orange'] = { desc = 'Orange', color = '#ffc417'}
end

if minetest.get_modpath('ethereal') then
  drinks.juiceable['banana'] = true
  drinks.juiceable['coconut'] = true
  drinks.juiceable['orange'] = true
  drinks.juiceable['strawberry'] = true
  drinks.drink_table['banana'] = { desc = 'Banana', color = '#eced9f'}
  drinks.drink_table['coconut'] = { desc = 'Coconut', color = '#ffffff'}
  drinks.drink_table['orange'] = { desc = 'Orange', color = '#ffc417'}
  drinks.drink_table['strawberry'] = { desc = 'Strawberry', color = '#ff3636'}
end

-- replace craftitem to node definition
-- use existing node as template (e.g. 'vessel:glass_bottle')
drinks.register_item = function( name, template, def )
  local template_def = minetest.registered_nodes[template]
  if template_def then
    local drinks_def = table.copy(template_def)

    -- replace/add values
    for k,v in pairs(def) do
      if k == "groups" then
        -- special handling for groups: merge instead replace
        for g,n in pairs(v) do
          drinks_def[k][g] = n
        end
      else
        drinks_def[k]=v
      end
    end

    if def.inventory_image then
      drinks_def.wield_image = drinks_def.inventory_image
      drinks_def.tiles = { drinks_def.inventory_image }
    end

    minetest.register_node( name, drinks_def )
  end
end

-- backward compatibility for juices
minetest.register_on_mods_loaded(function()
    local tbl = drinks.drink_table
    for i,juice in ipairs(drinks.drink_table) do
      tbl[juice[1]] = {
        desc = juice[2],
        color = juice[3],
        health = juice[4],
      }
      tbl[i] = nil
    end
  end)

local MP = minetest.get_modpath('drinks')
dofile(MP..'/drinks.lua')
dofile(MP..'/drink_machines.lua')
dofile(MP..'/formspecs.lua')
