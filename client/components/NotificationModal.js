import React from 'react';
import { Modal, StyleSheet, Pressable, View, TouchableOpacity } from 'react-native';
import Notification from './Notification';

const NotificationModal = ({ modalOpen, setModalOpen }) => {

    const donothing = () => {}

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
            animationType='fade'
            transparent={true}
            visible={modalOpen}
        >

            <TouchableOpacity
                style={{ flex: 1, backgroundColor: 'rgba(0, 0, 0, 0.5)' }}
                onPress={() => setModalOpen(!modalOpen)}
            >
                <Pressable onPress={donothing}>
                    <View style={styles.modalView}>
                        {notification.map((noti, i) => (
                            <Notification name={noti.name} content={noti.content}
                            time={noti.time} key={i}
                            />
                        ))}
                    </View>
                </Pressable>

            </TouchableOpacity>
        </Modal>
    )
}

export default NotificationModal;

const styles = StyleSheet.create({
    modalView: {
        marginLeft: 70,
        marginTop: 60,
        width: 330,
        backgroundColor: 'white',
        borderRadius: 20,
        padding: 20,
        shadowColor: '#000',
        shadowOpacity: 0.25,
        shadowRadius: 4,
        elevation: 5,
        gap: 10
    }
})