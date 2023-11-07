import { View, Text, StyleSheet, FlatList, ScrollView, Pressable, Image } from 'react-native';
import React from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import BottomNavigator from '../components/BottomNavigator';
import { AntDesign } from '@expo/vector-icons';
import { Ionicons } from '@expo/vector-icons';



const Home = () => {
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
            source = {require('../assets/adver2.jpeg')}
            resizeMode='contain'
            style= {{
              flex: 1,
              width: undefined,
              height: undefined
            }}
          />
        </View>

        <View styles={styles.category}>
          <View>
            <Pressable style={{
              flex: 1
            }}>
              <Image 
                
              />
              <Text>Laptop</Text>
            </Pressable>
          </View>
          
          <View>

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

        <View tyle={styles.bottom}>
            <Text>Hello</Text>
        </View>
      </ScrollView>
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
  bottom: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0
  },
  adver: {
    flex: 1,
    height: 120
  },
  category: {
    flex: 1,
    justifyContent: 'center',
    padding: 30
  }
})