class ContactsController < ApplicationController
  def index
    if !request.post?
      @contact = Contact.new
      flash[:notice] = ''
      return
    end

    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # validation OK
      @contact.confirming = 1
    else
      # 入力画面に遷移してワーニング表示
      return
    end

    # cancelボタン押下処理
    if params[:cancel]
      @contact.confirming = ''
      return
    end

    # 送信ボタン押下処理
    if params[:send]
      # メール送信処理
      mail = ContactMailer.notice(@contact)
      mail.deliver

      flash[:notice] = 'mail send success! thanks.'
      @contact = Contact.new
    end
  end

end
