Rails.application.routes.draw do

  get("/", { :controller => "robomix", :action => "home" })

  # Routes for the Cocktail resource:

  # CREATE
  post("/insert_cocktail", { :controller => "cocktails", :action => "create" })
          
  # READ
  get("/cocktails", { :controller => "cocktails", :action => "index" })
  
  get("/cocktails/:path_id", { :controller => "cocktails", :action => "show" })
  
  # UPDATE
  
  post("/modify_cocktail/:path_id", { :controller => "cocktails", :action => "update" })
  
  # DELETE
  get("/delete_cocktail/:path_id", { :controller => "cocktails", :action => "destroy" })

  #------------------------------

  # Routes for the Saved cocktail resource:

  # CREATE
  post("/insert_saved_cocktail", { :controller => "saved_cocktails", :action => "create" })
          
  # READ
  get("/saved_cocktails", { :controller => "saved_cocktails", :action => "index" })
  
  get("/saved_cocktails/:path_id", { :controller => "saved_cocktails", :action => "show" })
  
  # UPDATE
  
  post("/modify_saved_cocktail/:path_id", { :controller => "saved_cocktails", :action => "update" })
  
  # DELETE
  get("/delete_saved_cocktail/:path_id", { :controller => "saved_cocktails", :action => "destroy" })

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

  # Routes for the Modifier resource:

  # CREATE
  post("/insert_modifier", { :controller => "modifiers", :action => "create" })
          
  # READ
  get("/modifiers", { :controller => "modifiers", :action => "index" })
  
  get("/modifiers/:path_id", { :controller => "modifiers", :action => "show" })
  
  # UPDATE
  
  post("/modify_modifier/:path_id", { :controller => "modifiers", :action => "update" })
  
  # DELETE
  get("/delete_modifier/:path_id", { :controller => "modifiers", :action => "destroy" })

  #------------------------------

  # Routes for the Soda resource:

  # CREATE
  post("/insert_soda", { :controller => "sodas", :action => "create" })
          
  # READ
  get("/sodas", { :controller => "sodas", :action => "index" })
  
  get("/sodas/:path_id", { :controller => "sodas", :action => "show" })
  
  # UPDATE
  
  post("/modify_soda/:path_id", { :controller => "sodas", :action => "update" })
  
  # DELETE
  get("/delete_soda/:path_id", { :controller => "sodas", :action => "destroy" })

  #------------------------------

  # Routes for the Citrus resource:

  # CREATE
  post("/insert_citrus", { :controller => "citrus", :action => "create" })
          
  # READ
  get("/citrus", { :controller => "citrus", :action => "index" })
  
  get("/citrus/:path_id", { :controller => "citrus", :action => "show" })
  
  # UPDATE
  
  post("/modify_citrus/:path_id", { :controller => "citrus", :action => "update" })
  
  # DELETE
  get("/delete_citrus/:path_id", { :controller => "citrus", :action => "destroy" })

  #------------------------------

  # Routes for the Bitter resource:

  # CREATE
  post("/insert_bitter", { :controller => "bitters", :action => "create" })
          
  # READ
  get("/bitters", { :controller => "bitters", :action => "index" })
  
  get("/bitters/:path_id", { :controller => "bitters", :action => "show" })
  
  # UPDATE
  
  post("/modify_bitter/:path_id", { :controller => "bitters", :action => "update" })
  
  # DELETE
  get("/delete_bitter/:path_id", { :controller => "bitters", :action => "destroy" })

  #------------------------------

  # Routes for the Sweetener resource:

  # CREATE
  post("/insert_sweetener", { :controller => "sweeteners", :action => "create" })
          
  # READ
  get("/sweeteners", { :controller => "sweeteners", :action => "index" })
  
  get("/sweeteners/:path_id", { :controller => "sweeteners", :action => "show" })
  
  # UPDATE
  
  post("/modify_sweetener/:path_id", { :controller => "sweeteners", :action => "update" })
  
  # DELETE
  get("/delete_sweetener/:path_id", { :controller => "sweeteners", :action => "destroy" })

  #------------------------------

  # Routes for the Format resource:

  # CREATE
  post("/insert_format", { :controller => "formats", :action => "create" })
          
  # READ
  get("/formats", { :controller => "formats", :action => "index" })
  
  get("/formats/:path_id", { :controller => "formats", :action => "show" })
  
  # UPDATE
  
  post("/modify_format/:path_id", { :controller => "formats", :action => "update" })
  
  # DELETE
  get("/delete_format/:path_id", { :controller => "formats", :action => "destroy" })

  #------------------------------

  # Routes for the Liquor resource:

  # CREATE
  post("/insert_liquor", { :controller => "liquors", :action => "create" })
          
  # READ
  get("/liquors", { :controller => "liquors", :action => "index" })
  
  get("/liquors/:path_id", { :controller => "liquors", :action => "show" })
  
  # UPDATE
  
  post("/modify_liquor/:path_id", { :controller => "liquors", :action => "update" })
  
  # DELETE
  get("/delete_liquor/:path_id", { :controller => "liquors", :action => "destroy" })

  #------------------------------

end
