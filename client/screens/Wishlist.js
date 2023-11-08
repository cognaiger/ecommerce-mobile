import { Image, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import React from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useNavigation } from '@react-navigation/native';

const Wishlist = () => {
    const backButtonLink = "client/assets/Back.png";
    const navigation = useNavigation();

    const turnBack = () => {
        navigation.navigate("Home");
    }

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
    }
})