<?php
require_once 'connect.php';

// Set your API key
$apiKey = 'AIzaSyAQSG0_81nR_HmkRV5T7P87Ysq3-49w8kY';

// Set the API endpoint and parameters for channel information
$channelInfoEndpoint = 'https://www.googleapis.com/youtube/v3/channels';
$channelInfoParams = array(
    'key' => $apiKey,
    'part' => 'snippet',
    'id' => 'UCWJ2lWNubArHWmf3FIHbfcQ',
);

// Build the API URL for channel information
$channelInfoUrl = $channelInfoEndpoint . '?' . http_build_query($channelInfoParams);

// Make a GET request to the API for channel information
$channelInfoResponse = file_get_contents($channelInfoUrl);

// Check if the request was successful
if ($channelInfoResponse === false) {
    die('Error occurred while making the API request');
}

// Parse the channel information response as JSON
$channelInfoData = json_decode($channelInfoResponse, true);

// Check if the channel information is available
if (isset($channelInfoData['items'][0])) {
    // Extract the channel information
    $channelId = $channelInfoData['items'][0]['id'];
    $channelName = $channelInfoData['items'][0]['snippet']['title'];
    $channelDescription = $channelInfoData['items'][0]['snippet']['description'];
    $channelProfilePicture = $channelInfoData['items'][0]['snippet']['thumbnails']['default']['url'];

    // Store the channel ID in the $channelData array
    $channelData['channel_id'] = $connection->real_escape_string($channelId);

    // Set the API endpoint and parameters for channel videos
    $channelVideosEndpoint = 'https://www.googleapis.com/youtube/v3/search';
    $channelVideosParams = array(
        'key' => $apiKey,
        'part' => 'snippet',
        'maxResults' => 50, // Request 50 videos per page
        'type' => 'video',
        'channelId' => $channelId,
    );

    // Build the API URL for channel videos
    $channelVideosUrl = $channelVideosEndpoint . '?' . http_build_query($channelVideosParams);

    $videos = array(); // Array to store all videos
    $videoNumber = 1; // Counter for video number
    $nextPageToken = null; // Token for the next page of results

    do {
        // Add the next page token to the request parameters
        $channelVideosParams['pageToken'] = $nextPageToken;

        // Build the API URL for channel videos with the page token
        $channelVideosUrl = $channelVideosEndpoint . '?' . http_build_query($channelVideosParams);

        // Make a GET request to the API for channel videos
        $channelVideosResponse = file_get_contents($channelVideosUrl);

        // Check if the request was successful
        if ($channelVideosResponse === false) {
            die('Error occurred while making the API request');
        }

        // Parse the channel videos response as JSON
        $channelVideosData = json_decode($channelVideosResponse, true);

        // Check if videos are available
        if (isset($channelVideosData['items'])) {
            // Loop through the videos and extract necessary information
            foreach ($channelVideosData['items'] as $video) {
                $videoId = $video['id']['videoId'];
                $videoLink = 'https://www.youtube.com/watch?v=' . $videoId;
                $videoTitle = $video['snippet']['title'];
                $videoDescription = $video['snippet']['description'];
                $videoThumbnail = $video['snippet']['thumbnails']['default']['url'];

                // Create an array with video information
                $videoInfo[] = "('" . $connection->real_escape_string($channelId) . "', '" . $connection->real_escape_string($videoLink) . "', '" . $connection->real_escape_string($videoTitle) . "', '" . $connection->real_escape_string($videoDescription) . "', '" . $connection->real_escape_string($videoThumbnail) . "')";

                $videoNumber++; // Increment the video number

                // Break the loop if we have reached the desired number of videos
                if ($videoNumber > 100) {
                    break 2;
                }
            }

            // Check if there are more pages of results
            if (isset($channelVideosData['nextPageToken'])) {
                $nextPageToken = $channelVideosData['nextPageToken'];
            } else {
                // No more pages, exit the loop
                break;
            }
        } else {
            echo 'No videos found.';
            break;
        }
    } while (true);

    // Check if video information is available
    if (!empty($videoInfo)) {
        // Convert the video info array to a comma-separated string
        $videoInfoString = implode(', ', $videoInfo);

        // Insert all videos into the MySQL table
        $sql = "INSERT INTO youtube_channel_videos (channel_id, video_link, title, description, thumbnail) 
                VALUES $videoInfoString";

        if ($connection->query($sql) === false) {
            die('Error occurred while inserting videos: ' . $connection->error);
        }

        // Insert the channel information into the MySQL table
        $channelQuery = "INSERT INTO youtube_channels (channel_id, profile_picture, name, description)
                        VALUES (
                            '" . $channelData['channel_id'] . "',
                            '" . $connection->real_escape_string($channelProfilePicture) . "',
                            '" . $connection->real_escape_string($channelName) . "',
                            '" . $connection->real_escape_string($channelDescription) . "'
                        )";

        if ($connection->query($channelQuery) === false) {
            die('Error occurred while inserting channel information: ' . $connection->error);
        }

        echo 'Videos and channel information inserted successfully.';
    } else {
        echo 'No videos found.';
    }
} else {
    echo 'Channel not found.';
}
?>
