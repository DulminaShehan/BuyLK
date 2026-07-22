class UserRepository {
  async create(user) {
    return { id: 'demo-user-id', ...user };
  }

  async findByEmail(email) {
    if (email === 'demo@example.com') {
      return {
        id: 'demo-user-id',
        email,
        role: 'buyer',
        passwordHash: '$2a$10$y0Rk4wRj.g1RfvJbB8LmMeOvYHLL2/8pD/F4g7Pajc0uHMN0aE9oS',
      };
    }

    return null;
  }
}

export default new UserRepository();
