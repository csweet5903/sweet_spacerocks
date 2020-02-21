/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 276796E1
/// @DnDArgument : "expr" "room"
var l276796E1_0 = room;
switch(l276796E1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 13EA52F1
	/// @DnDParent : 276796E1
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 294AA0B2
		/// @DnDParent : 13EA52F1
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "75806ed3-3c9b-47d0-afe9-7db4d67abf5c"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7C5B990A
	/// @DnDParent : 276796E1
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0CC3C984
		/// @DnDParent : 7C5B990A
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "9783f7a8-0fbf-4ebd-8bc9-0c76ff79ea4f"
		room_goto(rm_start);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 31BBA4AA
	/// @DnDParent : 276796E1
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3A2BE4A4
		/// @DnDParent : 31BBA4AA
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "9783f7a8-0fbf-4ebd-8bc9-0c76ff79ea4f"
		room_goto(rm_start);
		break;
}