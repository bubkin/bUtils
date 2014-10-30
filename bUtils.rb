require 'fileutils'
require 'find'
def make_selector(path)
  #do something with path
  all= Dir.entries(path)
  picked = all.select{|s| "#{s}".end_with?("pressed.png")}
  FileUtils.mkdir_p (path+"\\drawable")
  picked.each do |file|
    file.slice! "_pressed.png"
    out= File.open("#{path}\\drawable\\#{file}_selector.xml",'w')
    out.puts('<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="'+"@drawable/#{file}_pressed"+'"
          android:state_pressed="true" />
    <item android:drawable="'+"@drawable/#{file}_pressed"+'
          android:state_focused="true" />
    <item android:drawable="'+"@drawable/#{file}"+'" />
</selector>')
    out.close
  end
end
  def check_all_size(path)
    #Check is there all sizes of every image in drawables
    all = Hash.new
      Dir["#{path}/*"].each do |something|
     if File.directory?(something)
        all.store(something,[])
       end
     Dir["#{something}/*"].each {|file| file.nil? ? nil: all[something]<<file}

      end
    puts all


    end
#need to work on it
  def compare_arrays(*arrays)
    arrays.
    arrays.each do |tab,*tabs|
        puts "tabs = #{tabs}"

      end
    end







