class PerformancePage < SitePrism::Page

  #set_url "/performance/639957"
  set_url "/testing-only-tickets/the-test-venue-tickets/31-december-2015/perf/780623"

  element :numberoftickets, "#Filters_SelectedQuantity"
  elements :dates, "#venuePerformances option"
  elements :seats, "#msTicketTypes .swCheckBox"
  element :moreoptions, ".showmoreoptions"

  element :readyfordelivery, "label[for='dtTicketsInHand']"
  element :readytodownload, "label[for='dtETicket']"
  element :readytocollect, "label[for='dtLMT']"

  element :map, "#seatmap"
  elements :qtys, "table .swDropDown select"
  elements :buys, ".btn.buy"
  elements :prices, "td > .price"
  element :resperpage, ".pageSizer"
end