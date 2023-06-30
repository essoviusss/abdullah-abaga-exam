<template>
    <div class="main-cont">
      <div v-for="channel in channels" :key="channel.name">
        <div class="channel-cont">
          <div>
            <img :src="channel.profile_picture" alt="Profile Picture">
          </div>
          <div>
            <h2>{{ channel.name }}</h2>
            <p>{{ channel.description }}</p>
          </div>
        </div>
        <div class="navbar-cont">
          <div class="navbar">
            <div
              v-for="tab in tabs"
              :key="tab"
              class="navbar-item"
              :class="{ active: selectedTab === tab }"
              @click="selectedTab = tab"
            >
              {{ tab }}
            </div>
          </div>
          <div class="slider" :style="{ left: getSliderPosition }"></div> <!-- Slider indicator -->
        </div>
        <div class="video-cont">
            <div v-if="selectedTab === 'Videos'">
                <ul>
                    <li v-for="video in channel.videos" :key="video">
                        <div>
                            <div class="content">
                                <img :src="video.thumbnail" alt="">
                                <div class="content-column">
                                    <h3>{{ video.title }}</h3>
                                    <p>{{ video.description }}</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
          <div v-else-if="selectedTab === 'Shorts'">
            <div>
              <!-- Shorts content -->
            </div>
          </div>
          <div v-else-if="selectedTab === 'Live'">
            <div>
              <!-- Live content -->
            </div>
          </div>
          <div v-else-if="selectedTab === 'Playlist'">
            <div>
              <!-- Playlist content -->
            </div>
          </div>
          <div v-else-if="selectedTab === 'About'">
            <div>
              <!-- About content -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name: 'HomeScreen',
    data() {
      return {
        channels: [],
        selectedTab: 'Videos',
        tabs: ['Videos', 'Shorts', 'Live', 'Playlist', 'About'],
      };
    },
    mounted() {
      this.fetchData();
    },
    methods: {
      async fetchData() {
        try {
          const url = 'http://localhost/youtube_channel_json.php';
          const response = await axios.get(url);
          if (Array.isArray(response.data)) {
            this.channels = response.data;
          }
        } catch (e) {
          alert(e);
        }
      },
    },
    computed: {
      getSliderPosition() {
        const tabIndex = this.tabs.indexOf(this.selectedTab);
        const tabWidth = 100 / this.tabs.length;
        const leftPosition = tabIndex * tabWidth;
        return `${leftPosition}%`;
      },
    },
  };
  </script>
  
  <style>
  .main-cont {
    height: 100vh;
  }
  ul{
    list-style: none;
    display: flex;
    flex-wrap: wrap;
  }
  
  .channel-cont {
    display: flex;
    flex-direction: row;
    background-color: white;
    align-items: center;
  }
  
  .content {
    display: flex;
    flex-direction: row;
    width: 45vw;
  }

  .content-column{
    margin-left: 2%;
  }
  
  .navbar-cont {
    display: flex;
    flex-direction: column;
    align-items: center;
    background-color: #c33030;
    padding: 10px;
    position: relative;
  }
  
  .navbar {
    display: flex;
    justify-content: space-between;
    width: 100%;
  }
  
  .navbar-item {
    cursor: pointer;
    padding: 10px;
    font-weight: bold;
  }
  
  .active {
    color: white;
  }
  
  .slider {
    height: 2px;
    background-color: white;
    position: absolute;
    bottom: 0;
    transition: left 0.3s ease;
    width: calc(100% / 5); /* Adjust the width based on the number of tabs */
  }
  .video-cont{
    display: flex;
    flex-wrap: wrap;
  }
  </style>