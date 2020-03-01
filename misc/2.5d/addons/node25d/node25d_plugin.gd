tool
extends EditorPlugin


func _enter_tree():
	# When this plugin node enters tree, add the custom types
	add_custom_type("Node25D", "Node2D", preload("Node25D.gd"), preload("icons/node25d_icon.png"))
	add_custom_type("YSort25D", "Node", preload("YSort25D.gd"), preload("icons/ysort25d_icon.png"))
	add_custom_type("ShadowMath25D", "KinematicBody", preload("ShadowMath25D.gd"), preload("icons/shadowmath25d_icon.png"))


func _exit_tree():
	# When the plugin node exits the tree, remove the custom types
	remove_custom_type("ShadowMath25D")
	remove_custom_type("YSort25D")
	remove_custom_type("Node25D")
