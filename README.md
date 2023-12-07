# Flight-Inquiry-and-Booking-System

This is a web-based application designed to streamline the flight inquiry and booking process for both passengers and aviation staff. Leveraging Django as the web framework and MySQL as the database, this project accomplishes three things: full-stack web development, database management, and user-centered design!

## Project Structure

- **Aviation**
  - `__init__.py`: Python script for connecting to MySQL database.
  - `asgi.py`, `settings.py`, `urls.py`, `wsgi.py`: Django project configuration files, including MySQL connection details and web application registration.
  
- **Static**
  - **Css**: CSS files for front-end page design.
    - `style.css`: Stylesheet for the application.
  - **Img**: Images required for front-end pages.
    - `banner.jpg`: Banner image.

- **Templates**: HTML templates for different pages.
  - `buy_flight.xhtml`: Front-end page for flight booking.
  - `delete_flight.xhtml`: Front-end page for flight deletion.
  - `flight.xhtml`: Front-end page for flight queries.
  - `index.xhtml`: Front-end login page.
  - `manage.xhtml`: Front-end page for flight management.
  - `register.xhtml`: Front-end page for user registration.
  - `seat.xhtml`: Front-end page for check-in services.
  - `update_flight.xhtml`: Front-end page for updating flight details.

- **Venv**: Python 3.8 virtual environment.

- **Web**
  - **Migrations**: Files generated for model migration and changes.
  - `__init__.py`, `admin.py`, `apps.py`, `models.py`, `tests.py`, `views.py`: Implementation of server-side business logic.

- `manage.py`: Project deployment functionality file.

## Usage

1. Clone the repository: `git clone https://github.com/rachelxhoot/Flight-Inquiry-and-Booking-System.git`
2. Create and activate a virtual environment: `python3.8 -m venv venv` and `source venv/bin/activate`
3. Install dependencies: `pip install -r requirements.txt`
4. Run migrations: `python manage.py migrate`
5. Start the development server: `python manage.py runserver`

For more details please click [here](https://rachelxhoot.com/Flight-Inquiry-and-Booking-System-8ec716c466484a9e8ef61c0c40cf5480). Feel free to explore and contribute to this aviation web application!
