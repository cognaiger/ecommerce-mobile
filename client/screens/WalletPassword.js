import {
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  PanResponder,
  TextInput,
} from "react-native";
import React, { useState, useRef } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
import ProductCart from "../components/productCart";
import BigButton from "../components/BigButton";
import { Ionicons } from "@expo/vector-icons";
const WalletPassword = () => {
  const backButtonLink = "client/assets/Back.png";
  const navigation = useNavigation();
  const [totalPrice, setTotalPrice] = useState(33000);
  const [walletPassword, setWalletPassword] = useState("");
  const turnBack = () => {
    navigation.goBack();
  };
  const handlePayment = () => {
    // Perform payment logic here

    navigation.navigate("PaymentSuccessful");
  };
  return (
    <SafeAreaView
      style={{
        flex: 1,
      }}
    >
      <View style={styles.topBar}>
        <TouchableOpacity onPress={turnBack}>
          <Image source={require(backButtonLink)}></Image>
        </TouchableOpacity>
        <Text
          style={{
            fontSize: 14,
            fontWeight: 700,
          }}
        >
          Checkout
        </Text>
      </View>
      <ScrollView>
        <View style={styles.items}>
          <Text style={styles.label}>Enter Wallet Password</Text>
          <TextInput
            style={styles.input}
            placeholder="Wallet Password"
            secureTextEntry={true}
            value={walletPassword}
            onChangeText={setWalletPassword}
          />
        </View>
      </ScrollView>
      <View style={styles.bottom}>
        <TouchableOpacity
          style={[styles.button, styles.buyNowButton]}
          onPress={handlePayment}
        >
          <View style={styles.buttonContent}>
            <Text style={styles.buttonTextBuyNow}>Pay $3250</Text>
          </View>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
  );
};

export default WalletPassword;

const styles = StyleSheet.create({
  topBar: {
    flexDirection: "row",
    alignItems: "center",
    padding: 10,
    gap: 10,
    borderColor: "#000",
    borderBottomWidth: 1,
  },
  items: {
    padding: 30,
    gap: 30,
  },
  bottom: {
    alignItems: "center",
    gap: 20,
    padding: 15,
  },
  totalPrice: {
    flexDirection: "row",
    justifyContent: "space-between",
    gap: 180,
  },
  priceText: {
    fontSize: 18,
    fontWeight: "700",
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
  button: {
    width: 300,
    height: 50,
    paddingVertical: 14,
    paddingHorizontal: 15,
    borderRadius: 4,
    borderWidth: 1,
    gap: 10,
  },
  iconContainer: {
    marginLeft: 10,
    marginBottom: 7,
  },
  buttonContent: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
  },
});
