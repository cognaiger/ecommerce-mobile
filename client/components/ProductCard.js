import React, { useState } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Image,
  Pressable,
} from "react-native";
import { useNavigation } from "@react-navigation/native";
import AuthService from "../services/auth.service";
const ProductCard = (props) => {

  console.disableYellowBox = true;
  const formatPrice = (amount) => {
    const formatter = new Intl.NumberFormat("vi-VN", {
      style: "currency",
      currency: "VND",
    });
    return formatter.format(amount);
  };
  const getPriceValue = (priceString) => {
    const matches = priceString.match(/\d+/g);
    return matches ? parseInt(matches.join(""), 10) : 0;
  };
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

  const navigation = useNavigation();
  const [addToCartMessage, setAddToCartMessage] = useState("");

  const handleAddToCart = async () => {
    console.log("clicked add to cart");
    try {
      const productId = props.productId;
      const response = await fetch(
        `http://192.168.1.211:8080/ecommerce/api/v1/cart/add-to-cart/${productId}/${userId}`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
        }
      );

      if (response.ok) {
        // Request successful, set a success message
        setAddToCartMessage("Added to your cart");

        // Clear the success message after 1 second
        setTimeout(() => {
          setAddToCartMessage("");
        }, 1000);
      } else {
        // Request failed, set an error message
        setAddToCartMessage("Failed to add to cart");
      }
    } catch (error) {
      console.error("Error adding to cart:", error);
      setAddToCartMessage("An error occurred");
    }
  };

  return (
    <View style={styles.productCard}>
      <Pressable
        onPress={() => {
          navigation.navigate("ProductDetail", {
            productId: props.productId,
          });
        }}
      >
        <Image source={props.imgLink} style={styles.productImage} />
        <Text style={styles.productName}>{props.name}</Text>
        <Text style={styles.productPrice}>
          {formatPrice(getPriceValue(props.price))}
        </Text>
      </Pressable>
      <TouchableOpacity
        style={styles.addToCartButton}
        onPress={handleAddToCart}
      >
        <Text style={styles.addToCartButtonText}>Add to Cart</Text>
      </TouchableOpacity>
      {addToCartMessage ? (
        <Text style={styles.addToCartMessage}>{addToCartMessage}</Text>
      ) : null}
    </View>
  );
};

const styles = StyleSheet.create({
  productCard: {
    width: "48%",
    marginBottom: 20,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 5,
    padding: 10,
  },
  productImage: {
    width: "100%",
    height: 150,
    marginBottom: 5,
    resizeMode: "cover",
  },
  productName: {
    fontSize: 14,
    marginBottom: 5,
    fontWeight: "regular",
  },
  productPrice: {
    fontSize: 16,
    marginBottom: 10,
    fontWeight: "bold",
  },
  addToCartButton: {
    backgroundColor: "black",
    borderRadius: 5,
    paddingVertical: 10,
  },
  addToCartButtonText: {
    color: "white",
    textAlign: "center",
    fontWeight: "bold",
  },
  addToCartMessage: {
    marginTop: 10,
    color: "green", // Change color based on success or error
    textAlign: "center",
  },
});

export default ProductCard;
