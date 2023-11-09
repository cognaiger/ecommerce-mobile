import React, { useState } from 'react';
import { Alert, Modal, StyleSheet, Text, Pressable, View } from 'react-native';

const Notification = ({ modalOpen, setModalOpen }) => {
    const [modalVisible, setModalVisible] = useState(false);
    const notification = [
        {
            name: "Order Received",
            content: "Your order has been receive",
            time: '1 Jan'
        },
        {
            name: "Order Received",
            content: "Your order has been receive",
            time: '1 Jan'
        },
        {
            name: "Order Received",
            content: "Your order has been receive",
            time: '1 Jan'
        }
    ]

    return (
        <Modal
            animationType="slide"
            transparent={true}
            visible={modalOpen}
        >
            <View style={styles.modalView}>
                <Text style={styles.modalText}>Hello World!</Text>
                <Pressable
                    style={[styles.button, styles.buttonClose]}
                    onPress={() => setModalOpen(!modalOpen)}>
                    <Text style={styles.textStyle}>Hide Modal</Text>
                </Pressable>
            </View>
        </Modal>
    )
}

export default Notification;

const styles = StyleSheet.create({
    modalView: {
        justifyContent: 'center',
        alignItems: 'center',
        marginTop: 22,
        margin: 20,
        backgroundColor: 'white',
        borderRadius: 20,
        padding: 35,
        alignItems: 'center',
        shadowColor: '#000',
        shadowOffset: {
            width: 0,
            height: 2,
        },
        shadowOpacity: 0.25,
        shadowRadius: 4,
        elevation: 5,
    },
    button: {
        borderRadius: 20,
        padding: 10,
        elevation: 2,
    },
    buttonOpen: {
        backgroundColor: '#F194FF',
    },
    buttonClose: {
        backgroundColor: '#2196F3',
    },
    textStyle: {
        color: 'white',
        fontWeight: 'bold',
        textAlign: 'center',
    },
    modalText: {
        marginBottom: 15,
        textAlign: 'center',
    },
})