describe Message do
  context ".deliver" do
    it "be successful" do
      message = Message.new(id: '6a91244e-60aa-43fa-ac92-bd2025a86d49', message: 'my shiney new text')
      expect(message.deliver).to be_success
    end
  end
end
