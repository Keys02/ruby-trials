# Contact Book CLI – Ruby File Handling Exercise
#
# This exercise is designed to help beginners practice basic file operations in Ruby:
# reading from files, writing to files, and appending content to files.
#
# The program functions as a simple command-line contact book where users can:
# 1. Add a new contact (name and phone number) – this appends to a file.
# 2. View all saved contacts – this reads from the file.
# 3. Exit the program.
#
# All contact details are stored in a plain text file named 'contacts.txt'.
#
# This exercise also encourages learning CLI interaction, simple data formatting,
# and how to persist data using text files.
import_relative "simple_contact_book.rb"

def main()
    run()
end

main()