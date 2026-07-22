# BuyLK Software Architecture

## 1. Architectural Style
- Clean Architecture with feature-first modules.
- Presentation, domain, and data layers are separated for each feature.
- State management uses Riverpod for UI state and app-wide providers.
- Navigation uses GoRouter for typed, scalable route handling.
- Backend follows a layered Express architecture with controllers, services, repositories, and Prisma models.

## 2. Flutter Client Structure
- core: app bootstrap, routing, theme, constants, helpers, DI.
- common: shared widgets, extensions, validators, formatting helpers.
- features: authentication, home, products, cart, orders, sellers, riders, admin, profile, notifications.
- services: API clients, storage, push notification helpers.
- repositories: data access abstractions.
- models: domain and API models.
- providers: Riverpod providers.
- routes: route definitions.
- theme: light/dark theme setup.
- utils: date, currency, image, and network utilities.

## 3. Backend Structure
- src/app.js: Express app bootstrap.
- src/routes: feature routers.
- src/controllers: request handling.
- src/services: use cases and business rules.
- src/repositories: Prisma-based data access.
- src/middleware: auth, validation, errors.
- prisma/schema.prisma: database schema model definitions.

## 4. Cross-Cutting Concerns
- JWT-based authentication for users and roles.
- Firebase Authentication for mobile sign-in (phone, email, Google).
- Firebase Cloud Messaging for notifications.
- Cloudinary integration for media upload.
- Secure storage for tokens and preferences.
