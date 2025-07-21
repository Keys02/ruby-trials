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

def run()
      
end

get_all_contacts()