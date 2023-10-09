import { StyleSheet, Text, View } from 'react-native';
import Opening from './screens/Opening';

export default function App() {
  return (
    <View style={styles.container}>
      <Opening />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
