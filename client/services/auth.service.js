import axios from "axios";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { IP } from "../const";

const API_URL = `http://${IP}:8080/ecommerce/api/auth/`;

const storeUserData = async (user) => {
  try {
    await AsyncStorage.setItem("user", JSON.stringify(user));
    console.log("Saved");
  } catch (error) {
    console.error("Error while saving user data:", error);
  }
};

const getUserData = async () => {
  try {
    const userJSON = await AsyncStorage.getItem("user");
    return userJSON ? JSON.parse(userJSON) : null;
  } catch (error) {
    console.error("Error while getting user data:", error);
    return null;
  }
};

const removeUserData = async () => {
  try {
    await AsyncStorage.removeItem("user");
  } catch (error) {
    console.error("Error while removing user data:", error);
  }
};

const register = (username, email, password) => {
  const role = ["customer"];
  const role_customer = null;
  return axios.post(API_URL + "signup", {
    username,
    email,
    password,
    role_customer,
  });
};

const login = (username, password) => {
  return axios
    .post(API_URL + "signin", { username, password })
    .then((response) => {
      if (response.data.username) {
        storeUserData(response.data);
      }
      return response;
    });
};

const logout = async () => {
  await removeUserData();
  return axios.post(API_URL + "signout").then((response) => {
    return response.data;
  });
};

const getCurrentUser = async () => {
  return getUserData();
};

const AuthService = { register, login, logout, getCurrentUser };

export default AuthService;