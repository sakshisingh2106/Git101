
<template>
    <div class="yaml-container">
      <h1>{{ yamlData.title }}</h1>
      <p>{{ yamlData.description }}</p>
      <ul>
        <li v-for="(item, index) in yamlData.items" :key="index">
          <strong>{{ item.name }}:</strong> {{ item.value }}
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  import yaml from 'js-yaml';
  
  export default {
    data() {
      return {
        yamlData: {}
      };
    },
    methods: {
      async fetchYaml() {
        try {
          const response = await fetch('/data.yaml'); // Adjust the path to your YAML file
          const text = await response.text();
          this.yamlData = yaml.load(text);
        } catch (error) {
          console.error('Error loading YAML:', error);
        }
      }
    },
    mounted() {
      this.fetchYaml();
    }
  };
  </script>
  
  <style scoped>
  .yaml-container {
    padding: 20px;
    background-color: #f9f9f9;
  }
  
  .yaml-container h1 {
    font-size: 2rem;
    color: #333;
  }
  
  .yaml-container p {
    font-size: 1rem;
    margin-bottom: 20px;
  }
  
  .yaml-container ul {
    list-style-type: none;
    padding: 0;
  }
  
  .yaml-container ul li {
    margin-bottom: 10px;
  }
  </style>
  