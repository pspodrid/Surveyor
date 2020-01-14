# class QuestionsController < ApplicationController
#
#     def index
#         @questions = Question.all
#         render :index
#     end
#
#     def new
#         @survey = Survey.find(params[:survey_id])
#         @question = @survey.questions.new
#         render :new
#     end
#
#     def create
#         @survey = Survey.find(params[:survey_id])
#         @question = @survey.questions.new(question_params)
#         if @question.save
#             redirect_to survey_path(@survey)
#         else
#             render :new
#         end
#     end
#
#     def edit
#         @survey = Survey.find(params[:survey_id])
#         @question = Question.find(params[:id])
#         render :edit
#     end
#
#     def show
#         @survey = Survey.find(params[:survey_id])
#         @question = Question.find(params[:id])
#         render :show
#     end
#
#     def update
#         @survey = Survey.find(params[:survey_id])
#         @question = Question.find(params[:id])
#         if @question.update(question_params)
#             redirect_to survey_path(@question.survey)
#         else
#             render :edit
#         end
#     end
#
#     def destroy
#         @question = Question.find(params[:id])
#         @question.destroy
#         redirect_to survey_path(@question.survey)
#     end
#
#     private
#     def question_params
#         params.require(:question).permit(:query, :type, :choices)
#     end
# end
