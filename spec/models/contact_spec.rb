describe Contact do
  context ".get_all_contacts" do
    it "should return known data" do
      expect(subject.get_all_contacts.find { |contact| contact[:phone_mobile_international] == ENV['phone_number'] }).to_not be_nil
    end
  end
end
