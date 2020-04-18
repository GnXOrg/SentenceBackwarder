require 'BackwardCore.rb'
Shoes.app :title => "test", :width => 600, :height => 480 do
  @paragraph = para "This is a Test for SentenceBackwarder, coming soon to GitHub."
  @box = edit_box :width => 500, :height => 20, :text =>'', :left => 5, :top => 25
  stack(margin_top: 10) {
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
@outbox = edit_box :width => 500, :height => 20, :text =>'', :left => 5, :top => 90
end