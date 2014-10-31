Dir[""]

path = "E:/ProfileStuff/Documents/mozaicGoFiles/Assets/remote/2/Remote_control_Android_assets/drawable-ldpi"
def add_prefix_file_in_path(path,prefix)
Dir.open(path).each do |p|
path = path.gsub("/","\\")
  next if p.match(/^\./)
  old = path + "\\" + p
  new = path + "\\" + "#{prefox}_#{p}"
  File.rename(old, new)
  puts old + " => " + new
end
end