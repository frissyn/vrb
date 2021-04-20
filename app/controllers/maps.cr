require "kemal"

module App
    class MapController < ApplicationController
        get "/map/:name" do |env|
            maps = MAPS
            sections = SECTIONS
            pars = env.params.url.dup

            if MAPS.includes?(pars["name"])
                ecr "maps/map"
            else
                halt env, status_code: 404
            end
        end
    end
end
