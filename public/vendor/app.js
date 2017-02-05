

function something()
{
	var x = window.localStorage.getItem('bbb'); // структура данных локалстрадж это хэш, следовательно это равносилно конструкции x = hh['bbb'] 

	x = x * 1 + 1 // x = x +1 ( in ruby)

	window.localStorage.setItem('bbb', x); //  hh['bbb'] = x

	alert(x);
}

function add_to_cart(id)
{
	var x = window.localStorage.getItem('product_'+id);

	x = x * 1 + 1
	window.localStorage.setItem('product_' + id,x);

}


