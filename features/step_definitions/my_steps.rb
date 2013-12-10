Given(/^I am on the buyout page$/) do
  @buyout_page = BuyoutPage.new
  @buyout_page.load
end

Then(/^I can pay by Visa$/) do
  @buyout_page.visa.click
  @buyout_page.nameoncard.set 'Arnaud Lamotte'
  @buyout_page.cardnumber.set '4985357046805086'
  @buyout_page.ccmonth.select '01'
  @buyout_page.ccyear.select '2015'
  @buyout_page.securitycode.set '111'

  @buyout_page.tandc.click
  @buyout_page.buy.click

  find('.fb#modal-content')
end

Then(/^I can pay by Mastercard$/) do
  @buyout_page.mastercard.click
  @buyout_page.nameoncard.set 'Arnaud Lamotte'
  @buyout_page.cardnumber.set '5585486235491191'
  @buyout_page.ccmonth.select '01'
  @buyout_page.ccyear.select '2015'
  @buyout_page.securitycode.set '111'

  @buyout_page.tandc.click
  @buyout_page.buy.click

  find('.fb#modal-content')
end

Then(/^I can pay by Maestro$/) do
  @buyout_page.maestro.click
  @buyout_page.nameoncard.set 'Arnaud Lamotte'
  @buyout_page.cardnumber.set '6759649826438453'
  @buyout_page.ccmonth.select '01'
  @buyout_page.ccyear.select '2015'
  @buyout_page.securitycode.set '111'
  @buyout_page.ccstartmonth.select '01'
  @buyout_page.ccstartyear.select '2013'
  @buyout_page.issuenumber.set '22'

  @buyout_page.tandc.click
  @buyout_page.buy.click

  find('.fb#modal-content')
end
Then(/^I can pay by Paypal$/) do
  @buyout_page.paypal.click
  @buyout_page.tandc.click
  @buyout_page.buy.click
  find('#login_email').set 'buyer@seatwave.dev'
  find('#login_password').set 'seatwave'
  click_button('submitLogin')
  click_button('continue_abovefold')
  find('#confirmPayment').click

  find('.fb#modal-content')
end

Then(/^I can pay by Visa with 3D secure$/) do
  @buyout_page.visa.click
  @buyout_page.nameoncard.set 'Arnaud Lamotte'
  @buyout_page.cardnumber.set '4000000000000002'
  @buyout_page.ccmonth.select '01'
  @buyout_page.ccyear.select '2015'
  @buyout_page.securitycode.set '111'

  @buyout_page.tandc.click
  @buyout_page.buy.click
end

Given(/^I am on the performance page$/) do
  @performance_page = PerformancePage.new
  @performance_page.load


end

#And(/^fill the details$/) do
#  @buyout_page.numberoftickets.select '2'
#  @buyout_page.email1.set "arnaud.lamotte@seatwave.com"
#  @buyout_page.email2.set "arnaud.lamotte@seatwave.com"
#  @buyout_page.titles[2].click
#  @buyout_page.firstname.set'Arnaud'
#  @buyout_page.lastname.set'Lamotte'
#  @buyout_page.phone.set'079999999999'
#
#  if @buyout_page.has_content?('ColleffffctFrom')
#    if @buyout_page.current_url.include? "www.seatwave.com"
#      @buyout_page.enteraddressmanually.click
#    end
#  @buyout_page.name.set 'Arnaud Lamotte'
#  @buyout_page.deliveryaddress.set '120 Moorgate'
#  @buyout_page.deliverytown.set 'London'
#  @buyout_page.deliverypostcode.set 'EC2M 6UR'
#  end
#end

When(/^I buy  collectfrom tickets$/) do
  @performance_page.moreoptions.click
  @performance_page.readytocollect.click
  #@performance_page.qtys[1].select '2'
  #@performance_page.buys[0].click
  @performance_page.buys.size.should == 6
end

Then(/^I go to the buyout page$/) do
  @buyout_page = BuyoutPage.new
end

When(/^fill my personal details$/) do
  @buyout_page.numberoftickets.select '2'
  @buyout_page.email1.set "arnaud.lamotte@seatwave.com"
  @buyout_page.email2.set "arnaud.lamotte@seatwave.com"
  @buyout_page.titles[2].click
  @buyout_page.firstname.set'Arnaud'
  @buyout_page.lastname.set'Lamotte'
  @buyout_page.phone.set'079999999999'
end
When(/^my billing details$/) do
  @buyout_page.billingaddress.set '120 Moorgate'
  @buyout_page.billingtown.set 'London'
  @buyout_page.billingpostcode.set 'EC2M 6UR'
end
Then(/^i buy  collectfrom tickets$/) do
  @performance_page.moreoptions.click
  @performance_page.readytocollect.click
  #@performance_page.qtys[1].select '2'
  #@performance_page.buys[0].click
  @performance_page.buys.size.should == 1
  #@performance_page.buys[0].click
end