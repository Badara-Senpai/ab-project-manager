# Project Conversation App

This is a Ruby on Rails application that allows users to manage projects, add comments, and track status changes. The application serves as a collaborative workspace for project management.

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

## Questions and Considerations

During the development of this application, I would typically ask the following questions to better understand the requirements:

### Questions I would ask:

1. **What are the possible statuses a project can have?**
    - Answer: Projects can be in one of these statuses: "Not Started", "In Progress", "Blocked", "Completed"

2. **What information should be captured for each comment?**
    - Answer: Each comment should have the comment text, the user who left it, and a timestamp

3. **What information should be recorded when a status changes?**
    - Answer: We should record the previous status, the new status, who made the change, and when it happened

4. **How should the conversation history be displayed?**
    - Answer: In reverse chronological order (newest first) with both comments and status changes in a unified timeline

5. **Are there any validation requirements for comments or status changes?**
    - Answer: Comments shouldn't be empty, and status changes should only be to valid statuses

6. **Should users be able to filter or search through the conversation history?**
    - Answer: For the initial version, a simple chronological display is sufficient, but filtering by type (comment/status) could be added later

7. **How should user permissions be handled?**
    - Answer: For now, all authenticated users can see all projects, but only project owners should be able to modify them

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