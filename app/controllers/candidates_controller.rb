class CandidatesController < ApplicationController

    def index 
    end

    def new
      @candidate = Candidate.new
    end

    def create
      

      @candidate = Candidate.new(candidate_params)

      if @candidate.save
        flash[:notice] = "creatd successfully"
        redirect_to '/candidates'
      else

      end
    end

    private
    def candidate_params
        params.require(:candidate).permit(:name, :party, :age, :politics)
    end

end