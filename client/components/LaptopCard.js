import React, { useState } from "react";
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Modal,
  TextInput,
  Button,
  ScrollView,
  Image,
} from "react-native";

const LaptopCard = ({ product }) => {
  const [modalVisible, setModalVisible] = useState(false);
  const [editedProduct, setEditedProduct] = useState(product);

  const handleEdit = () => {
    setModalVisible(true);
  };

  const handleSave = () => {
    // Implement logic to save the edited product
    // You can send a request to your backend API to update the product
    // and handle success/failure accordingly
    console.log("Saving edited product:", editedProduct);
    // Close the modal
    setModalVisible(false);
  };

  return (
    <View style={styles.cardContainer}>
      <Text style={styles.productName}>{product.name}</Text>
      <View style={styles.productInfoContainer}>
        
        <View style={styles.textContainer}>
          <Text style={styles.productPrice}>Price: ${product.price}</Text>
          <Text style={styles.productQuantity}>
            Quantity: {product.quantity}
          </Text>
        </View>
        <Image
          source={{ uri: product.imageLink }}
          style={styles.productImage}
        />
      </View>

      <TouchableOpacity onPress={handleEdit} style={styles.editButton}>
        <Text>Edit</Text>
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
            {/* Render form fields for editing the product */}
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
            {/* Add more fields for editing */}
            <Button title="Save" onPress={handleSave} color="black" />
          </View>
        </View>
      </Modal>
    </View>
  );
};

const styles = StyleSheet.create({
  cardContainer: {
    width: 350,
    backgroundColor: "white",
    borderRadius: 10,
    padding: 20,
    marginBottom: 20,
    shadowColor: "black",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.2,
    shadowRadius: 4,
    elevation: 3,
  },
  productName: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  productPrice: {
    fontSize: 16,
    marginBottom: 5,
  },
  productQuantity: {
    fontSize: 16,
    marginBottom: 10,
  },
  editButton: {
    color: "white",
    backgroundColor: "teal",
    padding: 10,
    borderRadius: 5,
    marginTop: 10,
    alignSelf: "flex-start",
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
  productImage: {
    width: 20,
    height: 20,
  },
  productInfoContainer: {
    flexDirection: 'row', // Arrange children in a row
    alignItems: 'center', // Align children vertically in the center
  },
  productImage: {
    width: 120, // Adjust the width as needed
    height: 120, // Adjust the height as needed
    marginRight: 5, // Add some spacing between the image and text
  },
  textContainer: {
    flex: 1, // Take remaining space in the row
  },
});

export default LaptopCard;
