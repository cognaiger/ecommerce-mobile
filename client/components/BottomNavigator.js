import React from "react";
import { View, Text, TouchableOpacity, StyleSheet, Image } from "react-native";
import { Ionicons } from "@expo/vector-icons";

const BottomNavigator = () => {
  const homeIconLink = "client/assets/homeIcon.png";
  const categoriesIconLink = "client/assets/categoriesIcon.png";
  const wishlistIconLink = "client/assets/wishlistIcon.png";
  const cartIconLink = "client/assets/cartIcon.png";
  const profileIconLink = "client/assets/profileIcon.png";

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.navigationItem}>
        <Image source={require(homeIconLink)}></Image>
        <Text style={styles.navigationItemText}>Home</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem}>
        <Image source={require(categoriesIconLink)}></Image>
        <Text style={styles.navigationItemText}>Categories</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem}>
        <Image source={require(wishlistIconLink)}></Image>
        <Text style={styles.navigationItemText}>Wishlist</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem}>
        <Image source={require(cartIconLink)}></Image>
        <Text style={styles.navigationItemText}>Cart</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem}>
        <Image source={require(profileIconLink)}></Image>
        <Text style={styles.navigationItemText}>Profile</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    justifyContent: "space-around",
    alignItems: "center",
    backgroundColor: "white",
    paddingVertical: 10,
    marginBottom: 10,
  },
  navigationItem: {
    alignItems: "center",
  },
  navigationItemText: {
    marginTop: 4,
    fontSize: 12,
  },
});

export default BottomNavigator;
