import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
  ActivityIndicator,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import AuthService from "../services/auth.service";
import ProductCard from "../components/ProductCard";
import FilterAndSort from "../components/FilterAndSort";
import BottomNavigator from "../components/BottomNavigator";
import SearchBar from "../components/SearchBar";
import { IP } from "../const";

const LaptopList = ({ route, navigation }) => {

  
  let currentUser;
  const [userId, setUserId] = useState("");
  AuthService.getCurrentUser()
    .then((res) => {
      currentUser = res;
      console.log("id", currentUser.id);
      setUserId(currentUser.id);
    })
    .catch((error) => {
      console.error("Error while fetching current user:", error);
    });

  const backButtonLink = "client/assets/Back.png";
  const { categoryName } = route.params;
  const [products, setProducts] = useState([]);
  const [sortedProducts, setSortedProducts] = useState(products);
  const [sortCriteria, setSortCriteria] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSearch = (searchText) => {
    fetch(
      `http://192.168.1.211:8080/ecommerce/api/v1/products/30-laptops/${searchText}`
    )
      .then((response) => response.json())
      .then((data) => {
        setProducts(data);
        setSortedProducts(data);
      })
      .catch((error) => console.error("Error fetching data:", error));
  };

  const handleSort = async (criteria) => {
    setLoading(true);

    // Simulate an asynchronous API call (replace with actual API call)
    await new Promise((resolve) => setTimeout(resolve, 2000));

    const sorted = [...products].sort((a, b) => {
      const getPriceValue = (priceString) => {
        const matches = priceString.match(/\d+/g);
        return matches ? parseInt(matches.join(""), 10) : 0;
      };

      const priceA = getPriceValue(a.price);
      const priceB = getPriceValue(b.price);

      if (criteria === "Price") {
        return priceA - priceB;
      }

      return 0;
    });

    setLoading(false);

    setSortedProducts(sorted);
    setSortCriteria(criteria);
  };

  useEffect(() => {
    fetch(
      `http://192.168.1.211:8080/ecommerce/api/v1/products/30-laptops/${categoryName}`
    )
      .then((response) => response.json())
      .then((data) => {
        setProducts(data);
        setSortedProducts(data);
      })
      .catch((error) => console.error("Error fetching data:", error));
  }, [categoryName]);

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.topBar}>
        <TouchableOpacity
          style={styles.backButton}
          onPress={() => navigation.goBack()}
        >
          <Image source={require(backButtonLink)} />
        </TouchableOpacity>
        <Text style={styles.title}>Laptop/Asus</Text>
      </View>

      <SearchBar onSearch={handleSearch} />

      <ScrollView style={styles.scrollView}>
        <View style={styles.productList}>
          {sortedProducts.map((product) => (
            <ProductCard
              key={product.productId}
              imgLink={{ uri: product.imageLink }}
              name={product.name}
              price={`${product.price}`}
              productId={product.productId}
            />
          ))}
        </View>
      </ScrollView>

      <FilterAndSort onSort={handleSort} />

      {loading && (
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#0000ff" />
        </View>
      )}

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
