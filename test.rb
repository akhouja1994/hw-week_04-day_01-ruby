students = [
  {
      first_name: 'Ahmed',
      last_name: 'Althagafi'
  },
  {
      first_name: 'Norah',
      last_name: 'Alshehri',
  },
  {
      first_name: 'Haneen',
      last_name: 'Alghamdi',
  }
]

upper_case_full_names = []

students.each do |name|
    full_name = ""
    space = " "
    name.each do |k,v|
        full_name = full_name + v.upcase + space
        space = ""
    end
    upper_case_full_names.push(full_name)
end
puts upper_case_full_names
