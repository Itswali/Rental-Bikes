<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🔭 Project Presentation](#project-presentation)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Rental Cars <a name="about-project"></a>

> This Rental Cars API Backend is a Ruby on Rails application that serves as the backend for a rental car appointment booking system. This API provides endpoints for managing items (cars), user reservations, user authentication, and navigation links. The API allows users to create, retrieve, update, and delete items, make reservations, authenticate users, and retrieve navigation links for the user interface.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

Server: <a href="https://rubyonrails.org/">Ruby on Rails</a></li><br>
Database: <a href="https://www.postgresql.org/">PostgreSQL</a></li>

<!-- Features -->

### Key Features <a name="key-features"></a>

**Item Management:** Create, read, update, and delete car items for rent.<br>
**Reservation:** Allow users to make reservations for available items.<br>
**User Authentication:** User registration, login, and logout using Devise.<br>
**Navigation Links:** Retrieve navigation links for the user interface.<br>
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Frontend Part of the Project

[Rental Cars Frontend](https://github.com/Itswali/rental-cars-front-end)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Live Demo <a name="live-demo"></a>

Not yet available.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need the following installed on your computer:<br>
Ruby v3+,<br>
Rails v7+<br>
PostgreSQL<br>
An IDE e.g. [Visual Studio Code](https://code.visualstudio.com/)<br>
A terminal e.g. [Git BASH](https://gitforwindows.org/)

### Setup

Clone this repository to your local machine:

```
git clone https://github.com/Itswali/Rental-Cars
```

Install Ruby, Rails, and PostgreSQL if not already installed.

Navigate to the directory:

```
cd Rental-Cars
```

### Install

Install gem dependencies:

```
bundle install
```
### Database Setup

Set up your database configuration in `config/database.yml`. Edit the username and password with your PostgreSQL credentials (line 21 and 22)

Create and run database migrations with:
```
rails db:create db:migrate
```

### Usage

Start the Rails server with:

```
rails server
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👤 Authors <a name="authors"></a>

👤 **Wali Muhammad**

- GitHub [link](https://github.com/Itswali)
- Twitter [link](https://twitter.com/WaliMuh94818599)
- LinkedIn [link](https://www.linkedin.com/in/its-wali/)

👤 **Samuel Obuobi Lartey**

- GitHub [link](https://github.com/kwesiobuobi)
- Twitter [link](https://twitter.com/)
- LinkedIn [link](https://www.linkedin.com/in/kwesi-obuobi/)

👤 **Riyaz Ahmed**

- GitHub [link](https://github.com/r-ahmed2022)
- Twitter [link](https://twitter.com/RiyazAhmed)
- LinkedIn [link](https://www.linkedin.com/in/riyaz-ahmed-4216a71a8/)

👤 **Jonah Wambua**

- GitHub [link](https://github.com/DJ-MrJay)
- Twitter [link](https://twitter.com/jonah_wambua)
- LinkedIn [link](https://www.linkedin.com/in/jonah-wambua/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

**Search and Filtering:**
Implement advanced search and filtering options for users to easily find available cars based on criteria like location, date, type, etc.

**Availability Calendar:**
Add a calendar view that displays item availability, making it easier for users to choose available dates for reservations.

**Payment Integration:**
Integrate with a payment gateway to allow users to make payments for reservations directly through the API.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome. Contributions to improve and extend the API backend are also welcome. If you find bugs, have suggestions for improvements, or want to add new features, please feel free to add an issue on the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- [Microverse](https://www.microverse.org) for a A+ curriculum
- Code reviewers, coding partners, morning and standup teams for the great insights
- Hat tip to anyone else whose code was used

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
