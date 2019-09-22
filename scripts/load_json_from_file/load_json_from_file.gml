/// @desc load_json_from_file(filename) Loads json from a file
/// @arg filename

var filename = argument0;

var buffer = buffer_load(filename);
var json_string = buffer_read(buffer, buffer_string);
buffer_delete(buffer);

var json = json_decode(json_string);
return json;