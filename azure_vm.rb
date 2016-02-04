json = File.read "azuredeploy.json"

time = Time.now

def l
  ("a".."z").to_a[rand(26)]
end

json.gsub! /<USR>/,   "mkv-#{time.hour}-#{time.min}"
json.gsub! /<USRID>/, "#{l}#{l}" # #{l}#{l}#{l}#{l}#{l}

File.open "./gen/azuredeploy.json", "w" do |f|
  f.write json
end

puts json

# Usage:
# ruby azure_vm.rb | xsel -b
#
# or cat gen/azuredeploy.json and copy it to azure
