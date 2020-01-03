# require modules here
require 'yaml'

def load_library(library)
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

def get_japanese_emoticon(library, emoticon)
  # code goes here
  english = load_library(library)['get_meaning'][emoticon]
  load_library(library)['get_meaning'][emoticon] : load_library(library)['get_meaning'][emoticon] ? 
end

def get_english_meaning
  # code goes here
end