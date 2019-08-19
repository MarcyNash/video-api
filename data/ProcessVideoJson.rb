require 'net/http'
require 'JSON'

def process_json_url(url)

  uri = URI(url)
  response = Net::HTTP.get(uri)
  json = JSON.parse(response)

  # obj = JSON.parse(json)
  open('db/seeds.rb', 'w') do |file|
    file.puts('Video.create(')
    file.puts('  [')
    json.each do |line|
       begin
         str = ""
         str << "    {video_uid: \""
         str << line["video_uid"] << "\","
         str << " song_title: \""
         str << line["song"]["title"] << "\","
         str << " artist_title: \""
         str << line["song"]["artist"]["title"]  << "\","
         str << " city_title: \""
         str << line["song"]["city"]["title"]  << "\""
         str << "},"
         file.puts(str)
       # For now, ignore any errors
       rescue Exception => e
         puts(e)
         puts(line)
        end
    end
    pos = file.pos
    # Remove comma after last Video object.
    # Refactor to figure out how to programmtically figure out position of
    # last comma.
    file.pos = pos - 2
    file.puts
    file.puts('  ]')
    file.puts(')')
  end
end
