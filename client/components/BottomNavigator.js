import { useNavigation } from "@react-navigation/native";
import React from "react";
import { View, Text, TouchableOpacity, StyleSheet, Image } from "react-native";

const BottomNavigator = () => {
  const homeIconLink = "client/assets/homeIcon.png";
  const categoriesIconLink = "client/assets/categoriesIcon.png";
  const wishlistIconLink = "client/assets/wishlistIcon.png";
  const cartIconLink = "client/assets/cartIcon.png";
  const profileIconLink = "client/assets/profileIcon.png";

  const navigation = useNavigation();

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Home")}>
        <Image source={require(homeIconLink)}></Image>
        <Text style={styles.navigationItemText}>Home</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Category")}>
        <Image source={require(categoriesIconLink)}></Image>
        <Text style={styles.navigationItemText}>Categories</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Wishlist")}>
        <Image source={require(wishlistIconLink)}></Image>
        <Text style={styles.navigationItemText}>Wishlist</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Cart")}>
        <Image source={require(cartIconLink)}></Image>
        <Text style={styles.navigationItemText}>Cart</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Profile")}>
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
