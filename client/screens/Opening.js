import { Pressable, StyleSheet, View, Image, Text } from "react-native";
import { Padding, Border, FontFamily, FontSize, Color } from "../GlobalStyles";
import ButtonComp from "../components/Button";

const Opening = () => {

    return (
        <View style={styles.openningScreen}>
            <View style={styles.signal}>
                <Image
                    style={styles.signalChild}
                    contentFit="cover"
                    source={require("../assets/logo.png")}
                />
                <View style={[styles.text, styles.textPosition]}>
                    <Text style={styles.exploreTheApp}>Explore the app</Text>
                    <Text style={styles.getReadyTo}>
                        Get ready to explore the endless shopping possibilities
                    </Text>
                </View>
            </View>
            <View style={styles.buttons}>
                <ButtonComp title={"Test"} />
            </View>
        </View>
    );
};

export default Opening;

const styles = StyleSheet.create({
    textPosition: {
        left: 0,
        right: 0,
        position: "absolute",
    },
    buttonFlexBox: {
        paddingVertical: Padding.p_mid,
        paddingHorizontal: Padding.p_133xl,
        justifyContent: "center",
        alignItems: "center",
        height: 56,
        borderRadius: Border.br_3xs,
        flexDirection: "row",
    },
      buttonTypo: {
        fontFamily: FontFamily.b01SB600,
        fontWeight: "600",
        lineHeight: 20,
        fontSize: FontSize.header3_size,
        textAlign: "center",
    },
    signalChild: {
        top: 0,
        right: 35,
        left: 34,
        maxWidth: "100%",
        height: 225,
        position: "absolute",
        overflow: "hidden",
    },
    exploreTheApp: {
        top: 32,
        left: 50,
        fontSize: FontSize.title_size,
        letterSpacing: -0.3,
        lineHeight: 36,
        fontWeight: "700",
        fontFamily: FontFamily.title,
        textAlign: "left",
        width: 219,
        height: 41,
        color: Color.lightInk,
        position: "absolute",
    },
    getReadyTo: {
        top: 89,
        fontSize: 17,
        lineHeight: 21,
        fontFamily: FontFamily.b02R400,
        color: Color.colorGray_800,
        textAlign: "center",
        left: 0,
        width: 319,
        position: "absolute",
    },
    text: {
        top: 285,
        height: 163,
    },
    signal: {
        top: 92,
        left: 21,
        height: 448,
        width: 319,
        position: "absolute",
    },
    button1: {
        color: Color.lightInk,
    },
    buttonSecondary: {
        bottom: 0,
        borderStyle: "solid",
        borderColor: Color.colorDimgray_100,
        borderWidth: 1,
        left: 0,
        right: 0,
        position: "absolute",
    },
    button3: {
        color: Color.lightPrimary,
    },
    buttonPrimary: {
        backgroundColor: Color.lightInk,
        width: 314,
    },
    button2: {
        bottom: 93,
        flexDirection: "row",
        left: 0,
        right: 0,
        position: "absolute",
    },
    buttons: {
        top: 600,
        left: 23,
        height: 149,
        width: 314,
        position: "absolute",
    },
    openningScreen: {
        backgroundColor: Color.lightPrimary,
        flex: 1,
        width: 360,
        height: 800,
        overflow: "hidden",
    },
});