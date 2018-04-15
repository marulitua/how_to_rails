shared_examples "contactable" do
  id { is_expected.to have_many(:contacts) }
end
