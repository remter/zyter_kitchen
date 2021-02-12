create database IF not EXISTS kitchen;
use kitchen;
CREATE TABLE IF not EXISTS `user`
(
  id              		INT unsigned NOT NULL AUTO_INCREMENT, 	# Unique ID for the record
  username          	VARCHAR(50) NOT NULL,            	    # Name of the user
  unique index  		`name_key` (`username`),				# making name unique
  PRIMARY KEY     		(id),                                 	# Make the id the primary key
  pswrd_hash			VARCHAR(50) NOT NULL,					# Encripted password
  salt_hash				VARCHAR(50) NOT NULL					# Encripted Salt
);

CREATE TABLE IF not EXISTS `tweets`
(
	id					INT unsigned NOT NULL AUTO_INCREMENT,	# Unique ID for the record
    user_id				VARCHAR(50) NOT NULL,					# Stores the user ID only
    published			timestamp not NULL default now(),		# When the tweet has been published
	Tweet				VARCHAR(200) NOT NULL,					# The actual tweet which has been sent
    PRIMARY KEY			(id)
)