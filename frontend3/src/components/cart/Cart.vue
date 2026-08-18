<template>
  <div class="mt-2">
    <div v-if="cartStore.cart.length">
      <div
        class="text-end mb-3 text-danger"
        style="cursor: pointer"
        @click="cartStore.clearCartItems()"
      >
        Clear Your Cart <i class="bi bi-trash"></i>
      </div>
      <table
        class="table table-responsive table-bordered text-center align-middle"
      >
        <thead>
          <tr>
            <th>#</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Subtotal</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(item, index) in cartStore.cart" :key="item.product_id">
            <td>{{ (index += 1) }}</td>
            <td><img :src="`${BASE_URL}/` + item.image" width="60" /></td>
            <td>
              <i
                class="bi bi-caret-up"
                @click="cartStore.incementItem(item)"
              ></i>
              {{ item.qty }}
              <i
                class="bi bi-caret-down"
                @click="cartStore.decrementItem(item)"
              ></i>
            </td>
            <td>$ {{ item.price }}</td>
            <td>$ {{ item.price * item.qty }}</td>
          </tr>
        </tbody>
      </table>
      <div
        class="border border-dark border-3 fw-bold p-2 rounded d-flex justify-content-center align-items-center"
      >
        Total: ${{ total }}
      </div>
    </div>
    <div v-else>
      <div class="alert alert-info text-center">
        <h4><i class="bi bi-exclamation-triangle"></i> Empty Your Cart</h4>
      </div>
    </div>
  </div>
</template>

<script setup>
import { useCartStore } from "@/stores/useCartStore";
import { BASE_URL } from "@/helpers/config";
import { computed } from "vue";

const cartStore = useCartStore();

// calculate the cart total

const total = computed(() =>
  cartStore.cart.reduce((acc, item) => (acc += item.price * item.qty), 0)
);
</script>

<style scoped>
</style>