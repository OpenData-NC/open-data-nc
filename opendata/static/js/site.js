// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function f(){ log.history = log.history || []; log.history.push(arguments); if(this.console) { var args = arguments, newarr; try { args.callee = f.caller } catch(e) {}; newarr = [].slice.call(args); if (typeof console.log === 'object') log.apply.call(console.log, console, newarr); else console.log.apply(console, newarr);}};

// make it safe to use console.log always
(function(a){function b(){}for(var c="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),d;!!(d=c.pop());){a[d]=a[d]||b;}})
(function(){try{console.log();return window.console;}catch(a){return (window.console={});}}());


// place any jQuery/helper plugins in here, instead of separate, slower script files.

$(document).ready(function(){

    if(!($('#user').is(':visible'))) {
        $('#logo_mobile').css('left', '2%');
    };

    $('nav a').each(function(){
      if ($(this).attr('href') == window.location.pathname){
         $(this).find('h3').css('color', '#333');
      };
    });

    var x = $(window).width();
    if( x>769 ) {
        $('nav a').hover(function(){
            if ($(this).next('p').is(':hidden')){
                $(this).next('p').slideDown(300);
            } else {
                $(this).next('p').slideUp(300);
            }
        });
    }

    var noShow = ['#login', '#logout', '#registration', '#search-requests', '#url-suggest-form', '#request-form', '#submit-form'];

    for(var i=0; i<noShow.length; i++) {
      if($(noShow[i]).is(':visible')) {
        $('.form-search').hide();
      } else {
        return false;
      } 
    };
});

//displays logo text on scroll in mobile
$(window).scroll(function(){
   var h = $('#logo').height();
   var x = $(window).width();
   var y = $(window).scrollTop();
   if( y > (h+50) && x < 767 ){
      $('#logo_mobile').fadeIn('slow');
   } else {
      $('#logo_mobile').fadeOut('slow');
   }
});



