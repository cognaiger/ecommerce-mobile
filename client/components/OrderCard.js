import React, { useState } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  Modal,
  Button,
  StyleSheet,
} from "react-native";

const OrderCard = ({ order, onUpdateStatus }) => {
  const [modalVisible, setModalVisible] = useState(false);
  const [newStatus, setNewStatus] = useState(order.lastStatus);
  const [selectedItem, setSelectedItem] = useState(null);

  const handleEdit = () => {
    setModalVisible(true);
  };

  const handleSave = () => {
    onUpdateStatus(order.orderId, newStatus);
    setModalVisible(false);
  };

  const handleItemClick = (status) => {
    console.log(status);
    setSelectedItem(status);
    setNewStatus(status);
  };

  return (
    <View style={styles.cardContainer}>
      <Text style={styles.orderId}>Order ID: {order.orderId}</Text>
      <Text style={styles.status}>Status: {order.lastStatus}</Text>
      <TouchableOpacity onPress={handleEdit} style={styles.editButton}>
        <Text>Edit Status</Text>
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
            <Text style={styles.modalHeading}>Update Order Status:</Text>
            <TouchableOpacity
              onPress={() => handleItemClick("IN_CART")}
              style={[
                styles.dropdownItem,
                selectedItem === "IN_CART" && { backgroundColor: "lightgray" },
              ]}
            >
              <Text
                style={[
                  styles.dropdownText,
                  selectedItem === "IN_CART" && { color: "black" },
                ]}
              >
                IN_CART
              </Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={() => handleItemClick("RECEIVED")}
              style={[
                styles.dropdownItem,
                selectedItem === "RECEIVED" && { backgroundColor: "lightgray" },
              ]}
            >
              <Text
                style={[
                  styles.dropdownText,
                  selectedItem === "RECEIVED" && { color: "black" },
                ]}
              >
                RECEIVED
              </Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={() => handleItemClick("DELIVERING")}
              style={[
                styles.dropdownItem,
                selectedItem === "DELIVERING" && {
                  backgroundColor: "lightgray",
                },
              ]}
            >
              <Text
                style={[
                  styles.dropdownText,
                  selectedItem === "DELIVERING" && { color: "black" },
                ]}
              >
                DELIVERING
              </Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={() => handleItemClick("COMPLETED")}
              style={[
                styles.dropdownItem,
                selectedItem === "COMPLETED" && {
                  backgroundColor: "lightgray",
                },
              ]}
            >
              <Text
                style={[
                  styles.dropdownText,
                  selectedItem === "COMPLETED" && { color: "black" },
                ]}
              >
                COMPLETED
              </Text>
            </TouchableOpacity>
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
  orderId: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  status: {
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
  modalHeading: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  dropdownItem: {
    padding: 10,
    borderBottomWidth: 1,
    borderBottomColor: "lightgray",
  },
  dropdownText: {
    fontSize: 16,
  },
});

export default OrderCard;
