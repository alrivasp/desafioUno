a = [1, 9 ,2, 10, 3, 7, 4, 6]

def metodo_uno arreglo
    result = arreglo.map {|e| e+1}
    result
end

def metodo_dos arreglo
    result = arreglo.map {|e| e.to_f}
    result
end

def metodo_tres arreglo
    result = arreglo.select {|e| e> 5}
    result
end

def metodo_cuatro arreglo
    result = arreglo.inject(0){|sum, x| sum += x}
    result
end

def metodo_cinco arreglo
    result = arreglo.count {|e| e < 5 }
    result    
end

puts "Utilizando map sumar uno a cada uno de los valores del array."
print metodo_uno(a)
puts "\n\n"
puts "Utilizando map convertir todos los valores a float."
print metodo_dos(metodo_uno(a))
puts "\n\n"
puts "Utilizando select descartar todos los elementos menores a 5 en el array."
print metodo_tres(metodo_dos(a))
puts "\n\n"
puts "Utilizando inject sumar todos los valores del array."
print metodo_cuatro(metodo_tres(a))
puts "\n\n"
puts "Utilizando .count contar todos los elementos menores que 5."
print metodo_cinco(a)