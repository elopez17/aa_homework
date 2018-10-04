import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';

const giphysReducer = (state = {}, action) => {
  let nextSate = {};

  switch (action.type) {
    case RECEIVE_SEARCH_GIPHYS:

      return merge({}, state, nextSate);
    default:

  }
}


export default giphysReducer;
