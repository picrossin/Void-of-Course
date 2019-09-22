/// @desc save_string_to_file(filename, string) Takes in a string and filename and saves to a new file
/// @arg filename
/// @arg json_string

var filename = argument0;
var json_string = argument1;

var buffer = buffer_create(string_byte_length(json_string) + 1, buffer_fixed, 1);
buffer_write(buffer, buffer_string, json_string);
buffer_save(buffer, filename);
buffer_delete(buffer);