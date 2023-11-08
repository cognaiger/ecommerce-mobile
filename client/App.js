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
import BottomNavigator from "./components/BottomNavigator";
const Stack = createNativeStackNavigator();

export default function App() {
  const [fontsLoaded] = useFonts({
    MontserratRegular: Montserrat_400Regular,
    MontserratBold: Montserrat_700Bold,
  });

  if (!fontsLoaded) {
    return null; // You can render a loading screen here
  }

  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName='Home'>
        <Stack.Screen name='Opening' component={Opening} options={{ headerShown: false }} />
        <Stack.Screen name='Login' component={Login} options={{ headerShown: false }} />
        <Stack.Screen name='Register' component={Register} options={{ headerShown: false }} />
        <Stack.Screen name='Home' component={Home} options={{ headerShown: false }} />
        <Stack.Screen name='ProductList' component={ProductListScreen} options={{ headerShown: false }} />
        <Stack.Screen name='ProductDetail' component={ProductDetailsScreen} options={{ headerShown: false }} />
        <Stack.Screen name='Category' component={Category} options={{ headerShown: false }} />
        <Stack.Screen name='Cart' component={Cart} options={{ headerShown: false }} />
        <Stack.Screen name='Profile' component={Profile} options={{ headerShown: false }} />
        <Stack.Screen name='Wishlist' component={Wishlist} options={{ headerShown: false }} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
