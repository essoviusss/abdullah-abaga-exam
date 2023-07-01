<?php
require_once 'connect.php';

// Set the Access-Control-Allow-Origin header to allow access from all domains
header('Access-Control-Allow-Origin: *');

// Query to fetch data from youtube_channels and youtube_channel_videos tables
$query = "SELECT c.profile_picture, c.name, c.description, 
          GROUP_CONCAT(v.video_link SEPARATOR ', ') AS videos, 
          GROUP_CONCAT(v.title SEPARATOR ', ') AS video_titles, 
          GROUP_CONCAT(v.description SEPARATOR ', ') AS video_descriptions, 
          GROUP_CONCAT(v.thumbnail SEPARATOR ', ') AS video_thumbnails
          FROM youtube_channels c
          LEFT JOIN youtube_channel_videos v ON c.channel_id = v.channel_id
          GROUP BY c.profile_picture, c.name, c.description";

$result = $connection->query($query);

if ($result->num_rows > 0) {
    $data = array();

    // Fetching data and storing it in an array
    while ($row = $result->fetch_assoc()) {
        $videos = array();
        
        // Split the concatenated video data into arrays
        $video_links = explode(', ', $row['videos']);
        $video_titles = explode(', ', $row['video_titles']);
        $video_descriptions = explode(', ', $row['video_descriptions']);
        $video_thumbnails = explode(', ', $row['video_thumbnails']);
        
        // Combine video data into video objects
        for ($i = 0; $i < count($video_links); $i++) {
            $video = array(
                'video_link' => $video_links[$i],
                'title' => $video_titles[$i],
                'description' => $video_descriptions[$i],
                'thumbnail' => $video_thumbnails[$i]
            );
            $videos[] = $video;
        }

        // Add channel data and videos to the main array
        $row['videos'] = $videos;
        $data[] = $row;
    }

    // Return the response as JSON
    header('Content-Type: application/json');
    echo json_encode($data);
} else {
    // No results found
    echo "No data found.";
}
?>
