class PerformancePage < SitePrism::Page

  #set_url "/performance/639957"
  set_url "/testing-only-tickets/the-test-venue-tickets/31-december-2099/perf/639957"

  element :numberoftickets, "#Filters_SelectedQuantity"
  elements :dates, "#venuePerformances option"
  elements :seats, "#msTicketTypes .swCheckBox"
  element :moreoptions, ".showmoreoptions floatright"
  element :map, "#seatmap"
  elements :qtys, "#perfList tr"
end