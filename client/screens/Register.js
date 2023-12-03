import React, { useState } from "react";
import {
  Image,
  KeyboardAvoidingView,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
  Alert,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Color } from "../GlobalStyles";
import BigButton from "../components/BigButton";
import { CheckBox } from "@rneui/themed";
import axios from "axios";

const Register = ({ navigation }) => {
  const [email, setEmail] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [checked, setChecked] = useState(false);

  const handleSignUp = async () => {
    if (checked) {
      try {
        const response = await axios.post("http://192.168.1.211:8080/ecommerce/api/auth/signup", {
          username,
          email,
          password,
          role: ["user"],
        });
        Alert.alert("Success", "Account created successfully!");
        navigation.navigate("Login");
      } catch (error) {
        const errorMessage =
          error.response?.data?.message || error.message || "An error occurred during sign up";
        Alert.alert("Error", errorMessage);
      }
    } else {
      Alert.alert("Error", "You must accept the terms to continue");
    }
  };

  return (
    <SafeAreaView style={styles.container}>
      <View>
        <Image
          style={styles.img}
          source={{
            uri: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/laptop-design-template-cda7accc646c54c814336c40fecaa3a8_screen.jpg?ts=1626642018",
          }}
        />
      </View>

      <KeyboardAvoidingView>
        <View>
          <Text style={styles.heading}>Create account</Text>
        </View>

        <View style={styles.email}>
          <Text style={styles.label}>Email</Text>
          <TextInput
            value={email}
            style={styles.input}
            placeholder="Enter your email here"
            onChangeText={setEmail}
          />
        </View>

        <View style={styles.name}>
          <Text style={styles.label}>Username</Text>
          <TextInput
            value={username}
            style={styles.input}
            placeholder="Enter your username here"
            onChangeText={setUsername}
          />
        </View>

        <View style={styles.password}>
          <Text style={styles.label}>Password</Text>
          <TextInput
            secureTextEntry={true}
            value={password}
            style={styles.input}
            placeholder="Enter your password here"
            onChangeText={setPassword}
          />
        </View>

        <View style={styles.condition}>
          <CheckBox
            checked={checked}
            onPress={() => setChecked(!checked)}
            checkedIcon="dot-circle-o"
            uncheckedIcon="circle-o"
            title="I accept the terms"
            containerStyle={{ marginLeft: 0 }}
          />
        </View>

        <Pressable
          style={{ marginTop: 20 }}
          onPress={handleSignUp}
        >
          <BigButton title="Sign up" />
        </Pressable>

        <Pressable
          style={{ marginTop: 15 }}
          onPress={() => navigation.navigate("Login")}
        >
          <Text style={{ textAlign: "center", fontSize: 16 }}>
            Already have an account? Log in
          </Text>
        </Pressable>
      </KeyboardAvoidingView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Color.lightPrimary,
    alignItems: "center",
    marginTop: 0,
  },
  img: {
    height: 46,
    width: 46,
    marginTop: 45,
    marginLeft: 300,
  },
  heading: {
    fontSize: 28,
    fontWeight: "bold",
    marginTop: 55,
    color: "black",
  },
  email: {
    gap: 5,
    marginTop: 35,
  },
  name: {
    marginTop: 10,
  },
  password: {
    marginTop: 10,
  },
  input: {
    marginVertical: 10,
    width: 320,
    height: 60,
    fontSize: 16,
    borderRadius: 10,
    borderColor: "black",
    borderWidth: 2,
  },
  label: {
    fontSize: 16,
  },
  condition: {
    marginTop: 10,
  },
});

export default Register;
