require 'dxruby'
require "./engine.rb"

# conf = File.read("config.ini", :encoding => Encoding::UTF_8)
$AppName		= "Application Name"
$WindowWidth	= 1280
$WindowHeight	= 720

# initialize Window
Window.caption		=	$AppName
Window.width		= 	$WindowWidth
Window.height		=	$WindowHeight

#-----------------------------------------
# �� Manager�̏�����
#-----------------------------------------
UI = UI_Manager.new
CharaPicture = Sprite_Manager.new
Background	=	BackgroundImage.new

Msg = MsgWindow.new


#-----------------------------------------
# �� ���C�����[�`��
#-----------------------------------------
Window.loop do                # ���C�����[�v
	Background.loadImage("bg-test.jpg")
	CharaPicture.show("center","rysee.png")
	Msg.show
end

