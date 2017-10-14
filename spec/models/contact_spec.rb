describe Contact do
  context ".get_all_contacts" do
    it "should return known data" do
      expect(subject.get_all_contacts.find { |contact| contact[:phone_mobile_international] == '+1 512-438-9622' }).to_not be_nil
    end
  end
end
