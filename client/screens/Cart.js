import {
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import React, { useState, useEffect } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
import ProductCart from "../components/productCart";
import AuthService from "../services/auth.service";
const Cart = () => {
  let currentUser;
  const [userId, setUserId] = useState("");
  AuthService.getCurrentUser()
    .then((res) => {
      currentUser = res;
      console.log("id", currentUser.id);
      // setCurrentRole(currentUser.roles[0]);
      setUserId(currentUser.id);
    })
    .catch((error) => {
      console.error("Error while fetching current user:", error);
    });

  const backButtonLink = "client/assets/Back.png";
  const navigation = useNavigation();
  const [totalPrice, setTotalPrice] = useState(0);
  const [cartItems, setCartItems] = useState([]);

  const turnBack = () => {
    navigation.goBack();
  };

  const handleCheckout = () => {
    navigation.navigate("Checkout",  {
      price: totalPrice,
    });
  };

  useEffect(() => {
    fetch(`http://192.168.1.211:8080/ecommerce/api/v1/cart/${userId}/all`)
      .then((response) => response.json())
      .then((data) => {
        setCartItems(data);
        calculateTotalPrice(data);
      })
      .catch((error) => {
        console.error("Error fetching cart items:", error);
      });
  }, [userId]);

  const calculateTotalPrice = (items) => {
    const total = items.reduce((acc, item) => acc + parseInt(item.price), 0);
    setTotalPrice(total);
  };

  return (
    <SafeAreaView style={{ flex: 1 }}>
      <View style={styles.topBar}>
        <TouchableOpacity onPress={turnBack}>
          <Image source={require(backButtonLink)}></Image>
        </TouchableOpacity>
        <Text style={{ fontSize: 14, fontWeight: 700 }}>Cart</Text>
      </View>

      <ScrollView>
        <View style={styles.items}>
          {cartItems.map((item, index) => (
            <ProductCart
              key={index}
              name={item.name}
              price={item.price}
              image={item.imageLink}
              quantity={1} // You may adjust this based on your requirements
              totalPrice={totalPrice}
              setTotalPrice={setTotalPrice}
            />
          ))}
        </View>
      </ScrollView>

      <View style={styles.bottom}>
        <View style={styles.totalPrice}>
          <Text>Subtotal: </Text>
          <Text style={styles.priceText}>{new Intl.NumberFormat('vi-VN', {
              style: 'currency',
              currency: 'VND'
            }).format(totalPrice)} </Text>
        </View>
        <TouchableOpacity
          onPress={handleCheckout}
          style={[styles.button, styles.buyNowButton]}
        >
          <Text style={styles.buttonTextBuyNow}>Checkout</Text>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
  );
};
export default Cart;
const styles = StyleSheet.create({
  topBar: {
    flexDirection: "row",
    alignItems: "center",
    padding: 10,
    gap: 10,
    borderColor: "#000",
    borderBottomWidth: 1,
  },
  items: {
    padding: 30,
    gap: 30,
  },
  bottom: {
    alignItems: "center",
    gap: 20,
    padding: 15,
  },
  totalPrice: {
    flexDirection: "row",
    justifyContent: "space-between",
    gap: 180,
  },
  priceText: {
    fontSize: 18,
    fontWeight: "700",
  },
  buyNowButton: {
    backgroundColor: "black",
    color: "white",
  },
  buttonTextBuyNow: {
    color: "white",
    textAlign: "center",
    fontWeight: "bold",
  },
  button: {
    width: 300,
    height: 50,
    paddingVertical: 14,
    paddingHorizontal: 15,
    borderRadius: 4,
    borderWidth: 1,
    gap: 10,
  },
});
