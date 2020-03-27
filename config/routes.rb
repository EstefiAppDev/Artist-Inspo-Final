Rails.application.routes.draw do



  # Routes for the Theme resource:

  # CREATE
  #post("/insert_theme", { :controller => "themes", :action => "create" })
          
  # READ
  #get("/themes", { :controller => "themes", :action => "index" })
  
  #get("/themes/:path_id", { :controller => "themes", :action => "show" })
  
  # UPDATE
  
  #post("/modify_theme/:path_id", { :controller => "themes", :action => "update" })
  
  # DELETE
  #get("/delete_theme/:path_id", { :controller => "themes", :action => "destroy" })

  #------------------------------

  # Routes for the Fan resource:

  #get("/test_api", { :controller => "application", :action => "test_api"})

  # CREATE
  #post("/insert_fan", { :controller => "fans", :action => "create" })
          
  # READ
  #get("/fans", { :controller => "fans", :action => "index" })
  
  #get("/fans/:path_id", { :controller => "fans", :action => "show" })
  
  # UPDATE
  
  #post("/modify_fan/:path_id", { :controller => "fans", :action => "update" })
  
  # DELETE
  #get("/delete_fan/:path_id", { :controller => "fans", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "users", :action => "new_registration_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "users", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "users", :action => "edit_registration_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "users", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "users", :action => "destroy" })

  get("/my_paintings", {:controller => "users", :action => "saved_paintings"})

  get("/insert_like", {:controller=> "paintings", :action=> "addlike"})
  get("/delete_like/:like_id", {:controller=> "paintings", :action=> "deletelike"})

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_sessions", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_sessions", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Type resource:

  # CREATE
  #post("/insert_type", { :controller => "types", :action => "create" })
          
  # READ
  #get("/types", { :controller => "types", :action => "index" })
  
  #get("/types/:path_id", { :controller => "types", :action => "show" })
  
  # UPDATE
  
  #post("/modify_type/:path_id", { :controller => "types", :action => "update" })
  
  # DELETE
  #get("/delete_type/:path_id", { :controller => "types", :action => "destroy" })

  #------------------------------

  # Routes for the Art movement resource:

  # CREATE
  #post("/insert_art_movement", { :controller => "art_movements", :action => "create" })
          
  # READ
  #get("/art_movements", { :controller => "art_movements", :action => "index" })
  
  #get("/art_movements/:path_id", { :controller => "art_movements", :action => "show" })
  
  # UPDATE
  
  #post("/modify_art_movement/:path_id", { :controller => "art_movements", :action => "update" })
  
  # DELETE
  #get("/delete_art_movement/:path_id", { :controller => "art_movements", :action => "destroy" })

  #------------------------------

  # Routes for the Style resource:

  # CREATE
  #post("/insert_style", { :controller => "styles", :action => "create" })
          
  # READ
  #get("/styles", { :controller => "styles", :action => "index" })
  
  #get("/styles/:path_id", { :controller => "styles", :action => "show" })
  
  # UPDATE
  
  #post("/modify_style/:path_id", { :controller => "styles", :action => "update" })
  
  # DELETE
  #get("/delete_style/:path_id", { :controller => "styles", :action => "destroy" })

  #------------------------------

  # Routes for the Messages in work resource:

  # CREATE
  #post("/insert_messages_in_work", { :controller => "messages_in_works", :action => "create" })
          
  # READ
  #get("/messages_in_works", { :controller => "messages_in_works", :action => "index" })
  
  #get("/messages_in_works/:path_id", { :controller => "messages_in_works", :action => "show" })
  
  # UPDATE
  
  #post("/modify_messages_in_work/:path_id", { :controller => "messages_in_works", :action => "update" })
  
  # DELETE
  #get("/delete_messages_in_work/:path_id", { :controller => "messages_in_works", :action => "destroy" })

  #------------------------------

  
  # UPDATE
  
  #post("/modify_theme/:path_id", { :controller => "themes", :action => "update" })
  
  # DELETE
  #get("/delete_theme/:path_id", { :controller => "themes", :action => "destroy" })

  #------------------------------

  # Routes for the Painting resource:

  # CREATE
  post("/insert_painting", { :controller => "paintings", :action => "create" })
          
  # READ
  get("/", { :controller => "paintings", :action => "index" })
  get("/paintings", { :controller => "paintings", :action => "index" })
  get("/all_paintings", { :controller => "paintings", :action => "all_paintings" })
  
  get("/paintings/:path_id", { :controller => "paintings", :action => "show" })
  
  # UPDATE
  
  #post("/modify_painting/:path_id", { :controller => "paintings", :action => "update" })
  
  # DELETE
  get("/delete_painting/:path_id", { :controller => "paintings", :action => "destroy" })

  # SEARCH 

  get("/search_filter", { :controller => "paintings", :action => "index"})

  #------------------------------

  # Routes for the Artist resource:

  # CREATE
  #post("/insert_artist", { :controller => "artists", :action => "create" })
          
  # READ
  #get("/artists", { :controller => "artists", :action => "index" })
  
  #get("/artists/:path_id", { :controller => "artists", :action => "show" })
  #
  # UPDATE
  
  #post("/modify_artist/:path_id", { :controller => "artists", :action => "update" })
  
  # DELETE
  #get("/delete_artist/:path_id", { :controller => "artists", :action => "destroy" })

  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
