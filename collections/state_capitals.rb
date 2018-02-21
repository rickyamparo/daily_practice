class StateCapitals

  def initialize
    @states = {"Oregon" => "OR",
            "Alabama" => "AL",
            "New Jersey" => "NJ",
            "Colorado" => "CO"}
    @capitals = {"OR" => "Salem",
              "AL" => "Montgomery",
              "NJ" => "Trenton",
              "CO" => "Denver"}
  end

  def state_to_capital(state)
    puts @capitals[@states[state]]
  end

end

converter = StateCapitals.new
converter.state_to_capital("Oregon")
