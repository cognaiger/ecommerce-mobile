import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  Image,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { IP } from "../const";

const ProductDetailsScreen = ({ route, navigation }) => {
  const { productId } = route.params;
  console.log("id: ", route.params);
  const productImgLink = "client/assets/ideapad.jpg";
  const backButtonLink = "client/assets/Back.png";
  const wishlistButtonLink = "client/assets/wishlist.png";
  const wishlistAddedButtonLink = "client/assets/wishlist_added.png";
  const starReviewIconLink = "client/assets/review_star.png";
  // const navigation = useNavigation();

  const [product, setProduct] = useState(null);
  const [productUnit, setProductUnit] = useState(1);
  const [clickWishlist, setClickWishlist] = useState(false);

  useEffect(() => {
    // Fetch product details from the API based on productId
    fetch(`http://${IP}:8080/ecommerce/api/v1/products/${productId}`)
      .then((response) => response.json())
      .then((data) => setProduct(data))
      .catch((error) =>
        console.error("Error fetching product details:", error)
      );
  }, [productId]);
  const handleBackButtonPress = () => {
    navigation.goBack();
  };

  const handleWishlistButtonPress = () => {
    setClickWishlist(!clickWishlist);
  };

  const handleDecreaseQuantity = () => {
    // Handle decrease quantity button press
    if (productUnit > 1) {
      setProductUnit(productUnit - 1);
    }
  };

  const handleIncreaseQuantity = () => {
    // Handle increase quantity button press
    setProductUnit(productUnit + 1);
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView>
        <TouchableOpacity
          style={styles.backButton}
          onPress={handleBackButtonPress}
        >
          {/* Render your back button icon/image here */}
          <Image source={require(backButtonLink)} />
        </TouchableOpacity>
        <TouchableOpacity
          style={styles.wishlistButton}
          onPress={handleWishlistButtonPress}
        >
          {/* Render your wishlist button icon/image here */}
          {clickWishlist === false ? (
            <Image source={require(wishlistButtonLink)} />
          ) : (
            <Image source={require(wishlistAddedButtonLink)} />
          )}
        </TouchableOpacity>
        {product ? (
          <>
            <Image source={{ uri: product.imageLink }} style={styles.image} />
            <Text style={styles.title}>{product.name}</Text>
            <Text style={styles.subtitle}>{product.description}</Text>
            <View style={styles.priceContainer}>
              <Text style={styles.price}>${product.price}</Text>
              <View style={styles.quantityContainer}>
                <TouchableOpacity onPress={handleDecreaseQuantity}>
                  <Text style={styles.quantityButton}>-</Text>
                </TouchableOpacity>
                <Text style={styles.quantityValue}>{productUnit}</Text>
                <TouchableOpacity onPress={handleIncreaseQuantity}>
                  <Text style={styles.quantityButton}>+</Text>
                </TouchableOpacity>
              </View>
            </View>
            <View style={styles.reviewContainer}>
              <Image
                source={require(starReviewIconLink)}
                style={styles.starIcon}
              />
              <Text style={styles.reviewText}>4.5</Text>
              <Text style={styles.reviewCount}>(50 reviews)</Text>
            </View>
            <View style={styles.table}>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>Brand</Text>
                <Text style={styles.tableValue}>{product.brand.brandName}</Text>
              </View>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>Screen Size</Text>
                <Text style={styles.tableValue}>16 Inches</Text>
              </View>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>Hard Disk Size</Text>
                <Text style={styles.tableValue}>{product.quantity} GB</Text>
              </View>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>CPU Model</Text>
                <Text style={styles.tableValue}>Core i7 Family</Text>
              </View>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>Operating System</Text>
                <Text style={styles.tableValue}>Windows 11 Home</Text>
              </View>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>Special Feature</Text>
                <Text style={styles.tableValue}>Backlit Keyboard</Text>
              </View>
              <View style={styles.tableRow}>
                <Text style={styles.tableLabel}>Graphics Card Description</Text>
                <Text style={styles.tableValue}>Dedicated</Text>
              </View>
            </View>
            <Text style={styles.description}>{product.description}</Text>
          </>
        ) : (
          <Text>Loading...</Text>
        )}
        <View style={styles.buttonContainer}>
          <TouchableOpacity style={[styles.button, styles.addToCartButton]}>
            <Text style={styles.buttonTextAddToCart}>Add to Cart</Text>
          </TouchableOpacity>
          <TouchableOpacity style={[styles.button, styles.buyNowButton]}>
            <Text style={styles.buttonTextBuyNow}>Buy Now</Text>
          </TouchableOpacity>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  backButton: {
    position: "absolute",
    borderRadius: 4,
    padding: 8,
  },
  wishlistButton: {
    position: "absolute",
    right: 16,
  },
  image: {
    width: 360,
    height: 300,
    marginTop: 64,
  },
  reviewContainer: {
    flexDirection: "row",
    alignItems: "center",
    marginTop: 16,
  },
  starIcon: {
    width: 20,
    height: 20,
    marginRight: 4,
  },
  reviewText: {
    fontSize: 16,
    fontWeight: "bold",
    marginRight: 4,
  },
  reviewCount: {
    fontSize: 16,
    color: "#888888",
  },
  title: {
    color: "#23A6F0",
    fontSize: 24,
    fontWeight: "bold",
    textAlign: "center",
    marginTop: 16,
  },
  subtitle: {
    fontSize: 16,
    fontWeight: "700",
    lineHeight: 24,
    letterSpacing: 0.1,
    textAlign: "left",
    marginTop: 16,
  },
  table: {
    marginTop: 16,
  },
  tableRow: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginBottom: 8,
  },
  tableLabel: {
    flex: 1,
    fontSize: 14,
    fontWeight: "800",
    lineHeight: 19,
    letterSpacing: 0,
    textAlign: "left",
  },
  tableValue: {
    flex: 1,
    fontSize: 14,
    fontWeight: "300",
    lineHeight: 19,
    letterSpacing: 0,
    textAlign: "left",
  },
  description: {
    fontSize: 14,
    fontWeight: "800",
    lineHeight: 19,
    letterSpacing: 0,
    textAlign: "left",
    marginTop: 16,
  },
  priceContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginTop: 16,
  },
  price: {
    fontSize: 18,
    fontWeight: "bold",
  },
  quantityContainer: {
    flexDirection: "row",
    alignItems: "center",
  },
  quantityButton: {
    fontSize: 24,
    paddingHorizontal: 8,
  },
  quantityValue: {
    fontSize: 18,
    fontWeight: "bold",
    paddingHorizontal: 8,
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

export default ProductDetailsScreen;
