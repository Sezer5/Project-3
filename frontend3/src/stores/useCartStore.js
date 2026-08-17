import { defineStore } from "pinia";
import { useToast } from "vue-toastification";

const toast = useToast();

export const useCartStore = defineStore('cart', {
  state: () => ({ 
    cart:[]
   }),
   persist: true,
  getters: {
    doubleCount: (state) => state.count * 2,
  },
  actions: {
    addCartItem(item){
        let index = this.cart.findIndex(product => product.product_id === item.product_id && 
            product.size === item.size && 
            product.color === item.color);
        
        if(index !== -1){
            toast.info("Product already in your cart", {
                timeout: 2000
            });
        }else{
            this.cart.push(item);
            toast.success("Product added your cart successfully!", {
                timeout: 2000
            });
        }
    },

    incementItem(item){
        let index = this.cart.findIndex(product => product.product_id === item.product_id && 
            product.size === item.size && 
            product.color === item.color);
        if(this.cart[index].qty===item.maxQty){
            toast.info(`Only ${item.maxQty} product available!`, {
                timeout: 2000
            });
        }else{
            this.cart[index].qty +=1;
            toast.success("Product added your cart successfully!", {
                timeout: 2000
            });
        }
    },

    decrementItem(item){
        let index = this.cartItems.findIndex(product => product.product_id === item.product_id 
                                          && product.color=== item.color 
                                          && product.size===item.size)
      // If same product already exists in the cart
      if(index!==-1){
        this.cart[index].qty-=1
        if(this.cart[index].qty === 0){
          this.cart = this.cart.filter(product=>product.ref !== item.ref)
            }
        }


    },

    removeFromCart(item){
    this.cart = this.cart.filter(product=>product.ref !== item.ref)
    toast.success(`Product remove to your cart`,{
            timeout:2000
          })
  },
    clearCartItems(){
        this.cart=[]
        }
    }
})