require_relative 'instance_counter'

class Route
  include InstanceCounter
	attr_reader :stations, :route_number

	def initialize(route_number, first_station, end_station)
		@route_number = route_number
		@stations = [first_station, end_station]
	  @register_instance
	end

	def first_station
		@stations.first
	end

	def end_station
		@stations.last
	end

	def add_intermediate_station(intermediate_station)
		@stations.insert(stations.size - 1, intermediate_station)
	end

	def del_intermediate_station(intermediate_station)
		if station != @stations.first && station != @stations.last && station.trains.empty?
			@stations.delete(station)
		end
	end

	def show_all_station
		stations.each { |all_station| puts all_station.name }
	end

end