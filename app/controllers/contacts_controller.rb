class ContactsController < ApplicationController
  def index
    if !request.post?
      @contact = Contact.new
      return
    end

    @contact = Contact.new(params[:contact])
    if @contact.valid?
      @contact.confirming = 1
    end

    #cancelボタン押下処理
    if params[:cancel]
      @contact.confirming = ''
    end

    #送信ボタン押下処理
    if params[:send]
      #メール送信処理
    end
  end

end
