# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Copy the Gemfile and Gemfile.lock into the working directory
COPY Gemfile Gemfile.lock ./

# Install any needed gems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the working directory
COPY . .

# Expose port 4000 to the Docker host, so we can access it from the browser
EXPOSE 4000

# Define environment variable (example)
ENV NAME World

# Run Jekyll serve to start the web server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
