# CöderBoosters
Spring Boot web application that connects everyday gamers with professionals through a platform,
where users can either ask for in-game help or provide their services to those in need.
The platform manages transactions between users via an e-coin.

## Features
- Account Login / Registration (either as Customer or Booster)
- Creating Order: gamers might need help to achieve in-game goals, these orders are advertisements
- Orders Page: filterable customer/booster related orders page
- Booster options: Take and Close order, changing its status
- E-coin System / Transactions: as a customer transfer funds from PayPal (dummy implementation) to your CB account,
and as a booster, earn coins and get paid by CB.

## Project Setup
1. Copy and rename persistence_template.xml to persistence.xml - fill in database credentials
2. Copy and rename ConfigTemplate.java to Config.java and fill in unfilled fields or change them suitable to your needs.
3. persistence.xml and Config.java are in gitignore, do not push to version control.
4. Create database.
