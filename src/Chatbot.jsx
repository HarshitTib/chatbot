import React, { useState, useEffect, useRef } from 'react';
import axios from 'axios';
import { FaUser } from 'react-icons/fa';

function Chatbot() {
  const [messages, setMessages] = useState([
    {
      type: 'bot',
      content: "How can i help you with?",
    }
  ]);
  const [inputValue, setInputValue] = useState('');
  const formRef = useRef(null);

  const sendMessage = async () => {
    if (inputValue.trim() === '') return;
    const userMessage = {
      type: 'user',
      content: inputValue,
    };
  
    setMessages((prevMessages) => [...prevMessages, userMessage]);
    setInputValue('');
  
    let fData = new FormData();
    fData.append('text', inputValue);
  
    try {
      const response = await axios.post('http://localhost/message.php', fData);
      const botMessage = {
        type: 'bot',
        content: response.data.reply,
        link: response.data.link,
      };
      setMessages((prevMessages) => [...prevMessages, botMessage]);
    } catch (error) {
      console.error(error);
    }
  };

  useEffect(() => {
    if (formRef.current) {
      formRef.current.scrollTop = formRef.current.scrollHeight;
    }
  }, [messages]);

  return (
    <div className="wrapper">
      <div className="title">Simple Online Chatbot</div>
      <div ref={formRef} className="form">
        {messages.map((message, index) => (
          <div key={index} className={`inbox ${message.type}-inbox`}>
            <div className="icon">
              <FaUser />
            </div>
            <div className="msg-header">
              {message.type === 'bot' && (
                <div>
                  <p>{message.content}</p>
                  {message.link && <a href={message.link}>Click me</a>}
                </div>
              )}
              {message.type === 'user' && <p>{message.content}</p>}
            </div>
          </div>
        ))}
      </div>
      <div className="typing-field">
        <div className="input-data">
          <input
            id="data"
            type="text"
            placeholder="Type something here.."
            value={inputValue}
            onChange={(e) => setInputValue(e.target.value)}
            required
          />
          <button id="send-btn" onClick={sendMessage}>
            Send
          </button>
        </div>
      </div>
    </div>
  );
}

export default Chatbot;
