class ApplicationController < ActionController::Base
  before_action(:load_current_user)
  
  # before_action(:force_user_sign_in)
  
  def load_current_user
    the_id = session.fetch(:user_id)
    @current_user = User.where({ :id => the_id }).at(0)
  end
  
  def force_user_sign_in
    if @current_user == nil
      redirect_to("/user_sign_in", { :notice => "You have to sign in first." })
    end
  end

  def test_api
    #namespace :scrape do
     # desc "TODO"
      #task site: :environment do

        # Get these from your own account on Artsy
        client_id = "78b80814c13107062dc5"
        client_secret = "d744b182f4f797e5e4c997553c86b9e4"

        api_host = "https://api.artsy.net"

        # This first request requires us to send our client information
        #  so Artsy can authorize us to use their API
        json_response = HTTP.post("#{api_host}/api/tokens/xapp_token?client_id=#{client_id}&client_secret=#{client_secret}")
        parsed_response = JSON.parse(json_response.body.to_s)

        # The main goal of this first request is to get this token
        #  that we can use to finally access the API data we want
        token = parsed_response.fetch("token")

        # Instead of putting the token in the query string,
        #  the OAuth protocol requires you to put the token in the headers of the request.
        #   Headers is a Hash that provides additional information about a request
        #   They are similar to a query string, but can't be changed in the address bar.
        headers = { 
          :accept => "application/vnd.artsy-v2+json",
          "X-Xapp-Token" => token
        }

        url = "/api/artworks?size=50"
        HTTP.headers(headers).persistent api_host do |http|
          art_response = http.get(url)
          parsed_response = JSON.parse(art_response.body.to_s)

          #art = { "title" => "Mona Lisa", "style" => "Portrait", ... }
          #painting = Painting.new
          #painting.title = art.fetch("title")
          #painting.style = art.fetch("style")
          #painting.save
      

          embedded_fetch = parsed_response.fetch("_embedded")
          artworks_fetch = embedded_fetch.fetch("artworks")

          @output = artworks_fetch
          


          

          artworks_fetch.each do |paintings|

            x = puts paintings[:category]

            if x == "Painting"
              
              p paintings.title
            else 
              p "no"
            end

          end

          render("/test_api.html.erb")
          


          #p artworks_fetch.to_s
            
              #paintings.category
              #paintings.title
              #paintings.date 


            #fetch_paintings = paintings.find_by( :category, "Painting")

          # if find_category == "Painting"
            # title = first_record.fetch("title")
            # p title
          # else
              #p "nope"  
            #end

          #p fetch_paintings.to_s

          # Read the data and save it into your database.
        end 
  end
end   



