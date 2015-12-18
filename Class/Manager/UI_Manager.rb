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