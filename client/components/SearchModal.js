import { Modal, Pressable, StyleSheet, Text, TextInput, TouchableOpacity, View } from 'react-native';
import React, { useState } from 'react';
import { AntDesign } from '@expo/vector-icons';


const SearchModal = ({ modalOpen, setModalOpen }) => {
    const [text, setText] = useState('');

    const search = () => {
        
    }

    return (
        <Modal
            animationType='fade'
            transparent={true}
            visible={modalOpen}
        >
            <View style={{
                flex: 1,
                alignItems: 'center',
            }}>
                <View style={styles.modalView}>
                    <TextInput
                        value={text}
                        onChange={(e) => setText(e.target.value)}
                        placeholder="Type something"
                    />
                    <View style={{
                        flexDirection: 'row',
                        gap: 10,
                        alignItems: 'center'
                    }}>
                        <Pressable onPress={search}>
                            <AntDesign name="search1" size={18} color="black" />
                        </Pressable>
                        <Pressable onPress={() => setModalOpen(!modalOpen)}>
                            <AntDesign name="closecircleo" size={16} color="black" />
                        </Pressable>
                    </View>
                </View>
            </View>

        </Modal>
    )
}

export default SearchModal;

const styles = StyleSheet.create({
    modalView: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
        marginTop: 70,
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