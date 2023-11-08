import { Image, ScrollView, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import React, { useState } from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useNavigation } from '@react-navigation/native';
import ProductCart from '../components/productCart';
import BigButton from '../components/BigButton';

const Cart = () => {
    const backButtonLink = "client/assets/Back.png";
    const navigation = useNavigation();
    const [totalPrice, setTotalPrice] = useState(33000);

    const turnBack = () => {
        navigation.goBack();
    }

    const item = [
        {
            name: "Lenovo Ideapad Gaming 3",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 3000,
            quantity: 1
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        },
        {
            name: "Ram 1",
            image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/134784/Originals/Goi-y-nhung-mau-laptop-lenovo-noi-bat-trong-tam-gia-10-15-trieu-dong-5.JPG',
            price: 2500,
            quantity: 2
        }
    ]

    return (
        <SafeAreaView style={{
            flex: 1
        }}>
            <View style={styles.topBar}>
                <TouchableOpacity
                    onPress={turnBack}
                >
                    <Image source={require(backButtonLink)}></Image>
                </TouchableOpacity>
                <Text style={{
                    fontSize: 14,
                    fontWeight: 700
                }}>
                    Cart
                </Text>
            </View>

            <ScrollView>
                <View style={styles.items}>
                    {item.map((el, i) => (
                        <ProductCart name={el.name} price={el.price}
                            image={el.image} quantity={el.quantity}
                            key={i} totalPrice={totalPrice} setTotalPrice={setTotalPrice}
                        />
                    ))}
                </View>

            </ScrollView>

            <View style={styles.bottom}>
                <View style={styles.totalPrice}>
                    <Text>Subtotal: </Text>
                    <Text style={styles.priceText}>{totalPrice} $</Text>
                </View>
                <BigButton title="Check out" />
            </View>
        </SafeAreaView>
    )
}

export default Cart;

const styles = StyleSheet.create({
    topBar: {
        flexDirection: 'row',
        alignItems: 'center',
        padding: 10,
        gap: 10,
        borderColor: '#000',
        borderBottomWidth: 1
    },
    items: {
        padding: 30,
        gap: 30,
    },
    bottom: {
        alignItems: 'center',
        gap: 20,
        padding: 15
    },
    totalPrice: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        gap: 180
    },
    priceText: {
        fontSize: 18,
        fontWeight: '700'
    }
})