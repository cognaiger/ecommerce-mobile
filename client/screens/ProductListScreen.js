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
import ProductCard from "../components/ProductCard";

import FilterAndSort from "../components/FilterAndSort";
import BottomNavigator from "../components/BottomNavigator";
import SearchBar from "../components/SearchBar";
import Modal from "react-native-modal";
const ProductListScreen = () => {
  const [isSortModalVisible, setIsSortModalVisible] = useState(false);
  const toggleSortModal = () => {
    setIsSortModalVisible(!isSortModalVisible);
  };

  const [isFilterModalVisible, setIsFilterModalVisible] = useState(false);
  const toggleFilterModal = () => {
    setIsFilterModalVisible(!isFilterModalVisible);
  };

  const seeFilterResult = () => {
    toggleFilterModal();

    // get query result
  };

  const productImgLink = "client/assets/ideapad.jpg";
  const backButtonLink = "client/assets/Back.png";

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
      <SearchBar />

      {/* Product list */}
      <ScrollView style={styles.scrollView}>
        <View style={styles.productList}>
          {/* Product cards go here */}
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />
          <ProductCard
            imgLink={require(productImgLink)}
            name="Lenovo Ideapad Gaming 3"
            price="$1200"
          />

          {/* ... */}
        </View>
      </ScrollView>

      {/* sort modal */}
      <Modal
        isVisible={isSortModalVisible}
        onBackdropPress={toggleSortModal}
        style={styles.modalContainer}
        backdropOpacity={0.5}
        animationIn="slideInUp"
        animationOut="slideOutDown"
        avoidKeyboard={true}
        useNativeDriverForBackdrop
      >
        <View style={styles.modalContent}>
          <Text style={styles.modalTitle}>Sort By</Text>
          <TouchableOpacity
            onPress={toggleSortModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Price - High to Low</Text>
          </TouchableOpacity>
          <TouchableOpacity
            onPress={toggleSortModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Price - Low to High</Text>
          </TouchableOpacity>
        </View>
      </Modal>

      {/* filter modal */}
      <Modal
        isVisible={isFilterModalVisible}
        onBackdropPress={toggleFilterModal}
        style={styles.modalContainer}
        backdropOpacity={0.5}
        animationIn="slideInUp"
        animationOut="slideOutDown"
        avoidKeyboard={true}
        useNativeDriverForBackdrop
      >
        <View style={styles.modalContent}>
          <Text style={styles.modalTitle}>Filter</Text>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Series</Text>
            <Text style={styles.modalOptionText}>Zenbook</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Release date</Text>
            <Text style={styles.modalOptionText}>2022</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Color</Text>
            <Text style={styles.modalOptionText}>White</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Screen size</Text>
            <Text style={styles.modalOptionText}>15.6 inch</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Processor</Text>
            <Text style={styles.modalOptionText}>Intel Core I9</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>RAM</Text>
            <Text style={styles.modalOptionText}>8GB</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={toggleFilterModal}
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>Storage</Text>
            <Text style={styles.modalOptionText}>256GB</Text>
          </TouchableOpacity>

          <View style={styles.buttonContainer}>
            <TouchableOpacity style={[styles.button, styles.addToCartButton]}>
              <Text style={styles.buttonTextAddToCart}>Clear all</Text>
            </TouchableOpacity>
            <TouchableOpacity
              style={[styles.button, styles.buyNowButton]}
              onPress={seeFilterResult}
            >
              <Text style={styles.buttonTextBuyNow}>See result</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>

      <FilterAndSort
        onSortPress={toggleSortModal}
        onFilterPress={toggleFilterModal}
      />
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
  modalContainer: {
    justifyContent: "flex-end",
    margin: 0,
  },
  modalContent: {
    backgroundColor: "#fff",
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    padding: 20,
  },
  modalTitle: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  modalOption: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    paddingVertical: 10,
    borderBottomWidth: 1,
    borderBottomColor: "#ccc",
  },
  modalOptionText: {
    fontSize: 16,
    color: "#000",
  },
  buttonContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginTop: 20,
  },
  button: {
    width: 167,
    height: 45,
    paddingVertical: 14,
    paddingHorizontal: 15,
    borderRadius: 4,
    borderWidth: 1,
    gap: 10,
  },
  addToCartButton: {
    backgroundColor: "white",
    borderColor: "black",
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
  buttonTextAddToCart: {
    color: "black",
    textAlign: "center",
    fontWeight: "bold",
  },
});

export default ProductListScreen;
