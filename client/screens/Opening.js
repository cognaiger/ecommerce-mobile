import { Pressable, StyleSheet, View, Image, Text, SafeAreaView } from "react-native";
import { Color } from "../GlobalStyles";

const Opening = () => {

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

            <Pressable style={styles.button1}>
                <Text style={styles.signin}>Sign In</Text>
            </Pressable>

            <Pressable style={styles.button2}>
                <Text style={styles.register}>Create account</Text>
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
    button1: {
        marginTop: 80,
        width: 314,
        height: 56,
        backgroundColor: "#000000",
        borderRadius: 10,
        marginLeft: "auto",
        marginRight: "auto",
        padding: 15,
    },
    button2: {
        marginTop: 50,
        width: 314,
        height: 56,
        backgroundColor: "#ffffff",
        borderRadius: 10,
        marginLeft: "auto",
        marginRight: "auto",
        padding: 15,
        borderWidth: 2,
        borderColor: "#747474"
    },
    signin: {
        textAlign: "center",
        color: "white",
        fontSize: 16,
        fontWeight: "bold",
    },
    register: {
        textAlign: "center",
        color: "black",
        fontSize: 16,
        fontWeight: "bold",
    }
});