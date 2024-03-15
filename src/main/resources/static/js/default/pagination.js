$(window).on('load', function(){
    var List = $('.newsContents li').length;
    // console.log(List);
    no=0;

    showList = 4;
    
    start = 0;
    
    end = showList;

    var deviedLi = List/showList;

    var arounVal = Math.ceil(deviedLi);

    var counter;

    for(counter = 1; counter <= arounVal; counter++){
    $('<li><a href="javascript:void(0)">' + counter + '</a></li>').appendTo('.pagination')
    }

    $('.pagination li').eq(0).addClass('active');

    $('.newsContents li').slice(start, end).addClass('active');

    $('.prevButton').prop('disabled', true);

    function myfunction (selectedShow){

        return function () {

            if(selectedShow ==='nextShow') {

                no++;

                $('.pagination li').removeClass('active');

                $('.pagination li').eq(no).addClass('active');

                $('.newsContents li').removeClass('active');
                
                start = showList*no;
                
                end = showList*no+showList;
                
                $('.newsContents li').slice(start, end).addClass('active');
                
                $('.prevButton').prop('disabled', false);
                
                if(no*showList+showList >= List){
                
                    $('.nextButton').prop('disabled', true);
                
                }
            }
            if(selectedShow ==='pinterclick'){
                
                $('.pagination li').removeClass('active');

                var thisnumber = $(this).addClass('active').index();
                
                no = thisnumber;

                start = showList*no;
                
                end = showList*no+showList;

                $('.newsContents li').removeClass('active');

                $('.newsContents li').slice(start, end).addClass('active');
                
                if(no > 0){

                    $('.prevButton').prop('disabled', false);
                }
                else{
                    $('.prevButton').prop('disabled', true);
                }
                if(no*showList+showList >= List){
                    $('.nextButton').prop('disabled', true);
                }
                else{
                    $('.nextButton').prop('disabled', false);
                }
            }
            else if(selectedShow === 'prevSelecte'){
                
                no--;

                $('.pagination li').removeClass('active');

                $('.pagination li').eq(no).addClass('active');
                
                $('.newsContents li').removeClass('active');
                
                start = showList*no;
                
                end = showList*no+showList;
                
                $('.newsContents li').slice(start, end).addClass('active');
                
                $('.nextButton').prop('disabled', false);
                
                if(no === 0){
                    $('.prevButton').prop('disabled', true);
                }
            }
        }
    }

    $('.nextButton').on('click', myfunction('nextShow'));

    $('.prevButton').on('click', myfunction('prevSelecte'));

    $('.pagination').on('click', 'li', myfunction('pinterclick'));

});