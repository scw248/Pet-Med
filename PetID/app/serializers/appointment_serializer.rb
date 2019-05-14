class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :reason_for_visit, :date_time
end
