import {
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  PanResponder,
} from "react-native";
import React, { useState, useRef } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
import ProductCart from "../components/productCart";
import BigButton from "../components/BigButton";
import { Ionicons } from "@expo/vector-icons";
const Checkout = () => {
  const backButtonLink = "client/assets/Back.png";
  const navigation = useNavigation();
  const [totalPrice, setTotalPrice] = useState(33000);

  const turnBack = () => {
    navigation.goBack();
  };

  const handleNavigateWalletPassword = () => {
    navigation.navigate("WalletPassword");
  };

  const [selectedPaymentMethod, setSelectedPaymentMethod] = useState("");

  const handlePaymentMethodSelect = (method) => {
    setSelectedPaymentMethod(method);
  };

  const paymentMethods = [
    {
      name: "momo",
      image: require("client/assets/momo.png"),
    },
    {
      name: "paypal",
      image: require("client/assets/paypal.png"),
    },
    {
      name: "cod",
      image: require("client/assets/cod.png"),
    },
  ];
  const addresses = [
    {
      type: "Home",
      phoneNumber: "1234567890",
      address: "123 Street, City, Country",
    },
    {
      type: "Office",
      phoneNumber: "0987654321",
      address: "456 Street, City, Country",
    },
  ];

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
      <ScrollView contentContainerStyle={styles.container}>
        <View style={styles.deliveryAddressContainer}>
          <Text style={styles.sectionTitle}>Delivery Address</Text>
          {addresses.map((address, index) => (
            <View style={styles.addressCard} key={index}>
              <View style={styles.addressCardContent}>
                <Text style={styles.addressType}>{address.type}</Text>
                <Text>{address.phoneNumber}</Text>
                <Text>{address.address}</Text>
              </View>
              <TouchableOpacity style={styles.editIconContainer}>
                <Ionicons name="ios-create-outline" size={20} color="gray" />
              </TouchableOpacity>
            </View>
          ))}
        </View>

        <View style={styles.billingInfoContainer}>
          <Text style={styles.sectionTitle}>Billing Information</Text>
          <View style={styles.billingInfoRow}>
            <Text style={styles.billingInfoLabel}>Delivery Fee:</Text>
            <Text style={styles.billingInfoValue}>$50</Text>
          </View>
          <View style={styles.billingInfoRow}>
            <Text style={styles.billingInfoLabel}>Subtotal:</Text>
            <Text style={styles.billingInfoValue}>$3200</Text>
          </View>
          <View style={styles.billingInfoRow}>
            <Text style={[styles.billingInfoLabel, styles.totalLabel]}>
              Total:
            </Text>
            <Text style={[styles.billingInfoValue, styles.totalValue]}>
              $3250
            </Text>
          </View>
        </View>

        <View style={styles.paymentMethodContainer}>
          <Text style={styles.sectionTitle}>Payment Method</Text>
          <View style={styles.paymentIconsContainer}>
            {paymentMethods.map((method, index) => (
              <TouchableOpacity
                key={index}
                style={styles.paymentIconContainer}
                onPress={() => handlePaymentMethodSelect(method.name)}
              >
                <Image
                  source={method.image}
                  style={[
                    styles.paymentIcon,
                    selectedPaymentMethod === method.name &&
                      styles.selectedPaymentIcon,
                  ]}
                  resizeMode="contain"
                />
                {selectedPaymentMethod === method.name && (
                  <Ionicons
                    name="ios-checkmark-circle"
                    size={24}
                    color="green"
                    style={styles.checkmarkIcon}
                  />
                )}
              </TouchableOpacity>
            ))}
          </View>
        </View>
      </ScrollView>
      <View style={styles.bottom}>
        <TouchableOpacity
          style={[
            styles.button,
            styles.buyNowButton,
            { backgroundColor: "black" },
          ]}
          onPress={handleNavigateWalletPassword}
        >
          <View style={styles.buttonContent}>
            <Text style={[styles.buttonTextBuyNow, { color: "white" }]}>
              Continue to payment
            </Text>
          </View>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
  );
};

export default Checkout;

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
  container: {
    flexGrow: 1,
    padding: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  deliveryAddressContainer: {
    marginBottom: 20,
  },
  addressCard: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    borderWidth: 1,
    borderColor: "lightgray",
    borderRadius: 8,
    paddingHorizontal: 16,
    paddingVertical: 12,
    marginBottom: 10,
  },
  addressCardContent: {
    flex: 1,
  },
  addressType: {
    fontWeight: "bold",
    marginBottom: 4,
  },
  editIconContainer: {
    marginLeft: 10,
  },
  billingInfoContainer: {
    marginBottom: 20,
  },
  billingInfoRow: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginBottom: 8,
  },
  billingInfoLabel: {
    flex: 1,
    textAlign: "left",
  },
  billingInfoValue: {
    flex: 1,
    textAlign: "right",
  },
  totalLabel: {
    fontWeight: "bold",
  },
  totalValue: {
    fontWeight: "bold",
    color: "blue",
  },
  paymentMethodContainer: {
    marginBottom: 20,
  },
  paymentIconsContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
  },
  paymentIcon: {
    width: 100,
    height: 50,
  },
  paymentIconContainer: {
    position: "relative",
  },
  paymentIcon: {
    width: 100,
    height: 50,
  },
  selectedPaymentIcon: {
    borderWidth: 2,
    borderColor: "green",
    borderRadius: 8,
  },
  checkmarkIcon: {
    position: "absolute",
    top: 8,
    right: 8,
    zIndex: 1,
  },
});
