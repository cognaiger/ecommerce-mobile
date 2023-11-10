import { StyleSheet, Text, View } from 'react-native';
import React from 'react';
import { Feather } from '@expo/vector-icons';

const Notification = (props) => {
    return (
        <View style={styles.notices}>
            <View style={styles.info}>
                <Feather name="package" size={24} color="black" />
                <View>
                    <Text style={{
                        fontSize: 16,
                        fontWeight: '700'
                    }}>
                        {props.name}
                    </Text>
                    <Text>
                        {props.content}
                    </Text>
                </View>
            </View>

            <View style={styles.time}>
                <Text style={{
                    fontSize: 16,
                    fontWeight: '500'
                }}>
                    {props.time}
                </Text>
            </View>
        </View>
    )
}

export default Notification;

const styles = StyleSheet.create({
    notices: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center'
    },
    info: {
        flexDirection: 'row',
        gap: 15,
        alignItems: 'center'
    }
})