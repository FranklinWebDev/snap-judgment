# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Quiz.destroy_all

# Default Quiz
quiz = Quiz.create(description: 'Default Quiz')


# Question 1
question1 = Admin::Question.create(situation: 'A patient has arrived complaining of leg swelling.', description: "Lymphedema, also known as lymphoedema and lymphatic edema, is a condition of localized swelling caused by a compromised lymphatic system. The lymphatic system functions as a critical portion of the body's immune system and returns interstitial fluid to the bloodstream.", quiz: quiz)

Admin::Answer.create(answer_text: 'Lymphedema', question: question1, is_correct: true)

Admin::Answer.create(answer_text: 'Cirrhosis', question: question1, is_correct: false)

Admin::Answer.create(answer_text: 'Cellulitis', question: question1, is_correct: false)

Admin::Answer.create(answer_text: 'Deep Vein Thrombosis', question: question1, is_correct: false)


# Question 2
question2 = Admin::Question.create(situation: 'A parent brings in a child suffering from a breathing problem and coughing that will not stop.', description: "Croup, also known as laryngotracheobronchitis, is a type of respiratory infection that is usually caused by a virus. The infection leads to swelling inside the trachea, which interferes with normal breathing and produces the classic symptoms of \"barking\" cough, stridor, and a hoarse voice.", quiz: quiz)

Admin::Answer.create(answer_text: 'Croup', question: question2, is_correct: true)

Admin::Answer.create(answer_text: 'Asthma', question: question2, is_correct: false)

Admin::Answer.create(answer_text: 'Bronchitis', question: question2, is_correct: false)

Admin::Answer.create(answer_text: 'Sinusitis', question: question2, is_correct: false)

# Question 3
question3 = Admin::Question.create(situation: 'A patient has arrived with a spot of discolored spots.', description: "The blue nevus is a solitary blue-colored mole that can present at birth or develop later on in life. The blue color, or ceruloderma, is caused by the Tyndall effect when light is preferentially scattering shorter wavelengths by melanin found in the dermis of the skin. The blue nevus can be found on many areas of the body; however, most have been found on the head and neck, sacral area, back of the hands, and feet.", quiz: quiz)

Admin::Answer.create(answer_text: 'Blue Nevi', question: question3, is_correct: true)

Admin::Answer.create(answer_text: 'Kaposi Sarcoma', question: question3, is_correct: false)

Admin::Answer.create(answer_text: 'Melanoma', question: question3, is_correct: false)

Admin::Answer.create(answer_text: 'Radiation Tattoo', question: question3, is_correct: false)

# Question 4
question4 = Admin::Question.create(situation: 'A parent has arrived with their child who appears to have discoloration of the skin. What is your first impression?', description: "Acute Hemorrhagic Edema of Infancy is a small vessel leucocytoclastic vasculitis affecting young infants. It is characterized by large, target-like, macular to purpuric plaques predominantly affecting the face, ear lobes and extremities. Non-pitting edema of the distal extremities and low-grade fever may also be present. Extra-cutaneous involvement is very rare. Although the lesions have a dramatic onset in a twenty-four to forty-eight hour period, usually the child has a non-toxic appearance.", quiz: quiz)

Admin::Answer.create(answer_text: 'Acute Hemorrhagic Oedema Of Infancy', question: question4, is_correct: true)

Admin::Answer.create(answer_text: 'Purpura', question: question4, is_correct: false)

Admin::Answer.create(answer_text: 'Bruising', question: question4, is_correct: false)

Admin::Answer.create(answer_text: 'Mongolian Spots', question: question4, is_correct: false)

# Question 5
question5 = Admin::Question.create(situation: 'A patient has arrived with a swollen neck and protruding eyeballs.', description: "Graves' disease, also known as toxic diffuse goiter, is an autoimmune disease that affects the thyroid. It frequently results in and is the most common cause of hyperthyroidism. It also often results in an enlarged thyroid. Signs and symptoms of hyperthyroidism may include irritability, muscle weakness, sleeping problems, a fast heartbeat, poor tolerance of heat, diarrhea and unintentional weight loss.", quiz: quiz)

Admin::Answer.create(answer_text: "Graves' Disease", question: question5, is_correct: true)

Admin::Answer.create(answer_text: 'Thyroid Cancer', question: question5, is_correct: false)

Admin::Answer.create(answer_text: "Hashimoto's Disease", question: question5, is_correct: false)

Admin::Answer.create(answer_text: 'Radiation Exposure', question: question5, is_correct: false)

# Question 6
question6 = Admin::Question.create(situation: 'A patient has arrived with chest pain on the left side.', description: "Angina is a type of chest pain caused by reduced blood flow to the heart. Angina, also called angina pectoris, is often described as squeezing, pressure, heaviness, tightness or pain in your chest. Some people with angina symptoms say angina feels like a vise squeezing their chest or a heavy weight lying on their chest. Angina may be a new pain that needs to be checked by a doctor, or recurring pain that goes away with treatment.", quiz: quiz)

Admin::Answer.create(answer_text: 'Angina', question: question6, is_correct: true)

