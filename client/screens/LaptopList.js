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
import AuthService from "../services/auth.service";
import ProductCard from "../components/ProductCard";
import FilterAndSort from "../components/FilterAndSort";
import BottomNavigator from "../components/BottomNavigator";
import SearchBar from "../components/SearchBar";
import { IP } from "../const";
const LaptopList = ({ route, navigation }) => {

  let currentUser;
  const [userId, setUserId] = useState('');
  AuthService.getCurrentUser()
    .then((res) => {
      currentUser = res;
      console.log("id",currentUser.id);
      // setCurrentRole(currentUser.roles[0]);
      setUserId(currentUser.id);
    })
    .catch((error) => {
      console.error("Error while fetching current user:", error);
    });

  const backButtonLink = "client/assets/Back.png";
  // const navigation = useNavigation();
  const { categoryName } = route.params;
  console.log("id: ", categoryName);
  const [products, setProducts] = useState([]);

  const [sortedProducts, setSortedProducts] = useState(products);
  const [sortCriteria, setSortCriteria] = useState("");

  const handleSearch = (searchText) => {
    // Fetch laptop data from the API with the updated search text
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

  const handleSort = (criteria) => {
    // Sort the products based on the selected criteria
    const sorted = [...products].sort((a, b) => {
      // Extract numerical values from the price strings
      const getPriceValue = (priceString) => {
        const matches = priceString.match(/\d+/g);
        return matches ? parseInt(matches.join(""), 10) : 0;
      };

      const priceA = getPriceValue(a.price);
      const priceB = getPriceValue(b.price);

      // Add sorting logic based on the criteria
      if (criteria === "Price") {
        return priceA - priceB;
      }
      // Add more sorting criteria if needed

      // Default: No sorting
      return 0;
    });

    setSortedProducts(sorted);
    setSortCriteria(criteria);
  };

  useEffect(() => {
    // Fetch laptop data from the API
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
      <SearchBar onSearch={handleSearch} />

      {/* Product list */}
      <ScrollView style={styles.scrollView}>
        <View style={styles.productList}>
          {/* Product cards go here */}
          {sortedProducts.map((product) => (
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

      <FilterAndSort onSort={handleSort} />
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
