# Project Manager

This is a Ruby on Rails application that allows users to manage projects, add comments, and track status changes. The application serves as a collaborative workspace for project management.

Demo Link: [Project manager Heroku](https://ab-project-manager-8942231a5df5.herokuapp.com/)

## Features

- User authentication with Devise
- Project creation and management
- Comment system for discussions
- Status tracking with change history
- Unified timeline showing both comments and status changes

## Technical Details

### Ruby Version
- Ruby 3.3.6
- Rails 7.1.5

### System Dependencies
- PostgreSQL
- Tailwind CSS

### Tech Stack

- **Backend**:
    - Ruby on Rails 7
    - PostgreSQL database

- **Frontend**:
    - Tailwind CSS for styling
    - Hotwire (Turbo + Stimulus) for dynamic interactions
    - Slim templating language
    - ViewComponent for reusable UI components

- **Authentication**:
    - Devise

- **Testing**:
    - RSpec for model and controller tests

**********
## Installation and Setup

1. Clone the repository
```bash
    git clone https://github.com/Badara-Senpai/ab-project-manager.git
    cd project-conversation
```

2. Install dependencies
```bash
  bundle install
```

3. Set up the database
```bash
    rails db:create
    rails db:migrate
    rails db:seed
```

4. Start the Rails server
```bash
  bin/dev
```

5. Open your browser and navigate to `http://localhost:3000`

## Demo Account
You can use the following credentials to test the application:

- **Email**: demo@example.com
- **Password**: demo123

## CI/CD Considerations
Due to time constraints, full CI/CD was not implemented. In a production scenario, I would:
- Set up GitHub Actions for automated testing
- Configure automatic deployment to Heroku on merge to main branch
- Implement test coverage checks