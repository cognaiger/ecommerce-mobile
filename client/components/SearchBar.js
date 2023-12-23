import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
} from "react-native";

const SearchBar = ({ onSearch }) => {
  const [searchText, setSearchText] = useState("");

  const searchButtonLink = "client/assets/search.png";

  const handleSearch = () => {
    // Handle search logic here
    console.log("Search:", searchText);
    onSearch(searchText);
  };

  return (
    <View style={styles.searchBar}>
      <Image source={require(searchButtonLink)}></Image>
      <TextInput
        style={styles.searchInput}
        placeholder="Search Product Name"
        placeholderTextColor="#888"
        value={searchText}
        onChangeText={setSearchText}
        onSubmitEditing={handleSearch}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  searchBar: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: "#f2f2f2",
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
    marginTop: 10,
    marginBottom: 20,
  },
  searchIcon: {
    marginRight: 10,
  },
  searchInput: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    padding: 10,
    borderRadius: 20,
  },
});
export default SearchBar;
