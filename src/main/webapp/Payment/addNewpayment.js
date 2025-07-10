var dateInputSection = document.getElementById("current-date-and-time");



let now = new Date();

        let year = now.getFullYear();
        let month = now.getMonth() + 1;  
        let day = now.getDate();
        let hours = now.getHours();
        let minutes = now.getMinutes();
        let seconds = now.getSeconds();

      

dateInputSection.value =`${year} / ${month} / ${day}   ${hours} - ${minutes} - ${seconds}`;


var taxInputSection = document.getElementById("tax");

let packagePrice =  document.getElementById("package-price").value;

let tax = packagePrice / 10.0;


taxInputSection.value = tax;


let total = Number(packagePrice) + tax;

var totalInput = document.getElementById("total");

totalInput.value = total;

