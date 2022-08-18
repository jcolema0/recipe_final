Rails.application.routes.draw do

  get("/", { :controller => "recipes", :action => "index" })

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Recipe resource:

  # CREATE
  post("/insert_recipe", { :controller => "recipes", :action => "create" })
          
  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  
  get("/recipes/:path_id", { :controller => "recipes", :action => "show" })
  
  # UPDATE
  
  post("/modify_recipe/:path_id", { :controller => "recipes", :action => "update" })
  
  # DELETE
  get("/delete_recipe/:path_id", { :controller => "recipes", :action => "destroy" })

  #------------------------------

  # Routes for the My liked recipe resource:

  # CREATE
  post("/insert_my_liked_recipe", { :controller => "my_liked_recipes", :action => "create" })
          
  # READ
  get("/my_liked_recipes", { :controller => "my_liked_recipes", :action => "index" })
  
  get("/my_liked_recipes/:path_id", { :controller => "my_liked_recipes", :action => "show" })
  
  # UPDATE
  
  post("/modify_my_liked_recipe/:path_id", { :controller => "my_liked_recipes", :action => "update" })
  
  # DELETE
  get("/delete_my_liked_recipe/:path_id", { :controller => "my_liked_recipes", :action => "destroy" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
