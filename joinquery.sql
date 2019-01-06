SELECT 
VIDEOS.videos.title, VIDEOS.videos.duration, VIDEOS.reviews.reviewer_name, VIDEOS.reviews.rating, VIDEOS.reviews.review
FROM 
VIDEOS.videos
inner join 
VIDEOS.reviews on VIDEOS.videos.video_ID = VIDEOS.reviews.video_ID;