import React, { useState } from 'react';
import { View, Text, TextInput, Button, ScrollView } from 'react-native';
import ReactMarkdown from 'react-native-markdown-display'; // Make sure to install this library

const ChatArea = () => {
  const [userInput, setUserInput] = useState('');
  const [chatHistory, setChatHistory] = useState([]);

  const handleInputChange = (text) => {
    setUserInput(text);
  };

  const handleSend = () => {
    if (userInput.trim() !== '') {
      // Add user input to chat history
      setChatHistory((prevChatHistory) => [
        ...prevChatHistory,
        { sender: 'user', message: userInput },
      ]);

      // Clear input field
      setUserInput('');

      // Send user input to API
      sendUserInput(userInput);
    }
  };

  const handleKeyDown = () => {
    handleSend();
  };

  const sendUserInput = (input) => {
    // Make the API call to http://127.0.0.1:5000/search using POST method
    // Don't forget to replace this placeholder code with your actual API call
    fetch('http://192.168.1.211:5000/search', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        query: input,
        top_k: 10,
      }),
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then((data) => {
        const gptResponse = data.gpt_response;
        console.log(gptResponse);
        // Add API response to chat history
        setChatHistory((prevChatHistory) => [
          ...prevChatHistory,
          { sender: 'bot', message: gptResponse },
        ]);
      })
      .catch((error) => {
        console.error('Error:', error);
      });
  };

  return (
    <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <View
        style={{
          width: 300,
          backgroundColor: 'lightblue',
          borderRadius: 10,
          padding: 10,
          maxHeight: 600,
        }}
      >
        <ScrollView>
          {/* Chat history */}
          {chatHistory.map((chat, index) => (
            <View
              key={index}
              style={{
                marginTop: 4,
                backgroundColor: chat.sender === 'user' ? 'lightcyan' : 'white',
                color: chat.sender === 'user' ? 'black' : 'teal',
                padding: 8,
                borderRadius: 5,
                textAlign: chat.sender === 'user' ? 'right' : 'left',
              }}
            >
              <Text>{chat.sender === 'user' ? 'User:' : 'Bot:'}</Text>
              <ReactMarkdown>{chat.message}</ReactMarkdown>
            </View>
          ))}
        </ScrollView>

        {/* User input */}
        <View style={{ marginTop: 10, flexDirection: 'row' }}>
          <TextInput
            style={{
              flex: 1,
              backgroundColor: 'lightcyan',
              color: 'teal',
              padding: 8,
              borderRadius: 5,
            }}
            value={userInput}
            onChangeText={handleInputChange}
            onSubmitEditing={handleKeyDown}
            placeholder="Type your message..."
          />

          <Button title="Send" onPress={handleSend} />
        </View>
      </View>
    </View>
  );
};

export default ChatArea;