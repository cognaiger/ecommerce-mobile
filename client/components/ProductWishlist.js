import { Image, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import React, { useState } from 'react';
const wishlistButtonLink = "client/assets/wishlist.png";
const wishlistAddedButtonLink = "client/assets/wishlist_added.png";

const ProductWishlist = ({ image, name, price }) => {
    const [clickWishlist, setClickWishlist] = useState(false);

    const handleWishlistButtonPress = () => {
        setClickWishlist(!clickWishlist);
    }

    return (
        <View style={styles.container}>
            <View style={{
                flexDirection: 'row',
                gap: 20
            }}>
                <Image
                    style={{
                        width: 70,
                        height: 70,
                    }}
                    source={{ uri: image }}
                />
                <View>
                    <Text style={styles.textName}>{name}</Text>
                    <Text style={styles.textPrice}>{price}$</Text>
                </View>

            </View>

            <TouchableOpacity
                style={styles.wishlistButton}
                onPress={handleWishlistButtonPress}
            >
                {/* Render your wishlist button icon/image here */}
                {clickWishlist === false ? (
                    <Image source={require(wishlistButtonLink)}></Image>
                ) : (
                    <Image source={require(wishlistAddedButtonLink)}></Image>
                )}
            </TouchableOpacity>
        </View>
    )
}

export default ProductWishlist;

const styles = StyleSheet.create({
    container: {
        flexDirection: 'row',
        alignItems: 'center',
        justifyContent: 'space-between',
        borderColor: 'black',
        borderWidth: 1,
        padding: 10,
        borderRadius: 8
    },
    textPrice: {
        fontSize: 18,
        fontWeight: '700'
    },
    quanIcon: {
        fontSize: 19,
        fontWeight: '500'
    }
})