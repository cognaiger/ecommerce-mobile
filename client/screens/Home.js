import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  Image,
  TextInput,
  Button,
  Modal,
} from "react-native";
import React, { useState, useEffect } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import BottomNavigator from "../components/BottomNavigator";
import { AntDesign } from "@expo/vector-icons";
import { Ionicons } from "@expo/vector-icons";
import { useNavigation } from "@react-navigation/native";
import ProductSale from "../components/ProductSale";
import NotificationModal from "../components/NotificationModal";
import SearchModal from "../components/SearchModal";
import AuthService from "../services/auth.service";
import BottomAdminNavigator from "../components/BottomAdminNavigator";
import AdminDashboard from "../components/AdminDashboard";
import { IP } from "../const";
import ChatArea from "../components/ChatArea";
const getUserAndLogRole = () => {
  AuthService.getCurrentUser().then((res) => {
    console.log(res);
  });

  // if (currentUser) {
  //   const currentRole = currentUser.role[0];
  //   console.log(currentRole);
  // } else {
  //   console.log("User data not found.");
  // }
};

const Home = () => {
  const [isChatModalVisible, setChatModalVisible] = useState(false);

  const toggleChatModal = () => {
    setChatModalVisible(!isChatModalVisible);
  };
  let currentUser;
  [currentRole, setCurrentRole] = useState("");
  AuthService.getCurrentUser()
    .then((res) => {
      currentUser = res;
      console.log(currentUser.roles[0]);
      setCurrentRole(currentUser.roles[0]);
    })
    .catch((error) => {
      console.error("Error while fetching current user:", error);
    });

  // const currentUser =  AuthService.getCurrentUser();
  // Alert.alert(JSON.stringify(currentUser));
  // console.log(JSON.stringify(currentUser));
  // console.log(currentUser); // Check the entire currentUser object
  // const currentRole = currentUser ? currentUser.roles[0] : null;
  // console.log(currentRole);

  const navigation = useNavigation();
  const [notiOpen, setNotiOpen] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const category1 = [
    {
      name: "Laptop",
      imageLink:
        "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn//News/1499078//laptop-15-800x450-1.jpg",
    },
    {
      name: "RAM",
      imageLink:
        "https://cdn.tgdd.vn/Files/2022/08/26/1460125/tim-hieu-ram-tren-macbook-1-280223-230623.jpg",
    },
    {
      name: "Storage",
      imageLink:
        "https://lagihitech.vn/wp-content/uploads/2023/10/o-cung-di-dong-SSD-Kingston-XS1000-1TB-SXS10001000G-USB-Type-C-3.2-Gen-2-hinh-1.jpg",
    },
    {
      name: "Apple",
      imageLink:
        "https://hc.com.vn/i/ecommerce/media/GS.007147_FEATURE_74803.jpg",
    },
  ];

  const category2 = [
    {
      name: "Screen",
      imageLink:
        "https://bizweb.dktcdn.net/thumb/grande/100/490/762/products/4-rrb2211-jpg-v-1675215444673.jpg?v=1693846793583",
    },
    {
      name: "Mouse",
      imageLink:
        "https://i.rtings.com/assets/products/1htouLNw/amazonbasics-3-button-usb-wired-mouse/design-medium.jpg",
    },
    {
      name: "Headphone",
      imageLink:
        "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1674045768/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/239032_0_ogo1io.png?tr=w-600",
    },
    {
      name: "Other",
      imageLink:
        "https://img.freepik.com/premium-vector/pc-components-cpu-gpu-motherboard-cooler-ssd-hand-drawn-memory-modules-system-unit-power-supply-vector-personal-computer-parts-isolated-set_102902-6145.jpg",
    },
  ];

  [saleItems, setSaleItems] = useState([]);
  [recommendationProducts, setRecommendationProducts] = useState([]);
  // [category1, setCategory1] = useState([]);
  // [category2, setCategory2] = useState([]);

  useEffect(() => {
    // Fetch product data from the API
    fetch(`http://${IP}:8080/ecommerce/api/v1/products/10-laptops`)
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json(); // Parse the JSON response
      })
      .then((data) => {
        setSaleItems(data);
        // setCategory1(data);
        // setCategory2(data);
        console.log(data); // Now you can access the JSON data
      })
      .catch((error) => console.error("Error fetching product data: ", error));
  }, []);

  return (
    <SafeAreaView style={styles.container}>
      {currentRole === "ROLE_USER" ? (
        <>
          <View style={styles.topbar}>
            <View
              style={{
                flexDirection: "row",
                gap: 20,
              }}
            >
              <Pressable>
                <AntDesign name="menu-fold" size={24} color="black" />
              </Pressable>
              <Text
                style={{
                  fontSize: 14,
                  fontWeight: 700,
                }}
              >
                Home
              </Text>
            </View>

            <View
              style={{
                flexDirection: "row",
                gap: 20,
              }}
            >
              <Pressable onPress={() => setSearchOpen(!searchOpen)}>
                <AntDesign name="search1" size={24} color="black" />
              </Pressable>
              <Pressable onPress={() => setNotiOpen(!notiOpen)}>
                <Ionicons
                  name="notifications-outline"
                  size={24}
                  color="black"
                />
              </Pressable>
              <Button title="Open Chat" onPress={toggleChatModal} />
              <Pressable onPress={() => navigation.navigate("Cart")}>
                <Ionicons name="cart-outline" size={24} color="black" />
              </Pressable>
            </View>
          </View>
          <ScrollView style={styles.content}>
            <View style={styles.adver}>
              <Image
                source={require("../assets/adver2.jpeg")}
                resizeMethod="auto"
                style={{
                  width: "100%",
                  height: "100%",
                }}
              />
            </View>

            <View style={styles.category}>
              <View style={styles.row}>
                {category1.map((cate, i) => (
                  <Pressable
                    key={i}
                    style={{
                      flex: 1,
                      alignItems: "center",
                    }}
                    onPress={() =>
                      navigation.navigate("Category", { state: cate.name })
                    }
                  >
                    <Image
                      style={{
                        width: 40,
                        height: 40,
                        borderRadius: 20,
                      }}
                      source={{ uri: cate.imageLink }}
                    />
                    <Text>{cate.name}</Text>
                  </Pressable>
                ))}
              </View>

              <View style={styles.row}>
                {category2.map((cate, i) => (
                  <Pressable
                    key={i}
                    style={{
                      flex: 1,
                      alignItems: "center",
                    }}
                    onPress={() =>
                      navigation.navigate("Category", { state: cate.name })
                    }
                  >
                    <Image
                      style={{
                        width: 40,
                        height: 40,
                        borderRadius: 20,
                      }}
                      source={{ uri: cate.imageLink }}
                    />
                    <Text>{cate.name}</Text>
                  </Pressable>
                ))}
              </View>
            </View>

            <View style={styles.adver}>
              <Image
                source={require("../assets/adver3.jpeg")}
                resizeMethod="auto"
                style={{
                  width: "100%",
                  height: "100%",
                }}
              />
            </View>

            <View style={styles.hotSale}>
              <Text
                style={{
                  color: "#9A771E",
                  fontSize: 20,
                  fontWeight: "700",
                }}
              >
                Hot Sales
              </Text>
              <ScrollView horizontal showsHorizontalScrollIndicator={false}>
                {saleItems.map((item, i) => (
                  <ProductSale
                    name={item.name}
                    image={item.imageLink}
                    price={item.price}
                    salePrice={item.salePrice}
                    productId={item.productId}
                    key={i}
                  />
                ))}
              </ScrollView>

              {/* <ScrollView horizontal showsHorizontalScrollIndicator={false}>
                {saleItems.map((item, i) => (
                  <ProductSale
                    name={item.name}
                    image={item.imageLink}
                    price={item.price}
                    salePrice={item.salePrice}
                    key={i}
                  />
                ))}
              </ScrollView> */}
            </View>

            <View style={styles.recommendation}>
              <Text
                style={{
                  color: "#fff",
                  fontSize: 20,
                  fontWeight: "700",
                }}
              >
                Recommendation
              </Text>

              <ScrollView horizontal showsHorizontalScrollIndicator={false}>
                {saleItems.map((item, i) => (
                  <ProductSale
                    name={item.name}
                    image={item.imageLink}
                    price={item.price}
                    salePrice={item.salePrice}
                    productId={item.productId}
                  />
                ))}
              </ScrollView>
            </View>
            
          </ScrollView>
          <Modal
        animationType="slide"
        transparent={true}
        visible={isChatModalVisible}
        onRequestClose={() => {
          setChatModalVisible(!isChatModalVisible);
        }}
      >
        <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
          <View
            style={{
              width: 300,
              backgroundColor: 'lightblue',
              borderRadius: 10,
              padding: 10,
              maxHeight: 600,
            }}
          >
            <ScrollView>
              {/* ChatArea component */}
              <ChatArea />

              {/* Close button */}
              <Pressable
                style={{
                  marginTop: 10,
                  padding: 8,
                  backgroundColor: 'teal',
                  borderRadius: 5,
                  alignItems: 'center',
                }}
                onPress={toggleChatModal}
              >
                <Text style={{ color: 'white' }}>Close Chat</Text>
              </Pressable>
              </ScrollView>
          </View>
        </View>
      </Modal>
          <NotificationModal modalOpen={notiOpen} setModalOpen={setNotiOpen} />
          <SearchModal modalOpen={searchOpen} setModalOpen={setSearchOpen} />
          <BottomNavigator />
        </>
      ) : (
        <>
          <AdminDashboard />
          <BottomAdminNavigator />
        </>
      )}
    </SafeAreaView>
  );
};

export default Home;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "white",
  },
  topbar: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    padding: 25,
  },
  content: {},
  adver: {
    height: 120,
    width: "100%",
  },
  category: {
    padding: 30,
    gap: 30,
    alignItems: "center",
  },
  row: {
    flexDirection: "row",
  },
  hotSale: {
    gap: 20,
    padding: 20,
  },
  recommendation: {
    backgroundColor: "teal",
    gap: 20,
    padding: 20,
  },
});
