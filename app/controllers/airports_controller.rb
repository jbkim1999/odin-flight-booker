class AirportsController < ApplicationController
  def index
    @airport_options = Airport.order(:code).map { |a| [a.code, a.id] } # id needed (uniq not needed)
    @date_options = Flight.order(:start).map { |f| f.start.strftime("%m/%d/%Y") }.uniq # id not needed
    if !params[:departure_airport_id].blank? && !params[:arrival_airport_id ].blank? &&
      !params[:pax].blank? && !params[:start].blank?
      @selected_flight = Flight.where("departure_airport_id = ? AND arrival_airport_id = ? 
        AND DATE(start) = ?", params[:departure_airport_id], params[:arrival_airport_id], 
          Date.strptime(params[:start], "%m/%d/%Y")) # params come in strings
    end
  end
end

# https://stackoverflow.com/questions/5943872/find-records-with-datetime-that-match-todays-date-ruby-on-rails/36828327
# Handle dates in SQL