function FlightData = cleanData(FlightData)
	% Fill outliers
	FlightData = filloutliers(FlightData,"linear","mean","ThresholdFactor",6,...
	    "DataVariables",["OilPressure","OilTemperature"]);
	% Smooth input data
	FlightData = smoothdata(FlightData,"movmean","SmoothingFactor",0.25,...
	    "DataVariables",["ExhaustGasTemperature","FuelFlow"]);
end