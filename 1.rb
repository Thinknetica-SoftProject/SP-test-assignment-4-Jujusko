## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:



$data = File.open('data/1.txt', 'r'){ |file| file.read }
$all_moves = $data.length
$start = 0
$floor = 0
$test1 = 0
$test2 = 0
while ($start <= $all_moves)
  if ($data[$start] == '(')
    $test1 +=1
  else if ($data[$start] == ')')
    $test2 +=1
       end
  end
  $start+=1
end

$floor = $test1 - $test2
puts($floor)