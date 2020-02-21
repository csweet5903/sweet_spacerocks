/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FF79D91
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_start"
if(room == rm_start)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2BC1D2E0
	/// @DnDParent : 7FF79D91
	/// @DnDArgument : "lives" "3"
	
	__dnd_lives = real(3);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3E887D47
	/// @DnDParent : 7FF79D91
	
	__dnd_score = real(0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20A72804
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 2264390A
	/// @DnDParent : 20A72804
	/// @DnDArgument : "soundid" "snd_music"
	/// @DnDSaveInfo : "soundid" "511f0dcb-4d34-42bb-a021-c13568d92c76"
	var l2264390A_0 = snd_music;
	if (audio_is_playing(l2264390A_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 206393CA
		/// @DnDParent : 2264390A
		/// @DnDArgument : "soundid" "snd_music"
		/// @DnDSaveInfo : "soundid" "511f0dcb-4d34-42bb-a021-c13568d92c76"
		audio_stop_sound(snd_music);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6C3008A9
	/// @DnDParent : 20A72804
	/// @DnDArgument : "soundid" "snd_music"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "511f0dcb-4d34-42bb-a021-c13568d92c76"
	audio_play_sound(snd_music, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 01165A64
	/// @DnDParent : 20A72804
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 03380E49
	/// @DnDParent : 20A72804
	/// @DnDArgument : "times" "3"
	repeat(3)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 7DD753C0
		/// @DnDInput : 2
		/// @DnDParent : 03380E49
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16B5D09B
		/// @DnDParent : 03380E49
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1167020C
			/// @DnDParent : 16B5D09B
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 273D4C6C
		/// @DnDParent : 03380E49
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5B627354
			/// @DnDParent : 273D4C6C
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 52A924D4
		/// @DnDInput : 2
		/// @DnDParent : 03380E49
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76C747E0
		/// @DnDParent : 03380E49
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0418736C
			/// @DnDParent : 76C747E0
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3003C3EA
		/// @DnDParent : 03380E49
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5E2513A7
			/// @DnDParent : 3003C3EA
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0B9948F3
		/// @DnDParent : 03380E49
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "6566dcad-6a5b-42f4-a616-26028841caea"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}