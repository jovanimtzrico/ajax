var request = null;

try {
    request = new XMLHttpRequest();
} catch (trymicrosoft) {
    try {
        request = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (othermicrosoft) {
        try {
            request = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (failed) {
            request = null;
        }
    }
}

if (request == null)
    alert("Error creating request object!");

function getCustomerInfo() {
    var phone = document.getElementById("phone").value;
    var url = "breakneckPizzalookup.jsp?phone=" +
    escape(phone);
    request.open("GET", url, true);
    request.onreadystatechange = updatePage;
    request.send(null);
}

function updatePage() {
    if (request.readyState == 4) {
        if(request.status==200){
            /* Get the response from the server */
            var customerAddress = request.responseText;

            /* Update the HTML web form */
            document.getElementById("address").value = customerAddress;
        }else{
            alert("Error! Request status is"+request.status);
        }
    }
}