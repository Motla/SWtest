class BuyoutPage < SitePrism::Page
  #set_url "/buy/ticketpage.aspx?tsgid=12251935&qty=1&byp=sc"
  set_url "/Checkout?tsgid=12251926&qty=1"

  element :numberoftickets, "#SelectedQuantity"

  element :email1, "#UserEmail"
  element :email2, "#ConfirmEmail"
  element :title, "#Title"
  elements :titles, "#Title option"
  element :firstname, "#FirstName"

  element :lastname, "#LastName"
  element :phone, "#Phone"

  element :name, "#DeliveryAddress_Name"
  element :postcode, "#deliveryAddressPostcodeLookup"
  element :findaddress, "input[value='Find Address']"
  element :address, "#deliveryAddressSelector"
  element :enteraddressmanually, "#newDeliveryAddress .enterAddress a"
  element :deliveryaddress, "#DeliveryAddress_LineOne"
  element :deliverytown, "#DeliveryAddress_Town"
  element :deliverypostcode, "#DeliveryAddress_Postcode"

  element :ticketcover,"label[for='TicketCoverSelected']"

  element :visa, ".Visa label"
  element :mastercard, ".Mastercard label"
  element :maestro, ".Maestro label"
  element :paypal, ".PaypalPayment label"
  element :nameoncard, "#PaymentDetails_NameOnCard"
  element :cardnumber, "#PaymentDetails_CardNumber"
  element :ccmonth, "#PaymentDetails_ExpiryMonth"
  element :ccyear, "#PaymentDetails_ExpiryYear"
  element :securitycode, "#PaymentDetails_SecurityCode"

  element :ccstartmonth, "#PaymentDetails_StartMonth"
  element :ccstartyear, "#PaymentDetails_StartYear"
  element :issuenumber, "#PaymentDetails_IssueNumber"

  element :tandc, "label[for='AgreesToTermsAndConditions']"
  element :tandc, "label[for='AgreesToTermsAndConditions']"
  #element :tandc, "#AgreesToTermsAndConditions"
  #element :tandc, ".TsAndCs .swCheckBox"
  #element :tandc, "I agree to the seatwave"
  element :buy, "#buyTickets"
end