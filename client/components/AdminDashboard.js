import React, { useEffect, useState } from "react";
import { ScrollView, View, Text } from "react-native";
import StatisticCard from "./StatisticCard";
import { IP } from "../const";

const AdminDashboard = () => {
  const [productCount, setProductCount] = useState(0);
  const [userCount, setUserCount] = useState(0);
  const [completedOrderCount, setCompletedOrderCount] = useState(0);

  useEffect(() => {
    // Fetch product count
    fetch(`http://${IP}:8080/ecommerce/api/v1/stats/product-count`)
      .then((response) => response.json())
      .then((data) => {
        setProductCount(data.count);
        console.log("Product count response:", data);
      })
      .catch((error) => console.error("Error fetching product count: ", error));

    // Fetch user count
    fetch(`http://${IP}:8080/ecommerce/api/v1/stats/user-count`)
      .then((response) => response.json())
      .then((data) => {
        setUserCount(data.count);
        console.log("User count response:", data);
      })
      .catch((error) => console.error("Error fetching user count: ", error));

    // Fetch completed order count
    fetch(
      `http://${IP}:8080/ecommerce/api/v1/stats/completed-order-count`
    )
      .then((response) => response.json())
      .then((data) => {
        setCompletedOrderCount(data.count);
        console.log("Completed order count response:", data);
      })
      .catch((error) =>
        console.error("Error fetching completed order count: ", error)
      );
  }, []);

  const productData = {
    title: "Number of Products",
    value: productCount,
    chartData: {
      labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
      datasets: [
        {
          data: [10, 15, 30, 25, 40, 35],
        },
      ],
    },
  };

  const customerData = {
    title: "Number of Customers",
    value: userCount,
    chartData: {
      labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
      datasets: [
        {
          data: [20, 25, 50, 45, 60, 55],
        },
      ],
    },
  };

  const canceledData = {
    title: "Number of Completed Orders",
    value: completedOrderCount,
    chartData: {
      labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
      datasets: [
        {
          data: [5, 8, 10, 7, 12, 11],
        },
      ],
    },
  };

  return (
    <ScrollView>
      <View style={{ padding: 16 }}>
        <StatisticCard {...productData} />
        <StatisticCard {...customerData} />
        <StatisticCard {...canceledData} />
        {/* Add more statistic cards as needed */}
      </View>
    </ScrollView>
  );
};

export default AdminDashboard;