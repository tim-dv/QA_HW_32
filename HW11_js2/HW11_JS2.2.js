// Напишите валидационный скрипт используя функции 
// 1. Скрипт должен на вход принимать строку.
// 2. После проверки строки выводить в консоль сообщение где будет конкретно написано, что не так в ведённой строке.
// 3. Минимум 5 символов в строке
// 4. Максимум 64 символа в строке
// 5. В строке должны быть буквы
// 6. Должна быть хотя бы одна буква в верхнем регистре
// 7. Должна быть хотя бы одна цифра
// 8. Должна быть хотя бы одна @
// 9. Строка не должна быть пустой
const checkSomeText = function(sometext) {
    sometext = String(sometext);
    let counter_az = 0;
    let counter_09 = 0;
    let counter_spec = 0;
    if(sometext === "") {
        console.log("Your string is empty");
    } else if(!Number(sometext)) {
        if(sometext.length < 5) {
            console.log("You entered not enough symbols");
        } else if(sometext.length > 64) {
            console.log("You entered too many symbols");
        } else {
            function f13() {
                for(i = 0; i < sometext.length; i++) {
                    if(sometext[i].match(/[A-Z]/)) {
                        counter_az++
                    } else if(sometext[i].match(/\d/)) {
                        counter_09++
                    } else if(sometext[i].match(/[@]/)) {
                        counter_spec++
                    } else {
                        continue
                    }
                }
                return counter_az, counter_09, counter_spec;
            }
            let f_text = f13();
            if(counter_az > 0 && counter_09 > 0 && counter_spec > 0) {
                console.log("Your text contain all essential symbols: " ,sometext);
            } else {
                console.log("You entered wrong data");   
            }        
        }
    } else {
        console.log("You entered not string value");
    }
}

checkSomeText("")
checkSomeText("1Qe@")
checkSomeText("15792759")
checkSomeText("Hru8wefh8fli48iry98jf;ojf9jp;oFw9jfhu89whfl;lickhfl;fhjiehfiljfeoi")
checkSomeText("Qe@Tdf7")
checkSomeText("QeTdf7")
checkSomeText("Qe@Tdf")
