import React, { useState } from "react";
import {
  View,
  TouchableOpacity,
  Text,
  StyleSheet,
  Image,
  Modal,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";

const FilterAndSort = () => {
  const filterIcon = "client/assets/filter.png";
  const sortIcon = "client/assets/sort.png";

  const [modalVisible, setModalVisible] = useState(false);
  const [filterTitle, setFilterTitle] = useState("Filter");
  const [filterCriterias, setFilterCriterias] = useState([
    { title: "Series", options: ["Zenbook", "Vivobook", "ROG", "TUF Gaming"] },
    { title: "Release date", options: ["Option 1", "Option 2", "Option 3"] },
    { title: "Color", options: ["Option 1", "Option 2", "Option 3"] },
    { title: "Screen Size", options: ["Option 1", "Option 2", "Option 3"] },
    { title: "Processor", options: ["Option 1", "Option 2", "Option 3"] },
    { title: "RAM", options: ["Option 1", "Option 2", "Option 3"] },
    { title: "Storage", options: ["Option 1", "Option 2", "Option 3"] },
  ]);

  const [sortCriterias, setSortCriterias] = useState([
    { title: "Series"},
    { title: "Release date"},
    { title: "Color"},
    { title: "Screen Size" },
    { title: "Processor"},
    { title: "RAM"},
    { title: "Storage"},
  ]);

  const openModal = (title) => {
    setFilterTitle(`${title}`);
    setModalVisible(true);
  };

  const closeModal = () => {
    setModalVisible(false);
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.tab} onPress={() => openModal("Filter")}>
        <Image source={require(filterIcon)}></Image>
        <Text style={styles.tabText}>Filter</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.tab} onPress={() => openModal("Sort by")}>
        <Image source={require(sortIcon)}></Image>
        <Text style={styles.tabText}>Sort by</Text>
      </TouchableOpacity>

      {/* Filter Modal */}
      <Modal visible={modalVisible} animationType="slide" transparent={true}>
      
        <View style={styles.modalContainer}>
          <View style={styles.modalContent}>
            <Text style={styles.modalTitle}>{filterTitle}</Text>
            {filterCriterias.map((criteria, index) => (
              <TouchableOpacity
                onPress={() => openModal(criteria.title)}
                key={index}
                style={styles.criteriaItem}
              >
                <Text>{criteria.title}</Text>
              </TouchableOpacity>
            ))}
            <TouchableOpacity style={styles.closeButton} onPress={closeModal}>
              <Text style={styles.closeButtonText}>Clear all</Text>
            </TouchableOpacity>
            <TouchableOpacity style={styles.closeButton} onPress={closeModal}>
              <Text style={styles.closeButtonText}>Done</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    height: 60,
    borderTopWidth: 1,
    backgroundColor: "white",
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
  modalContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "rgba(0, 0, 0, 0.5)",
  },
  modalContent: {
    backgroundColor: "white",
    padding: 20,
    borderRadius: 10,
    width: "80%",
  },
  modalTitle: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  criteriaItem: {
    paddingVertical: 10,
    borderBottomWidth: 1,
    borderColor: "#ccc",
  },
  closeButton: {
    marginTop: 20,
    alignSelf: "flex-end",
  },
  closeButtonText: {
    color: "black",
    fontWeight: "bold",
  },
});

export default FilterAndSort;
