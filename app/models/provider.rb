class Provider < ActiveResource::Base
  self.site = ENV['API_BASE']

  def specialties
    specialty_ids.map { |specialty_id| Taxonomy.find specialty_id }
  end

  def fellowship_specialty
    Taxonomy.find fellowship_specialty_id
  end

  def has_training?
    if medical_school.nil? && residency_facility.name.nil? && fellowship_facility.name.nil? && fellowship_specialty_id.nil?
      return true
    end
    false
  end
end