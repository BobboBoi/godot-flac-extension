extends Control

func _on_file_dialog_file_selected(path: String) -> void:
	var stream := AudioStreamFLAC.load_from_file(path)
	$AudioStreamPlayer.stream = stream
	$AudioStreamPlayer.play()
	
	$RichTextLabel.text = "Mono: " + str(stream.is_monophonic())

func _on_button_pressed() -> void:
	$FileDialog.show()
