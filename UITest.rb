Shoes.app :title => "SentenceBackwarder", :width => 640, :height => 480 do
  @paragraph = para "Type a sentence to backwards it:"
  @box = edit_box :width => 100, :height => 20, :text =>''
  @button = button("Reverse it!") do
    @outbox.text = @box.text.reverse
  end
  @outbox = edit_box :width => 100, :height => 20, :text =>''
end