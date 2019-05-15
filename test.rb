people = [
  {
      name: 'Jawaher',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Nader',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Samah',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]

coffee_average_per_person = []

people.each do |object|
    
    object[:transactions].each do |objecta|
        total = 0
        value = false
        count = 0
        objecta.each do |k,v|
            if k == 'type'&& v == 'COFFEE'
                value = true
                count+=1
                p count
            elsif k == 'amount' && value == true
                total = v + total
                value = false
                p total
            end
        end
        if total>0
            coffee_average_per_person.push(total/count)
        end
    end
end
p coffee_average_per_person