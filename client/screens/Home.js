import { View, Text, StyleSheet, FlatList } from 'react-native';
import React from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import BottomNavigator from '../components/BottomNavigator';

const Home = () => {
  return (
    <SafeAreaView style={styles.container}>
        <FlatList>
            <View style={styles.bottom}>
                <BottomNavigator />
            </View>
        </FlatList>
    </SafeAreaView>
  )
}

export default Home;

const styles = StyleSheet.create({
    container: {
        flex: 1
    },
    bottom: {
        position: 'absolute',
        bottom: 0,
        left: 0,
        right: 0
    }
})