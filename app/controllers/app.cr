require "kemal"

module App
    MAPS = ["ascent", "bind", "haven", "icebox", "split"]
    SECTIONS = ["executes", "lineups", "setups"]
    
    class ApplicationController
        macro ecr(filename)
            render "app/views/#{{{filename}}}.ecr", "app/views/layout.ecr"
        end

        get "/" do |env|
            maps = MAPS
            ecr "index"
        end
    end
end