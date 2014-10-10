
/*
 * FourthScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FourthScene : SEScene
{
	SESprite color1;
	SESprite color2;
	SESprite color3;
	SESprite color4;
	SESprite icon;
	String display;
	SESprite text;
	SESprite label1;
	SESprite label2;
	SESprite label3;
	SESprite label4;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		
		color1 = add_sprite_for_color(Color.instance("green"), get_scene_width(), get_scene_height());
		color1.move(0, 0);

		
		rsc.prepare_image("mySuper", "super", get_scene_width()*0.1, get_scene_height()*0.1);
		icon = add_sprite_for_image(SEImage.for_resource("mySuper"));
		icon.move(get_scene_width()*0.9, get_scene_height()*0.6);
		
		color2 = add_sprite_for_color(Color.instance("red"), get_scene_width()*0.1, get_scene_height()*0.1);
		color2.move(get_scene_width()*0.9, get_scene_height()*0.7);
		
		color3 = add_sprite_for_color(Color.instance("blue"), get_scene_width()*0.1, get_scene_height()*0.1);
		color3.move(get_scene_width()*0.9, get_scene_height()*0.8);
		
		color4 = add_sprite_for_color(Color.instance("white"), get_scene_width()*0.1, get_scene_height()*0.1);
		color4.move(get_scene_width()*0.9, get_scene_height()*0.9);

		rsc.prepare_font("myfont","Segoe UI color=#ecf0f1 outline-color=#34495e", 70);
		display = "Fourth";
		text = add_sprite_for_text(display, "myfont");
		text.move((get_scene_width()*0.5)-(text.get_width()*0.5),(get_scene_height()*0.5)-(text.get_height()*0.5));								

		rsc.prepare_font("mylabel","Segoe UI color=#ecf0f1 outline-color=#34495e", 30);
		display = "Main";
		label1 = add_sprite_for_text(display, "mylabel");
		label1.move(label1.get_width()*0.5+get_scene_width()*0.9,label1.get_height()*0.5+get_scene_height()*0.6);
										
		display = "1st";
		label2 = add_sprite_for_text(display, "mylabel");
		label2.move(label2.get_width()+get_scene_width()*0.9,label2.get_height()*0.5+get_scene_height()*0.7);

		display = "2nd";
		label3 = add_sprite_for_text(display, "mylabel");
		label3.move(label3.get_width()+get_scene_width()*0.9,label3.get_height()*0.5+get_scene_height()*0.8);

		display = "3rd";
		label4 = add_sprite_for_text(display, "mylabel");
		label4.move(label4.get_width()+get_scene_width()*0.9,label4.get_height()*0.5+get_scene_height()*0.9);
		
	}
	public void on_pointer_press(SEPointerInfo pi) {
				
		base.on_pointer_press(pi);		
		if(pi.is_inside(icon.get_x(),icon.get_y(), icon.get_width(), icon.get_height())) {
			switch_scene(new MainScene());			
		}
		if(pi.is_inside(color2.get_x(),color2.get_y(), color2.get_width(), color2.get_height())) {
			switch_scene(new FirstScene());
		}
		if(pi.is_inside(color3.get_x(),color3.get_y(), color3.get_width(), color3.get_height())) {
			switch_scene(new SecondScene());			
		}
		if(pi.is_inside(color4.get_x(),color4.get_y(), color4.get_width(), color4.get_height())) {
			switch_scene(new ThirdScene());			
		}				
	}	
	public void cleanup() {
		base.cleanup();
	}
}
