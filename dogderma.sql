-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 06:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dogderma`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clinic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_landline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `clinic_name`, `clinic_address`, `clinic_mobile`, `clinic_landline`, `clinic_email`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Animal House Veterinary Hospital', 'AH Binondo 599 Quintin Paredes', '0917 8073 694', '(02) 8355-8772, (02) 8401-1248', 'anihouse615@yahoo.com', '8c54d02c-99f5-4373-ab61-a91ccc0deee2.png', '2022-11-13 17:14:12', '2022-11-13 17:14:12', NULL),
(2, 'Cayco Animal Clinic', '434 Cayco St, Sampaloc, Manila, 1008 Metro Manila', '0942-051-7675', '0942-051-7675', 'caycoanimal@gmail.com', '6238716a-6b2c-483c-87e6-e3fee97002af.png', '2022-11-13 17:17:31', '2022-11-13 20:35:32', NULL),
(3, 'Petlink', '3432 Arsenio Herrera St, Tondo, Manila, Metro Manila', 'N/A', 'N/A', 'petlink.rpapa@gmail.com', '866eea48-897c-4547-b7e1-827f4417c7f4.png', '2022-11-13 17:38:46', '2022-11-13 17:38:46', NULL),
(4, 'Goldwings Veterinary Clinic (Rjy Juan Luna Animal Clinic)', '1601 Juan Luna St, Tondo, Manila, Metro Manila', '0995 953 6523', '0995 953 6523', 'goldwingsclinic@gmail.com', '38972bb6-6562-4488-a79b-bc14098ff062.png', '2022-11-13 17:43:50', '2022-11-13 20:36:11', NULL),
(5, 'Bitten Animal Bite Center', '141 N.S. Amoranto Sr. St, La Loma, Quezon City, 1114 Metro Manila', '0966 413 1387', '0966 413 1387', 'biteanimalcenter@gmail.com', '94da14f6-aff2-41b8-8bf5-858d9750bedd.png', '2022-11-13 17:51:06', '2022-11-13 17:51:06', NULL),
(6, 'Citivet Veterinary Clinic & Pet Supply Co, Manila', '1913 Dapitan St, Sampaloc, Manila, 1008 Metro Manila', '+63 919 253 2080', '0919 253 2080', 'citivetvetclini@gmail.com', 'bbcf7871-1696-4a96-bc0b-f63628883ea2.png', '2022-11-13 17:57:33', '2022-11-13 17:57:33', NULL),
(7, 'CuraPet Animal Clinic', 'Tejeron St, Santa Ana, Manila, 1009 Metro Manila', '(02) 8253 1668', '(02) 8253 1668', 'curapet@gmail.com', '4c7d9dca-2c00-49f3-bb40-347634bf910d.png', '2022-11-13 18:02:24', '2022-11-13 18:02:24', NULL),
(8, 'Pampolina Veterinary Clinic And Grooming Center', '2380 Leon Guinto St, Malate, Manila, 1004 Metro Manila', '(02) 8697 1871', '(02) 8697 1871', 'pampolinavetclinic@gmail.com', '9920550b-fded-437d-bfd5-5f7dc370bfe1.png', '2022-11-13 18:07:52', '2022-11-13 18:07:52', NULL),
(9, 'Philippine Society for the Prevention of Cruelty to Animals', '2044 Recto Ave, Quiapo, Manila, 1008 Metro Manila', '(02) 8293 9698', '(02) 8293 9698', 'pspcarecto@gmail.com', '3a6829b5-29d7-498d-a8ee-725002a9713e.png', '2022-11-13 18:10:14', '2022-11-13 18:10:14', NULL),
(10, 'Primitiva Veterinary Clinic', '2045-E Oynx, Paco, Manila, Metro Manila', '(02) 7504 1879', '(02) 7504 1879', 'primitivavetclinic@gmail.com', '5f293d02-06c6-4f0f-8b2a-fb8019ed646e.png', '2022-11-13 18:13:54', '2022-11-13 18:13:54', NULL),
(11, 'Tamani Veterinary Clinic', '820 A, Tayuman St, Barangay 54, Tondo Manila, Manila, Philippines', '0906 745 6054', '0906 745 6054', 'romeo.tamani@yahoo.com.ph', '1842716f-d8ea-4038-bb27-fe4e723773a2.png', '2022-11-13 18:18:26', '2022-11-13 18:18:26', NULL),
(12, 'Vetfront Animal Wellness Center', '1764 Laong Laan Rd, Sampaloc, Manila, 1008 Metro Manila', '0927 835 3189', '0927 835 3189', 'vetfrontanimal@gmail.com', 'da73a741-3c3d-425e-b493-4b9b26266285.png', '2022-11-13 18:21:00', '2022-11-13 18:21:00', NULL),
(13, 'VetCare Animal Clinic and Grooming Center', '1440 Narra Street, Tondo, Manila, Philippines', '0906 745 6052', '0919 253 2082', 'vetcareanimalclinic@gmail.com', 'e1d156b5-1f73-419b-a9a8-0a12fe2bf387.png', '2022-11-13 18:23:52', '2022-11-13 18:23:52', NULL),
(14, 'Vetzone Animal Clinic Co', '3192b Infront of Puregold Kalentong, 3192 New Panaderos Ext, Santa Ana, Manila, 1009 Metro Manila', '(02) 8401 7973', '(02) 8401 7973', 'vetzoneanimalclinic@gmail.com', '4774e9bd-a39c-470c-a79d-bdcb057a6146.png', '2022-11-13 18:32:15', '2022-11-13 18:32:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disease` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `causes` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatment` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prevention` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `disease`, `overview`, `causes`, `symptoms`, `treatment`, `prevention`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sarcoptic Mange', 'Sarcoptic mange, also known as scabies, is a highly contagious zoonosis that is brought on by microscopic, burrowing, parasitic mites.', 'It is brought on by microscopic, burrowing, parasitic mites.', '[\"Intense Itching\",\"Self-inflicted scratches wounds\",\"Hair loss\",\"Bald areas\",\"Scabbing\",\"Sores\"]', 'Your vet will likely prescribe an oral or topical medication to kill the Sarcoptes scabiei mites.\nOngoing treatment will be necessary because eggs take time to hatch.\nIn some cases, you can use a medicated shampoo to relieve your dog’s skin condition.\nMedicated dips containing amitraz (an insecticide) and lime-sulfur are sometimes prescribed by veterinarians to treat scabies (amitraz cannot be purchased without a prescription)\nBecause of the contagious nature of this type of mange, you’ll need to clean thoroughly any areas where your dog has been.', 'It is not always possible to prevent sarcoptic mange in dogs. However, avoiding contact with infected dogs is the surest way to prevent an infection. Signs of infection may not always be obvious, but observing the health of your dog’s playmates and talking with their owners can give you essential information about potential health risks.\n\nThere are no known breed predispositions to sarcoptic mange, but age can play a role. Younger dogs in high-stress environments like kennels, shelters, pet stores, grooming salons, and puppy mills may be more susceptible to the condition, and dogs with compromised immune systems are also at a higher risk.', '21313208-7da0-46a3-92cd-a49d4e0d6723.png', '2022-11-13 16:34:13', '2022-11-13 16:34:13', NULL),
(2, 'MRSA', 'Companion animals are the primary carriers of MRSA, as they could pass the infection to their owners directly. However, it appears that patients with impaired immune systems are more likely to contract MRSA from animals.', 'Companion animals are the primary carriers of MRSA, as they could pass the infection to their owners directly.', '[\"Minor to serious skin infections\\n\",\"Infections of the urinary and respiratory systems.\\n\"]', 'The majority of MRSA infections can be treated effectively if they are diagnosed and appropriate treatment is started in a timely manner. No matter at what point the treatment begins, follow the treatment recommendations of your veterinarian carefully. It is especially important to completely finish any antibiotic prescriptions, as directed, even if your pet seems to be better earlier.\n\nAvoid contact with the infected area of your pet. If possible the area should be kept covered or bandaged. Wear gloves if you need to change the bandage and place all used bandage materials directly in the garbage. Wash your hands well after handling your pet, and especially after changing any bandages.', 'Even though MRSA colonization is uncommon in healthy pets, if they have been exposed to a hospital environment (such as animals in hospital visitation programs) or to a person who was recently hospitalized, they may be more likely to be carrying MRSA. Hand hygiene is the simplest and most practical way to prevent transmission of MRSA between humans and animals. Use soap and water or an alcohol-based hand sanitizer on your hands.', 'e790d993-42e4-43bc-b2d0-8b5aec0fe83f.jpg', '2022-11-13 16:37:45', '2022-11-13 16:37:45', NULL),
(3, 'Ringworms', 'The medical term for this condition is dermatophytosis since the fungi that cause ringworm infections are members of a particular family called dermatophytes.', 'Ringworm is a zoonotic infection, which means it can spread from animals to humans. Anyone who comes into contact with infected dogs or cats can catch it. Cats seem to be more prone to ringworm than dogs, but that doesn’t mean you can let your guard down around an afflicted canine.', '[\"Ring-shaped rash that is itchy, scaly and slightly raised.\"]', 'If you believe your dog may have ringworm, always contact your veterinarian. Ringworm can be mistaken for other skin problems, including irritated tick bites or Lyme d isease. Your vet will help identify the cause of the problem and give you advice for treating your pet effectively. \n\nIf you decide to treat your dog’s ringworm on your own, reach out to a vet if the infection seems to be spreading or getting worse so they can prescribe oral antifungal medication. The sooner you begin treatment for ringworm under the guidance of a veterinarian, the less likely you are to catch ringworm yourself—and the sooner your pet will be cured.', 'If your dog has ringworm, vets recommend confining them to a single area that can be cleaned easily. If that area is carpeted, vacuum it once a day.\nUse diluted bleach (1:10 mixture in water) or an all-purpose cleaner to clean all nonporous surfaces twice a week (i.e. counters, tabletops, etc.).\nWipe all floors and walls with dry cloths once a week.\n   handling them, and putting potentially infected clothing in the washer as soon as possible.\nIn severe cases in which you have children at home or more than one pup, you may also want to clean your home\'s air ducts and replace any air filters.', '86d592a3-38df-45b3-bada-2db103183eea.jpeg', '2022-11-13 16:40:20', '2022-11-13 16:40:20', NULL),
(4, 'Flea Infestation', 'Fleas are parasitic, wingless insects that feed off the blood of their hosts.The most common fleas found on dogs are cat fleas, which can cause not only itching and irritation but transmit infection as well.', 'The most common fleas found on dogs are cat fleas, which can cause not only itching and irritation but transmit infection as well.', '[\"Itchy and irritated skin.\\n\",\"A discolored ring around the bite.\",\"An allergic reaction (hives, rash, shortness of breath and swelling).\",\"Infection of a disease carried by a flea (fever, headache, body aches, rashes, nausea, abdominal pain, weight loss, dizziness and weakness can accompany various diseases).\\n\"]', 'If your pet is diagnosed with fleas, don’t panic! There are a number of treatment options. Your vet will tell you the best treatment for your pet’s specific situation.\n\nYour vet can prescribe medications that will kill the adult fleas on your pet very quickly, and provide ongoing protection against re-infestation.\n\nAnti-inflammatory medication will control skin irritation and soothe the itching.\n\nIf the skin has become infected, an antibiotic may be prescribed.\n\nEnvironmental treatment: this is vital in the control of fleas on your pet and may include flea “bombs” (an aerosolized product that can help kill fleas and larvae in the home environment); washing all bedding, fabrics and items such as soft toys in hot water to remove and kill eggs and larvae; and meticulous vacuuming to remove eggs and larvae from the crevices they may be hiding in.', 'Luckily, it’s quite easy to prevent flea infestations.\n\nMonthly preventative treatments, both oral and topical, are available to help protect your pet from getting fleas. These products range in cost depending on the brand and the weight of your dog but are typically around $16-20 per monthly treatment. Your vet can help determine which product is right for you and your dog.\n\nIt’s critical that you adhere to the monthly schedule. Missing even a single treatment – no matter what the season – could be the opening a flea needs to infest your dog.', '60bd687f-e3c5-4639-abb6-a3cf5d1045cb.jpg', '2022-11-13 16:43:11', '2022-11-13 16:43:11', NULL),
(5, 'Tick-borne Diseases', 'Tick-borne disease is a growing threat to both canine and human health. Ticks are parasites that attach themselves to animals and people, feed on blood, and transmit diseases directly into the host’s system. The disease occurs when an infected tick bites a dog or a human and transmits the disease into the victim’s body.', 'The disease occurs when an infected tick bites a dog or a human and transmits the disease into the victim’s body.', '[\"Fatigue\",\"Body/muscle aches\",\"Joint pain\",\"Fever\",\"Rash\",\"Siff neck\",\"Facial Paralysis\"]', 'Dogs diagnosed with tick-borne illnesses are typically treated with broad-spectrum antibiotics. While your dog is undergoing treatment with antibiotics your vet may also recommend giving your pup probiotics to prevent gastrointestinal issues.\n\nRecurring tick-borne conditions can be challenging to beat. Even after your dog appears to have recovered, regular blood work may be necessary in order to detect recurrences as early as possible.', 'Year-round tick prevention medications are the number one defense against tick-borne diseases in dogs. Speak to your vet to find out which parasite prevention medication is best for your pet based on where you live, your pet\'s age, and your dog\'s lifestyle. While these medications go a long way to protecting your dog, no tick prevention method is 100% effective, so diligence is always a must.\n\nWhenever your dog has been in areas where ticks are known to live such as farmland, forests, or areas with tall grass, be sure to inspect your dog\'s skin for ticks as soon as you get home.', 'dd712056-583e-47cb-abc3-9ace103ed3ea.jpg', '2022-11-13 16:46:15', '2022-11-13 16:46:15', NULL),
(6, 'Harvest Mites', 'Harvest mites (Neotrombicula autumnalis) are tiny, bright orange mites that live in soil. They are common in woodland and grassy areas, and are most active between July-November.', 'Harvest mites will attach to, and feed from any animal that they come into contact with, including dogs.', '[\"Itchy skin (can be intensely itchy or even painful in some dogs)\\n\",\"Red, inflamed patches of skin\",\"Stained fur from constant licking and biting\\n\",\"Red/orange dots on the skin/fur\\n\",\"Yellow scabs and pus\"]', 'It’s likely your vet will prescribe your dog a medication to kill their mites, and if necessary some anti-inflammatories to calm their skin.\n\nKilling the mites - there are no products designed specifically to kill harvest mites but fortunately, some flea treatments are effective. It’s likely your dog will need more than one treatment to cure the problem, and you will need to prevent them catching the mites again by staying away from grassy or wooded areas.\n\nAnti-inflammatories - if your dog is very itchy, your vet may decide to give them a short acting steroid to calm their skin.\n\nOther - if your dog has a very severe infestation and their skin has become infected, they may require antibiotics.', 'Because harvest mite larvae are only active during the day, you can reduce the risk of harvest mites by modifying your pet’s routine. Consider going for walkies early in the morning or after dusk. If possible, avoid long grasses and vegetation, and keep moving – the worst infestations tend to happen when pets (and people) are sitting or lying down in a sunny spot in the middle of the day!', 'c110c15c-3272-4a0a-8d45-57158cd88612.jpg', '2022-11-13 16:48:22', '2022-11-13 16:48:22', NULL),
(7, 'Yeast Infections', 'Inflammatory skin ailment, particularly in skin folds, between the paw pads, on the ears, and in other hot, humid parts of their bodies.', 'It should be noted that a secondary bacterial or fungal infection caused by a yeast infection can sometimes be infectious. This is true for people as well; secondary illnesses can be spread by direct contact.', '[\"Redness/itching\",\"Sticky or yellow/green discharge\",\"Greasy fur\",\"Smelly odor\",\"Crusty or flaky skin and ear infections\"]', 'Treatments for yeast infections on the skin can include topical antifungal creams, wipes, sprays, and shampoos.\n\nTopical ingredients that are effective in treating yeast include chlorhexidine, miconazole, and ketoconazole.\n\nIn difficult-to-treat or severe cases, oral antifungal medications are used. Oral antifungal medications used in dogs include fluconazole, terbinafine, ketoconazole, and itraconazole. These medications should be used only under the direction of a veterinarian. \n\nVinegar rinses do have scientific data to support that they may be beneficial in treating yeast. The proper dilution is important to avoid irritation.\n\nVinegar helps to change the pH of the skin to make it less favorable for yeast. This should only be used under the direction of your veterinarian.', 'Prevention of yeast infections in dogs must include addressing the underlying cause to reduce the likelihood that the infection will reoccur.\n\nRoutine bathing with an antifungal shampoo may be beneficial. However, for shampoo treatment to be effective, the lather must sit on a dog’s skin for a minimum of 10 minutes before rinsing.\n\nDogs with skin folds may need to have maintenance treatment to keep these areas from becoming too moist, as yeast thrive in moist, dark places such as skin folds and ears.\n\nDogs that have had allergy testing and are determined to be allergic to yeast can be desensitized by including yeast as an ingredient in immunotherapy (allergy vaccine). \n\nIf you suspect that your dog has a yeast infection, consult your regular veterinarian for a diagnosis and treatment plan that is appropriate for your pet.', '437d274f-f80c-4d97-84a0-14671f8f3441.jpg', '2022-11-13 16:50:23', '2022-11-13 16:50:23', NULL),
(8, 'Hotspots', 'They are also known as pyotraumatic dermatitis or acute wet dermatitis. Anywhere on a dog\'s body can have hot spots, but the head, legs, and hips are the most typical locations.', 'Hot spots on dogs typically don\'t spread to people or other canines. The hot patches on your dog could, however, spread to other dogs or people if they are caused by a parasite or fungus.', '[\"Canine hot spots are red\",\"inflamed skin lesions that arise suddenly\",\"Ooze\",\"Pus\"]', 'If you suspect your dog may have a hot spot, the first step is a visit to your veterinarian.\n\nTreatment of hot spots typically involves some combination of the following:\n\nClipping the hair around the area to prevent matting.\nCleaning the affected area with gentle antiseptic solutions such as chlorhexidine.\nBathing with a chlorhexidine shampoo for dogs.\nPrescribing topical or oral antibiotics to treat secondary bacterial infections.\nPrescribing topical or oral steroids to control inflammation and decrease itching.\nPrescribing allergy medications that stop the underlying cause of itching.\nUsing medicated wipes or solutions to gently clean the area daily.\nApplying an Elizabethan collar (e-collar or “cone”) to prevent continued scratching.', 'Continued monitoring and treatment of the underlying cause should prevent future hot spots. Some dogs also benefit from seasonal grooming, as well as regular brushing and bathing.\n\nGood parasite prevention, treatment of skin infections, and management of allergies are essential to stop scratching and prevent trauma to the skin.\n\nGood hygiene and routine grooming can also help.\nFor dogs that swim or bathe frequently, it is also important to ensure their coats are thoroughly dried after these activities.\n\nSupplementing fatty acids is another option to prevent and manage skin disease. Omega-3 fatty acids DHA and EPA are found in fish oil.\nThese fatty acids not only have anti-inflammatory properties, but they also help promote a healthy skin barrier, making your dog less susceptible to allergens and infection.\n\nTopical aloe vera may also help soothe damaged skin and decrease itching\nbut it is important to ensure your dog does not ingest the aloe, which can result in vomiting and diarrhea', '7007a5ae-b560-49c5-804f-f68672e65ee4.jpg', '2022-11-13 16:52:52', '2022-11-13 16:52:52', NULL),
(9, 'Folliculitis', 'The term \"folliculitis\" refers to the inflammation of a hair follicle, which frequently results from a bacterial infection.', 'The majority of folliculitis kinds do not travel from person to person, however some varieties can. Folliculitis can be brought on by a virus, fungus, or other agent in addition to being frequently brought on by a bacterial infection.', '[\"Swelling\",\"Redness\",\"Itching\",\"Discomfort\"]', 'The treatment of folliculitis in dogs is determined by the cause. Therapy typically involves a combination of systemic medications and topical applications like sprays, creams, ointments, and shampoos.\n\nTopical treatments are used in most cases to ease discomfort and reduce inflammation.\nYour vet may recommend regular baths with a medicated shampoo.\nSprays, creams, or ointments containing steroids, antibiotics, or antifungal agents are often necessary as well.\n\nBacterial folliculitis is usually treated with oral antibiotics. A long course of treatment may be necessary to eradicate the bacteria.\nFungal folliculitis requires antifungal medications. Certain types of fungal infections require long-term treatment as well.\n\nParasitic infections require medication to kill the parasites as well as supportive care to promote healing.\nAntibiotics may still be prescribed to treat a secondary infection.', 'Most cases of folliculitis cannot be outright prevented due to their ties to underlying conditions. Some dog breeds are predisposed to skin conditions due to allergies. However, you can mitigate additional risks by taking the following advice into account.\n\nKeep your dog on a year-round flea/tick preventative. Fleas and ticks cause trauma to dogs\' skin, making them more susceptible to irritations like folliculitis.\nBathe your pet when needed and use the right shampoo. Some dog breeds require more bathing than others, so do your research before you schedule bath time.\nAnd if your vet recommends a medicated shampoo, follow their recommendation to keep your dog\'s skin feeling its best.', '50ca40ba-3a3e-48be-acbc-6deb5721f5c1.jpg', '2022-11-13 16:55:19', '2022-11-13 16:55:19', NULL),
(10, 'Carbuncles', 'A group of boils that have developed beneath the skin of a person or an animal is referred to as a \"carbuncle.\"', 'The pus inside of a boil commonly carries contagious bacteria that can affect people.', '[\"These lumps contain pus that may be infected, and when this infection spreads to multiple neighboring boils, a carbuncle will develop\\n\"]', 'A veterinarian can aspirate a carbuncle, drawing the pus out with a needle and causing the lump to go down.\n\nPet owners hoping to help ease their pet\'s pain while waiting for a veterinary appointment can do so by applying a warm, damp washcloth to the affected area.\nThis will also cause the pus to accumulate at a central point within the mass and hasten the draining process.\n\nDogs who lick at infected areas can be controlled both before and after a carbuncle is drained with an Elizabethan collar.', 'Regular bathing cleanses your dog\'s skin and hair, making your dog\'s surface area a less-than-prime space for infection.\nToo much bathing, however, can dry out a dog\'s skin and therefore create other skin problems. \nAppropriate bathing schedules can vary for different breeds and individual dogs, so if you\'re unsure what is a good schedule for your pet, consult with a groomer.\nAny time your dog gets into a situation where bacteria could be prevalent -- such as swimming in a lake -- a bath is recommended to remove potential infectants.\nAdditionally, pet owners should be careful with dogs who already have open wounds or sores that could turn into a worse infection.\nDo not let your dog get into dirty environments if he has open wounds or sores.', 'fb7b96cf-c6d6-4ee3-82c4-221fbe7e2691.jpg', '2022-11-13 16:56:48', '2022-11-13 16:56:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_17_144927_diseases', 1),
(4, '2022_10_17_162717_clinics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 2, 'authToken', '392546ef3f41daea7a55811feb0f06577aa137b3d21e1eefd5503eb72ba362cf', '[\"*\"]', NULL, NULL, '2022-11-13 22:41:01', '2022-11-13 22:41:01'),
(4, 'App\\Models\\User', 2, 'pbs_pd', '5efc06544617052cc7972eeab16939ba5918a3d2747193921d13f98546e1a9fd', '[\"*\"]', '2022-11-13 23:59:53', NULL, '2022-11-13 22:41:17', '2022-11-13 23:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `isAdmin`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin@mail.com', NULL, '$2y$10$82i8./CcYdZmq7D7VQi8Ue7fWblVLdRgcWiitGZRmPRhUUng/tigC', 1, NULL, '2022-11-13 13:43:48', '2022-11-13 13:43:48', NULL),
(2, 'Russel', 'Manito', 'manito.russel@gmail.com', NULL, '$2y$10$kC2H5QLrZWpMR6MWBzqtRuPvgG1LnVfd9V7jVrfIyF38y7LqiDK/a', 0, NULL, '2022-11-13 22:41:00', '2022-11-13 22:41:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clinics_clinic_name_unique` (`clinic_name`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diseases_disease_unique` (`disease`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
