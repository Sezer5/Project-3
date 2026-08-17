<template>
  <nav
    class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top shadow-sm py-2"
  >
    <div class="container">
      <!-- Logo / Marka -->
      <a
        class="navbar-brand d-flex align-items-center fw-bold fs-4 text-white"
        href="#"
      >
        <span
          class="text-white rounded-3 px-2 py-1 me-2 fs-6"
          style="background-color: #41b883"
          >Vue</span
        >
        <span>T-Shirt</span>
      </a>

      <!-- Mobil Menü Butonu (Hamburger) -->
      <button
        class="navbar-toggler border-0 shadow-none"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#mainNavbar"
        aria-controls="mainNavbar"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Menü İçeriği -->
      <div class="collapse navbar-collapse" id="mainNavbar">
        <!-- Ana Linkler -->
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-3">
          <li class="nav-item">
            <router-link class="nav-link active px-3" aria-current="page" to="/"
              ><i class="bi bi-house"></i> Home</router-link
            >
          </li>
          <li class="nav-item">
            <router-link
              class="nav-link active px-3"
              aria-current="page"
              to="/cart"
              ><i class="bi bi-cart"></i> Cart ({{
                cartStore.cart?.length
              }})</router-link
            >
          </li>
          <li class="nav-item">
            <a class="nav-link px-3" href="#">Blog</a>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle px-3"
              href="#"
              id="navbarDropdown"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Kategoriler
            </a>
            <ul
              class="dropdown-menu dropdown-menu-dark border-0 shadow-lg mt-2"
              aria-labelledby="navbarDropdown"
            >
              <li><a class="dropdown-item py-2" href="#">Frontend</a></li>
              <li><a class="dropdown-item py-2" href="#">Backend</a></li>
              <li><hr class="dropdown-divider bg-secondary" /></li>
              <li><a class="dropdown-item py-2" href="#">Veritabanı</a></li>
            </ul>
          </li>
        </ul>

        <!-- Arama Çubuğu
        <form class="d-flex my-2 my-lg-0 me-lg-3" role="search">
          <div class="input-group">
            <input
              class="form-control bg-secondary text-white border-0 ps-3"
              type="search"
              placeholder="Ara..."
              aria-label="Search"
              style="--bs-bg-opacity: 0.25"
            />
            <button
              class="btn btn-outline-light border-0 bg-secondary"
              type="submit"
              style="--bs-bg-opacity: 0.25"
            >
              <i class="bi bi-search"></i>
            </button>
          </div>
        </form> -->

        <!-- Sağ Taraf: Aksiyonlar & Profil -->
        <div class="d-flex align-items-center gap-2 pt-2 pt-lg-0">
          <a
            href="#"
            class="btn btn-outline-light btn-sm rounded-pill px-3 me-1"
            >Giriş Yap</a
          >
          <a href="#" class="btn btn-primary btn-sm rounded-pill px-3"
            >Kayıt Ol</a
          >
        </div>
      </div>
    </div>
  </nav>
</template>

<script setup>
import { useCartStore } from "@/stores/useCartStore";

const cartStore = useCartStore();
</script>

<style scoped>
</style>
