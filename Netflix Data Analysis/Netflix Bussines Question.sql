use netflix;
select * from nfx;

# 1. Count the number of Movies vs TV Shows
select type1, count(type1) from nfx group by type1;

# 2. Find the most common rating for movies and TV shows
select rating, count(rating) as rating_count from nfx group by rating order by rating desc;


# 3. List all movies genre released in a specific year (e.g., 2020).
# ###### select genre, count(genre) as genre_count from nfx group by genre order by genre desc;
select genre,count(genre) as count_genre from nfx where release_year=2020 group by genre;


# 4. Find the top 5 countries with the most content on Netflix
select count(genre) as genre_count, country from nfx group by country order by  genre_count desc limit 5 ;
 
# 5. Identify the longest movie
select max(duration) as max_duration , genre from nfx group by genre order by max_duration desc limit 1 ;


# 6. List all TV shows with more than 5 seasons
select type1,count(duration) from nfx where duration> "5 season" group by type1;

# 8. Count the number of content items in each genre
select count(genre) as genre_count, genre from nfx group by genre order by genre_count desc;