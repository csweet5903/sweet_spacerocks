/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33F10034
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7A096E70
	/// @DnDParent : 33F10034
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0765FA43
		/// @DnDParent : 7A096E70
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "d66c2337-a232-4144-88bd-c292a3931b01"
		room_goto(rm_gameover);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5668C954
	/// @DnDParent : 33F10034
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 299E5E28
		/// @DnDParent : 5668C954
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "b32cdf47-2a96-4775-a622-1ab62dd18d3f"
		room_goto(rm_win);
	}
}