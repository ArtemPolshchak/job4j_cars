CREATE TABLE IF NOT EXISTS auto_post (
                           id SERIAL PRIMARY KEY,
                           description VARCHAR(255) NOT NULL,
                           created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                           auto_user_id INTEGER NOT NULL,
                           CONSTRAINT fk_auto_user
                               FOREIGN KEY(auto_user_id)
                                   REFERENCES auto_user(id)
                                   ON DELETE CASCADE
);
