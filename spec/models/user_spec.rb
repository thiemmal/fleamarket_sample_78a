require 'rails_helper'

describe User do
  describe '#create' do

  # 1
  it "nikcnameがない場合は登録できないこと" do
    user = build(:user, nickname: nil)
    user.valid?
    expect(user.errors[:nickname]).to include("を入力してください")
  end

  # 2
  it "emailがない場合は登録できないこと" do
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("は不正な値です", "を入力してください")
  end

  # 3
  it "first_nameがない場合は登録できないこと" do
    user = build(:user, first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("は不正な値です", "を入力してください")
  end

  # 4
  it "family_nameがない場合は登録できないこと" do
    user = build(:user, family_name: nil)
    user.valid?
    expect(user.errors[:family_name]).to include("は不正な値です", "を入力してください")
  end

  # 5
  it "first_furiganaがない場合は登録できないこと" do
    user = build(:user, first_furigana: nil)
    user.valid?
    expect(user.errors[:first_furigana]).to include("は不正な値です", "を入力してください")
  end

  # 6
  it "family_furiganaがない場合は登録できないこと" do
    user = build(:user, family_furigana: nil)
    user.valid?
    expect(user.errors[:family_furigana]).to include("は不正な値です", "を入力してください")
  end

  # 7
  it "birthdayがない場合は登録できないこと" do
    user = build(:user, birthday: nil)
    user.valid?
    expect(user.errors[:birthday]).to include("を入力してください")
  end

  # 8
  it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
    user = build(:user, password_confirmation: "")
    user.valid?
    expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
  end

  # 9
  it " 重複したemailが存在する場合は登録できないこと " do
    user = create(:user)
    another_user = build(:user, email: user.email)
    another_user.valid?
    expect(another_user.errors[:email]).to include("はすでに存在します")
  end

  # 10
  it " passwordが7文字以上であれば登録できること " do
    user = build(:user, password: "1234567", password_confirmation: "1234567")
    expect(user).to be_valid
  end

  # 11
  it " passwordが6文字以下であれば登録できないこと " do
    user = build(:user, password: "123456", password_confirmation: "123456")
    user.valid?
    expect(user.errors[:password]).to include("は7文字以上で入力してください")
  end

  # 12
  it "recipient_first_nameがない場合は登録できないこと" do
    user = build(:user, recipient_first_name: nil)
    user.valid?
    expect(user.errors[:recipient_first_name]).to include("を入力してください")
  end

  # 13
  it "recipient_family_nameがない場合は登録できないこと" do
    user = build(:user, recipient_family_name: nil)
    user.valid?
    expect(user.errors[:recipient_family_name]).to include("を入力してください")
  end

  # 14
  it "recipient_first_furiganaがない場合は登録できないこと" do
    user = build(:user, recipient_first_furigana: nil)
    user.valid?
    expect(user.errors[:recipient_first_furigana]).to include("を入力してください")
  end

  # 15
  it "recipient_family_furiganaがない場合は登録できないこと" do
    user = build(:user, recipient_family_furigana: nil)
    user.valid?
    expect(user.errors[:recipient_family_furigana]).to include("を入力してください")
  end

  # 16
  it "zip_cordがない場合は登録できないこと" do
    user = build(:user, zip_cord: nil)
    user.valid?
    expect(user.errors[:zip_cord]).to include("を入力してください")
  end

  # 17
  it "prefectureがない場合は登録できないこと" do
    user = build(:user, prefecture: nil)
    user.valid?
    expect(user.errors[:prefecture]).to include("を入力してください")
  end

  # 18
  it "cityがない場合は登録できないこと" do
    user = build(:user, city: nil)
    user.valid?
    expect(user.errors[:city]).to include("を入力してください")
  end

  # 19
  it "addressがない場合は登録できないこと" do
    user = build(:user, address: nil)
    user.valid?
    expect(user.errors[:address]).to include("を入力してください")
  end

  # 20
  it "nicknameとemail、passwordとpassword_confirmation、first_name、family_name、first_furigana、family_furigana、birthday, recipient_family_name, recipient_first_name, recipient_family_furigana, recipient_first_furigana, zip_cord, prefecture, city, addressが存在すれば登録できること" do
    user = build(:user)
    expect(user).to be_valid
  end

  end
end