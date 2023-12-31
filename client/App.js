import "react-native-gesture-handler";
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
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Register">
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
          component={ProductListScreen}
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
      </Stack.Navigator>
    </NavigationContainer>
  );
}
