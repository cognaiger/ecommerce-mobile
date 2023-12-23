import {
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import React, { useState, useEffect } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";
import ProductWishlist from "../components/ProductWishlist";
import AuthService from "../services/auth.service";
const Wishlist = () => {
  let currentUser;
  const [wishlistItems, setWishlistItems] = useState([]);
  const [userId, setUserId] = useState("");
  const [loading, setLoading] = useState(true);
  AuthService.getCurrentUser()
    .then((res) => {
      currentUser = res;
      console.log("id", currentUser.id);
      // setCurrentRole(currentUser.roles[0]);
      setUserId(currentUser.id);
    })
    .catch((error) => {
      console.error("Error while fetching current user:", error);
    });
  const backButtonLink = "client/assets/Back.png";
  const navigation = useNavigation();

  const turnBack = () => {
    navigation.goBack();
  };

  useEffect(() => {
    fetch(`http://192.168.1.211:8080/ecommerce/api/v1/wishlist/${userId}`)
      .then((response) => response.json())
      .then((data) => {
        setWishlistItems(data);
        console.log(wishlistItems);
      })
      .catch((error) => {
        console.error("Error fetching wishlist items:", error);
      });
  }, [userId]);

  const items = [
    {
      name: "Lenovo Ideapad Gaming 3",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 3000,
      quantity: 1,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
    {
      name: "Ram 1",
      image:
        "https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG",
      price: 2500,
      quantity: 2,
    },
  ];

  return (
    <SafeAreaView>
      <View style={styles.topBar}>
        <TouchableOpacity onPress={turnBack}>
          <Image source={require(backButtonLink)}></Image>
        </TouchableOpacity>
        <Text
          style={{
            fontSize: 14,
            fontWeight: 700,
          }}
        >
          Wishlist
        </Text>
      </View>

      <ScrollView>
        <View style={styles.item}>
          {wishlistItems.map((item, i) => (
            <ProductWishlist
              id={item.productId}
              name={item.name}
              price={item.price}
              salePrice={item.salePrice}
              image={item.imageLink}
              key={i}
            />
          ))}
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

export default Wishlist;

const styles = StyleSheet.create({
  topBar: {
    flexDirection: "row",
    alignItems: "center",
    padding: 10,
    gap: 10,
  },
  item: {
    padding: 30,
    gap: 30,
  },
});
