class Help < ActiveRecord::Base
  

#name
#company name#
  NAME_REGEXP = /\A[a-zA-Z\-]+\z/ #letters, and hyphen only

#  validates :first_name, :surname,
#   presence: true,
#   format: { with: NAME_REGEXP, message: "please enter a valid name" }

##http://guides.rubyonrails.org/active_record_validations.html
##for foriegn_key check make sure in model
#class LineItem < ActiveRecord::Base
#  belongs_to :order
#  validates :order, presence: true
#end
#class Order < ActiveRecord::Base
#  has_many :line_items, inverse_of: :order
#end

#   uniqueness: true
#   uniqueness: { case_sensitive: false }
#   validates :name, uniqueness: { scope: :year, message: "should happen once per year" }
#   length: { maximum: 20 },
#   numericality: true
#   format: { with: NAME_REGEXP, message: "can only contain letters and dashes" }

# allow_nil: true
# allow_blank: true

# on: :create
# on: :update

#address
  ADDRESS_REGEXP = /\A[a-zA-Z0-9\-\s]+\z/ #letters, numbers, hyphen and space only
#  validates :city,
#   format: { with: CITY_REGEXP, message: "please enter a valid city name" }


  
#city
#county
#country
  CITY_REGEXP = /\A[a-zA-Z\-\s]+\z/ #letters, hyphen and space only
#  validates :city,
#   format: { with: CITY_REGEXP, message: "please enter a valid city name" }


#postcode
  POSTCODE_REGEXP = /\A(a-zA-Z0-9\s{7,8})\z/ #checks format only not validity of the postcode, UK postcode formatting only
#  validates :postcode,
#   format: { with: POSTCODE_REGEXP, message: "please enter a valid postcode, including a space between the area and street codes e.g.SK2 6PL" }

  
#telephone
  PHONE_REGEXP = /\A^([0]{1})([0-9\s]{8,12})\z/ #must start with '0', can have upto 2 spaces
#  validates :phone_no,
#   format: { with: PHONE_REGEXP, message: "please enter a valid phone number. Phone number should start with a '0'" }

  
#vat_no
  VAT_REGEXP = /^([GB])*(([0-9]{9})$/ #no spaces allowed, inclusion of 'GB' prefix optional, where prefix is provided must be capitals
#  validates :vat_no,
#   uniqueness: {message: "a company with this vat number is already in use"}
#   format: { with: REG_REGEXP, message: "please enter a valid vat number. Omit any spaces and where 'GB' prefix is included (optional) this must be capitals" }
 
#reg_no
  REG_REGEXP = /((^([SC]{2}[0-9]{6})$)|([0-9]{8})$)/ #no spaces allowed, 'SC' prefix where used must be capitals
#  validates :reg_no,
#   uniqueness: {message: "a company with this registration number is already in use"}
#   format: { with: REG_REGEXP, message: "please enter a valid registration number. Omit any spaces and 'SC' prefixes (for companies registered in Scotland) must be in capitals" }


#email

#url

#date
  DATE_REGEXP = /(20[0-9][0-9])\S((02\S[012][0-9])|(0[469]\S([012][0-9]|30))|(0[13578]\S([012][0-9]|3[0-1]))|(1[012]\S([012][0-9]|3[0-1])))/
  #format - DD/MM/YYYY, does not filter leap year for february
#  validates :time,
#   presence: true,
#   format: { with: DATE_REGEXP, message: "please enter a valid date in the format dd/mm/yyyy" }

#time
  TIME_REGEXP = /([0-1][0-9]|2[0-3]):[0-5][0-9]/
  #format - HH:MM, 24 hours clock only
#  validates :time,
#   presence: true,
#   format: { with: TIME_REGEXP, message: "please enter a time based on the 24 hour clock in the format hh:mm" }



#numerical

#image name
  IMAGE_REGEXP = /\A[a-zA-Z0-9\W]+\z/ #any characters but no spaces
#  validates :colour,
#   presence: true,
#   format: { with: IMAGE_REGEXP, message: "please enter an image that doe not contain any spaces" }


#colour
  COLOUR_REGEXP = /^#{1}(\h{6}|\h{3})$/ #check for 6 or 3 character hex code
#  validates :colour,
#   presence: true,
#   format: { with: COLUR_REGEXP, message: "please enter a vaild hex colour in the format #dddddd or #ddd" }
    
    #http://www.colorpicker.com/
    #http://imagecolorpicker.com/

validates :email, presence: true, uniqueness: { case_sensitive: false }  
validates :subdomain, :retail_subdomain, presence: true, length: { maximum: 20 },
    format: { with: SUBDOMAIN_REGEXP, message: "can only contain letters and dashes" }

  
end