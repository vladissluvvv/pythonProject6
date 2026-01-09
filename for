# цикл for
# for i in range(5):
#     print(f"шаг {i}")
# # 0,1,2,3,4
# for i in range(2,6):
#     print(i)
# # 2,3,4,5
# for i in range(0,10,2):
#     print(i)
# #0,2,4,6,8

# # по списку
# fruits = ["яблоко", "банан", "апельсин"]
# for fruits in fruits:
#     print(f"фрукт: {fruits}")
#
# # по строке
# word = "Python"
# for letter in word:
#     print(letter)
#
# # с индексом и значением
# for index, fruit in enumerate(fruits):
#     print(f"{index}: {fruit}")
#
# # цикл while
#
# counter = 0
# while counter < 3:
#     print(f"счетчик: {counter}")
#     counter +=1
#
# password = ""
# while password != "secret":
#     password = input("введите пароль: ")
# print("доступ разрешен")

# управление циклами: break, continue, else

# number = [1, 3, 5, 7, 9, 2, 4, 6, 8]
# search = 7
#
# for num in number:
#     print(f"Проверяю {num}")
#     if num == search:
#         print(f"найдено число {search}!")
#         break
