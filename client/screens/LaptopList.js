import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";

import ProductCard from "../components/ProductCard";
import FilterAndSort from "../components/FilterAndSort";
import BottomNavigator from "../components/BottomNavigator";
import SearchBar from "../components/SearchBar";
import { IP } from "../const";
const LaptopList = () => {
  const backButtonLink = "client/assets/Back.png";
  const navigation = useNavigation();

  const [products, setProducts] = useState([]);

  useEffect(() => {
    // Fetch laptop data from the API
    fetch("http://192.168.1.211:8080/ecommerce/api/v1/products/laptops")
      .then((response) => response.json())
      .then((data) => setProducts(data))
      .catch((error) => console.error("Error fetching data:", error));
  }, []);

  return (
    <SafeAreaView style={styles.container}>
      {/* Top bar */}
      <View style={styles.topBar}>
        <TouchableOpacity
          style={styles.backButton}
          onPress={() => navigation.goBack()}
        >
          <Image source={require(backButtonLink)} />
        </TouchableOpacity>
        <Text style={styles.title}>Laptop/Asus</Text>
      </View>

      {/* Search bar */}
      <SearchBar />

      {/* Product list */}
      <ScrollView style={styles.scrollView}>
        <View style={styles.productList}>
          {/* Product cards go here */}
          {products.map((product) => (
            <ProductCard
              key={product.productId}
              imgLink={{ uri: product.imageLink }}
              name={product.name}
              price={`$${product.price}`}
              productId={product.productId}
            />
          ))}
        </View>
      </ScrollView>

      <FilterAndSort />
      <BottomNavigator />
    </SafeAreaView>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
  },
  topBar: {
    flexDirection: "row",
    alignItems: "center",
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderBottomWidth: 1,
    borderColor: "#ccc",
  },
  backButton: {
    marginRight: 10,
  },
  title: {
    fontSize: 18,
    fontWeight: "bold",
  },
  scrollView: {
    flex: 1,
  },
  productList: {
    flexDirection: "row",
    flexWrap: "wrap",
    justifyContent: "space-between",
    paddingHorizontal: 10,
    paddingTop: 20,
    paddingBottom: 100, // Adjust the bottom padding as needed
  },
  buttonContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderTopWidth: 1,
    borderColor: "#ccc",
  },
  filterButton: {
    flexDirection: "row",
    alignItems: "center",
  },
  sortButton: {
    flexDirection: "row",
    alignItems: "center",
  },
  buttonText: {
    marginLeft: 5,
  },
});

export default LaptopList;