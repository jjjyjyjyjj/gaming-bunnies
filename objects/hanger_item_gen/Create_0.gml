
// initialize variable
closet_items ={a: bag, b: black_watch, c: boho_top, d: jeans}; 

// count number of items in closet
len_struct = struct_names_count(closet_items);

// Pick a random item key
var key_index = irandom_range(0, len_struct - 1);
var key_char = chr(ord("a") + key_index);

// Assign chosen item sprite
chosen_hitem = variable_struct_get(closet_items, key_char);

x = 1200
y = 150