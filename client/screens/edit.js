import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
} from "react-native";
import FilterAndSort from "../components/FilterAndSort";
import BottomNavigator from "../components/BottomNavigator";

const ProductListScreen = () => {
  const [searchText, setSearchText] = useState("");

  const productImgLink = "client/assets/ideapad.jpg";
  const backButtonLink = "client/assets/Back.png";
  const searchButtonLink = "client/assets/search.png";

  const handleSearch = () => {
    // Handle search logic here
    console.log("Search:", searchText);
  };

  return (
    <View style={styles.container}>
      {/* Top bar */}
      <View style={styles.topBar}>
        <TouchableOpacity style={styles.backButton}>
          <Image source={require(backButtonLink)}></Image>
        </TouchableOpacity>
        <Text style={styles.title}>Laptop/Asus</Text>
      </View>

      {/* Search bar */}
      <View style={styles.searchBar}>
        <Image source={require(searchButtonLink)}></Image>
        <TextInput
          style={styles.searchInput}
          placeholder="Search Product Name"
          placeholderTextColor="#888"
          value={searchText}
          onChangeText={setSearchText}
          onSubmitEditing={handleSearch}
        />
      </View>

      {/* Product list */}
      <ScrollView style={styles.scrollView}>
        <View style={styles.productList}>
          {/* Product cards go here */}
          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.productCard}>
            <Image
              source={require(productImgLink)}
              style={styles.productImage}
            />
            <Text style={styles.productName}>Lenovo Ideapad Gaming 3</Text>
            <Text style={styles.productPrice}>$1200</Text>
            <TouchableOpacity style={styles.addToCartButton}>
              <Text style={styles.addToCartButtonText}>Add to Cart</Text>
            </TouchableOpacity>
          </View>
          {/* ... */}
        </View>
      </ScrollView>

      <FilterAndSort />
      <BottomNavigator />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
  },
  topBar: {
    marginTop: 25,
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
  searchBar: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: "#f2f2f2",
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
    marginTop: 10,
    marginBottom: 20,
  },
  searchIcon: {
    marginRight: 10,
  },
  searchInput: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    padding: 10,
    borderRadius: 20,
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
    fontWeight: "regular", // Added fontWeight: 'bold'
  },
  productPrice: {
    fontSize: 16,
    marginBottom: 10,
    fontWeight: "bold", // Added fontWeight: 'bold'
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
  // Rest of the styles...
});

export default ProductListScreen;
