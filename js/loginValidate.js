jQuery("#loginForm").validate({
    rules: {
        email:{
            required:true,
            email:true
        },
        pass:{
            required:true,
            minlength:5,
            maxlength:10
        },
        messages:{
            email:{
                required:"** THis is required field **",
                email:"** Please enter a valid email address **"
            },
            pass:{
                required:"** Password is mandatory **",
                minlength:"** Password must me more than 5 charecters **",
                maxlength:"** Password must me less than 10 charecters **"
            }
        }
    }
})

jQuery('#addAlbum').validate({
    rules:{
        title:{
            required:true

        },
        description:{
            required:true
        },
        messages:{
            title:{
                required:"** Title is required **"
            },
            description:{
                required:"** Must have description about the album **"
            }

        },

    }
})
