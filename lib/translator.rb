# require modules here
require "pry"
require "yaml"

def load_library(path)
  library = YAML.load_file(path)

  libHash = {:get_meaning => {}, :get_emoticon => {}}
  library.each do |meaning, emojiArr|
    libHash[:get_meaning][emojiArr[1]] = meaning
    libHash[:get_emoticon][emojiArr[0]] = emojiArr[1]
  end
  libHash
end

def get_japanese_emoticon(load_library, western)
  # code goes here
end

def get_english_meaning
  # code goes here
end
