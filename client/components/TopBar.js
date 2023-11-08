import { Image, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import React from 'react';

const TopBar = ({ text, turnBack }) => {
    const backButtonLink = "client/assets/Back.png";

    return (
        <View style={styles.top}>
            
            <Text style={styles.textstyle}>{text}</Text>
        </View>
    )
}

export default TopBar;

const styles = StyleSheet.create({
    top: {
        flexDirection: 'row',
        alignItems: 'center',
        padding: 10,
        gap: 10
    },
    textstyle: {
        fontSize: 14,
        fontWeight: 700
    },
    backButton: {
        position: "absolute",
        top: 16,
        left: 16,
        backgroundColor: "#FFFFFF",
        borderRadius: 4,
        padding: 8,
    }
})