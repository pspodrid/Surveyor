class AnswersController < ApplicationController

    def index
        @answers = Answer.all
        render :index
    end

    def new
        @survey = Survey.find(params[:survey_id])
        @question = Question.find(params[:question_id])
        @answer = @question.answers.new
        render :new
    end

    def create
        @survey = Survey.find(params[:survey_id])
        @question = Question.find(params[:question_id])
        @answer = @question.answers.new(answer_params)
        if @answer.save
            redirect_to survey_question_path(@survey, @question)
        else
            render :new
        end
    end

    def edit
        @survey = Survey.find(params[:survey_id])
        @question = Question.find(params[:question_id])
        @answer = Answer.find(params[:id])
        render :edit
    end

    def show
        @survey = Survey.find(params[:survey_id])
        @question = Question.find(params[:question_id])
        @answer = Answer.find(params[:id])
        render :show
    end

    def update
        @survey = Survey.find(params[:survey_id])
        @question = Question.find(params[:question_id])
        @answer = Answer.find(params[:id])
        if @answer.update(answer_params)
            redirect_to survey_question_path(@survey, @question)
        else
            render :edit
        end
    end

    def destroy
        @answer = Answer.find(params[:id])
        @answer.destroy
        redirect_to survey_question_path(@answer.question.survey, @answer.question)
    end

    private
    def answer_params
        params.require(:answer).permit(:content)
    end
end
