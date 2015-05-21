$(document).on 'page:change', ->
#######################################################################################
    #set icons for buttons
#######################################################################################
    $("[type='submit'").addClass 'btn green round'
    
    $('a').each ->
   
      if $(this).text().toLowerCase().indexOf('back') > -1
         $(this).addClass 'fa fa-arrow-left btn blue round'
      if $(this).text().toLowerCase().indexOf('edit') > -1
         $(this).addClass 'fa fa-pencil btn default round'
      if $(this).text().toLowerCase().indexOf('delete') > -1
         $(this).addClass 'fa fa-trash-o btn red round'
      if $(this).text().toLowerCase().indexOf('submit') > -1
         $(this).addClass 'fa fa-paper-plane-o btn green round'
      if $(this).text().toLowerCase().indexOf('show') > -1
         $(this).addClass 'fa fa-eye btn blue round'
#######################################################################################
    #set marging for fixed nav so content is visible
#######################################################################################
    $(".menu-toggle").on "click", ->
        
        if  $(".menu-toggle").hasClass("fa-bars")
            $(".menu-toggle").removeClass("fa-bars").addClass("fa-times")
        else
            $(".menu-toggle").addClass("fa-bars").fadeIn().removeClass("fa-times")
            
        $(".menu").slideToggle()

#on resize
#account for margin with fixed nav class
    $(window).resize ->
        if $('nav').hasClass('fixed')
            $('.start-content').css 'margin-top', $('nav').height() + 10
        if $(window).width() > 1023
            $('.menu').removeAttr('style');
            
    $(window).trigger 'resize'
    
    
    #set marging for fixed nav so content is visible
    $('[data-img-src]').css 'background-image', ->
        bg = 'url(' + $(this).data('img-src')+')'
