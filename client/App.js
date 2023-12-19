import "react-native-gesture-handler";
import { registerRootComponent } from "expo";
import React from "react";
import { View } from "react-native";
import Opening from "./screens/Opening";
import Register from "./screens/Register";
import Login from "./screens/Login";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import {
  useFonts,
  Montserrat_400Regular,
  Montserrat_700Bold,
} from "@expo-google-fonts/montserrat";
import ProductDetailsScreen from "./screens/ProductDetailsScreen";
import ProductListScreen from "./screens/ProductListScreen";
import Home from "./screens/Home";
import Category from "./screens/Category";
import Cart from "./screens/Cart";
import Profile from "./screens/Profile";
import Wishlist from "./screens/Wishlist";
import Checkout from "./screens/Checkout";
import WalletPassword from "./screens/WalletPassword";
import PaymentSuccessful from "./screens/PaymentSuccessfull";
import OrderStatus from "./screens/OrderStatus";
import Products from "./screens/Products";
import Orders from "./screens/Orders";
import algoliasearch from "algoliasearch/lite";
import { InstantSearch } from "react-instantsearch-core";
import LaptopList from "./screens/LaptopList";

const algoliaClient = algoliasearch(
  "WJRZ2HS9X2",
  "5819ebb2f541430fbc71f18e23939cf7",
  {
    // Enable debugging
    _debug: true,
  }
);
const searchClient = {
  ...algoliaClient,
  search(requests) {
    if (requests.every(({ params }) => !params.query)) {
      return Promise.resolve({
        results: requests.map(() => ({
          hits: [],
          nbHits: 0,
          nbPages: 0,
          page: 0,
          processingTimeMS: 0,
          hitsPerPage: 0,
          exhaustiveNbHits: false,
          query: "",
          params: "",
        })),
      });
    }
    return algoliaClient.search(requests);
  },
};
export default function App() {
  const Stack = createNativeStackNavigator();

  const [fontsLoaded] = useFonts({
    MontserratRegular: Montserrat_400Regular,
    MontserratBold: Montserrat_700Bold,
  });

  if (!fontsLoaded) {
    return null; // You can render a loading screen here
  }

  return (
    <InstantSearch searchClient={searchClient} indexName="laptopIndex">
      <NavigationContainer>
        <Stack.Navigator initialRouteName="Login">
          <Stack.Screen
            name="Opening"
            component={Opening}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Login"
            component={Login}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Register"
            component={Register}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Home"
            component={Home}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="ProductList"
            component={LaptopList}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="ProductDetail"
            component={ProductDetailsScreen}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Category"
            component={Category}
            options={{ headerShown: false }}
            initialParams={{ state: "Laptop" }}
          />
          <Stack.Screen
            name="Cart"
            component={Cart}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Profile"
            component={Profile}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Wishlist"
            component={Wishlist}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="Checkout"
            component={Checkout}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="WalletPassword"
            component={WalletPassword}
            options={{ headerShown: false }}
          />

          <Stack.Screen
            name="PaymentSuccessful"
            component={PaymentSuccessful}
            options={{ headerShown: false }}
          />
          <Stack.Screen
            name="OrderStatus"
            component={OrderStatus}
            options={{ headerShown: false }}
          />

          <Stack.Screen
            name="Products"
            component={Products}
            options={{ headerShown: false }}
          />

          <Stack.Screen
            name="Orders"
            component={Orders}
            options={{ headerShown: false }}
          />
        </Stack.Navigator>
      </NavigationContainer>
    </InstantSearch>
  );
}
registerRootComponent(App);
