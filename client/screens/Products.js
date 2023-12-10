import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Modal,
  TextInput,
  Button,
  ScrollView,
} from "react-native";
import LaptopCard from "../components/LaptopCard";
import BottomAdminNavigator from "../components/BottomAdminNavigator";
import { IP } from "../const";
const Products = () => {
  const [laptops, setLaptops] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [selectedProductType, setSelectedProductType] = useState("laptop");
  const [productData, setProductData] = useState({
    brand_name: "",
    name: "",
    image_link: "",
    description: "",
    price: "",
    price_discount: "",
    quantity: "",
    screen_size: "",
    storage: "",
    cpu: "",
    os: "",
    gpu: "",
    ram: "",
  });
  useEffect(() => {
    // Fetch product data from the API
    fetch(`http://${IP}:8080/ecommerce/api/v1/products`)
      .then((response) => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json(); // Parse the JSON response
      })
      .then((data) => {
        setLaptops(data);
        console.log(data); // Now you can access the JSON data
      })
      .catch((error) =>
        console.error("Error fetching product data: ", error)
      );
  }, []);
  const handleAddProduct = () => {
    // Implement logic to add the product based on selectedProductType
    // You can send a request to your backend API to create the product
    // and handle success/failure accordingly
    console.log("Adding product:", productData);
    // Close the modal
    setModalVisible(false);
  };

  return (
    <>
      <View style={styles.container}>
        <Text style={styles.heading}>Product List</Text>
        {/* Display your product cards here */}

        <ScrollView style={styles.scrollViewProduct}>
          {laptops.map((laptop) => (
            <LaptopCard product={laptop} />
          ))}
        </ScrollView>
        {/* ...

          Example:
          <ProductCard product={product} />
      */}

        <TouchableOpacity
          style={styles.addButton}
          onPress={() => setModalVisible(true)}
        >
          <Text style={styles.addButtonText}>Add Product</Text>
        </TouchableOpacity>

        <Modal visible={modalVisible} animationType="slide" transparent={true}>
          <View style={styles.modalContainer}>
            <View style={styles.modalContent}>
              <TouchableOpacity
                onPress={() => setModalVisible(false)}
                style={styles.closeButton}
              >
                <Text style={styles.closeButtonText}>Close</Text>
              </TouchableOpacity>
              <Text style={styles.modalHeading}>Select Product Type:</Text>
              <TouchableOpacity
                onPress={() => setSelectedProductType("laptop")}
                style={[
                  styles.optionButton,
                  selectedProductType === "laptop" && styles.selectedOption,
                ]}
              >
                <Text>Laptop</Text>
              </TouchableOpacity>
              <TouchableOpacity
                onPress={() => setSelectedProductType("ram")}
                style={[
                  styles.optionButton,
                  selectedProductType === "ram" && styles.selectedOption,
                ]}
              >
                <Text>RAM</Text>
              </TouchableOpacity>
              {/* Render different form fields based on selectedProductType */}
              {selectedProductType === "laptop" ? (
                <>
                  <ScrollView style={styles.scrollView}>
                    <TextInput
                      style={styles.input}
                      placeholder="Brand Name"
                      onChangeText={(text) =>
                        setProductData({ ...productData, brand_name: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Product Name"
                      onChangeText={(text) =>
                        setProductData({ ...productData, name: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Image Link"
                      onChangeText={(text) =>
                        setProductData({ ...productData, image_link: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Description"
                      onChangeText={(text) =>
                        setProductData({ ...productData, description: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Price"
                      onChangeText={(text) =>
                        setProductData({ ...productData, price: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Price Discount"
                      onChangeText={(text) =>
                        setProductData({ ...productData, price_discount: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Quantity"
                      onChangeText={(text) =>
                        setProductData({ ...productData, quantity: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Screen Size"
                      onChangeText={(text) =>
                        setProductData({ ...productData, screen_size: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="Storage"
                      onChangeText={(text) =>
                        setProductData({ ...productData, storage: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="CPU"
                      onChangeText={(text) =>
                        setProductData({ ...productData, cpu: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="OS"
                      onChangeText={(text) =>
                        setProductData({ ...productData, os: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="GPU"
                      onChangeText={(text) =>
                        setProductData({ ...productData, gpu: text })
                      }
                    />
                    <TextInput
                      style={styles.input}
                      placeholder="RAM"
                      onChangeText={(text) =>
                        setProductData({ ...productData, ram: text })
                      }
                    />
                    {/* Add other laptop-specific fields */}
                  </ScrollView>
                </>
              ) : (
                <>{/* Render RAM-specific form fields */}</>
              )}

              {/* Common fields */}
              <Button title="Add" onPress={handleAddProduct} color="black" />
            </View>
          </View>
        </Modal>
      </View>
      <BottomAdminNavigator />
    </>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  heading: {
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 20,
    color: "black",
  },
  addButton: {
    backgroundColor: "black",
    padding: 10,
    borderRadius: 5,
    marginTop: 20,
  },
  addButtonText: {
    color: "white",
    fontSize: 18,
  },
  modalContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "rgba(0,0,0,0.5)",
  },
  modalContent: {
    backgroundColor: "white",
    padding: 20,
    borderRadius: 10,
    width: "70%",
  },
  closeButton: {
    backgroundColor: "black",
    padding: 10,
    borderRadius: 5,
    alignSelf: "flex-end",
    marginBottom: 10,
  },
  closeButtonText: {
    color: "white",
  },
  modalHeading: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  optionButton: {
    backgroundColor: "#ddd",
    padding: 10,
    borderRadius: 5,
    marginVertical: 5,
  },
  selectedOption: {
    backgroundColor: "teal",
    color: "white",
  },
  input: {
    borderColor: "black",
    borderWidth: 1,
    borderRadius: 5,
    padding: 10,
    marginBottom: 10,
  },
  scrollView: {
    maxHeight: 400, // Set the maximum height you prefer
  },
  scrollViewProduct: {
    maxHeight: 700,
  },
});

export default Products;
