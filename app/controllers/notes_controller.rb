class NotesController < ApplicationController

    def index
        render json: Note.all
    end

    def create
        @note = Note.create(body: params[:body])
        render json: {note: @note, status: 200}
    end

    def show
        @note = Note.find_by(id: params[:id])
        if @note
          render json: {note: @note, status: 200}
        else
          render json: {status: 404}
        end
    end

    def destroy
        Note.destroy(params[:id])
    end

    def note_params
        params.require(:note).permit(:body)
    end

end
