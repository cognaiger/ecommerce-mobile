import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import React, { useState } from 'react';

const ProductCart = ({ image, name, price, quantity }) => {
    const [quan, setQuan] = useState(quantity);

    const increaseQuantity = () => {
        setQuan(quan + 1);
    }

    const decreaseQuantity = () => {
        if (quan >= 1) {
            setQuan(quan - 1);
        }
    }

    return (
        <View style={{
            flexDirection: 'row',
            justifyContent: 'space-around',
            alignItems: 'center'
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
            <View style={{
                flexDirection: 'row',
                alignItems: 'center',
                gap: 10
            }}>
                <Pressable onPress={increaseQuantity}>
                    <Text style={styles.quanIcon}>+</Text>
                </Pressable>
                <Text style={styles.quanIcon}>{quan}</Text>
                <Pressable onPress={decreaseQuantity}>
                    <Text style={styles.quanIcon}>-</Text>
                </Pressable>
            </View>
        </View>
    )
}

export default ProductCart;

const styles = StyleSheet.create({
    textName: {
        color: '#393F42',
        fontSize: 15,
        fontWeight: '400'
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