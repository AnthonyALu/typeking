module Typeking
    class User
        attr_reader :name, :uid, :userCount
        @@userCount = 0
        
        def initialize(name)
            @name = name
            @uid = @@userCount
            @@userCount +=1
        end

        def user_details()
            {@name => @uid}
        end

    end
end