Admin::Answer.create(answer_text: 'Heart Failure', question: question6, is_correct: false)

Admin::Answer.create(answer_text: "Pneumonia", question: question6, is_correct: false)

Admin::Answer.create(answer_text: 'Stroke', question: question6, is_correct: false)

# Question 7
question7 = Admin::Question.create(situation: 'A child is complaining about swollen throat with a sudden spike in temperature.', description: "Herpangina, also called mouth blisters, is a painful mouth infection caused by coxsackieviruses. Usually, herpangina is produced by one particular strain of coxsackie virus A, but it can also be caused by coxsackievirus B or echoviruses. Most cases of herpangina occur in the summer, affecting mostly children. However, it occasionally occurs in adolescents and adults.", quiz: quiz)

Admin::Answer.create(answer_text: 'Herpangina', question: question7, is_correct: true)

Admin::Answer.create(answer_text: 'Canker Sore', question: question7, is_correct: false)

Admin::Answer.create(answer_text: "Gum Disease", question: question7, is_correct: false)

Admin::Answer.create(answer_text: 'Skin Ulcer', question: question7, is_correct: false)

# Question 8
question8 = Admin::Question.create(situation: 'A patient has a rash on their leg that appeared after a camping trip.', description: "Lyme disease, also known as Lyme borreliosis, is an infectious disease caused by the Borrelia bacterium which is spread by ticks. The most common sign of infection is an expanding red rash, known as erythema migrans, that appears at the site of the tick bite about a week after it occurred.", quiz: quiz)

Admin::Answer.create(answer_text: 'Lyme Disease', question: question8, is_correct: true)

Admin::Answer.create(answer_text: 'Eczema', question: question8, is_correct: false)

Admin::Answer.create(answer_text: "Skin Cancer", question: question8, is_correct: false)

Admin::Answer.create(answer_text: 'Shingles', question: question8, is_correct: false)

# Question 9
question9 = Admin::Question.create(situation: 'A patient has a redness and burning that is causing problems when eating and swallowing on their tongue.', description: "Oral thrush — also called oral candidiasis (kan-dih-DIE-uh-sis) — is a condition in which the fungus Candida albicans accumulates on the lining of your mouth. Candida is a normal organism in your mouth, but sometimes it can overgrow and cause symptoms. Oral thrush causes creamy white lesions, usually on your tongue or inner cheeks. Sometimes oral thrush may spread to the roof of your mouth, your gums or tonsils, or the back of your throat.", quiz: quiz)

Admin::Answer.create(answer_text: 'Thrush', question: question9, is_correct: true)

Admin::Answer.create(answer_text: 'Burning Mouth Syndrome', question: question9, is_correct: false)

Admin::Answer.create(answer_text: 'Lie Bumps', question: question9, is_correct: false)

Admin::Answer.create(answer_text: 'Allergic Reaction (Mouth)', question: question9, is_correct: false)

# Question 10
question10 = Admin::Question.create(situation: 'Your patient arrives complaining of a skin rash.', description: "Psoriasis is a long-lasting, noncontagious autoimmune disease characterized by raised areas of abnormal skin. These areas are red, or purple on some people with darker skin, dry, itchy, and scaly. Psoriasis varies in severity from small, localized patches to complete body coverage.", quiz: quiz)

Admin::Answer.create(answer_text: 'Psoriasis', question: question10, is_correct: true)

Admin::Answer.create(answer_text: 'Seborrheic Dermatitis', question: question10, is_correct: false)

Admin::Answer.create(answer_text: 'Ringworm', question: question10, is_correct: false)

Admin::Answer.create(answer_text: 'Jock Itch', question: question10, is_correct: false)

p "Created #{Admin::Question.count} questions"

Admin::Course.destroy_all
Admin::Course.create!([
  {
    "name": "Summer 2022"
  },
  {
    "name": "Fall 2022"
  },
  {
    "name": "Spring 2023"
  }
])
p "Created #{Admin::Course.count} courses"

User.destroy_all
User.create!([
  {
    "email": "admin@email.com",
    "password": "admin123",
    "first_name": "Admin",
    "last_name": "Admino",
    "course_id": 1,
    "is_admin": 1,
    "confirmed_at": Time.now
  },
  {
    "email": "student@email.com",
    "password": "student",
    "first_name": "Student",
    "last_name": "Studento",
    "course_id": 1,
    "is_admin": 0,
    "confirmed_at": Time.now
  }
])
p "Created #{User.count} users"


Admin::Semester.destroy_all
Admin::Semester.create(name: 'Summer', start_date: Date.new(Date.today.year, 5, 10), end_date: Date.new(Date.today.year, 7, 1), year: Date.today.year)
Admin::Semester.create(name: 'Autum', start_date: Date.new(Date.today.year, 9, 14), end_date: Date.new(Date.today.year, 12, 31), year: Date.today.year)
Admin::Semester.create(name: 'Spring', start_date: Date.new(Date.today.year, 1, 14), end_date: Date.new(Date.today.year, 5, 5), year: Date.today.year)
