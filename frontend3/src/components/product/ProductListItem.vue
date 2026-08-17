<template>
  <div class="col-md-5 col-sm-4 m-2 shadow">
    <div class="card h-100 shadow-sm border-0 position-relative">
      <!-- İndirim / Etiket Rozeti -->
      <span class="badge bg-danger position-absolute top-0 start-0 m-3 fs-6"
        >%20 İndirim</span
      >

      <!-- Ürün Görseli -->
      <a href="#" class="text-decoration-none">
        <img
          :src="`${BASE_URL}/` + product.thumbnail"
          class="card-img-top object-fit-cover"
          alt="Ürün Görseli"
          style="height: 220px"
        />
      </a>

      <!-- Kart Gövdesi -->
      <div class="card-body d-flex flex-column">
        <!-- Ürün Başlığı -->
        <h5 class="card-title text-truncate fw-bold mb-2">
          <a href="#" class="text-dark text-decoration-none">{{
            product.name
          }}</a>
        </h5>

        <!-- Yıldız / Değerlendirme Puanı -->
        <div class="mb-2 d-flex align-items-center justify-content-between">
          <div class="d-flex">
            <div
              v-for="color in product.colors"
              :key="color.id"
              :style="{
                backgroundColor: color.name,
                width: '10px',
                height: '10px',
                borderRadius: '10px',
                margin: '0px 10px 0px 0px',
              }"
            ></div>
          </div>
          <div>
            <span
              class="badge bg-light text-black border me-1"
              v-for="size in product.sizes"
              :key="size.id"
              >{{ size.name }}</span
            >
          </div>
        </div>

        <!-- Kısa Açıklama -->
        <p class="card-text text-muted small flex-grow-1">
          {{ product.description.substr(0, 60) }}...(Show More)
        </p>

        <!-- Fiyat ve Buton Bölümü -->
        <div class="pt-3 border-top mt-auto">
          <div class="d-flex align-items-center justify-content-between mb-3">
            <!-- Fiyat -->

            <span class="text-decoration-line-through text-muted me-2 small"
              >{{ product.price * 1.2 }} ₺</span
            >
            <span class="fw-bold text-primary fs-5">{{ product.price }} ₺</span>
          </div>

          <!-- Eylem Butonları -->
          <div class="d-grid gap-2">
            <router-link
              type="button"
              class="btn btn-primary d-flex align-items-center justify-content-center gap-2"
              :to="`/productDetail/` + product.slug"
            >
              <i class="bi bi-eye"></i> Product Details
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { BASE_URL } from "@/helpers/config";
import router from "@/router";

const props = defineProps({
  product: {
    type: Object,
    required: true,
  },
});
</script>

<style scoped>
</style>