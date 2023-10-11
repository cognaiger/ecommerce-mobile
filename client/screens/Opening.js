import { StyleSheet, View, Image, Text, SafeAreaView, Pressable } from "react-native";
import { Color } from "../GlobalStyles";
import BigButton from "../components/BigButton";

const Opening = ({ navigation }) => {

    return (
        <SafeAreaView style={styles.openningScreen}>
            <View>
                <Image
                    style={styles.img}
                    source={{
                        uri: "https://img.freepik.com/free-vector/gradient-laptop-logo-template_23-2148995853.jpg"
                    }}
                />
            </View>

            <View style={{ alignItems: 'center' }}>
                <Text style={styles.heading}>
                Explore the app
                </Text>
                <Text style={styles.para}>
                Get ready to explore the endless shopping possibilities
                </Text>
            </View>                

            <Pressable style={{ marginTop: 80 }} onPress={() => navigation.navigate('Login')}>
                <BigButton title="Sign in" />
            </Pressable>
            
            <Pressable style={{ marginTop: 50 }} onPress={() => navigation.navigate('Register')}>
                <BigButton title="Create account" type="white" />
            </Pressable>
        </SafeAreaView>
    );
};

export default Opening;

const styles = StyleSheet.create({
    openningScreen: {
        backgroundColor: Color.lightPrimary,
        flex: 1,
        alignItems: 'center',
        marginTop: 50
    },
    img: {
        marginTop: 50,
        width: 250,
        height: 250
    },
    heading: {
        fontSize: 28,
        fontWeight: 'bold',
        marginTop: 100,
        color: 'black'
    },
    para: {
        fontSize: 17,
        marginTop: 25,
        color: 'black',
        textAlign: 'center'
    },
});