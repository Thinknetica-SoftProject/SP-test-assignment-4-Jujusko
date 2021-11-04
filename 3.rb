## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

fh = open "data/3.txt"
result = 0
fh.each do |line|
  str = line.split("\t").map { |s| s.to_i }
  min_numb = str[0]
  max_numb = str[0]
  cnt = 0
  while (cnt < str.count)
    if(min_numb > str[cnt])
      min_numb = str[cnt]
    end
    if (max_numb < str[cnt])
      max_numb = str[cnt]
    end
    cnt+=1
  end
  result += max_numb - min_numb
end
puts result
fh.close
