/* eslint-disable */
<template>
  <div id="app">
    <YamlReader />
  </div>
</template>

<script>
import YamlReader from './components/YamlReader.vue';

export default {
  name: 'App',
  components: {
    YamlReader
  }
};
</script>
<style>
/* Global Styles */
body {
  font-family: 'Arial', sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f4f4f9;
}

#app {
  text-align: center;
  margin: 20px auto;
  padding: 20px;
  max-width: 900px;
  background-color: #ffffff;
  box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
}

h1 {
  font-size: 2.5rem;
  color: #333;
  margin-bottom: 20px;
}

p {
  font-size: 1.2rem;
  color: #666;
  line-height: 1.6;
  margin-bottom: 30px;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  padding: 10px;
  background-color: #e9ecef;
  margin: 5px 0;
  border-radius: 5px;
  font-size: 1.1rem;
  color: #333;
}

li:nth-child(odd) {
  background-color: #dee2e6;
}

a {
  color: #007bff;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}
</style>