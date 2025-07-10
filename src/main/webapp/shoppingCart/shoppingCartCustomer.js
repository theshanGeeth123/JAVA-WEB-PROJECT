var total = 0.0;
var items = 0;
var tax = 0.0;

function calculateTotal(itemPrice) {
    total += itemPrice;
    items++;
    tax = total / 10;
    updateFields();
}

function updateFields() {
    document.getElementById("totalAmount").value = total.toFixed(2);
    document.getElementById("itemCount").value = items;
    document.getElementById("tax").value = tax.toFixed(2);

    const getNowBtn = document.querySelector(".section1-div1-item-button");
    if (total > 0) {
        getNowBtn.disabled = false;
        getNowBtn.style.cursor = "pointer";
        getNowBtn.style.opacity = "1";
    } else {
        getNowBtn.disabled = true;
        getNowBtn.style.cursor = "not-allowed";
        getNowBtn.style.opacity = "0.6";
    }
}

// Function to be triggered when "Get Now" button is clicked
function func() {
    updateFields();
}

// Disable button when the form is reset
document.querySelector(".section2-reset-button").addEventListener("click", function() {
    total = 0.0;
    items = 0;
    tax = 0.0;
    updateFields(); // Update fields and disable "Get Now"
});
