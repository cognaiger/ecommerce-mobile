import { View, Text, StyleSheet } from "react-native";

const BigButton = ({ title, type}) => {
  if (type === "white") {
    return (
      <View style={styles.btnwhite}>
        <Text style={styles.textwhite}>{title}</Text>
      </View>
    );
  };

  return (
    <View style={styles.btnblack}>
      <Text style={styles.textblack}>{title}</Text>
    </View>
  );
};

export default BigButton;

const styles = StyleSheet.create({
  btnwhite: {
    width: 314,
    height: 56,
    backgroundColor: "#ffffff",
    borderRadius: 10,
    padding: 15,
    borderWidth: 2,
    borderColor: "#747474"
  },
  textwhite: {
    textAlign: "center",
    color: "black",
    fontSize: 16,
    fontWeight: "bold",
  },
  btnblack: {
    width: 314,
    height: 56,
    backgroundColor: "#000000",
    borderRadius: 10,
    padding: 15,
  },
  textblack: {
    textAlign: "center",
    color: "white",
    fontSize: 16,
    fontWeight: "bold",
  }
});