require "json"
require "kemal"

module App
    class MapController < ApplicationController
        get "/map/:name" do |env|
            maps = MAPS
            sections = SECTIONS
            pars = env.params.url.dup

            if MAPS.includes?(pars["name"])
                content = {} of String => JSON::Any
                content = JSON.parse(File.read("public/content.json")).as_h

                mapName = pars["name"].to_s.capitalize
                mapData = content["maps"][pars["name"]].as_h

                ecr "maps/map"
            else
                halt env, status_code: 404
            end
        end
    end
end