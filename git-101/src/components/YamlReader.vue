<template>
    <div class="yaml-container">
      <h1>{{ yamlData.title }}</h1>
      <p>{{ yamlData.description }}</p>
      <ul>
        <li v-for="(item, index) in yamlData.items" :key="index" class="yaml-item">
          <strong>{{ item.name }}:</strong>
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
    padding: 30px;
    background-color: #ffffff;
    border-radius: 12px;
    box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
    transition: background-color 0.3s ease;
  }
  
  .yaml-container:hover {
    background-color: #f8f9fa;
  }
  
  .yaml-container h1 {
    font-size: 2.2rem;
    color: #212529;
    margin-bottom: 20px;
    border-bottom: 2px solid #dee2e6;
    padding-bottom: 10px;
  }
  
  .yaml-container p {
    font-size: 1.1rem;
    color: #495057;
    margin-bottom: 25px;
  }
  
  .yaml-container ul {
    list-style-type: none;
    padding: 0;
  }
  
  .yaml-container ul li {
    padding: 15px;
    background-color: #e9ecef;
    margin-bottom: 10px;
    border-radius: 8px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    transition: background-color 0.3s ease, transform 0.2s ease;
  }
  
  .yaml-container ul li:hover {
    background-color: #ced4da;
    transform: scale(1.02);
  }
  
  .yaml-item strong {
    font-size: 1.2rem;
    color: #343a40;
  }
  
  .yaml-item span {
    font-size: 1rem;
    color: #495057;
  }
  </style>
  