import { View, Text, StyleSheet, ScrollView, Pressable, Image } from 'react-native';
import React from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import BottomNavigator from '../components/BottomNavigator';
import { AntDesign } from '@expo/vector-icons';
import { Ionicons } from '@expo/vector-icons';
import { useNavigation } from '@react-navigation/native';
import ProductSale from '../components/ProductSale';

const Home = () => {
  const navigation = useNavigation();
  const category1 = [
    {
      name: "Laptop",
      image: "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn//News/1499078//laptop-15-800x450-1.jpg"
    },
    {
      name: "RAM",
      image: "https://cdn.tgdd.vn/Files/2022/08/26/1460125/tim-hieu-ram-tren-macbook-1-280223-230623.jpg"
    },
    {
      name: "Storage",
      image: "https://lagihitech.vn/wp-content/uploads/2023/10/o-cung-di-dong-SSD-Kingston-XS1000-1TB-SXS10001000G-USB-Type-C-3.2-Gen-2-hinh-1.jpg"
    },
    {
      name: "Apple",
      image: "https://hc.com.vn/i/ecommerce/media/GS.007147_FEATURE_74803.jpg"
    }
  ]

  const category2 = [
    {
      name: "Screen",
      image: "https://bizweb.dktcdn.net/thumb/grande/100/490/762/products/4-rrb2211-jpg-v-1675215444673.jpg?v=1693846793583"
    },
    {
      name: "Mouse",
      image: "https://i.rtings.com/assets/products/1htouLNw/amazonbasics-3-button-usb-wired-mouse/design-medium.jpg"
    },
    {
      name: "Headphone",
      image: "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1674045768/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/239032_0_ogo1io.png?tr=w-600"
    },
    {
      name: "Other",
      image: "https://img.freepik.com/premium-vector/pc-components-cpu-gpu-motherboard-cooler-ssd-hand-drawn-memory-modules-system-unit-power-supply-vector-personal-computer-parts-isolated-set_102902-6145.jpg"
    }
  ]


  const saleItems = [
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
    {
      name: "Lenovo Ideapad Gaming 3",
      image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
      price: 3000,
      salePrice: 2000,
    },
  ]

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.topbar}>
        <View style={{
          flexDirection: 'row',
          gap: 20
        }}>
          <Pressable>
            <AntDesign name="menu-fold" size={24} color="black" />
          </Pressable>
          <Text style={{
            fontSize: 14,
            fontWeight: 700
          }}>Home</Text>
        </View>

        <View style={{
          flexDirection: 'row',
          gap: 20
        }}>
          <Pressable>
            <AntDesign name="search1" size={24} color="black" />
          </Pressable>
          <Pressable>
            <Ionicons name="notifications-outline" size={24} color="black" />
          </Pressable>
          <Pressable onPress={() => navigation.navigate("Cart")}>
            <Ionicons name="cart-outline" size={24} color="black" />
          </Pressable>
        </View>
      </View>

      <ScrollView style={styles.content}>
        <View style={styles.adver}>
          <Image
            source={require('../assets/adver2.jpeg')}
            resizeMethod='auto'
            style={{
              width: '100%',
              height: '100%'
            }}
          />
        </View>

        <View style={styles.category}>
          <View style={styles.row}>
            {category1.map((cate, i) => (
              <Pressable key={i} style={{
                flex: 1,
                alignItems: 'center'
              }}>
                <Image
                  style={{
                    width: 40,
                    height: 40,
                    borderRadius: 20
                  }}
                  source={{ uri: cate.image }}
                />
                <Text>{cate.name}</Text>
              </Pressable>
            ))}
          </View>

          <View style={styles.row}>
            {category2.map((cate, i) => (
              <Pressable key={i} style={{
                flex: 1,
                alignItems: 'center'
              }}>
                <Image
                  style={{
                    width: 40,
                    height: 40,
                    borderRadius: 20
                  }}
                  source={{ uri: cate.image }}
                />
                <Text>{cate.name}</Text>
              </Pressable>
            ))}
          </View>

        </View>

        <View style={styles.adver}>
          <Image
            source={require('../assets/adver3.jpeg')}
            resizeMethod='auto'
            style={{
              width: '100%',
              height: '100%'
            }}
          />
        </View>

        <View style={styles.hotSale}>
          <Text style={{
            color: '#9A771E',
            fontSize: 20,
            fontWeight: '700'
          }}>Hot Sales</Text>
          <ScrollView horizontal showsHorizontalScrollIndicator={false}>
            {saleItems.map((item, i) => (
              <ProductSale name={item.name} image={item.image} price={item.price}
                salePrice={item.salePrice} key={i}
              />
            ))}
          </ScrollView>
        </View>

        <View style={styles.recommendation}>
          <Text style={{
            color: '#fff',
            fontSize: 20,
            fontWeight: '700'
          }}>Recommendation</Text>

          <ScrollView horizontal showsHorizontalScrollIndicator={false}>
            {saleItems.map((item, i) => (
              <ProductSale name={item.name} image={item.image} price={item.price}
                salePrice={item.salePrice} key={i} color='white'
              />
            ))}
          </ScrollView>
        </View>

      </ScrollView>

      <BottomNavigator />
    </SafeAreaView >
  )
}

export default Home;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'white',
  },
  topbar: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    padding: 25,
  },
  content: {
  },
  adver: {
    height: 120,
    width: '100%'
  },
  category: {
    padding: 30,
    gap: 30,
    alignItems: 'center'
  },
  row: {
    flexDirection: 'row'
  },
  hotSale: {
    gap: 20,
    padding: 20
  },
  recommendation: {
    backgroundColor: 'black',
    gap: 20,
    padding: 20
  }
})