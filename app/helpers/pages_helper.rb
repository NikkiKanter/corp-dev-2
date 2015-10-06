module PagesHelper

  def team_members
    [
      { name: 'Jonathan Weiss', title: 'Founder and CEO', bw_image: 'team_members/Jonathan-Weiss-bw.jpg', image: 'team_members/Jonathan-Weiss.jpg', bio: 'Jonathan Weiss is a healthcare entrepreneur with experience in founding and operating various international medical companies. He currently leads HealthEngine, a platform bringing purchasers and providers together in a marketplace for healthcare services. Jonathan has served as co-founder & CEO of several businesses including Nations Healthcare, one of the largest diagnostic and surgery centre companies contracted in the United Kingdom to build, staff and manage specialty hospitals diagnosing and treating 300,000 patients annually. Jonathan was also co-founder and director of Premier Health Partners, operating medical networks in the primary health and specialist physician fields throughout the UK and Europe.' },
      { name: 'Amitabh Chandra', title: 'Co-Founder', bw_image: 'team_members/Amitabh-Chandra-bw.jpg', image: 'team_members/Amitabh-Chandra.jpg', bio: "Professor Amitabh Chandra joined HealthEngine as one of the very first team members recruited onto the management team. An economist by background, Dr. Chandra is Professor of Public Policy, and Director of Health Policy Research at the Harvard Kennedy School of Government. He is a member of the Congressional Budget Office's (CBO) Panel of Health Advisors, and among his research areas are productivity and cost-growth in healthcare."},
      { name: 'Jack Stockert', title: 'President and COO', bw_image: 'team_members/Jack-Stockert-bw.jpg', image: 'team_members/Jack-Stockert.jpg', bio: "Jack Stockert is Senior Vice President of Strategy and Operations at HealthEngine. He is a trained physician with experience in healthcare innovation and early stage venture evaluation and execution. He brings leadership expertise in corporate development, finance and management." },
      { name: 'Seth Merritt', title: 'Senior Vice President | Provider and Payor Strategy', bw_image: 'team_members/Seth-Merritt-bw.jpg', image: 'team_members/Seth-Merritt.jpg', bio: "Seth Merritt brings 15 years of progressive healthcare leadership experience, in addition to a background of working with large national insurers as well as regional network organizations. Seth has a strong track record delivering on cohesive partnerships and creative value networks, with a particular focus on innovative clinical delivery models."},
      { name: 'Alex Weiss', title: 'Senior Vice President | Business Development', bw_image: 'team_members/Alex-Weiss-bw.jpg', image: 'team_members/Alex-Weiss.jpg', bio: "Alex Weiss joins HealthEngine as Senior Vice President of Business Development. After spending the last ten years in a client-facing role within finance, he brings to HealthEngine strong relationship management skills as well as effective leadership experience." },
      { name: 'Casey T. Griffin', title: 'Director of Government and Labor Relations', bw_image: 'team_members/Casey-T-Griffin-bw.jpg', image: 'team_members/Casey-T-Griffin.jpg', bio: "Casey Griffin has spent the last 15 years managing the Cook County Recorder of Deeds office. As Deputy Recorder, he oversaw the operation of this large government office with 200 employees and annual revenues of over 75 million dollars a year."}
    ]
  end


  def first_faqs
    [
      { question: 'What is HealthEngine?', answer: "We’re an online platform bringing together physicians and patients.  We provide the tools to help patients find and compare doctors on price and quality." },
      { question: 'Who can use HealthEngine?', answer: "Anyone can use HealthEngine!  We work with your existing benefit plans, or help you if you have no coverage." },
      { question: 'Does HealthEngine work with my insurance plan?', answer: "Yes, HealthEngine partners with the doctors that are already in your network, so no need to do anything different." },
      { question: 'Does this apply to my deductible?', answer: "Absolutely. Since HealthEngine works within your existing benefit plan, your payments will be directly applied to your deductible levels." },
      { question: 'When should I use HealthEngine?', answer: "Anytime you need to get a medical service, you should check HealthEngine to see if we can save you money." }
      
    ]
  end

  def second_faqs
    [
      { question: 'How does HealthEngine save me money?', answer: "By negotiating bundled packages with physicians, we are able to get the best possible pricing." },
      { question: 'Why does a healthcare provider want to collaborate with HealthEngine?', answer: "Providers list on HealthEngine as a way to promote the value of their services. Doctors competing for consumers in an open market drives better value." },
      { question: 'Will HealthEngine choose my service provider for me?', answer: "No.  You have the freedom to choose the doctor that is right for you.  HealthEngine makes it simple to compare healthcare providers." },
      { question: 'What if I have questions about how to use HealthEngine?', answer: "Contact HealthEngine's concierge and we will help you with any questions you have." }
    ]
  end

  def board_member_names
    [
      "Chad A. Leat",
      "Dr.David H. Song",
      "Stephen C. Savage",
      "Les Funtleyder",
      "Ramon Tisaire"
    ]
  end

  def board_members
    board_member_names.map! { |member| member.downcase.gsub(' ', '-').gsub('.', '')}
  end
end