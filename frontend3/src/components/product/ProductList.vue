<template>
  <div class="p-2 d-flex flex-wrap justify-content-around">
    <Spinner :isLoading="ProductStore.isLoading" />
    <ProductListItem
      v-for="product in ProductStore.products"
      :key="product.id"
      :product="product"
    />
  </div>
</template>

<script setup>
import ProductListItem from "./ProductListItem.vue";
import Spinner from "../layouts/Spinner.vue";
import { useProductStore } from "@/stores/useProductStore.js";
import { onMounted } from "vue";

const ProductStore = useProductStore();

onMounted(() => {
  ProductStore.getAllProducts();
});
</script>

<style scoped>
</style>