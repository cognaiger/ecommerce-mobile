import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
} from "react-native";
import { FontFamily } from "../GlobalStyles";

const ProductCard = (props) => {
  
  return (
    <View style={styles.productCard}>
      <Image source={ props.imgLink } style={styles.productImage} />
      <Text style={styles.productName}>{props.name}</Text>
      <Text style={styles.productPrice}>{props.price}</Text>
      <TouchableOpacity style={styles.addToCartButton}>
        <Text style={styles.addToCartButtonText}>Add to Cart</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
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
    fontFamily: FontFamily.h6,
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
});

export default ProductCard;
