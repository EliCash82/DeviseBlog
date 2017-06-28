# DEVISE PLUS BLOG

Ok so here is what you do:

initiate a blog scaffold

generate a migration:

`rails g migration add_admin_to_users admin:boolean`

Once migration is generated edit the blog scaffold so that
admin level permissions are handled like so:

```Ruby

	def new
	  if current_user.admin?
	    @blog = Blog.new
	  else
		  redirect_to root_path
	  end
	end
	
```

Now go into rails console and say:


`yaboob = User.first`

`yaboob.admin = true`

`yaboob.save`

This should solve your issue.
