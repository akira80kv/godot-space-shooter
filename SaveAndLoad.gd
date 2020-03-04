extends Node

const SAVE_DATA_PATH = "res://save_data.json"
var default_save_data = {
	highscore = 0
}

func _ready():
	var a = "highscore"
	print(str(default_save_data[a]))
	
func save_data_to_file(save_data):
	var json_string = to_json(save_data)
	var save_file = File.new()
	save_file.open(SAVE_DATA_PATH, File.WRITE)
	save_file.store_line(json_string)
	save_file.close()
	

