import React from 'react';
import './App.css';
import Countdown from 'react-countdown-now';
import BackgroundSlider from 'react-background-slider';
import image1 from '../src/images/bg1.jpg';
import image2 from '../src/images/bg2.jpg';
import image3 from '../src/images/bg3.jpg';
import image4 from '../src/images/bg4.jpg';
import image5 from '../src/images/bg5.jpeg';
import image6 from '../src/images/bg6.jpg';

// Renderer callback with condition
const renderer = ({ days, hours, minutes, seconds }) => {
    return <div className="counter">
      <div className="flex-col-c-m size2 counter-ring m-l-15 m-r-15 m-b-20">
        <span className="counter-no">{days}</span>
        <span className="counter-text">days</span>
      </div>
      <div className="flex-col-c-m size2 counter-ring m-l-15 m-r-15 m-b-20">
        <span className="counter-no">{hours}</span>
        <span className="counter-text">hours</span>
      </div>
      <div className="flex-col-c-m size2 counter-ring m-l-15 m-r-15 m-b-20">
        <span className="counter-no">{minutes}</span>
        <span className="counter-text">minutes</span>
      </div>
      <div className="flex-col-c-m size2 counter-ring m-l-15 m-r-15 m-b-20">
        <span className="counter-no">{seconds}</span>
        <span className="counter-text">seconds</span>
      </div>
      </div>
};

function App() {
  var d = new Date('11/28/2019')
  return (
    <div className="App">
      <BackgroundSlider
        images={[image1, image2, image3, image4, image5, image6]}
        duration={10} transition={2} />
      <header className="App-header">
        <p>
          <b className="main-text">COMING SOON</b>
          <br></br>
          Our website is currently under construction
          <br></br>
        </p>
        <Countdown 
        date={d}
        renderer={renderer} />
      </header>
    </div>
  );
}

export default App;
