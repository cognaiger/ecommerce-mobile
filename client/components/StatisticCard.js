import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { LineChart, BarChart } from "react-native-chart-kit";

const StatisticCard = ({ title, value, chartData }) => {
  // Determine the chart type based on the title
  const isBarChart = title === "Number of Products"; // Replace with your condition

  const chartColor = isBarChart ? "#008080" : "#008080"; // Customize chart colors

  return (
    <View style={styles.card}>
      <Text style={styles.title}>{title}</Text>
      <Text style={styles.value}>{value}</Text>
      <View style={styles.chartContainer}>
        {isBarChart ? (
          <BarChart
            data={chartData}
            width={280} // Increase the width of the chart
            height={200} // Increase the height of the chart
            yAxisLabel=""
            chartConfig={{
              backgroundGradientFrom: "#fff",
              backgroundGradientTo: "#fff",
              color: (opacity = 1) => chartColor, // Use the selected color
              barPercentage: 0.8, // Adjust the width of the bars (0.8 means 80% width)
              barRadius: 5, // Adjust the corner radius of the bars
            }}
            showBarTops={false}
          />
        ) : (
          <LineChart
            data={chartData}
            width={280} // Increase the width of the chart
            height={200} // Increase the height of the chart
            yAxisLabel=""
            chartConfig={{
              backgroundGradientFrom: "#fff",
              backgroundGradientTo: "#fff",
              color: (opacity = 1) => chartColor, // Use the selected color
            }}
            bezier
          />
        )}
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  card: {
    height: 320, // Increase the height of the card container
    backgroundColor: "#fff",
    borderRadius: 10,
    padding: 10,
    marginBottom: 16,
    shadowColor: "#000",
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
  },
  title: {
    fontSize: 16,
    fontWeight: "bold",
    marginBottom: 8,
  },
  value: {
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 8,
  },
  chartContainer: {
    alignItems: "center",
  },
});

export default StatisticCard;
