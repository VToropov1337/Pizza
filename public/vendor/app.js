

function something()
{
	var x = window.localStorage.getItem('bbb'); // структура данных локалстoрадж это хэш, следовательно это равносилно конструкции x = hh['bbb'] 

	x = x * 1 + 1 // x = x +1 ( in ruby)

	window.localStorage.setItem('bbb', x); //  hh['bbb'] = x

	alert(x);
}

function add_to_cart(id)
{
	var key = 'product_' + id
	var x = window.localStorage.getItem(key);

	x = x * 1 + 1
	window.localStorage.setItem(key,x);

}

function cart_get_items_of_items()
{
	for(var i = 0; < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i); // получаем ключ
		var value = window.localStorage.getItem(key); //получаем значение, аналог в руби hh[key] = x 



	}


}


