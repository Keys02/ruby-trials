# 📊 Code Review Score – Ruby Contact Book Exercise

## 🏆 Final Score: **8.5 / 10**

Great foundation. Clean structure. Just fix file closing, improve input handling, and you're golden. You’re doing great — keep going!

---

## ✅ What You Did Well

### ✅ File Handling
- You're using file modes correctly (`"r"` for reading, `"a"` for appending).
- Proper appending: doesn't overwrite existing data.
- Writes contact data in a clear format.

### ✅ Code Structure
- Modular: functions are broken down clearly (e.g., `process_name`, `add_new_contact`).
- Simple and effective CLI flow.
- `run` method works like a good entry point.

### ✅ Readability
- Code is easy to follow.
- Good use of `puts` and `print` to interact with the user.

---

## ⚠️ Areas to Improve

### 1. File Closing (Very Important)
You're not closing your files after opening. Use `File.open(..., ...) do |file| ... end` or explicitly call `.close`.

**Example Fix:**
```ruby
File.open("contacts.txt", "r") do |contacts|
  contacts.each { |line| puts line }
end
```

### 2. `each_with_index` Unused
You're using `.each_with_index` in `get_all_contacts`, but not using the index. Either use `each`, or make use of the index.

**Fix:**
```ruby
contacts.each do |line|
  puts line
end
```

### 3. Input Handling
If the user enters anything other than `1`, you assume they want to add a contact. Consider validating that input.

**Suggested Improvement:**
```ruby
if option == 1
  get_all_contacts
elsif option == 2
  name = process_name
  phone_number = process_phone
  add_new_contact(name, phone_number)
else
  puts "Invalid option selected."
end
```

---

## 🏁 Bonus Suggestion
Consider wrapping the interaction in a loop so the program doesn't exit after one action:

```ruby
loop do
  case welcome_screen
  when 1 then get_all_contacts
  when 2
    name = process_name
    phone_number = process_phone
    add_new_contact(name, phone_number)
  else
    puts "Exiting..."
    break
  end
end
```
