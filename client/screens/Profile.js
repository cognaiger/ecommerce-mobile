import React, { useState } from "react";
import {
  View,
  Text,
  Image,
  StyleSheet,
  TouchableOpacity,
  Modal,
  TextInput,
  Button,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
import BottomNavigator from "../components/BottomNavigator";
import AuthService from "../services/auth.service";
const Profile = () => {
  const backButtonLink = "client/assets/Back.png";
  const navigation = useNavigation();

  const [isEditModalVisible, setEditModalVisible] = useState(false);
  const [editedUserData, setEditedUserData] = useState({
    username: "JohnDoe", // Sample data, replace with actual user data
    email: "johndoe@example.com",
    phone: "123-456-7890",
    address: "123 Main St",
  });

  const turnBack = () => {
    navigation.goBack();
  };

  const handleEditPress = () => {
    setEditModalVisible(true);
  };

  const handleSaveChanges = () => {
    // Handle saving changes to the backend here
    // You can update the editedUserData and send it to your API
    setEditModalVisible(false);
  };

  const handleMyOrdersPress = () => {
    // Navigate to the OrderStatus screen
    navigation.navigate("OrderStatus");
  };

  const handleSignOut = () => {
    // Call the AuthService logout function
    AuthService.logout()
      .then(() => {
        // Navigate to the Login screen
        navigation.navigate("Login");
      })
      .catch((error) => {
        // Handle any errors that occur during sign-out
        console.error("Error during sign-out:", error);
      });
  };

  return (
    <>
      <SafeAreaView style={{ flex: 1, marginBottom: 16 }}>
        <View style={styles.topBar}>
          <TouchableOpacity onPress={turnBack}>
            <Image source={require(backButtonLink)} />
          </TouchableOpacity>
          <Text style={{ fontSize: 14, fontWeight: "700" }}>Profile</Text>
          <TouchableOpacity onPress={handleEditPress}>
            <Text style={{ fontSize: 14, fontWeight: "700", color: "blue" }}>
              Edit
            </Text>
          </TouchableOpacity>
        </View>

        <View style={styles.userInfo}>
          <Text style={styles.label}>Username:</Text>
          <Text style={styles.value}>{editedUserData.username}</Text>

          <Text style={styles.label}>Email:</Text>
          <Text style={styles.value}>{editedUserData.email}</Text>

          <Text style={styles.label}>Phone:</Text>
          <Text style={styles.value}>{editedUserData.phone}</Text>

          <Text style={styles.label}>Address:</Text>
          <Text style={styles.value}>{editedUserData.address}</Text>
        </View>

        <View style={styles.buttonsContainer}>
          <TouchableOpacity
            style={[styles.button, { backgroundColor: "black", flex: 1 }]}
            onPress={handleMyOrdersPress}
          >
            <Text style={styles.buttonText}>View Orders</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, { backgroundColor: "red", flex: 1 }]}
            onPress={handleSignOut}
          >
            <Text style={styles.buttonText}>Sign Out</Text>
          </TouchableOpacity>
        </View>

        <Modal visible={isEditModalVisible} animationType="slide">
          <View style={styles.modalContainer}>
            <Text style={styles.label}>Edit User Information:</Text>
            <TextInput
              style={styles.input}
              placeholder="Username"
              value={editedUserData.username}
              onChangeText={(text) =>
                setEditedUserData({ ...editedUserData, username: text })
              }
            />
            <TextInput
              style={styles.input}
              placeholder="Email"
              value={editedUserData.email}
              onChangeText={(text) =>
                setEditedUserData({ ...editedUserData, email: text })
              }
            />
            <TextInput
              style={styles.input}
              placeholder="Phone"
              value={editedUserData.phone}
              onChangeText={(text) =>
                setEditedUserData({ ...editedUserData, phone: text })
              }
            />
            <TextInput
              style={styles.input}
              placeholder="Address"
              value={editedUserData.address}
              onChangeText={(text) =>
                setEditedUserData({ ...editedUserData, address: text })
              }
            />
            <Button title="Save Changes" onPress={handleSaveChanges} />
          </View>
        </Modal>
      </SafeAreaView>
      <BottomNavigator />
    </>
  );
};

export default Profile;

const styles = StyleSheet.create({
  topBar: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    padding: 10,
  },
  userInfo: {
    padding: 16,
    backgroundColor: "white",
  },
  label: {
    fontSize: 16,
    fontWeight: "600",
    marginBottom: 4,
  },
  value: {
    fontSize: 16,
    marginBottom: 16,
  },
  modalContainer: {
    flex: 1,
    justifyContent: "center",
    padding: 16,
  },
  input: {
    borderWidth: 1,
    borderColor: "black",
    marginBottom: 12,
    padding: 8,
    fontSize: 16,
  },
  buttonsContainer: {
    flexDirection: "row",
    marginTop: 16,
  },
  button: {
    alignItems: "center",
    padding: 12,
    margin: 8,
  },
  buttonText: {
    color: "white",
    fontSize: 16,
    fontWeight: "700",
  },
});
