def enroll_student(course_name, student_name)
  courses = [
    {
      id: 1,
      name: 'Introduction to Kernel Development',
      students: ['Chris' 'Akosua' 'Alice']
    },
    {
      id: 2,
      name: 'Mathematics for Game Development',
      students: ['Benjamin' 'Garnette' 'Alice']
    },
    {
      id: 3,
      name: 'Image processing',
      students: ['Kwame' 'Jake' 'Alice']
    }
  ]

  courses.each do |course|
    if (course_name == course[:name]) 
      course[:students].push(student_name)
      puts "#{student_name} successfully enrolled in the course #{course[:name]}"
    end
  end
end

enroll_student('Introduction to Kernel Development', 'Thomas')