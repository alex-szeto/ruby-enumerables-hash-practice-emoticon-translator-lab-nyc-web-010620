# require modules here
require 'yaml'

def load_library(emoticon_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')
  
  library = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  
  emoticons.each { |key, value|
    library['get_meaning'][value[1]] = key 
    library['get_emoticon'][value[0]] = value[1]
  }
  
  return library
end

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  english_meaning = emoticon_lib['get_meaning'][emoticon]
  english_meaning ? english_meaning : 'Sorry, that emoticon was not found'
end

def get_english_meaning
  # code goes here
end