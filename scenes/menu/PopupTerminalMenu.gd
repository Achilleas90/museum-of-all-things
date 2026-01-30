extends Control

@warning_ignore("unused_signal")
signal resume

func _on_terminal_menu_resume():
  if visible:
    call_deferred("emit_signal", "resume")
