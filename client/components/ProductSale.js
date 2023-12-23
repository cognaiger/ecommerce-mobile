import React from "react";
import { View, Text, StyleSheet, Image, Pressable } from "react-native";
import { useNavigation } from "@react-navigation/native";

const ProductSale = (props) => {
  const navigation = useNavigation();

  const formatCurrency = (amount) => {
    // Format the amount as currency with comma separators
    return amount.toLocaleString("en-US", {
      style: "currency",
      currency: "VND",
      minimumFractionDigits: 0,
    });
  };

  return (
    <Pressable
      onPress={() => {
        navigation.navigate("ProductDetail", {
          productId: props.productId,
        });
      }}
      style={props.color === "white" ? styles.productCard1 : styles.productCard}
    >
      <Image source={{ uri: props.image }} style={styles.productImage} />
      <Text style={styles.productName}>{props.name}</Text>
      <View style={styles.priceContainer}>
        <Text style={styles.salePrice}>{formatCurrency(props.salePrice)}</Text>
        <Text style={styles.originalPrice}>{formatCurrency(props.price)}</Text>
      </View>
    </Pressable>
  );
};

const styles = StyleSheet.create({
  productCard: {
    borderWidth: 1,
    borderRadius: 8,
    borderColor: "#ccc",
    borderRadius: 8,
    padding: 10,
    width: 150,
    position: "relative", // Added position: 'relative'
  },
  productCard1: {
    backgroundColor: "#fff",
    borderWidth: 1,
    borderRadius: 8,
    borderColor: "#ccc",
    borderRadius: 8,
    padding: 10,
    width: 150,
    position: "relative", // Added position: 'relative'
  },
  productImage: {
    width: 120,
    height: 120,
    resizeMode: "contain",
  },
  productName: {
    fontSize: 16,
    fontWeight: "600",
  },
  priceContainer: {
    position: "absolute",
    bottom: 10,
    left: 10,
  },
  salePrice: {
    fontSize: 20,
    fontWeight: "800",
  },
  originalPrice: {
    fontSize: 14,
    fontWeight: "700",
    textDecorationLine: "line-through",
    marginLeft: 5,
  },
});

export default ProductSale;
