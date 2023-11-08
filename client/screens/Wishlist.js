import { Image, ScrollView, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import React from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useNavigation } from '@react-navigation/native';
import ProductWishlist from '../components/ProductWishlist';

const Wishlist = () => {
    const backButtonLink = "client/assets/Back.png";
    const navigation = useNavigation();

    const turnBack = () => {
        navigation.goBack();
    }

    const items = [
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
        <SafeAreaView>
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
                    Wishlist
                </Text>
            </View>

            <ScrollView>
                <View style={styles.item}>
                    {items.map((item, i) => (
                        <ProductWishlist name={item.name} price={item.price} image={item.image} />
                    ))}
                </View>
            </ScrollView>
        </SafeAreaView>
    )
}

export default Wishlist;

const styles = StyleSheet.create({
    topBar: {
        flexDirection: 'row',
        alignItems: 'center',
        padding: 10,
        gap: 10
    },
    item: {
        padding: 30,
        gap: 30,
    }
})