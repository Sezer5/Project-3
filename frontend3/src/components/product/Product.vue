<template>
  <div class="mt-2 d-flex justify-content-between">
    <Spinner :isLoading="productStore.isLoading" />
    <div class="imgHolder">
      <div>
        <img
          :src="`${BASE_URL}/` + productStore.productDetail?.thumbnail"
          class="rounded-5"
          width="460px"
        />
      </div>
    </div>
    <div class="contentHolder w-100" style="margin-top: 100px">
      <div style="padding-left: 100px">
        <div class="d-flex justify-content-between align-items-center">
          <h1># {{ productStore.productDetail?.name }}</h1>
          <h1>$ {{ productStore.productDetail?.price }}</h1>
        </div>
        <hr />
        <p>{{ productStore.productDetail?.description }}</p>
        <div class="d-flex justify-content-between align-items-center">
          <div class="color-holder">
            <div class="w-100">
              <h3>Colors:</h3>
            </div>
            <div class="d-flex">
              <div
                v-for="color in productStore.productDetail?.colors"
                :key="color.id"
                :style="{
                  backgroundColor: color.name,
                  width: '30px',
                  height: '30px',
                  borderRadius: '30px',
                  marginRight: '10px',
                  cursor: 'pointer',
                }"
                @click="data.chosenColor = color"
                class="d-flex justify-content-center align-items-center"
              >
                <i
                  v-if="data.chosenColor?.id === color.id"
                  class="bi bi-check-lg text-white"
                ></i>
              </div>
            </div>
          </div>
          <div class="size-holder">
            <div class="w-100 text-start">
              <h3>Sizes:</h3>
            </div>
            <div class="d-flex">
              <span
                v-for="size in productStore.productDetail?.sizes"
                :key="size.id"
                style="margin-right: 10px; cursor: pointer"
                :class="
                  data.chosenSize?.id === size.id
                    ? 'badge bg-dark border text-white'
                    : 'badge bg-light border text-black'
                "
                @click="data.chosenSize = size"
              >
                <h4>{{ size.name }}</h4>
              </span>
            </div>
          </div>
          <div class="quantity-holder">
            <div class="w-100 text-start">
              <h3>Quantity:</h3>
              <input
                type="number"
                class="form-control-lg"
                v-model="data.chosenQuantity"
                :max="productStore.productDetail?.quantity"
              />
            </div>
          </div>
        </div>
        <div>
          <button
            class="btn btn-lg btn-block btn-primary w-100 mt-5"
            :disabled="data.chosenColor === null || data.chosenSize === null"
            @click="
              cartStore.addCartItem({
                ref: makeUniqueId(10),
                product_id: productStore.productDetail?.id,
                slug: productStore.productDetail?.slug,
                image: productStore.productDetail?.thumbnail,
                price: productStore.productDetail?.price,
                color: data.chosenColor?.name,
                size: data.chosenSize?.name,
                qty: data.chosenQuantity,
                maxQty: productStore.productDetail?.quantity,
              })
            "
          >
            Add To Cart
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { BASE_URL, makeUniqueId } from "@/helpers/config";
import { useProductStore } from "@/stores/useProductStore";
import { onMounted, reactive } from "vue";
import { useRoute } from "vue-router";
import Spinner from "../layouts/Spinner.vue";
import { useCartStore } from "@/stores/useCartStore.js";

const term = useRoute().params.slug;

const productStore = useProductStore();

const data = reactive({
  chosenColor: null,
  chosenSize: null,
  chosenQuantity: 1,
});

const cartStore = useCartStore();

onMounted(() => {
  productStore.getProductsDetail(term);
});
</script>

<style scoped>
</style>