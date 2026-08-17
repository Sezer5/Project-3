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
                @click="
                  cartStore.incementItem({
                    ref: item.ref,
                    product_id:item.product_id
                    color:item.color
                  })
                "
              ></i>
              {{ item.qty }}
              <i class="bi bi-caret-down"></i>
            </td>
            <td>$ {{ item.price }}</td>
            <td>$ {{ item.price * item.qty }}</td>
          </tr>
        </tbody>
      </table>
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

const cartStore = useCartStore();
</script>

<style scoped>
</style>