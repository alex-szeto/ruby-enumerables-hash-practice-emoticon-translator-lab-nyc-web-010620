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
    english = value[0]
    japanese = value[1]
    library['meaning']japanese = key 
    library['emoticon']english = value[1]
  }
  
  return library
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end