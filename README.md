# 🌤️ Real-Time Weather App

A simple and clean **Flutter weather application** that shows real-time weather data using a public API. Built with **GetX** for state management and features **dark/light theme switching**.

---

## 🚀 Features

- 🌍 **Real-time weather** using city name
- 🌡️ Shows temperature, humidity, wind, pressure, etc.
- 🌓 **Theme toggle** (Dark / Light mode)
- 📱 Mobile responsive UI
- ⚡ Fast state management using **GetX**

---

## 🧠 How Weather Info Works

- This app uses a free weather API **OpenWeatherMap**
- When you search a city:
  - It sends an HTTP GET request to the API
  - API responds with JSON data
  - App parses and displays:  
    - Current temperature  
    - Weather condition (cloudy, rainy, etc.)  
    - Humidity, wind speed, pressure  
    - Min/max temps    
- All requests and state are handled using GetX's controller

---

## 📦 Tech Stack

- Flutter
- GetX (State Management + Routing)
- HTTP package
- OpenWeatherMap API 

---

## 🛠️ Setup & Run Locally

```bash
git clone https://github.com/yourusername/weather-app.git
cd weather-app
flutter pub get
flutter run
