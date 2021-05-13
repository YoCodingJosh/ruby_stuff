TEXT_FILE = "romeo-juliet.txt"

def get_words_from_file(text_file)
  File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
end

print get_words_from_file(TEXT_FILE)

