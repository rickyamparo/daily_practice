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
    if @states[state].nil? || @capitals[@states[state]].nil?
      puts "Unknown"
    else
      puts @capitals[@states[state]]
    end
  end

  def capital_to_state(capital)
    puts @states.key(@capitals.key(capital))
  end

end

converter = StateCapitals.new
converter.state_to_capital("Oregon")
converter.state_to_capital("New York")
converter.capital_to_state("Denver")
