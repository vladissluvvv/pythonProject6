TEXT_MESSAGE = "Повторить выполнение программы? (да/нет): "
TEXT_CEL = "Цельсия"
TEXT_FAR = "Фаренгейт"
TEXT_START_PROGRAM = "Программа конвертации температуры"
TEXT_END_PROGRAM = "Программа завершена"


def convert_celsius_to_fahrenheit(temp_cel: int) -> float:
    return temp_cel * 9 / 5 + 32


def generate_temperature_data(start: int, end: int, step: int) -> list[tuple[int, float]]:

    temperature_data = []
    for temp_cel in range(start, end + 1, step):
        temp_far = convert_celsius_to_fahrenheit(temp_cel)
        temperature_data.append((temp_cel, temp_far))
    return temperature_data


def should_continue(user_input: str) -> bool:
    return user_input.lower() == "да"


def display_message(message: str) -> None:
    print(message)


def get_user_input() -> str:
    return input(TEXT_MESSAGE)


def display_temperature_row(temp_cel: int, temp_far: float) -> None:
    print(f"{temp_cel:<10} | {temp_far:<12.2f}")


def display_temperature_table(temperature_data: list[tuple[int, float]]) -> None:
    print(f"{TEXT_CEL:<10} | {TEXT_FAR:<12}")
    print("-" * 25)
    for temp_cel, temp_far in temperature_data:
        display_temperature_row(temp_cel, temp_far)


def run_temperature_conversion(start: int, end: int, step: int) -> None:
    temperature_data = generate_temperature_data(start, end, step)
    display_temperature_table(temperature_data)


def main() -> None:
    display_message(TEXT_START_PROGRAM)

    should_continue_program = True
    while should_continue_program:
        run_temperature_conversion(start=0, end=100, step=10)
        user_decision = get_user_input()
        should_continue_program = should_continue(user_decision)

    display_message(TEXT_END_PROGRAM)


if __name__ == "__main__":
    main()
