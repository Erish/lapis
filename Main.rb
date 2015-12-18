require 'dxruby'
require "./Class/include.rb"

# conf = File.read("config.ini", :encoding => Encoding::UTF_8)
$AppName		= "An Alice and Marina's Cookie Kiss."
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
	Background.loadImage("rikkyou.png")
	CharaPicture.show("center","UDK.png")
	Msg.show
end

