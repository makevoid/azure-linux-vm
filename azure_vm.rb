def l
  ("a".."z").to_a[rand(26)]
end

# configuration

YOUR_TAG = "tally"
TIMES = 5

# -----------------

TIMES.times do |t|
  idx = t+1
  json = File.read "azuredeploy.json"

  json.gsub! /<USR>/,    "#{YOUR_TAG}-#{idx}"
  json.gsub! /<USRID>/,  "#{l}#{l}#{l}#{l}#{l}#{l}"
  json.gsub! /<VMSIZE>/, "12" # 14

  # vm sizes
  #
  #                 RAM     SSD
  # 12 -  4 cores	  28  GB	200 GB - (~€410/mo)
  # 13 -  8 cores 	56  GB	400 GB - (~€737/mo)
  # 14 - 16 cores   112 GB	800 GB - (~€1,325/mo)

  File.open "./gen/azuredeploy-#{idx}.json", "w" do |f|
    f.write json
  end
end


# Usage:
#
# ruby azure_vm.rb
#
# # then push to github
# # and click the blue buttons! :D

puts "Done!"
