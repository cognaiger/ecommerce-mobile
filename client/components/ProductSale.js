import {
    View,
    Text,
    TouchableOpacity,
    StyleSheet,
    Image,
    Pressable,
} from "react-native";
import { useNavigation } from "@react-navigation/native";

const ProductSale = (props) => {

    const navigation = useNavigation();

    if (props.color === 'white') {
        return (
            <Pressable onPress={() => navigation.navigate("ProductDetail")} style={styles.productCard1}>
                <Image source={{ uri: props.image }} style={styles.productImage} />
                <Text style={styles.productName}>{props.name}</Text>
                <View style={{
                    flexDirection: 'row',
                    alignItems: 'center',
                    gap: 10
                }}>
                    <Text style={styles.salePrice}>{props.salePrice}$</Text>
                    <Text style={styles.originalPrice}>{props.price}$</Text>
                </View>
            </Pressable>
        )
    }

    return (
        <Pressable onPress={() => navigation.navigate("ProductDetail")} style={styles.productCard}>
            <Image source={{ uri: props.image }} style={styles.productImage} />
            <Text style={styles.productName}>{props.name}</Text>
            <View style={{
                flexDirection: 'row',
                alignItems: 'center',
                gap: 10
            }}>
                <Text style={styles.salePrice}>{props.salePrice}$</Text>
                <Text style={styles.originalPrice}>{props.price}$</Text>
            </View>
        </Pressable>
    );
};

const styles = StyleSheet.create({
    productCard: {
        borderWidth: 1,
        borderRadius: 8,
        borderColor: "#ccc",
        borderRadius: 8,
        padding: 10,
        width: 150,
    },
    productCard1: {
        backgroundColor: '#fff',
        borderWidth: 1,
        borderRadius: 8,
        borderColor: "#ccc",
        borderRadius: 8,
        padding: 10,
        width: 150,
    },
    productImage: {
        width: 120,
        height: 120,
        resizeMode: "contain",
    },
    productName: {
        fontSize: 16,
        fontWeight: "600", // Added fontWeight: 'bold'
    },
    salePrice: {
        fontSize: 20,
        fontWeight: "800", // Added fontWeight: 'bold'
    },
    originalPrice: {
        fontSize: 14,
        fontWeight: "700", // Added fontWeight: 'bold'
        textDecorationLine: 'line-through'
    }
});

export default ProductSale;