use ChooseMini;
-- Insert dummy user into table `users`
INSERT INTO `users` ( `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserAddress`,`UserAddress2`, `UserCity`, `UserState`, `UserZip`, `UserCountry`)
VALUES
('w@w', 'w','w', 'w', '547024727', 'w', '', 'w', 'w', 'w', 'w');


-- Insert data for table `products`
-- Jacquemus Le Chiquito Leather tote bag 
-- Coach Tabby Pillow Mini Leather cross-body bag 
-- Burberry TB mini canvas shoulder bag 
-- Aspinal of London Micro Lottie shoulder bag

-- Havent figured out how to do this yet 
INSERT INTO `products` ( `ProductSKU`, `ProductName`, `ProductPrice`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductImage`, `ProductImage2`, `ProductImage3`, `ProductImage4`, `ProductImage5`, `ProductImage6`) 
VALUES
('000001', 'Jacquemus Le Chiquito Leather tote bag', '385.00','Black leather mini handbag','Black leather mini handbag made with 100% real cowhide leather', 
"Leather: Cowhide. Gold-tone logo emblem. Fold-over flap with magnetic snap. Optional, adjustable strap. Textile lining. Weight: 7oz / 0.2kg. Made in Italy. Add something playful to your look with one of Jacquemus micro bags. This tiny crossbody is crafted in smooth and structured leather, and features an oversized top handle. Colour: black",
LOAD_FILE('images/products/jacquemus Black Le Chiquito/image 1.jpeg'),
LOAD_FILE('/public/images/products/jacquemus Black Le Chiquito/image 2.jpeg'),
LOAD_FILE('Project/public/images/products/jacquemus Black Le Chiquito/image 3.webp'),
LOAD_FILE('Project/public/images/products/jacquemus Black Le Chiquito/image 4.webp'),
LOAD_FILE('Project/public/images/products/jacquemus Black Le Chiquito/image 5.webp'),
LOAD_FILE('Project/public/images/products/jacquemus Black Le Chiquito/image 6.webp')),

('000002', 'Coach Tabby Pillow Mini Leather cross-body bag', '£395.00', 'Ivory leather mini handbag','Ivory leather mini handbag made with 100% real Sheep leather',
'Coach leather cross-body bag made with 100% Sheep leather. Exposed magnetic closure at front. Top-handle, detachable and adjustable shoulder strap, metallic brand plaque at front, gold-toned hardware, flap closure at front, all-over padded texture, contrast piping, dual-compartment, one internal card slot, debossed brand patch at interior. Specialist leather clean. Midweight, non-stretch. Comes with a dust bag',
LOAD_FILE('/public/images/products/coach Tabby Pillow Mini Cross-body/image 1.jpeg'),
LOAD_FILE('/public/images/products/coach Tabby Pillow Mini Cross-body/image 2.jpeg'),
LOAD_FILE('/public/images/products/coach Tabby Pillow Mini Cross-body/image 3.jpeg'),
LOAD_FILE('/public/images/products/coach Tabby Pillow Mini Cross-body/image 4.jpeg'),
LOAD_FILE('/public/images/products/coach Tabby Pillow Mini Cross-body/image 5.jpeg'), ""),

('000003', 'Burberry TB mini canvas shoulder bag', '£1250.00', 'Natural/Malt Brown Canvas mini handbag', 'Burberry Natural/Malt Brown Canvas mini handbag',
'Burberry canvas shoulder bag. Push lock fastening. Fold over top, detachable and adjustable shoulder strap, internal slip pocket, monogram plaque/fastening, leather trims, gold-tone hardware. Use specialist cleaner',
LOAD_FILE('/public/images/products/burberry TB mini canvas shoulder/image 1.jpeg'),
LOAD_FILE('/public/images/products/burberry TB mini canvas shoulder/image 2.jpeg'),
LOAD_FILE('/public/images/products/burberry TB mini canvas shoulder/image 3.jpeg'),
LOAD_FILE('/public/images/products/burberry TB mini canvas shoulder/image 4.jpeg'), '' ,''),

('000004', 'Aspinal of London Micro Lottie shoulder bag', '£395.00', 'Black leather mini handbag', 'Aspinal of London Black Micro Lottie shoulder bag',
'Flap-over closure. Adjustable leather and chain shoulder strap, zipped inside pocket, open inside pocket. Leather, grosgrain-lined interior. Arrives in an Aspinal protective felt bag.',
LOAD_FILE('/public/images/products/aspinal of london micro lottie shoulder/image 1.jpeg'),
LOAD_FILE('/public/images/products/aspinal of london micro lottie shoulder/image 2.jpeg'),
LOAD_FILE('/public/images/products/aspinal of london micro lottie shoulder/image 3.jpeg'),
LOAD_FILE('/public/images/products/aspinal of london micro lottie shoulder/image 4.jpeg'), '' ,''),

('000005', 'Valentino garavani vlogo clutch bag', '£1740.00', 'Brass clutch mini handbag', 'Valentino garavani brass vlogo clutch bag' ,
 'Valentino Garavani brass clutch bag. 100% brass. Clasp closure. Detachable chain strap, brand-engraved closure, V-logo at front, one main compartment, fully lined. Wipe with a clean, dry cloth. Made in Italy. Presented in a box, comes with a dust bag',
LOAD_FILE('/public/images/products/valentino garavani clutch/image 1.jpeg'),
LOAD_FILE('/public/images/products/valentino garavani clutch/image 2.jpeg'),
LOAD_FILE('/public/images/products/valentino garavani clutch/image 3.jpeg'),
LOAD_FILE('/public/images/products/valentino garavani clutch/image 4.jpeg'), '' ,'');

