# require modules here
require 'yaml'

def load_library(arguement)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')
  
  library = {
    'meaning' => {},
    'emoticon' => {}
  }
  
  emoticons.each { |meaning, value|
    library['meaning'][value][0] = 
    library['emoticon'][value][1] = japa
  }
  
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end