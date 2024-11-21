<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Homes</title>
    <link rel="stylesheet" href="template.css">
    <link rel="stylesheet" href="test.css">
    <script src="template.js" defer></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>

<div class="navbar" id="myNavbar">
    <a class="icon" id="menuIcon" onclick="myFunction()">
        &#9776; <!-- Menu icon -->
    </a>
    <a class="icon" id="backIcon" onclick="myFunction()" style="display: none;">
        &#x2190; <!-- Back icon -->
    </a>
    <div class="logo">
        <img src="Logo.png" id="logo-img" alt="Logo">
        <h1>AI Homes</h1>
    </div>
    <a href="#home" status="active" onclick="setActive(this)">Home</a>
    <a href="Milk-Order.html" onclick="setActive(this)">Store</a>
    <a href="#about" onclick="setActive(this)">About</a>
    <a href="#contact" onclick="setActive(this)">Contact</a>
    <a href="#login" class="login-icon">
        Login
    </a>
</div>

<div id="body">

    <header>
        <h1>BAPPAhive</h1>
        <p>Making your home smarter and greener</p>
    </header>
    <main>
        <h2>Control Panel</h2>
        <section id="controls">
            <div class="device">
                <img src="https://img.icons8.com/color/48/000000/light.png" alt="Light Bulb">
                <p>Light</p>
                <button id="light-toggle" onclick="toggleLight()">Switch</button>
            </div>
            <div class="device">
                <img src="https://img.icons8.com/color/48/000000/fan.png" alt="Fan">
                <p>Fan</p>
                <button id="fan-toggle" onclick="toggleFan()">Switch</button>
            </div>
            <div class="device">
                <img src="https://img.icons8.com/fluency/48/temperature.png" alt="Thermostat">
                <p>Thermostate</p>
                <input type="number" id="temperature" value="24" min="16" max="30">
                <button onclick="setTemperature()">Set Temperature</button>
                <p id="temp-display">Current: 24°C</p>
            </div>
        </section>
        <div class="shopnow">
          <a href="Store.html">
            <button style="margin-top: 50px; background-color: black;">Shop Now</button>
          </a>
        </div>
    </main>


</div>




<footer style="margin-top: 850px;">
    <div class="footer-container">
      <div class="footer-section about">
        <h2>Home Automation</h2>
        <p>By BAPPAhive</p>
        <p>Fully AI Automated Homes</p>
      </div>
  
      <!--div class="footer-section links">
        <h3>Quick Links</h3>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Marketplace</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Styles</a></li>
          <li><a href="#">FAQs</a></li>
        </ul>
      </div-->
  
      <div class="footer-section contact">
        <h3>Contact Us</h3>
        <p>Email: help@casaconnect.in</p>
        <p>Phone: +91 9319828480</p>
        <p>Address: SoICT, <br> Gautam Buddha University, Greater Noida</p>
      </div>
  
      <div class="footer-section social">
        <h3>Follow Us</h3>
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-linkedin"></i></a>
      </div>
    </div>
  
    <div class="footer-bottom">
      <p>&copy; 2024 AI Homes. All Rights Reserved.</p>
    </div>
  </footer>


  <style>

div[id="body"]{
  text-align: center;
}

#controls {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 30px;
}

.device {
    width: 250px;
    background: white;
    border-radius: 15px;
    padding: 20px;
    text-align: center;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s, box-shadow 0.3s;
}

.device:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
}

.device img {
    width: 80px;
    margin-bottom: 10px;
}

.fan {
    transition: transform 0.5s linear;
}

.fan.rotating {
    animation: rotate-blades 2s linear infinite;
}

@keyframes rotate-blades {
    from {
        transform: rotate(0deg);
    }
    to {
        transform: rotate(360deg);
    }
}

button {
    background: #388E3C;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s;
}

button:hover {
    background: #2E7D32;
}

input[type="number"] {
    margin-top: 10px;
    padding: 10px;
    font-size: 14px;
    width: 70px;
    border: 1px solid #ccc;
    border-radius: 5px;
    text-align: center;
}

footer {
    text-align: center;
    background: #333;
    color: white;
    padding: 15px;
    font-size: 0.9rem;
    bottom: 0;
    width: 100%;
}





  </style>

<script src="script.js">

  // Bulb 3D Model
const bulbCanvas = document.getElementById("bulb-canvas");
const bulbRenderer = new THREE.WebGLRenderer({ canvas: bulbCanvas, alpha: true });
bulbRenderer.setSize(bulbCanvas.clientWidth, bulbCanvas.clientHeight);

const bulbScene = new THREE.Scene();
const bulbCamera = new THREE.PerspectiveCamera(
75,
bulbCanvas.clientWidth / bulbCanvas.clientHeight,
0.1,
1000
);
bulbCamera.position.z = 3;

// Lighting for bulb
const ambientLightBulb = new THREE.AmbientLight(0xffffff, 1.2); // Stronger light
bulbScene.add(ambientLightBulb);

// Bulb model
const bulbGeometry = new THREE.SphereGeometry(0.7, 32, 32);
const bulbMaterial = new THREE.MeshStandardMaterial({
color: 0xffffff,
emissive: 0x000000,
emissiveIntensity: 0, // Glow for lightOn
});
const bulb = new THREE.Mesh(bulbGeometry, bulbMaterial);
bulbScene.add(bulb);

let lightOn = false;
function toggleLight() {
lightOn = !lightOn;
bulbMaterial.emissiveIntensity = lightOn ? 1.5 : 0; // Adjust emissive intensity
document.getElementById("light-toggle").textContent = lightOn ? "Turn Off" : "Turn On";
}

function animateBulb() {
requestAnimationFrame(animateBulb);
bulbRenderer.render(bulbScene, bulbCamera);
}
animateBulb();

// Fan 3D Model
const fanCanvas = document.getElementById("fan-canvas");
const fanRenderer = new THREE.WebGLRenderer({ canvas: fanCanvas, alpha: true });
fanRenderer.setSize(fanCanvas.clientWidth, fanCanvas.clientHeight);

const fanScene = new THREE.Scene();
const fanCamera = new THREE.PerspectiveCamera(
75,
fanCanvas.clientWidth / fanCanvas.clientHeight,
0.1,
1000
);
fanCamera.position.z = 3;

// Lighting for fan
const ambientLightFan = new THREE.AmbientLight(0xffffff, 1);
fanScene.add(ambientLightFan);

// Fan blades model
const fanBlades = new THREE.Group();
const bladeGeometry = new THREE.BoxGeometry(0.05, 1, 0.1);
const bladeMaterial = new THREE.MeshStandardMaterial({ color: 0x333333 });

for (let i = 0; i < 4; i++) {
const blade = new THREE.Mesh(bladeGeometry, bladeMaterial);
blade.rotation.z = (i * Math.PI) / 2; // "+" shape
fanBlades.add(blade);
}
fanScene.add(fanBlades);

let fanOn = false;
function toggleFan() {
fanOn = !fanOn;
document.getElementById("fan-toggle").textContent = fanOn ? "Turn Off" : "Turn On";
}

function animateFan() {
if (fanOn) {
  fanBlades.rotation.z += 0.2; // Smooth rotation
}
requestAnimationFrame(animateFan);
fanRenderer.render(fanScene, fanCamera);
}
animateFan();

</script>
