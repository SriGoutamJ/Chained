create database SCMS_DB;
use SCMS_DB;

create table electronics(productid varchar(100), productname varchar(150), description varchar(250), price decimal(10,2), image mediumblob);
create table clothing(productid varchar(100), productname varchar(150), description varchar(250), price decimal(10,2), image mediumblob);
create table furniture(productid varchar(100), productname varchar(150), description varchar(250), price decimal(10,2));

insert into electronics values("1","Lenovo V530s Tower Desktop", "Intel 9th Gen Core i3/4GB RAM/ 1TB HDD/DOS/Black","24900.50",LOAD_FILE('G:/PROGRAMMING/Projects/Supply Chain Management System/MyCode/Supply Chain Management System/Trials/Database images/electronics/Lenovo V530s Tower Desktop.jpg'));
insert into electronics values("2","Honor 9A", "Phantom Blue, 3GB RAM, 64GB Storage","12000",LOAD_FILE('G:/PROGRAMMING/Projects/Supply Chain Management System/MyCode/Supply Chain Management System/Trials/Database images/electronics/Honor 9A.jpg'));
insert into electronics values("3","TP-Link Deco E4 Whole Home Mesh Wi-Fi System", "Seamless Roaming and Speedy (AC1200), Work with Amazon Echo/Alexa and Wi-Fi Booster, Parent Control Router","5000.00",LOAD_FILE('G:/PROGRAMMING/Projects/Supply Chain Management System/MyCode\Supply Chain Management System/Trials/Database images/electronics/TP-Link Deco E4 Whole Home Mesh Wi-Fi System.jpg'));
insert into electronics values("4","JBL C50HI in-Ear Headphones","with Mic,Blue","600.00",LOAD_FILE('G:/PROGRAMMING/Projects/Supply Chain Management System/MyCode/Supply Chain Management System/Trials/Database images/electronics/JBL C50HI in-Ear Headphones.jpg'));
insert into electronics values("5","Mi TV 4A PRO","108 cm (43 Inches) Full HD Android LED TV (Black)","25000.00",LOAD_FILE('G:/PROGRAMMING\Projects\Supply Chain Management System\MyCode\Supply Chain Management System\Trials\Database images\electronics\Mi TV 4A PRO.jpg'));
insert into electronics values("6","Sigma Lens for Sony E-Mount Mirrorless Cameras","30mm f/1.4 DC DN Contemporary APS-C Format","27000.00",LOAD_FILE('G:\PROGRAMMING\Projects\Supply Chain Management System\MyCode\Supply Chain Management System\Trials\Database images\electronics\Sigma Lens for Sony E-Mount Mirrorless Cameras.jpg'));
insert into electronics values("7","Epson Eco Ink Tank Printer","L3101, All-in-One ","10000.00",LOAD_FILE('G:\PROGRAMMING\Projects\Supply Chain Management System\MyCode\Supply Chain Management System\Trials\Database images\electronics\Epson Eco Ink Tank Printer.jpg'));
insert into electronics values("8","Samsung Galaxy Watch Active 2"," (Bluetooth, 44 mm) - Black, Aluminium Dial","19000.65",LOAD_FILE('G:\PROGRAMMING\Projects\Supply Chain Management System\MyCode\Supply Chain Management System\Trials\Database images\electronics\Samsung Galaxy Watch Active 2.jpg'));
insert into electronics values("9","Powerpak G3001A Hand Roll Up Electronic Drum Pad"," Black/Green","4000.90",LOAD_FILE('G:\PROGRAMMING\Projects\Supply Chain Management System\MyCode\Supply Chain Management System\Trials\Database images\electronics\Powerpak G3001A Hand Roll Up Electronic Drum Pad.jpg'));
insert into electronics values("10","Micromax Canvas Tab P701 Tablet","(7 inch, 8GB, Wi-Fi+ 4G with Voice Calling), Grey","9000.50",LOAD_FILE('G:\PROGRAMMING\Projects\Supply Chain Management System\MyCode\Supply Chain Management System\Trials\Database images\electronics\Micromax Canvas Tab P701 Tablet.jpg'));

insert into clothing values("11","Urbano Fashion Men's Slim Fit Jeans","Fit Type: Slim,Fabric: Cotton,Lycra Style: Jeans,Pattern: Solid","800",LOAD_FILE('E:/Images/jack.jpg'));
insert into clothing values("12","Amazon Brand - Inkast Denim Co. Men's Stretch Skinny Jeans","Care Instructions: Machine Wash,Fit Type: Skinny Zip fly with button closure","600.00",LOAD_FILE('E:/Images/jack.jpg'));
insert into clothing values("13","Fenoix Men's Regular Fit T-Shirt","Fit Type: Regular Fit Fabric: 100% Cotton Style: Hooded Neck Style: Hood","400",LOAD_FILE('E:/Images/jack.jpg'));
insert into clothing values("14","Shozie Men's Formal Shoes","Closure: Lace-Up Shoe Width: Medium Material - Patent Leather Lifestyle: Executive Formal & Daily Wear","900",LOAD_FILE('E:/Images/jack.jpg'));
insert into clothing values("15","PARAGON Men's Flip-Flops","Closure: Slip-On Shoe Width: Medium Material Type: Synthetic","400",LOAD_FILE('E:/Images/jack.jpg'));

