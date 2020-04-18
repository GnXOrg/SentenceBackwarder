require './BackwardCore.rb'
# require 'green_shoes'
Shoes.app :title => "SentenceBackwarder", :width => 600, :height => 200 do
  background darkturquoise
  stack(margin_left: 135){
    @paragraph = para "Type any word here and SB will reverse it for you."
  }
  @box = edit_box :width => 500, :height => 20, :text =>'', :left => 50, :top => 25
  stack(margin_left: 230, margin_top: 17 ) {
  @button = button "Reverse it!" do
    if @box.text.length <= 1 
      @outbox.text = "Length must be 2 or higher to backward!"
    else
      sB = BackwardCore.new
      reversedTxt = sB.Backwarder(@box.text)
      if (reversedTxt == "")
        @outbox.text = "Failed to reverse."
      else
        @outbox.text = reversedTxt
      end
    end
  end
 }
@outbox = edit_box :width => 500, :height => 20, :text =>'', :left => 50, :top => 90
stack(margin_left: 214, margin_top: 40 ) {
@button1 = button "GitHub: @GnXOrg" do
  system("start https://github.com/GnXOrg")
  #visit("https://github.com/GnXOrg")
  #@outbox.text = "Created by GnXOrg"
end
}
end