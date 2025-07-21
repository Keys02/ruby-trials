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
    puts "0) Exit"
    puts "1) Display all contacts"
    puts "2) Add new contact"
    print "input> "
    option = gets.chomp
    option.to_i
end

def run()
    loop do
        print "\n"
        option = welcome_screen()
        case option
            when 0 then 
                puts "Exiting..."
                break
            when 1 then get_all_contacts
            when 2
                name = process_name()
                phone_number = process_phone()
                add_new_contact(name, phone_number)
            else
                puts "Exiting..."
                break
        end
    end
end