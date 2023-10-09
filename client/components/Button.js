import { View, Pressable, Text, StyleSheet } from "react-native";
import { Color } from "../GlobalStyles";


const ButtonComp = ({ title }) => {
  return (
    <View style={styles.buttonContainer}>
      <Pressable style={styles.button}>
        <Text style={styles.title}>{title}</Text>
      </Pressable>
    </View>
  );
};

export default ButtonComp;

const styles = StyleSheet.create({
  buttonContainer: {
    width: 314,
    height: 56,
    alignItems: "center",
    justifyContent: "center"
  },
  button: {
    borderRadius: 10,
    backgroundColor: Color.lightInk,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 152,
    paddingVertical: 17,
  },
  title: {
    fontSize: 16,
    fontWeight: "600",
    lineHeight: 20,
    fontFamily: "Inter-SemiBold",
    color: Color.lightPrimary,
    textAlign: "center"
  },
});