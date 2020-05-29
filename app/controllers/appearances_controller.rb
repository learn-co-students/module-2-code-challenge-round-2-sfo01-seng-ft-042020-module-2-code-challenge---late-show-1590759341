class AppearancesController < ApplicationController

# def index
    
# end

def new

@appearance = Appearance.new

end

def create

@appearance = Appearance.new(appearance_params)
redirect_to episode_path(@episode.id)

end

# def edit

# end

# def update

# end

# def show

# end

# def destroy

# end

private

def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)

end
end