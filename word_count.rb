TEXT_FILE = "romeo-juliet.txt"

def get_words_from_file(text_file)
  File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
  puts "Unable to read the file #{text_file} - please make sure it exists"
  exit
end

words = get_words_from_file(TEXT_FILE)

word_counts = {}

words.each do |word|
  word_counts[word] = 0 unless word_counts[word]
  word_counts[word] += 1
end

word_counts.sort_by {|word, count| count}.reverse[0...50].each {|word, count| puts "#{word}: #{count}"}
