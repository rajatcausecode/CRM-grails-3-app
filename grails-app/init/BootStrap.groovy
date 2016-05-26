package com.test

class BootStrap {

    def init = { servletContext ->
    	User admin = new User(username:'admin', password:'secret').save()
    	Role common = new Role(authority: 'ROLE_COMMON').save()
    	UserRole.create(admin, common)
    }
    def destroy = {
    }
}
