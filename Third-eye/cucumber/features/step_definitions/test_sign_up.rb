Given ('I open browser') do
  @browser = Browser.new
  @browser.open_chrome_browser()
end

When ('I launch facebook URL') do
  @browser.launch_url(URL)
end

Then ('I see sign-up page') do
  @facebook = Test.new
  expect(@facebook.is_sign_up_button_displayed).to eq(true)
end
