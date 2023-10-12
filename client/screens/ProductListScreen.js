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
  const [isModalVisible, setIsModalVisible] = useState(false);
  const toggleModal = () => {
    setIsModalVisible(!isModalVisible);
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

      <Modal
        isVisible={isModalVisible}
        onBackdropPress={toggleModal}
        style={styles.modalContainer}
        backdropOpacity={0.5}
        animationIn="slideInUp"
        animationOut="slideOutDown"
        avoidKeyboard={true}
        useNativeDriverForBackdrop
      >
        <View style={styles.modalContent}>
          <Text style={styles.modalTitle}>Sort by</Text>
          <TouchableOpacity onPress={toggleModal} style={styles.modalOption}>
            <Text style={styles.modalOptionText}>Price - High to Low</Text>
          </TouchableOpacity>
          <TouchableOpacity onPress={toggleModal} style={styles.modalOption}>
            <Text style={styles.modalOptionText}>Price - Low to High</Text>
          </TouchableOpacity>
        </View>
      </Modal>

      <FilterAndSort onSortPress={toggleModal} />
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
    paddingVertical: 10,
  },
  modalOptionText: {
    fontSize: 16,
    color: "#000",
  },
});

export default ProductListScreen;
