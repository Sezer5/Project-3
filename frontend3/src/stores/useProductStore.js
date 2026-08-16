import { BASE_URL } from '@/helpers/config'
import axios from 'axios'
import { defineStore } from 'pinia'

export const useProductStore = defineStore('product', {
  state: () => ({ 
    products:[],
    colors:[],
    sizes:[],
    isLoading:false,
    productDetail:null
   }),
  getters: {
    doubleCount: (state) => state.count * 2,
  },
  actions: {
    async getAllProducts(){
        this.isLoading=true
        try {
            const response = await axios.get(`${BASE_URL}/api/products`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            console.log(error)
            this.isLoading=false
        }
        
    },

    async getProductsByColor(color){
        this.isLoading=true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${color}/color`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            console.log(error)
            this.isLoading=false
        }
        
    },

    async getProductsBySize(size){
        this.isLoading=true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${size}/size`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            console.log(error)
            this.isLoading=false
        }
        
    },

    async getProductsByTerm(term){
        this.isLoading=true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${term}/term`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            console.log(error)
            this.isLoading=false
        }
        
    },

    async getProductsDetail(product){
        this.isLoading=true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${product}/productDetail`)
            this.productDetail = response.data.data
            
            this.isLoading=false
        } catch (error) {
            console.log(error)
            this.isLoading=false
        }
        
    },
  },
})