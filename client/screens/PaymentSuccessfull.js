import React from "react";
import {
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
const CheckoutScreen = () => {
  const successImageLink = "client/assets/success.png";
  const navigation = useNavigation();
  const handleViewOrderStatus = () => {
    // Handle view order status logic here
  };

  const handleBackToHome = () => {
    // Handle navigate back to home logic here
    navigation.navigate("Home");
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView contentContainerStyle={styles.scrollViewContent}>
        <View style={styles.items}>
          <Image source={require(successImageLink)} style={styles.successImage} />
          <Text style={styles.congratulationsText}>Congratulations!!!</Text>
          <Text style={styles.paymentSuccessText}>Payment successful!</Text>
        </View>
      </ScrollView>
      <View style={styles.bottom}>
        <TouchableOpacity
          style={[styles.button, styles.buyNowButton]}
          onPress={handleViewOrderStatus}
        >
          <View style={styles.buttonContent}>
            <Text style={styles.buttonTextBuyNow}>View order status</Text>
          </View>
        </TouchableOpacity>

        <TouchableOpacity
          style={[styles.button, styles.backToHomeButton]}
          onPress={handleBackToHome}
        >
          <View style={styles.buttonContent}>
            <Text style={styles.buttonTextBackToHome}>Back to home</Text>
          </View>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  scrollViewContent: {
    flexGrow: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  items: {
    alignItems: "center",
    justifyContent: "center",
  },
  successImage: {
    width: 200,
    height: 200,
    resizeMode: "contain",
  },
  congratulationsText: {
    fontSize: 24,
    fontWeight: "bold",
    marginTop: 20,
  },
  paymentSuccessText: {
    fontSize: 18,
    fontWeight: "bold",
    marginTop: 10,
  },
  bottom: {
    alignItems: "center",
    padding: 15,
  },
  buyNowButton: {
    backgroundColor: "black",
  },
  backToHomeButton: {
    backgroundColor: "white",
    borderColor: "black",
    borderWidth: 1,
  },
  buttonTextBuyNow: {
    color: "white",
    textAlign: "center",
    fontWeight: "bold",
  },
  buttonTextBackToHome: {
    color: "black",
    textAlign: "center",
    fontWeight: "bold",
  },
  button: {
    width: 300,
    height: 50,
    paddingVertical: 14,
    paddingHorizontal: 15,
    borderRadius: 4,
    marginVertical: 10,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
  },
});

export default CheckoutScreen;