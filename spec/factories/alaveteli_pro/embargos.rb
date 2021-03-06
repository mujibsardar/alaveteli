# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: embargos
#
#  id              :integer          not null, primary key
#  info_request_id :integer          not null
#  publish_at      :datetime         not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  embargo_duration :string(255)
#

FactoryBot.define do
  factory :embargo, :class => AlaveteliPro::Embargo do
    info_request
    publish_at AlaveteliPro::Embargo.three_months_from_now
    embargo_duration "3_months"

    factory :expiring_embargo do
      publish_at Time.zone.now + 3.days
    end
  end
end
