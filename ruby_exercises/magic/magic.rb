text_files = Dir["*.txt"]

text_files.each_with_index do |file_name, index|
  puts "Renaming files: [#{'#' * (index.to_i + 1)}]"

  new_name = if (index.to_i + 1) < 10
    "Document0#{index.to_i + 1}.txt"
  else
    "Document#{index.to_i + 1}.txt"
  end

  File.rename(file_name, new_name)
end

