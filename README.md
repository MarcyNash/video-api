# README

# Notes

* Ruby version: 2.6.3

* Rails version: 5.2.3

* The def process_json_url(url) method still needs refactoring:
  - better error checking
  - allow nil key values
  - allow double quotes in song name, artist name

* I started using test to write index tests, but ran out of time to learn the
the syntax for query strings.

* Instead of using query string to search the VideosController, I would have liked to use scope :by_artist, etc.

* Video, song, artist and city should have been different models.

* I would have loved the time to have create a frontend.

# Deployment / Running instructions

My code is available at https://github.com/MarcyNash/video-api
To run the api:
* clone the video-api repository
* cd to the video-api folder
* run bin/setup
* run bin/rake db:seed
* run bin/rails server
* In a browser
  - To see all videos:
    * localhost:3000/videos
  - To query by a song name (replace <song name> with the song name):
    * localhost:3000/videos?song=<song name>
  - To query by a song name (replace <artist name> with the artist name):
    * localhost:3000/videos?artist=<artist name>
  - To query by a song name (replace <city name> with the city name):
    * localhost:3000/videos?artist=<city name>

* In a client app
  - To see all videos:
    Link: localhost:3000/videos

  - To query by a song name (replace <song name> with the song name, spaces replaced by %20):
    > localhost:3000/videos?song=<song%20name>
    > eg: localhost:3000/videos?song=Teneke%20Trampet
  - To query by a artist name (replace <artist name> with the artist name, spaces replaced by %20)):
    > localhost:3000/videos?artist=<artist%20name>
    > eg: localhost:3000/videos?artist=Holly%20Miranda
  - To query by a city name (replace <city name> with the city name, spaces replaced by %20)):
    > localhost:3000/videos?artist=<city name>
    > eg: localhost:3000/videos?city=Chicago

  - Response: Status: 200 OK
  - One or more JSON objects containing:
    ```javascript
    [
      {
      "id": 1796,
      "video_uid": "Vd4q62FVFY4",
      "song_title": "Nobody Sees Me Like You Do (Yoko Ono cover)",
      "artist_title": "Holly Miranda",
      "city_title": "NYC"
      }
    ]
