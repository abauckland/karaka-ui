class Help < ActiveRecord::Base
  

#name
#company name#
  NAME_REGEXP = /\A[a-zA-Z\-]+\z/

#address
  ADDRESS_REGEXP = /\A[\h\-\s]+\z/
  
#city
#county
#country
  CITY_REGEXP = /\A[a-zA-Z\-\s]+\z/

#postcode
  POSTCODE_REGEXP = /\A(\h\s{7,8})\z/
  
#telephone
  PHONE_REGEXP = /^([0]{1})([0-9\s]{8,11})$/
  
#vat_no
  VAT_REGEXP = /^([GB])*(([0-9]{9})|([0-9\s]{11}))$/
 
#reg_no
  REG_REGEXP = /((^([SC]){2}([0-9]{6})$)|(^[0-9]{8})$)/

#email

#url

#date

#time

#numerical

#image name

#colour
  COLUR_REGEXP = /^#?(\h{6}|\h{3})$/
  


validates :email, presence: true, uniqueness: { case_sensitive: false }  
validates :subdomain, :retail_subdomain, presence: true, length: { maximum: 20 },
    format: { with: SUBDOMAIN_REGEXP, message: "can only contain letters and dashes" }

  
end