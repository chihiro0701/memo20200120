class MemosController < ApplicationController
    def top #トップページ
        @memos = Memo.paginate(page: params[:page], per_page: 6)
    end
    
    
    def new #メモ新規作成
        
    end
    
    def create #新規メモがフォームからPOSTされた時に動作するアクション
        Memo.create(title:params["memos"]["title"], body:params["memos"]["body"], category_id:params["memos"]["category_id"])
        redirect_to "/"
    end
    
    def destroy
        memo = Memo.find(params["id"])
        memo.destroy
        redirect_to "/"
    end
    
    def edit
        @memo = Memo.find(params["id"])
    end
    
    def update
        memo = Memo.find(params["id"])
        memo.title = params["memos"]["title"]
        memo.body = params["memos"]["body"]
        memo.category_id = params["memos"]["category_id"]
        memo.save
        redirect_to "/"
    end
end
