import React, { useState } from 'react';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div style={styles.container}>
      <h1>🚀 React App in Docker</h1>
      <p style={styles.counter}>You clicked {count} times</p>
      <div style={styles.buttonGroup}>
        <button onClick={() => setCount(count + 1)} style={styles.button}>
          ➕ Increment
        </button>
        <button onClick={() => setCount(0)} style={styles.button}>
          🔄 Reset
        </button>
      </div>
    </div>
  );
}

const styles = {
  container: {
    fontFamily: 'Arial, sans-serif',
    textAlign: 'center',
    padding: '2rem',
  },
  counter: {
    fontSize: '1.5rem',
  },
  buttonGroup: {
    marginTop: '1rem',
  },
  button: {
    padding: '10px 20px',
    margin: '0 10px',
    fontSize: '1rem',
    cursor: 'pointer',
  },
};

export default App;
