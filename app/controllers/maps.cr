require "kemal"

module App
    class MapController < ApplicationController
        get "/map/:name" do |env|
            next env.params.url["name"]
        end
    end
end
