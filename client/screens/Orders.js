import React, { useState, useEffect } from "react";
import { View, Text, FlatList, StyleSheet } from "react-native";
import OrderCard from "../components/OrderCard";
import BottomAdminNavigator from "../components/BottomAdminNavigator";
import { IP } from "../const";

const Orders = () => {
  const [orders, setOrders] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    // Fetch product data from the API
    fetch(`http://${IP}:8080/ecommerce/api/v1/orders`)
      .then((response) => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json(); // Parse the JSON response
      })
      .then((data) => {
        setOrders(data);
       
        
        console.log(data); // Now you can access the JSON data
        console.log(loading);
      })
      .catch((error) =>
        console.error("Error fetching product data: ", error)
      );
  }, []);

  return (
    <>
    <View style={styles.container}>
      <Text style={styles.heading}>Orders</Text>
      {loading ? (
        <Text>Loading...</Text>
      ) : (
        <FlatList
          data={orders}
          keyExtractor={(item) => item.orderId}
          renderItem={({ item }) => (
            <OrderCard order={item} onUpdateStatus={(orderId, newStatus) => {
              // Implement logic to update order status here
              // You can make a PUT request to the API to update the status
              console.log("Updating status of order:", orderId, "to", newStatus);
            }} />
          )}
        />
      )}
    </View>
    <BottomAdminNavigator/>
    </>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: "#fff",
  },
  heading: {
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 20,
  },
});

export default Orders;