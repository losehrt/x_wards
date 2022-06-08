class Pcr < ApplicationRecord
  after_commit :send_partial_stats, on: [ :create, :destroy ]
  def send_partial_stats
    broadcast_update_to('landing_page', target: 'stats', partial: "landing/stats", locals: { pcrs: Pcr.all })
    # broadcast_update_to('bedno', target: 'bedno', partial: "pages/w26", locals: { bed_info: '待轉床'})
  end

  def self.special_ward_people
    where(is_special_ward: true)
  end 
end
