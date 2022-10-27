require 'faker'

Doctor.destroy_all
Patient.destroy_all
doctors=[]
patients=[]

20.times do
    doctor = Doctor.create!(first_name:Faker::name:first_name , last_name:Faker::Creature::Cat.name, specialty:["généraliste", "cardiologue", "neurologue", "gynecologue", "oncologue", "gériatre", "pédiatre"].sample, zip_code:["29000", "29120", "29950", "29170", "29200"].sample)
    doctors << doctor
end

50.times do
    patient = Patient.create!(first_name:Faker::name:first_name  , last_name:Faker::Sports::Football.player )
    patients << patient
end

30.times do
    appointment = Appointment.create!(date: Faker::Date.between(from: '2022-10-28', to: '2022-12-25'), doctor_id: doctors[rand(0..19)], patient_id: patients[rand(0..50)])
end
