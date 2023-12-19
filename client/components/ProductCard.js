import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
  Pressable,
} from "react-native";
import { FontFamily } from "../GlobalStyles";
import { useNavigation } from "@react-navigation/native";

const ProductCard = (props) => {
  const navigation = useNavigation();

  return (
    <View style={styles.productCard}>
      <Pressable
        onPress={() => {
          navigation.navigate("ProductDetail", {
            productId: props.productId,
          });
        }}
      >
        <Image source={props.imgLink} style={styles.productImage} />
        <Text style={styles.productName}>{props.name}</Text>
        <Text style={styles.productPrice}>{props.price}</Text>
      </Pressable>
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
