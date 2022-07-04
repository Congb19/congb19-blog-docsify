# Vue 嵌入 test

## Vue test

<script>
const { createApp, ref, reactive } = Vue

// Options API
// const options = {
//   // Options...
//   data() {
//     return {
//       count: 1,
//     }
//   },
//   methods: {
//     countAdd() {
//       this.count++;
//       console.log("count", this.count);
//     }
//   }
// }
// const app = createApp(options);


// Composition API
const composition = {
  setup() {
    let count = ref(12);
    const countAdd = () => {
      count.value++;
    }
    return { count, countAdd };
  }
}
const app = createApp(composition);
app.use(naive);
app.mount('#container');
</script>

<div id="container">
  {{ count }}
  <n-button @click="countAdd">+++</n-button>
  <!-- <button @click="countAdd">+</button> -->
</div>
