import { useNavigation } from "@react-navigation/native";
import React from "react";
import { View, Text, TouchableOpacity, StyleSheet, Image } from "react-native";

const BottomAdminNavigator = () => {
  const dashboardIconLink = "client/assets/dashboardIcon.png";
  const productsIconLink = "client/assets/productsIcon.png";
  const ordersIconLink = "client/assets/ordersIcon.png";
  const customersIconLink = "client/assets/customersIcon.png";

  const navigation = useNavigation();

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Home")}>
        <Image source={require(dashboardIconLink)} style={styles.icon} resizeMode="contain" />
        <Text style={styles.navigationItemText}>Dashboard</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Products")}>
        <Image source={require(productsIconLink)} style={styles.icon} resizeMode="contain" />
        <Text style={styles.navigationItemText}>Products</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Orders")}>
        <Image source={require(ordersIconLink)} style={styles.icon} resizeMode="contain" />
        <Text style={styles.navigationItemText}>Orders</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.navigationItem} onPress={() => navigation.navigate("Profile")}>
        <Image source={require(customersIconLink)} style={styles.icon} resizeMode="contain" />
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
  icon: {
    width: 24,
    height: 24,
  },
  navigationItemText: {
    marginTop: 4,
    fontSize: 12,
  },
});

export default BottomAdminNavigator;
