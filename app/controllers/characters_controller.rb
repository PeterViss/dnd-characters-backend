class CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: characters
    end

    def show
        character = Character.find_by(id: params[:id])
        render json: character
    end

    def update
        character = Character.find_by(id: params[:id])
        character.update(character_params)
        render json: character.to_json(default)
    end

    def create
        character = Character.create(character_params)
        render json: character
    end

    def destroy
        character = Character.find_by(id: params[:id])
        character.destroy
        render json: character
    end

    private

    def character_params
        params.require(:character).permit(:name, :background, :gender, :race, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :picture, :user_id)
    end

    def default
        {
        :except => [:created_at, :updated_at]
        }        
    end
end
