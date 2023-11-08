import { View, Text, StyleSheet, FlatList, ScrollView, Pressable, Image } from 'react-native';
import React from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import BottomNavigator from '../components/BottomNavigator';
import { AntDesign } from '@expo/vector-icons';
import { Ionicons } from '@expo/vector-icons';

const Home = () => {
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

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView>
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
            <Pressable>
              <Ionicons name="cart-outline" size={24} color="black" />
            </Pressable>
          </View>
        </View>

        <View style={styles.adver}>
          <Image
            source={require('../assets/adver2.jpeg')}
            resizeMode='contain'
            style={{
              flex: 1,
              width: undefined,
              height: undefined
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

        <View>
          <Text>Adver</Text>
        </View>

        <View>
          <Text>Most popular</Text>
        </View>

        <View>
          <Text>Top selection</Text>
        </View>

      </ScrollView>
      <BottomNavigator />
    </SafeAreaView>
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
  adver: {
    flex: 1,
    height: 120
  },
  category: {
    flex: 1,
    padding: 30,
    gap: 30,
    alignItems: 'center'
  },
  row: {
    flexDirection: 'row'
  },
  bottom: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0
  }
})