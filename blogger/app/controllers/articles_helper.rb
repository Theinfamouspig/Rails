module ArticlesHelper
  def artparams
    params.require(:article).permit(:title,:body)
  end
end
