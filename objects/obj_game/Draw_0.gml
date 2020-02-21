/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 39756379
/// @DnDArgument : "font" "fnt_text"
/// @DnDSaveInfo : "font" "b5f5fa95-bcdb-4367-9459-138510ae5b0d"
draw_set_font(fnt_text);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 104AECD2
/// @DnDArgument : "expr" "room"
var l104AECD2_0 = room;
switch(l104AECD2_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 49085A1E
	/// @DnDParent : 104AECD2
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 7AE2B70D
		/// @DnDParent : 49085A1E
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 760EA81C
		/// @DnDParent : 49085A1E
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "c772504f-47ed-4e6f-b007-3807b5e4f672"
		var l760EA81C_0 = sprite_get_width(spr_lives);
		var l760EA81C_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l760EA81C_2 = __dnd_lives; l760EA81C_2 > 0; --l760EA81C_2) {
			draw_sprite(spr_lives, 0, 20 + l760EA81C_1, 40);
			l760EA81C_1 += l760EA81C_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 36279707
	/// @DnDParent : 104AECD2
	/// @DnDArgument : "const" "rm_start "
	case rm_start :
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 263BE004
		/// @DnDParent : 36279707
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 351E072D
		/// @DnDParent : 36279707
		/// @DnDArgument : "color" "$FF07FFFA"
		draw_set_colour($FF07FFFA & $ffffff);
		var l351E072D_0=($FF07FFFA >> 24);
		draw_set_alpha(l351E072D_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 29D48C34
		/// @DnDParent : 36279707
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS ""
		draw_text_transformed(250, 100, string("SPACE ROCKS ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 485E48A3
		/// @DnDParent : 36279707
		draw_set_colour($FFFFFFFF & $ffffff);
		var l485E48A3_0=($FFFFFFFF >> 24);
		draw_set_alpha(l485E48A3_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1E1B7117
		/// @DnDParent : 36279707
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win!""
		draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3BBCE1EA
		/// @DnDParent : 36279707
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/LEFT/RIGHT keys ""
		draw_text(250, 230, string("Move with UP/LEFT/RIGHT keys ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6CAEDFB4
		/// @DnDParent : 36279707
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot""
		draw_text(250, 260, string("Press SPACE to shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 028AB01A
		/// @DnDParent : 36279707
		/// @DnDArgument : "color" "$FF0FFBFF"
		draw_set_colour($FF0FFBFF & $ffffff);
		var l028AB01A_0=($FF0FFBFF >> 24);
		draw_set_alpha(l028AB01A_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 182D0F0A
		/// @DnDParent : 36279707
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START << ""
		draw_text(250, 350, string(">> PRESS ENTER TO START << ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E8F4827
		/// @DnDParent : 36279707
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 47E11A41
	/// @DnDParent : 104AECD2
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 50BF21E2
		/// @DnDParent : 47E11A41
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 04014E72
		/// @DnDParent : 47E11A41
		/// @DnDArgument : "color" "$FF0220FF"
		draw_set_colour($FF0220FF & $ffffff);
		var l04014E72_0=($FF0220FF >> 24);
		draw_set_alpha(l04014E72_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 27211E0C
		/// @DnDParent : 47E11A41
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE ""
		draw_text_transformed(250, 150, string("YOU LOSE ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 37EC1E09
		/// @DnDParent : 47E11A41
		draw_set_colour($FFFFFFFF & $ffffff);
		var l37EC1E09_0=($FFFFFFFF >> 24);
		draw_set_alpha(l37EC1E09_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 692F233E
		/// @DnDParent : 47E11A41
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4AE5BD4A
		/// @DnDParent : 47E11A41
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART << ""
		draw_text(250, 350, string(">> PRESS ENTER TO RESTART << ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 247701A7
		/// @DnDParent : 47E11A41
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 57C4C486
	/// @DnDParent : 104AECD2
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1781D849
		/// @DnDParent : 57C4C486
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0BD5B6DF
		/// @DnDParent : 57C4C486
		/// @DnDArgument : "color" "$FF04FF00"
		draw_set_colour($FF04FF00 & $ffffff);
		var l0BD5B6DF_0=($FF04FF00 >> 24);
		draw_set_alpha(l0BD5B6DF_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0118A442
		/// @DnDParent : 57C4C486
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN ""
		draw_text_transformed(250, 150, string("YOU WIN ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 410B2557
		/// @DnDParent : 57C4C486
		draw_set_colour($FFFFFFFF & $ffffff);
		var l410B2557_0=($FFFFFFFF >> 24);
		draw_set_alpha(l410B2557_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 7EB006F7
		/// @DnDParent : 57C4C486
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5577F59B
		/// @DnDParent : 57C4C486
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART << ""
		draw_text(250, 350, string(">> PRESS ENTER TO RESTART << ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 029DF64A
		/// @DnDParent : 57C4C486
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}