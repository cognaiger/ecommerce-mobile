import React from "react";
import { View, TouchableOpacity, Text, StyleSheet, Image } from "react-native";
import { Ionicons } from "@expo/vector-icons";

const FilterAndSort = ({onSortPress}) => {
  const filterIcon = "client/assets/filter.png";
  const sortIcon = "client/assets/sort.png";
  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.tab}>
        <Image source={require(filterIcon)}></Image>
        <Text style={styles.tabText}>Filter</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.tab} onPress={onSortPress}>
        <Image source={require(sortIcon)}></Image>
        <Text style={styles.tabText}>Sort by</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    height: 60,
    borderTopWidth: 1,
    backgroundColor:'white'
  },
  tab: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  tabText: {
    fontWeight: "bold",
    fontSize: 12,
    marginTop: 2,
  },
});

export default FilterAndSort;
