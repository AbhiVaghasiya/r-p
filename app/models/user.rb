class User < ApplicationRecord
  has_and_belongs_to_many :emails, dependent: :destroy
  has_and_belongs_to_many :contacts, dependent: :destroy

  validates :name, presence: true
end


# exerice
# 9999999999 contact->User
# User.includes(:contacts).where(contacts:{contact:"9999999999"})
#
# abc@xyz.com contact->User
# User.includes(:emails).where(emails:{email:"abc@xyz.com"})
#
# get all user reports->not created
# User.joins('left outer join reports on reports.user_id != users.id')
# User.joins('left outer join reports on reports.user_id != users.id').distinct.pluck(:user_id)
# Report.pluck(:user_id)
# User.where('id not in(select user_id from reports)')
#
# get all user reports->contact
# c=Contact.where(contact:'9999999999').pluck(:id)
# Report.where(reportable_type:'contact',reportable_id:c)
#
# get all user reports->email
# e=Email.where(email:'abc@xyz.com').pluck(:id)
# Report.where(reportable_type:'email',reportable_id:e)
