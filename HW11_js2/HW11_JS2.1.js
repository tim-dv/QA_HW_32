//1) Сделать функцию которая при вызове напишет в консоль сумму 2-х переданных в неё чисел
function f1(a, b) {
    return a + b
};

let f_sum = f1(7, 14);
console.log(f_sum);

//2) Сделать функцию которая вернёт в консоль квадрат переданного числа
function f2(c) {
    return c**2
};

let f_square = f2(9);
console.log(f_square);

//3) Сделать функцию. На вход принимет 3 параметра (Ф,И,О). Вернёт JSON
//{"name":И,
// "surname":Ф,
// "middlename":О}
function f3(user) {
    return JSON.stringify(user, null, '\t');
};

let f_json = f3({
    name: 'Tim',
    surname: 'Dambrowski',
    middlename: 'Vyacheslavovich'
});
console.log(f_json);

//4) вывести в консоль переменную-массив в которой будут все чётные числа. Переменную возвращяет функция которая на вход принимает массив чисел.
//Если чётных чисел не нашлось, то функция вернёт текст "No even numbers"
let arr_out = [];
function f4(arr_in) {
    for(let i = 0; i < arr_in.length; i++) {
        if (arr_in[i] % 2 === 0) {
            arr_out.push(arr_in[i]);
        } else { 
            continue
        } 
    }
    return arr_out;
}

let f_array = f4([2, 7, 12, 13, 66, 79, 92, 100]);
if (arr_out.length == 0) {
    console.log('No even numbers');
} else {
    console.log(f_array);
}

//5) Сделать функцию которая вернёт количество букв 'a' в переданном в неё слове.
//Алфавит Eng. Если нету букв 'а', то вернтуть текст "No a characters".
let counter = 0;
function f5(word_in) {
    for(let i = 0; i < word_in.length; i++) {
        if(word_in[i] == 'a' || word_in[i] == 'A') {
            counter++
        } else {
            continue
        }
    }
    return counter;
}

let f_word = f5('Anakonda');
if (counter != 0) {
    console.log(f_word);
} else {
    console.log('No a characters');
}

//6) Написать функцию которая выдаст список тестов для переданного в неё web-ui элемента
//Элементы: Phone number field, CheckBox, SignIn Button.

function f6(element) {
    switch (element) {
      case "Phone number field":
        return [
          "Check if field accepts only numbers",
          "Check if field accepts correct number of digits",
          "Check if field accepts international format"
        ];
      case "CheckBox":
        return [
          "Check if checkbox is selectable",
          "Check if checkbox is deselectable",
          "Check if checkbox state is saved after page refresh"
        ];
      case "SignIn Button":
        return [
          "Check if button is clickable",
          "Check if button redirects to correct page",
          "Check if button is disabled when form is not filled correctly"
        ];
      default:
        return "Invalid element";
    }
  }
  
  console.log(f6("Phone number field"));
  console.log(f6("CheckBox"));
  console.log(f6("SignIn Button"));

//7) Написать функцию которая на вход получает JSON а возвращяет XML
function f7(json_obj) {
    let xml = '<root>';
    for(let key in json_obj) {
        if(json_obj.hasOwnProperty(key)) {
            xml += '<' + key + '>' + json_obj[key] + '</' + key + '>';
        }
    }
    xml += '</root>';
    return xml;
}

let json_to_xml = f7({
    name: 'Tim',
    surname: 'Dambrowski',
    city: 'Grodno'
});
console.log(json_to_xml);
