require "kemal"

module App
    MAPS = ["ascent", "bind", "haven", "icebox", "split"]
    
    class ApplicationController
        macro ecr(filename)
            render "app/views/#{{{filename}}}.ecr", "app/views/layout.ecr"
        end

        get "/" do |env|
<<<<<<< HEAD
            maps = MAPS
=======
>>>>>>> 60a997b3c6512574eadd5c008cdc23c53ab7ec32
            ecr "index"
        end
    end
end
