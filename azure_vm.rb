json = File.read "azuredeploy.json"

time = Time.now

def l
  ("a".."z").to_a[rand(26)]
end

# configuration

YOUR_TAG = "tally"
TIMES = 5

# -----------------

TIMES.times do |idx|
  idx += 1

  json.gsub! /<USR>/,   "#{YOUR_TAG}-#{idx}"
  json.gsub! /<USRID>/, "#{l}#{l}#{l}#{l}#{l}#{l}"

  File.open "./gen/azuredeploy-#{idx}.json", "w" do |f|
    f.write json
  end
end

puts json

# Usage:
#
# ruby azure_vm.rb            # (simple, without auto-copy)
# ruby azure_vm.rb | pbcopy   # (osx)
# ruby azure_vm.rb | xsel -b  # (linux)
#
# or open gen/azuredeploy.json and copy-paste it to Azure Portal
