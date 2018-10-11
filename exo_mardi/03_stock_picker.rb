day_price = [17,3,6,9,15,8,6,1,10]

def trader_du_dimanche(table)

  benefice = 0
  date_achat = 0
  date_vente = 0

  puts table.join

  # jour d'achat
  for i in(0..(table.length-1))

    # jour de vente
    for j in (i+1..(table.length-1))

      if benefice < (table[j] - table[i])

        benefice =  (table[j] - table[i])
        date_achat = i
        date_vente = j
      end
    end
  end

  puts "[#{date_achat},#{date_vente}] ... $#{table[date_vente]} - $#{table[date_achat]} = $#{table[date_vente] - table[date_achat]}"
end

trader_du_dimanche(day_price)


