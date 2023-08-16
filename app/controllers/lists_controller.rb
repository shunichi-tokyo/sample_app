class ListsController < ApplicationController
  def new
    @List = List.new
  end

  def create
    # 1.&2.データを受け取り新規登録する為のインスタンス作成
    list = List.new(list_params)
    # 3. データをデータベースに保存する為のsaveメソッド実行
    list.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end
  
  def index
  end

  def show
  end

  def edit
  end

  private

  def list_params
    params.require(:list).permit(:title, :body)
  end
end
