class Inquiry < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :name, :email, :phone, :message

  validates :name, :presence => {:message => '名前を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
  validates :phone, :presence => {:message => '電話番号を入力してください'}
end
