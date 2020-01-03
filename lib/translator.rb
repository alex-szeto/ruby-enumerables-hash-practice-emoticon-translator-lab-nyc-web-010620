# require modules here
require 'yaml'

def load_library(emoticon_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')
  
  library = {
    'meaning' => {},
    'emoticon' => {}
  }
  
  emoticons.each { |key, value|
    library['meaning'][value[1]] = key 
    library['emoticon'][value[0]] = value[1]
  }
  
  return library
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end