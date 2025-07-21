def get_all_contacts
    contacts = File.open("contacts.txt", "r")
    contacts.readlines.each_with_index do |line, contact|
       puts line
    end
end

def add_new_contact(name, phone)
    contacts = File.open("contacts.txt", "a")
    contacts.write("\nName: #{name}, Phone: #{phone}")
    puts "Contact added successfully"
end

def add_to_contacts(phone)
    contacts = File.open("contacts.txt", "w")
    contacts.write("\nName: #{name}, Phone: #{phone}")
end

def name_taker()
    puts "Enter your name"
    puts "input>"
    name = gets.chomp
    name
end

def phone_number_taker()
    puts "Enter your phone number"
    puts "input>"
    phone_number = gets.chomp
    phone_number
end

def welcome_screen()
    puts "Welcome to the contact_book"  
    puts "What do you want to do"
    puts "1) Display all contacts"
    puts "2) Add new contact"
end

def run()
    name = name_taker()
    phone_number = phone_number_taker()
    add_new_contact(name, phone_number)
end

get_all_contacts()