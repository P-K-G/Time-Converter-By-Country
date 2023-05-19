/**
 * 
 */
 
 function myFunction1() {
    // Declare variables
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('searchbar');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL1");
    li = ul.getElementsByTagName('li');
  
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
      a = li[i].getElementsByTagName("a")[0];
      txtValue = a.textContent || a.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        li[i].style.display = "";
      } else {
        li[i].style.display = "none";
      }
    }
  }

  function myFunction2() {
    // Declare variables
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('searchbar1');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL2");
    li = ul.getElementsByTagName('li');
  
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
      a = li[i].getElementsByTagName("a")[0];
      txtValue = a.textContent || a.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        li[i].style.display = "";
      } else {
        li[i].style.display = "none";
      }
    }
  }


  function fnc1(val){
    var item1 = document.getElementById(val).innerHTML;
    document.getElementById('searchbar').value = item1;
}
function fnc2(val){
    var item1 = document.getElementById(val).innerHTML;
    document.getElementById('searchbar1').value = item1;
}


