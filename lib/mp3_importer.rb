require 'pry'

class MP3Importer
    attr_accessor :path 

    def initialize(path)
        @path = path 
    end

    def files
        #just want file names (sending to Song) 
        #just want .mp3 files /*.mp3
        #Dir.glob
        # Dir.glob{|f|"#{path}."extname(f)==".mp3"}
        # .gsub is regex that substitues the 1st agrgument for the 2nd 
        Dir.glob("#{path}/*.mp3").collect { |file| file.gsub("#{path}/", "") }
    end


    def import
        #sends to Song class to get created as new instance 
        # uses Song.new_by_filename(filename)
        files.each {|song| Song.new_by_filename }
        # binding.pry
    end

end