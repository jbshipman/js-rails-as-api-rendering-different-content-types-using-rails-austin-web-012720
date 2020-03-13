class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    # will render the index page

    # render plain: "Hello #{@birds[3].name}" 
    # will render plain text on the 

    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here.'
    # fetch('http://localhost:3000/birds').then(resp => resp.text()).then(text => console.log(text));

    # render json: {message: 'Hashes of data will get converted to JSON'}
    # fetch('http://localhost:3000/birds').then(resp => resp.json()).then(json => console.log(json.message));

    # render json: ['As','well','as','arrays']
    # fetch('http://localhost:3000/birds').then(resp => resp.json()).then(json => console.log(json));

    # render json: @birds
    # fetch('http://localhost:3000/birds').then(resp => resp.json()).then(json => console.log(json));

    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # this data structure is more complex and the aboce fetch() calls won't complete the Promises needed to return data.

    render json: {birds: @birds, messages: ['Hello Birds', 'Goodbye Birds']}.to_json
    # fetch('http://localhost:3000/birds').then(resp => resp.json()).then(json => console.log(json));

  end
end