insert into furniture values("21","Spacewood Riva Queen Size Wood Bed","Product Dimensions: Length (209 cm) ,Width (159.6 cm) ,Height (90.3 cm). Bed size: Queen","13039.00");
insert into furniture values("22","Spacewood Midas Queen Size Engineered Wood Bed with Pull Out Storage","Product Dimensions: Length (212.8 cm) ,Width (165 cm) ,Height (93 cm). Bed size: Queen","25909.00");
insert into furniture values("23","Adorn India Orlando Fabric L Shape Sofa (Dark Grey & Light Gery)","Product dimension in cm Package 1 = Length (180) Breadth (81.28)height (71.12) sitting height (40.64) Package 2 = Length (182.88) Breadth (81.28)height (771.12) sitting height (40.64)","32999.00");
insert into furniture values("24","adorn india aspen three seater sofa cum bed (blue and black)","Primary Material: Wood, secondary material :Foam Upholstery Material: Fabric : color : Blue & Black;Easy to use, can be used for sitting and sleeping purpose for guest,kids and adults.","17499.00");
insert into furniture values("25","Stylespa Estilo 3 Door Wardrobe (Siena Cherry)","Product Dimensions: Length (134.0 cm), Width (54.0 cm), Height (200.0 cm)","30307.00");
insert into furniture values("26","Urban Ladder Jeeves Kitchen Rack (Finish : Walnut)","Product Dimensions: Length (9.1 inches), Width (19.3 inches), Height (30.3 inches)Primary Material: Solid Wood Finish : Walnut","5299.00");
insert into furniture values("27","AmazonBasics High Back Executive Chair (Brown)","Comfortable executive chair upholstered in bonded leather and PVC","8999.00");
insert into furniture values("28","Green Soul Monster Ultimate Series Multi-Functional Chair","Internal Frame Material: Metal, Frame Size: Large, Upholstery Material: Spandex Fabric + PU Leather","18990.00");
insert into furniture values("29","Spacewood Winner Study Table (Walnut Rigato)","Product Dimensions: Length (40 cm), Width (108 cm), Height (120 cm), Mount Type: Free Standing","7139.00 ");
insert into furniture values("30","Urban Ladder Latt Bench (Finish : Mahogany)","Product Dimensions: Length (54.3 inches), Width (15 inches), Height (27.6 inches)","8899.00");

create table all_items(prductid varchar(45),productname varchar(150),description varchar(250),price decimal(10,2), category varchar(45));

insert into all_items values("1","Lenovo V530s Tower Desktop", "Intel 9th Gen Core i3/4GB RAM/ 1TB HDD/DOS/Black","24900.50","Electronics");
insert into all_items values("2","Honor 9A", "Phantom Blue, 3GB RAM, 64GB Storage","12000","Electronics");
insert into all_items values("3","TP-Link Deco E4 Whole Home Mesh Wi-Fi System", "Seamless Roaming and Speedy (AC1200), Work with Amazon Echo/Alexa and Wi-Fi Booster, Parent Control Router","5000.00","Electronics");
insert into all_items values("4","JBL C50HI in-Ear Headphones","with Mic,Blue","600.00","Electronics");
insert into all_items values("5","Mi TV 4A PRO","108 cm (43 Inches) Full HD Android LED TV (Black)","25000.00","Electronics");
insert into all_items values("6","Sigma Lens for Sony E-Mount Mirrorless Cameras","30mm f/1.4 DC DN Contemporary APS-C Format","27000.00","Electronics");
insert into all_items values("7","Epson Eco Ink Tank Printer","L3101, All-in-One ","10000.00","Electronics");
insert into all_items values("8","Samsung Galaxy Watch Active 2"," (Bluetooth, 44 mm) - Black, Aluminium Dial","19000.65","Electronics");
insert into all_items values("9","Powerpak G3001A Hand Roll Up Electronic Drum Pad"," Black/Green","4000.90","Electronics");
insert into all_items values("10","Micromax Canvas Tab P701 Tablet","(7 inch, 8GB, Wi-Fi+ 4G with Voice Calling), Grey","9000.50","Electronics");

insert into all_items values("11","Urbano Fashion Men's Slim Fit Jeans","Fit Type: Slim,Fabric: Cotton,Lycra Style: Jeans,Pattern: Solid","800","Clothing");
insert into all_items values("12","Amazon Brand - Inkast Denim Co. Men's Stretch Skinny Jeans","Care Instructions: Machine Wash,Fit Type: Skinny Zip fly with button closure","600.00","Clothing");
insert into all_items values("13","Fenoix Men's Regular Fit T-Shirt","Fit Type: Regular Fit Fabric: 100% Cotton Style: Hooded Neck Style: Hood","400","Clothing");
insert into all_items values("14","Shozie Men's Formal Shoes","Closure: Lace-Up Shoe Width: Medium Material - Patent Leather Lifestyle: Executive Formal & Daily Wear","900","Clothing");
insert into all_items values("15","PARAGON Men's Flip-Flops","Closure: Slip-On Shoe Width: Medium Material Type: Synthetic","400","Clothing");

