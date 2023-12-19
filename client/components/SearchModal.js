import {
  Modal,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
  ScrollView,
} from "react-native";
import React, { useState, useRef } from "react";
import { AntDesign } from "@expo/vector-icons";
import { SearchBox } from "./SearchBox";
import { useSearchBox } from "react-instantsearch-core";
import { InfiniteHits } from "./InfiniteHits";
import { useInfiniteHits } from "react-instantsearch-core";
import AlgoliaComponent from "./AlgoliaComponent";
function Hit({ hit, closeModal }) {
  console.log("Show hit", hit._highlightResult.name.value);
  console.log("Show hit", hit.objectID);

  const cleanedProductName = hit._highlightResult.name.value.replace(
    /<mark>(.*?)<\/mark>/g,
    "$1"
  );

  return (
    <AlgoliaComponent
      cleanedProductName={cleanedProductName}
      productID={hit.objectID}
      onPress={closeModal} // Pass the callback to close the modal
    />
  );
}

const SearchModal = ({ modalOpen, setModalOpen }) => {
  const { query, refine } = useSearchBox();
  const [inputValue, setInputValue] = useState(query);
  const inputRef = useRef(null);

  function setQuery(newQuery) {
    setInputValue(newQuery);
    refine(newQuery);
  }

  // Track when the InstantSearch query changes to synchronize it with
  // the React state.
  // We bypass the state update if the input is focused to avoid concurrent
  // updates when typing.
  if (query !== inputValue && !inputRef.current?.isFocused()) {
    console.log(query);
    setInputValue(query);
  }

  const { hits, isLastPage, showMore, hasMore } = useInfiniteHits();

  const [text, setText] = useState("");

  const search = () => {};

  return (
    <>
      <Modal animationType="fade" transparent={true} visible={modalOpen}>
        <View
          style={{
            flex: 1,
            alignItems: "center",
          }}
        >
          <View style={styles.modalView}>
            <SearchBox />
            <View
              style={{
                flexDirection: "row",
                gap: 10,
                alignItems: "center",
                flex: 1,
              }}
            >
              <Pressable onPress={() => setModalOpen(!modalOpen)}>
                <AntDesign name="closecircleo" size={20} color="black" />
              </Pressable>
            </View>
          </View>

          <InfiniteHits
            hitComponent={(hit) => (
              <Hit {...hit} closeModal={() => setModalOpen(false)} />
            )}
          />
        </View>
      </Modal>
    </>
  );
};

export default SearchModal;

const styles = StyleSheet.create({
  modalView: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginTop: 70,
    width: 330,
    backgroundColor: "white",
    borderRadius: 20,
    padding: 20,
    shadowColor: "#000",
    shadowOpacity: 0.25,
    shadowRadius: 4,
    elevation: 5,
    gap: 10,
  },
});
