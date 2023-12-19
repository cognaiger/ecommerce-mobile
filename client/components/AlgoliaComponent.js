import React from "react";
import { Text, TouchableOpacity } from "react-native";
import { useNavigation } from "@react-navigation/native";

const AlgoliaComponent = (props) => {
  const navigation = useNavigation();

  const handlePress = () => {
    // Navigate to ProductDetail
    navigation.navigate("ProductDetail", {
      productId: props.productID,
    });

    // Close the SearchModal
    if (props.onPress) {
      props.onPress();
    }
  };

  return (
    <>
      <TouchableOpacity onPress={handlePress}>
        <Text>{props.cleanedProductName}</Text>
      </TouchableOpacity>
    </>
  );
};

export default AlgoliaComponent;
