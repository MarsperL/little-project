
    $.ajax({
  url : "BookServlet",
  type : "post",
  dataType : "json",
  success : function(data) {
    console.log(data)
    $("#section-library").empty()
    $(".picks").empty()
    $("#show").empty()
    $.each(data, function(i) {
      let bookname = data[i].name
      let content=''
        if (i%3==0)
         content = 'Loaned'
        else if (i%2==0)
          content = 'start'
        else
          content = 'Finished'
      let index = i + 1
      let bgcolor = ''
      let display=''
      let arr = ["#FBC164", "#F1CECD", "#ECE7E9", "#D0E3E8"]
      if (i == 0)
        bgcolor = arr[0]
      else if (i==1)
        bgcolor = arr[1]
      else if (i == 2)
        bgcolor = arr[2]
      else
        bgcolor = arr[3]

      console.log(content)
      console.log(bookname)
      let trString1 =
          `<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4 js-book">
           <a href='goods.jsp?id=`+data[i].id+`'><img src="images/book-0`+i+`.jpg" alt="book-picture" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo"></a>
           <div class="ml-3 sm:ml-0 w-2/3 sm:w-full">`+
          `<p class="text-sm my-2 font-medium sm:font-normal">`+bookname+`</p>`+
          `<label for="" class="hidden sm:inline-block rounded-full libre-bg-yellow text-white px-2 py-1/2 text-xs">`+content+`</label>
               <div class="block sm:hidden relative">
            <select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
               <option>Start</option>
               <option >Loaned</option>
               <option selected>Finished</option>
            </select>
                      <div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
                              <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                              <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                              </svg>
                              </div>
                              </div>
                              </div>
                              </div>`;
      var trString2 =
          `<div id="abc" class="flex justify-start items-center p-5 px-6 w-full sm:w-1/2" style="`+display+`background-color:` + bgcolor + `">
               <img src="images/pick-`+index+`.jpg" alt="pick" class="shadow-md w-1/3">
                <div class="ml-4 mt-1 w-2/3">
                    <p class="font-medium">` + bookname + `</p>
                   <p class="mt-3 text-sm">` + data[i].bookresume + `</p>
                      <a href='goods.jsp?id=`+data[i].id+`'><button class="shadow-md mt-3 bg-grey-lightest hover:bg-white text-indigo-darker text-xs py-2 px-4 rounded-full transition-normal hover:shadow hover:translate-y-1 active:translate-y-1 focus:outline-none">前去瞧瞧~</button></a>
                </div>
            </div>`
      var trString3 =
          `<img src="images/read-0`+index+`.jpg" alt="read" class="w-1/6 lg:w-1/5 max-w-tiny shadow-md block m-2 transition-normal hover:brighter" style="`+display+`">`
      $("#section-library").append(trString1)
      if(i<4)
      {$(".picks").append(trString2)
      $("#show").append(trString3)}


    });
  }
})
