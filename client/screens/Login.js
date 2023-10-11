import {
  Image,
  KeyboardAvoidingView,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from "react-native";
import React, { useState } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { Color } from "../GlobalStyles";
import BigButton from "../components/BigButton";
import { CheckBox } from "@rneui/themed";

const Login = ({ navigation }) => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [checked, setChecked] = useState(false);

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
          <Text style={styles.heading}>Hi, Welcome!</Text>
        </View>

        <View style={styles.email}>
          <Text style={styles.label}>Email</Text>
          <TextInput
            value={email}
            style={styles.input}
            placeholder="Enter your email here"
          />
        </View>

        <View style={styles.password}>
          <Text style={styles.label}>Password</Text>
          <TextInput
            secureTextEntry={true}
            value={password}
            style={styles.input}
            placeholder="Enter your password here"
          />
        </View>

        <View style={styles.condition}>
          <CheckBox
            checked={checked}
            onPress={() => setChecked(!checked)}
            checkedIcon="dot-circle-o"
            uncheckedIcon="circle-o"
            title="Remember me"
            containerStyle={{ marginLeft: 0 }}
          />
          <Pressable style={{ marginLeft: 30 }}>
            <Text>Forgot password?</Text>
          </Pressable>
        </View>

        <View style={{ marginTop: 35 }}>
          <BigButton title="Sign in" />
        </View>

        <Pressable
          style={{ marginTop: 15 }}
          onPress={() => navigation.navigate("Register")}
        >
          <Text style={{ textAlign: "center", fontSize: 16 }}>
            Don't have an account? Sign up
          </Text>
        </Pressable>
      </KeyboardAvoidingView>
    </SafeAreaView>
  );
};

export default Login;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Color.lightPrimary,
    alignItems: "center",
    marginTop: 50,
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
    marginTop: 15,
    flexDirection: "row",
    alignItems: "center",
  },
});
