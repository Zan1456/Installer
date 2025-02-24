// modify items
// Remove items by identifiers
modify(mode=mode.multiple
	where=this.id(id.restore_previous_versions,id.cast_to_device)
	vis=vis.remove)

modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)
modify(type="back" find="shortcut" in="/new" vis=vis.remove)

modify(find="unpin" pos="bottom" menu="Pin//Unpin")
modify(find="pin" pos="top" menu="Pin//Unpin")

modify(where=this.id==id.copy_as_path menu="file manage")
modify(type="dir.back|drive.back" where=this.id==id.customize_this_folder pos=1 sep="top" menu="file manage")

modify(where=this.name=="open in terminal" || this.name=="open linux shell here" || this.id==id.open_powershell_window_here
	pos="bottom" menu="Terminal")
modify(find='Gadgets' image=icon.gadgets)
modify(find="open with visual studio" pos=1 menu="develop/editors")