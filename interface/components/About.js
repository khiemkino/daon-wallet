import React from 'react';

// TODO : Andus:: 상단 Electron menu > Mist에 대하여
class About extends React.Component {
  render() {
    const appIconPath = `file://${window.dirname}/icons/${
      window.mistMode
    }/icon2x.png`;
    const appName =
      window.mistMode === 'mist' ? 'Daon-Mist' : 'AndusChain Wallet';

    return (
      <div className="row popup-windows about">
        <div className="col col-4 ">
          <img
            className={`left-overlay ${window.mistMode}`}
            src={appIconPath}
            style={{
              position: 'relative',
              top: '-40px',
              left: '-132%',
              width: '255%'
            }}
          />
        </div>
        <div className="col col-8 ">
          <h1>{appName}</h1>
          <p>
            Version {window.mist.version}
            <br />
            License {window.mist.license}
            <br />
            GitHub{' '}
            <a href="https://github.com/anduschain/daon-mist" target="_blank">
              github.com/anduschain/daon-mist
            </a>
          </p>
          <small>Copyright 2019 AndusChain Foundation</small>
        </div>
      </div>
    );
  }
}

export default About;
