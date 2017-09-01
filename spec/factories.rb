FactoryGirl.define do
  factory :herb do
    name "someherb"
    color "rgb(50,50,50)"
    image "herb.png"
    description "xyzxyz"
    base false
    base_id 1
  end

  factory :baseherb, class: Herb do
    name "baseherb"
    color "rgb(100,100,100)"
    image "baseherb.png"
    description "xyzxyzxyz"
    base true
    base_id 1
  end

  factory :order do
    name FFaker::NamePL.first_name
    surname FFaker::NamePL.last_name
    street FFaker::AddressPL.street_address(include_secondary = true)
    zipcode FFaker::AddressPL.zip_code
    city FFaker::AddressPL.city
    country "PL"
    phone FFaker::PhoneNumberDE.phone_number
    paid false
    confirmed false
    value 15.90
    email {"#{name}.#{surname}@mail.mail".downcase}
  end

  factory :jar do
    quantity 1
    association :order, factory: :order, strategy: :build
  end

  factory :ingredient do
    quantity 100
    association :herb, factory: :herb, strategy: :build
    association :jar, factory: :jar, strategy: :build
  end

end
