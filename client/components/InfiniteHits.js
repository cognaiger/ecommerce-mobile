import React from "react";
import { StyleSheet, View, FlatList, Text } from "react-native";
import { useInfiniteHits } from "react-instantsearch-core";

export function InfiniteHits({ hitComponent: Hit, ...props }) {
  const { hits, isLastPage, showMore } = useInfiniteHits({
    ...props,
    escapeHTML: false,
  });

  return (
    <View style={styles.container}>
      <FlatList
        data={hits}
        keyExtractor={(item) => item.objectID}
        ItemSeparatorComponent={() => <View style={styles.separator} />}
        onEndReached={() => {
          if (!isLastPage) {
            showMore();
          }
        }}
        renderItem={({ item }) => (
          <View style={styles.item}>
            <Hit hit={item} />
            <View style={styles.border} />
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    borderWidth: 1,
    borderColor: "black", // Black border color
    borderRadius: 10, // Rounded corners
    overflow: "hidden",
    backgroundColor: "white",
  },
  separator: {
    borderBottomWidth: 1,
    borderColor: "#ddd",
  },
  item: {
    padding: 18,
    backgroundColor: "white", // White background
  },
  border: {
    borderBottomWidth: 1,
    borderColor: "#ddd", // Border between each result
  },
});
