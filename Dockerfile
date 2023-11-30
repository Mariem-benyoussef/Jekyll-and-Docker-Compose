# Use an official Ruby runtime as a parent image
FROM ruby:3.0

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed gems specified in the Gemfile
RUN bundle install

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
