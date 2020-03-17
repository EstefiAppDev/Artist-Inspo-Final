namespace :scrape do
  desc "TODO"
  task site: :environment do

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
      
      @output.at(0).keys

      @output.each do |paintings| 

        category = paintings.fetch("category")

        if category == "Painting"
         new_painting = Painting.new
         new_painting.title = paintings.fetch("title")
         new_painting.date = paintings.fetch("date")
         new_painting.paint_medium = paintings.fetch("medium")
         new_painting.currently_at = paintings.fetch("collecting_institution")
         #new_painting.additional_info = paintings.fetch("additional_information")
         #new_painting.image = new_painting.additional_info.match(/(http)(.+)(.jpg)/).to_s

         new_painting.save

        end

      end
    end

  end
end   

