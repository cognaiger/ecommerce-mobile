import React, { useState } from "react";
import { View, Text, StyleSheet, TouchableOpacity, Modal } from "react-native";

const FilterDetailModal = (props) => {
  const listOption = props.listOption;
  const filterTitle = props.filterTitle;

  return (
    <Modal
      isVisible={props.visible}
      onBackdropPress={props.toggleVisible}
      style={styles.modalContainer}
      backdropOpacity={0.5}
      animationIn="slideInUp"
      animationOut="slideOutDown"
      avoidKeyboard={true}
      useNativeDriverForBackdrop
    >
      <View style={styles.modalContent}>
        <Text style={styles.modalTitle}>{filterTitle}</Text>
        {listOption.map((option, index) => (
          <TouchableOpacity
            key={index}
            onPress={() => {
              props.toggleVisible;
            }} // Replace with your desired onPress logic
            style={styles.modalOption}
          >
            <Text style={styles.modalOptionText}>{option}</Text>
          </TouchableOpacity>
        ))}
      </View>
    </Modal>
  );
};

const styles = StyleSheet.create({
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
    flex: 1,
    borderRadius: 5,
    paddingVertical: 10,
    alignItems: "center",
    marginHorizontal: 5,
  },
  addToCartButton: {
    backgroundColor: "#ccc",
  },
  buttonTextAddToCart: {
    color: "#fff",
    fontSize: 16,
  },
  buyNowButton: {
    backgroundColor: "#000",
  },
  buttonTextBuyNow: {
    color: "#fff",
    fontSize: 16,
  },
});

export default FilterDetailModal;
