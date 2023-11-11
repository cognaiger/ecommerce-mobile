import React, { useState, useRef } from "react";
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
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
import ProductCart from "../components/productCart";
import BigButton from "../components/BigButton";
import { Ionicons } from "@expo/vector-icons";
import BottomNavigator from "../components/BottomNavigator";

const OrderStatus = () => {
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

  // Example orders data
  const orders = [
    {
      orderNo: "123456",
      products: ["Product 1", "Product 2", "Product 3"],
      totalPayment: 100.0,
      status: "Delivered",
      statusColor: "green",
    },
    {
      orderNo: "789012",
      products: ["Product 4", "Product 5"],
      totalPayment: 50.0,
      status: "Shipping",
      statusColor: "blue",
    },
    {
      orderNo: "345678",
      products: ["Product 6"],
      totalPayment: 20.0,
      status: "Preparing",
      statusColor: "orange",
    },
    {
      orderNo: "901234",
      products: ["Product 7", "Product 8"],
      totalPayment: 75.0,
      status: "Cancelled",
      statusColor: "red",
    },
  ];

  return (
    <SafeAreaView style={{ flex: 1 }}>
      <View style={styles.topBar}>
        <TouchableOpacity onPress={turnBack}>
          <Image source={require(backButtonLink)} />
        </TouchableOpacity>
        <Text style={{ fontSize: 14, fontWeight: "700" }}>Order status</Text>
      </View>
      <ScrollView>
        <View style={styles.items}>
          {orders.map((order, index) => (
            <View key={index} style={[styles.orderCard, { borderColor: order.statusColor }]}>
              <Text style={[styles.orderNo, { color: order.statusColor }]}>
                Order No: {order.orderNo}
              </Text>
              <Text style={styles.products}>Products: {order.products.join(", ")}</Text>
              <Text style={styles.totalPayment}>
                Total Payment: ${order.totalPayment}
              </Text>
              <Text style={[styles.status, { color: order.statusColor }]}>
                Status: {order.status}
              </Text>
            </View>
          ))}
        </View>
      </ScrollView>
      <BottomNavigator />
    </SafeAreaView>
  );
};

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
  orderCard: {
    borderWidth: 1,
    borderRadius: 10,
    padding: 10,
  },
  orderNo: {
    fontSize: 16,
    fontWeight: "bold",
  },
  products: {
    marginTop: 5,
  },
  totalPayment: {
    marginTop: 5,
  },
  status: {
    marginTop: 5,
    fontWeight: "bold",
  },
});

export default OrderStatus;