# require modules here
require "pry"
require "yaml"

def load_library(path)
  library = YAML.load_file(path)

  libHash = {"get_emoticon" => {}, "get_meaning" => {}}
  library.each do |meaning, emojiArr|
    libHash["get_meaning"][emojiArr[1]] = meaning
    libHash["get_emoticon"][emojiArr[0]] = emojiArr[1]
  end
  libHash
end

def get_japanese_emoticon(path, westEmoji)
  dictionary = load_library(path)
  #default the output to say the match was not found.
  match = "Sorry, that emoticon was not found"

  dictionary["get_emoticon"].each do |west, japan|
    #only set the match output if the emoji is found 
    if west == westEmoji
      match = japan
    end
  end
  match
end

def get_english_meaning
  # code goes here
end
