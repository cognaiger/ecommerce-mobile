import { Image, Pressable, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import React, { useState } from 'react';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useNavigation } from '@react-navigation/native';

const Category = () => {
    const backButtonLink = "client/assets/Back.png";
    const navigation = useNavigation();
    const [cateSelected, setCateSelected] = useState('Laptop');

    const main = [
        {
            name: "Laptop",
            image: "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn//News/1499078//laptop-15-800x450-1.jpg",
            subCategory: [
                {
                    name: 'Asus',
                    image: 'https://inkythuatso.com/uploads/thumbnails/800/2021/11/logo-asus-inkythuatso-2-01-26-09-21-11.jpg'
                },
                {
                    name: 'Acer',
                    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Acer-logo.jpg/768px-Acer-logo.jpg'
                },
                {
                    name: 'MSI',
                    image: 'https://devdiscourse.blob.core.windows.net/devnews/15_09_2020_11_27_22_2518697.jpg'
                },
                {
                    name: 'Lenovo',
                    image: 'https://thumbs.dreamstime.com/b/lenovo-logo-vector-format-available-illustrator-ai-149074793.jpg'
                },
                {
                    name: 'HP',
                    image: 'https://i2.cdn.turner.com/money/dam/assets/160405075114-hp-logo-640x640.jpg'
                },
                {
                    name: 'Dell',
                    image: 'https://inkythuatso.com/uploads/images/2021/10/dell-logo-inkythuatso-4-01-30-10-17-55.jpg'
                }
            ]
        },
        {
            name: "RAM",
            image: "https://cdn.tgdd.vn/Files/2022/08/26/1460125/tim-hieu-ram-tren-macbook-1-280223-230623.jpg",
            subCategory: [
                {
                    name: 'Corsair',
                    image: 'https://logowik.com/content/uploads/images/corsair7271.jpg'
                },
                {
                    name: 'Kingston',
                    image: 'https://logowik.com/content/uploads/images/647_kingston_logo.jpg'
                },
                {
                    name: 'G.Skill',
                    image: 'https://logowik.com/content/uploads/images/gskill3165.jpg'
                },
                {
                    name: 'PNY',
                    image: 'https://logonoid.com/images/pny-logo.png'
                }
            ]
        },
        {
            name: "Storage",
            image: "https://lagihitech.vn/wp-content/uploads/2023/10/o-cung-di-dong-SSD-Kingston-XS1000-1TB-SXS10001000G-USB-Type-C-3.2-Gen-2-hinh-1.jpg",
            subCategory: [
                {
                    name: 'Western Digital',
                    image: 'https://logowik.com/content/uploads/images/western-digital-wd4852.jpg'
                },
                {
                    name: 'SamSung',
                    image: 'https://images.samsung.com/is/image/samsung/assets/vn/about-us/brand/logo/mo/360_197_1.png?$FB_TYPE_B_PNG$'
                },
                {
                    name: 'Kingston',
                    image: 'https://logowik.com/content/uploads/images/647_kingston_logo.jpg'
                }
            ]
        },
        {
            name: "Apple",
            image: "https://hc.com.vn/i/ecommerce/media/GS.007147_FEATURE_74803.jpg",
            subCategory: [
                {
                    name: 'Macbook',
                    image: 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/macbook-air-space-gray-select-201810?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1664472289661'
                },
                {
                    name: 'iMac',
                    image: 'https://futureworld.com.vn/media/catalog/product/cache/4dbf4504e0d2fdef53ffcd9886d02b04/i/m/imac_silver_6.png'
                },
                {
                    name: 'Accessory',
                    image: 'https://images.summitmedia-digital.com/spotph/images/2021/07/21/guide-to-apple-accessories-640-1626869984.jpg'
                }
            ]
        },
        {
            name: "Screen",
            image: "https://bizweb.dktcdn.net/thumb/grande/100/490/762/products/4-rrb2211-jpg-v-1675215444673.jpg?v=1693846793583",
            subCategory: [
                {
                    name: 'LG',
                    image: 'https://static.vecteezy.com/system/resources/previews/018/911/404/original/lg-logo-life-s-good-editorial-free-vector.jpg'
                },
                {
                    name: 'Asus',
                    image: 'https://inkythuatso.com/uploads/thumbnails/800/2021/11/logo-asus-inkythuatso-2-01-26-09-21-11.jpg'
                },
                {
                    name: 'Dell',
                    image: 'https://inkythuatso.com/uploads/images/2021/10/dell-logo-inkythuatso-4-01-30-10-17-55.jpg'
                },
                {
                    name: 'ViewSonic',
                    image: 'https://1000logos.net/wp-content/uploads/2017/12/ViewSonic-Symbol.jpg'
                },
                {
                    name: 'Acer',
                    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Acer-logo.jpg/768px-Acer-logo.jpg'
                }
            ]
        },
        {
            name: "Mouse",
            image: "https://i.rtings.com/assets/products/1htouLNw/amazonbasics-3-button-usb-wired-mouse/design-medium.jpg",
            subCategory: [
                {
                    name: 'Logitech',
                    image: 'https://cdn.icon-icons.com/icons2/2845/PNG/512/logitech_logo_icon_181377.png'
                },
                {
                    name: 'Acer',
                    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Acer-logo.jpg/768px-Acer-logo.jpg'
                },
                {
                    name: 'Razor',
                    image: 'https://devdiscourse.blob.core.windows.net/devnews/15_09_2020_11_27_22_2518697.jpg'
                },
                {
                    name: 'Corsair',
                    image: 'https://logowik.com/content/uploads/images/corsair7271.jpg'
                },
                {
                    name: 'HyperX',
                    image: 'https://i2.cdn.turner.com/money/dam/assets/160405075114-hp-logo-640x640.jpg'
                },
                {
                    name: 'Glorious',
                    image: 'https://inkythuatso.com/uploads/images/2021/10/dell-logo-inkythuatso-4-01-30-10-17-55.jpg'
                }
            ]
        },
        {
            name: "Headphone",
            image: "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1674045768/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/239032_0_ogo1io.png?tr=w-600",
            subCategory: [
                {
                    name: 'Asus',
                    image: 'https://inkythuatso.com/uploads/thumbnails/800/2021/11/logo-asus-inkythuatso-2-01-26-09-21-11.jpg'
                },
                {
                    name: 'Logitech',
                    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Acer-logo.jpg/768px-Acer-logo.jpg'
                },
                {
                    name: 'HyperX',
                    image: 'https://steamuserimages-a.akamaihd.net/ugc/1002557701827770568/5065A15BD82BCFBCDA57ADBDEAA84B10E49B5398/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true'
                },
                {
                    name: 'Razer',
                    image: 'https://cdn.dribbble.com/users/163339/screenshots/12047842/logos-razor-logo.png'
                },
                {
                    name: 'Corsair',
                    image: 'https://logowik.com/content/uploads/images/corsair7271.jpg'
                }
            ]
        },
        {
            name: "Other",
            image: "https://img.freepik.com/premium-vector/pc-components-cpu-gpu-motherboard-cooler-ssd-hand-drawn-memory-modules-system-unit-power-supply-vector-personal-computer-parts-isolated-set_102902-6145.jpg",
            subCategory: [
                {
                    name: 'VGA',
                    image: 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/144523/Originals/card-do-hoa-VGA.jpg'
                },
                {
                    name: 'CPU',
                    image: 'https://techvccloud.mediacdn.vn/2018/10/25/cpu-la-gi-1540452887057206092610-61-0-600-960-crop-15404528912361694717970.jpg'
                },
                {
                    name: 'Motherboard',
                    image: 'https://4.imimg.com/data4/DY/TC/MY-13558365/atx-mother-board-500x500.jpg'
                },
                {
                    name: 'Case',
                    image: 'https://product.hstatic.net/200000420363/product/thung-may-case-mik-aion-black-kem-san-3-fan-rgb-tinhocngoisao.com_3_f3dd352ca3574fa5a24615308a49e99d_large.jpg'
                }
            ]
        }
    ]

    const turnBack = () => {
        navigation.navigate("Home");
    }

    return (
        <SafeAreaView style={{
            flex: 1
        }}>
            <View style={styles.topBar}>
                <TouchableOpacity
                    onPress={turnBack}
                >
                    <Image source={require(backButtonLink)}></Image>
                </TouchableOpacity>
                <Text style={{
                    fontSize: 14,
                    fontWeight: 700
                }}>
                    Category
                </Text>
            </View>

            <View style={styles.content}>
                <View style={styles.main}>
                    {main.map((mainCate, i) => (
                        <Pressable
                            key={i}
                            style={{
                                flex: 1,
                                alignItems: 'center'
                            }}
                            onPress={() => setCateSelected(mainCate.name)}>
                            <Image
                                style={{
                                    width: 40,
                                    height: 40,
                                    borderRadius: 20
                                }}
                                source={{ uri: mainCate.image }}
                            />
                            <Text>{mainCate.name}</Text>
                        </Pressable>
                    ))}
                </View>

                <View style={styles.brand}>
                    {cateSelected === 'Laptop' && (
                        main[0].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'RAM' && (
                        main[1].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'Storage' && (
                        main[2].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'Apple' && (
                        main[3].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'Screen' && (
                        main[4].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'Mouse' && (
                        main[5].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'Headphone' && (
                        main[6].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}

                    {cateSelected === 'Other' && (
                        main[7].subCategory.map((sub, i) => (
                            <Pressable key={i} style={{
                                flex: 1,
                                alignItems: 'center',
                                flexBasis: '40%'
                            }}>
                                <Image
                                    style={{
                                        width: 40,
                                        height: 40,
                                        borderRadius: 20
                                    }}
                                    source={{ uri: sub.image }}
                                />
                                <Text>{sub.name}</Text>
                            </Pressable>
                        ))
                    )}
                </View>
            </View>
        </SafeAreaView>
    )
}

export default Category;

const styles = StyleSheet.create({
    topBar: {
        flexDirection: 'row',
        alignItems: 'center',
        padding: 10,
        gap: 10,
        borderColor: '#000',
        borderBottomWidth: 1
    },
    content: {
        flex: 1,
        flexDirection: "row"
    },
    main: {
        flex: 1,
        backgroundColor: '#D9D9D9',
        alignItems: 'center',
        padding: 10
    },
    brand: {
        flex: 3,
        flexDirection: 'row',
        flexWrap: 'wrap',
        gap: 25,
        padding: 20
    }
})