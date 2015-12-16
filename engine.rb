#-----------------------------------------
# ● シーンを管理するクラス
#-----------------------------------------
module Scene_Manager
	def self.initialize
	end
end

#-----------------------------------------
# ● UI関連を管理するクラス
#-----------------------------------------
class UI_Manager
	attr_accessor :text
	
	def self.initialize
		init_member
	end
	
	def self.init_member
		@msgWindow	= MsgWindow.new
		@text		= UI_Text.new
	end
end

#-----------------------------------------
# ● 立ち絵関連を管理するクラス
#-----------------------------------------
class Sprite_Manager
	
	def initialize
		init_member
	end
	
		def init_member
		@img_left	= nil
		@img_center = nil
		@img_right	= nil
		@path_root	= "./Image/Character/"
		@start_x	= 100
		@start_y	= 0
		
		@left		= nil
		@center		= nil
		@right		= nil
	end
	
	def show(pos,file)
		path = @path_root + file

		case pos
			when "left" then
				if @img_left != file
					@img_left = file
					@left = Image.load(path)
				end
				
				pos_x = @start_x
				pos_y = @start_y
				Window.draw(pos_x, pos_y, @left,1)
		
			when "center" then
				if @img_center != file
					@img_center = file
					@center = Image.load(path)
				end
				
				pos_x = ($WindowWidth - @center.width) / 2
				pos_y = @start_y
				Window.draw(pos_x, pos_y, @center,1)
				
			when "right" then
				if @img_right != file
					@img_right = file
					@right = Image.load(path)
				end
				
				pos_x = $WindowWidth - @start_x - @right.width
				pos_y = @start_y
				Window.draw(pos_x, pos_y, @right,1)
			else
			p("立ち絵位置の指定が不正です")
		end
	end
	
end

class Screen_Title
	def initialize
	end
end

class Screen_Scene
	def initialize
	end
end

class BackgroundImage
	def initialize
		@image	= nil
		@path_root	= "./Image/Background/"
		@file	= nil
	end
	
	def loadImage(file)
	
		path = @path_root + file
		
		if @file != file
			@file = file
			@image = Image.load(path)
		end
			start_x = ($WindowWidth - @image.width) / 2
			start_y = ($WindowHeight - @image.height) / 2
			Window.draw(start_x, start_y, @image)
	end
end

class MsgWindow

	def initialize
		init_member
		createWindow
	end
	
	def init_member
		@image			= nil
		@initialized	= false
		@visible		= false
		@pos			= 0
		@background		= "System/UI/msgwindow.png"
		@text			= UI_Text.new
	end
	
	def createWindow
		if @initialized == false
			@initialized = true
			@image = Image.load(@background)
		end
		
		@pos = $WindowHeight - @image.height
		
	end
	
	def show
		Window.draw(0, @pos, @image,2)
	end
	
	def hide
	end
	
end

class UI_Text

	def initialize
		init_member
	end
	
	def init_member	
		Font.install( "./System/Font/VL-PGothic-Regular.ttf" )
		@font = Font.new(32,"VL Pゴシック")
	end
	
	def msg(txt,x = 0,y = 0)
		Window.draw_font(x, y, txt, @font)
	end
end