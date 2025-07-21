def get_all_contacts
    contacts = File.open("contacts.txt", "r")
    contacts.readlines.each do |line, contact|
       puts line
    end
    contacts.close
end

def add_new_contact(name, phone)
    contacts = File.open("contacts.txt", "a")
    contacts.write("Name: #{name}, Phone: #{phone}\n")
    puts "Contact added successfully"
    contacts.close
end

def process_name()
    puts "Enter your name"
    print "input> "
    name = gets.chomp
    name
end

def process_phone()
    puts "Enter your phone number"
    print "input> "
    phone_number = gets.chomp
    phone_number
end

def welcome_screen()
    puts "Welcome to the contact_book"  
    puts "What do you want to do"
    puts "1) Display all contacts"
    puts "2) Add new contact"
    print "input> "
    option = gets.chomp
    option.to_i
end

def run()
    option = welcome_screen()

    if option == 1
        get_all_contacts()
    elseif option = 2
        name = process_name()
        phone_number = process_phone()
        add_new_contact(name, phone_number)
    else
        puts "Invalid option selected"
    end
end