json = File.read "azuredeploy.json"

time = Time.now

def l
  ("a".."z").to_a[rand(26)]
end

json.gsub! /<MKV>/,   "mkv-#{time.hour}-#{time.min}"
json.gsub! /<MKVID>/, "#{l}#{l}" # #{l}#{l}#{l}#{l}#{l}


puts json


# File.open "./gen/azuredeploy.json", "w" do |f|
#   puts json
# end


# ruby azure_vm.rb | xsel -b
