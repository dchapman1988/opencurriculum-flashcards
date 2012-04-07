module BasicSteps
  include Spinach::DSL
  Then 'show me the page' do
    save_and_open_page
  end
end
