FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    first_name            {"あああ"}
    family_name           {"あああ"}
    first_furigana        {"あああ"}
    family_furigana       {"あああ"}
    birthday              {"00000000"}
    recipient_family_name {"あああ"}
    recipient_first_name  {"あああ"}
    recipient_family_furigana {"あああ"}
    recipient_first_furigana  {"あああ"}
    zip_cord              {"000-0000"}
    prefecture            {"あああ"}
    city                  {"あああ"}
    address               {"あああ"}
  end

end