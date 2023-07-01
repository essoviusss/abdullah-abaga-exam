<template>
    <div class="main-cont">
      <div v-for="channel in channels" :key="channel.name">
        <div class="channel-cont">
          <div class="chan-img">
            <img :src="channel.profile_picture" alt="Profile Picture">
          </div>
          <div>
            <h1>{{ channel.name }}</h1>
            <label>{{ channel.description }}</label>
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
                                <div class="content-img"> 
                                    <img :src="video.thumbnail" alt="">
                                </div>
                                <div class="content-column">
                                    <h5>{{ video.title }}</h5>
                                    <label>{{ video.description }}</label>
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
  *{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
  }
  .main-cont {
    height: 100vh;
  }
  ul{
    padding: 0;
    list-style: none;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    
  }
  label{
    display: inline-flex;
  }
  .content-img img{
    border-radius: 12px;
    width: 10vw;
  }
  .channel-cont {
    display: flex;
    flex-direction: row;
    height: 20vh;
    align-items: center;
  }
  .navbar-cont {
    background-color: #c33030;
    padding: 1vh;
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
    width: calc(100% / 5);
  }
  .video-cont{
    background-color: aliceblue;
  }
  .content{
    width: 10vw;
  }
  </style>