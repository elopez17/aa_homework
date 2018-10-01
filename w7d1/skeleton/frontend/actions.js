

const selectLocation = function(city, jobs){
  const action = {
    type: "SWITCH_LOCATION",
    city,
    jobs,
  };
  return action;
};

export default selectLocation;
