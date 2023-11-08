import { Image, StyleSheet, Text, View } from 'react-native';
import React from 'react';

const ProductWishlist = ({ image, name, price }) => {
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