insert into all_items values("21","Spacewood Riva Queen Size Wood Bed","Product Dimensions: Length (209 cm) ,Width (159.6 cm) ,Height (90.3 cm). Bed size: Queen","13039.00","Furniture");
insert into all_items values("22","Spacewood Midas Queen Size Engineered Wood Bed with Pull Out Storage","Product Dimensions: Length (212.8 cm) ,Width (165 cm) ,Height (93 cm). Bed size: Queen","25909.00","Furniture");
insert into all_items values("23","Adorn India Orlando Fabric L Shape Sofa (Dark Grey & Light Gery)","Product dimension in cm Package 1 = Length (180) Breadth (81.28)height (71.12) sitting height (40.64) Package 2 = Length (182.88) Breadth (81.28)height (771.12) sitting height (40.64)","32999.00","Furniture");
insert into all_items values("24","adorn india aspen three seater sofa cum bed (blue and black)","Primary Material: Wood, secondary material :Foam Upholstery Material: Fabric : color : Blue & Black;Easy to use, can be used for sitting and sleeping purpose for guest,kids and adults.","17499.00","Furniture");
insert into all_items values("25","Stylespa Estilo 3 Door Wardrobe (Siena Cherry)","Product Dimensions: Length (134.0 cm), Width (54.0 cm), Height (200.0 cm)","30307.00","Furniture");
insert into all_items values("26","Urban Ladder Jeeves Kitchen Rack (Finish : Walnut)","Product Dimensions: Length (9.1 inches), Width (19.3 inches), Height (30.3 inches)Primary Material: Solid Wood Finish : Walnut","5299.00","Furniture");
insert into all_items values("27","AmazonBasics High Back Executive Chair (Brown)","Comfortable executive chair upholstered in bonded leather and PVC","8999.00","Furniture");
insert into all_items values("28","Green Soul Monster Ultimate Series Multi-Functional Chair","Internal Frame Material: Metal, Frame Size: Large, Upholstery Material: Spandex Fabric + PU Leather","18990.00","Furniture");
insert into all_items values("29","Spacewood Winner Study Table (Walnut Rigato)","Product Dimensions: Length (40 cm), Width (108 cm), Height (120 cm), Mount Type: Free Standing","7139.00 ","Furniture");
insert into all_items values("30","Urban Ladder Latt Bench (Finish : Mahogany)","Product Dimensions: Length (54.3 inches), Width (15 inches), Height (27.6 inches)","8899.00","Furniture");

create table dealerDetails(dealerid varchar(150),category varchar(150),name varchar(150),address varchar(250),city varchar(150),contactno long);

insert into dealerDetails values("1","Electronics","John","HSR Layout","Bangalore","12345667899");
insert into dealerDetails values("1","Clothing","Siri","HBR Layout","Bangalore","99876654321");
insert into dealerDetails values("1","Furniture","Tux","MSR nagar","Bangalore","67899654321");

create table clientDetails(email varchar(150),password varchar(150),fname varchar(100),lname varchar(100),address varchar(250),city varchar(50),contactNo long);

insert into clientDetails values("abc@gmail.com","xyz","a","bc","HSR Layout","Bangalore","923456781");
insert into clientDetails values("def@gmail.com","uvw","d","ef","HBR Layout","Bangalore","923456481");
insert into clientDetails values("hij@gmail.com","rst","h","ij","Park Layout","Bangalore","9233446781");
insert into clientDetails values("klm@gmail.com","opq","k","lm","Tusk Layout","Bangalore","924556781");
insert into clientDetails values("opq@gmail.com","lmn","o","pq","MSR Layout","Bangalore","923765781");

create table clientlist(email varchar(200),password varchar(200));

insert into clientlist values("abc@gmail.com","xyz");
insert into clientlist values("def@gmail.com","uvw");
insert into clientlist values("hij@gmail.com","rst");
insert into clientlist values("klm@gmail.com","opq");
insert into clientlist values("opq@gmail.com","lmn");

create table password(password varchar(50));
insert into password values("pass");

create table logistics(id varchar(50),name varchar(150),address varchar(250),city varchar(75),contact long);
insert into logistics values("1","FedEx","Banaswadi","Bangalore","123654789");
insert into logistics values("1","Ryder","Hosur","Bangalore","4536765778");
insert into logistics values("1","FedEx","Brigade road","Bangalore","5859403889");

create table activeClients(email_id varchar(150),order_date date,order_no int,status varchar(50),delivered_date date);

show tables;