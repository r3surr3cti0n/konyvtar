const file = document.querySelector("#file");
const file_label = document.querySelector("#file-label");
const btn = document.querySelector("#submit");

file.addEventListener("change", (e) => {
	const fileName = e.target.files[0].name;
	const fileExt = fileName.split(".").pop();
	if (fileExt !== "xlsx" && fileExt !== "xls") {
		displayFilename(fileName);
		file_label.innerHTML +=
			"<br><b style='color:red;'>Nem megfelelő fájl formátum.</b>";
		disableBtn(true);
	} else {
		displayFilename(fileName);
		disableBtn(false);
	}
});

function displayFilename(fileName) {
	file_label.innerHTML = `<b class='file-name'>${fileName}</b>`;
}

function disableBtn(action) {
	if (action) {
		btn.disabled = true;
		btn.title = "Feltöltés letiltva. A fájl formátuma nem megfelelő!";
	} else {
		btn.disabled = false;
		btn.title = "";
	}
}
