const form = document.querySelector("#form");
const input = document.querySelector("#search");
const result = document.querySelector("#result");

form.addEventListener("submit", (e) => {
	e.preventDefault();
	// Loading
	result.style.visibility = "visible";
	result.innerHTML = "<img src='../../img/loading.gif'>";

	const inputVal = input.value.trim().replace("/['\"+!%/=()]/g");
	if (inputVal.length > 0) {
		setTimeout(() => {
			search(inputVal);
		}, 1000);
	}
});

// Search for the input value when the user is typing
// input.addEventListener("input", (e) => {
// 	const inputVal = e.target.value.trim().replace("/['\"+!%/=()]/g");
// 	if (inputVal.length > 0) search(inputVal);
// });

// Pass the input value to the search.php file
// using the fetch API
function search(inputVal) {
	fetch("/search/search.php", {
		method: "POST",
		body: new URLSearchParams(`inputVal=${inputVal}`),
	})
		.then((response) => response.json())
		.then((response) => showResult(response))
		.catch((error) => console.log(error));
}

// Display the result in a list
function showResult(konyvek) {
	// Clear the list
	if (konyvek === undefined || konyvek.length === 0)
		result.style.visibility = "hidden";
	else result.style.visibility = "visible";
	// If there is not any item show no result
	result.innerHTML = "";
	if (konyvek.length === 0) {
		result.style.visibility = "visible";
		result.innerHTML = "<center>Nincs találat.</center>";
	}
	// Fill the list with the new items
	konyvek.forEach((konyv) => {
		result.innerHTML += `<li>${konyv.k_biblio}</li>`;
	});
}

showResult();
