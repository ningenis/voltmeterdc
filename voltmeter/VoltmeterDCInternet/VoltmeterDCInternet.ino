/*
Kode Sistem Pengukuran Tegangan DC
Maks Tegangan yang dapat diukur : 10 V dengan arus 20mA
*/

// Library Initialization

// WiFi Setting 
#define SSID "HOMENET"        // SSID
#define PASS "0123456789"     // Password
#define HOST "192.168.1.7"  // Webhost
//-------------------------------

// Calibration Setting
int calibrationTime = 10;    

const float referenceVolts = 5; // Reference Tegangan Arduino
//const float referenceVolts = 3.3; // Untuk board dengan tegangan 3,3 V
const float R1 = 1000; // Nilai R1 (maks tegangan yang terukur 10 V, ubah sesuai dengan nilai resistor yang dipasang)
const float R2 = 1000; // Nilai R2
// Pembagi Tegangan
const float resistorFactor = 1023.0 / (R2/(R1 + R2));
const int batteryPin = 0; // Pin Pengukuran
int interval = 970; // Interval untuk satu loop
float volt; // Penampung nilai tegangan untuk dikirim ke server

void setup()
{
  Serial.begin(9600);
  // Sensor Calibration
  Serial.print("Calibrating sensor ");
  for(int i = 0; i < calibrationTime; i++){
    Serial.print(".");
    delay(1000);
    }
  Serial.println(" done");
  Serial.println("SENSOR ACTIVE");
  delay(50);
  // ESP8266 Module Connection
  Serial.println("AT");
  delay(5000);
  connectWiFi();
  //if(Serial.find("OK")){
    //connectWiFi();
  //}
}

void loop()
{
  int val = analogRead(batteryPin); // Baca nilai dari sensor
  float volts = (val / resistorFactor) * referenceVolts ; // Hitung Nilai Tegangan Terukur
  Serial.println(volts); // Tulis nilai tegangan dalam satuan volt
  // Kirim Data ke Server
  sendData(String(volts));
  delay(interval);
}

// Send Data to Server Procedure
void sendData(String volt){
  // Setup TCP Connection
  String cmd = "AT+CIPSTART=\"TCP\",\"";
  cmd += HOST;
  cmd += "\",80";
  Serial.println(cmd);
  delay(2000);

  // Send Data to Server with GET Method.
  cmd = "GET /voltmeter/add_data.php"; // Link to API                   
  cmd += "?tegangan=";                 // Selektor Sensor Tegangan
  cmd += volt;                        // Nilai Sensor Tegangan
  cmd += " HTTP/1.1\r\nHost: "; 
  cmd += HOST;
  cmd += "\r\n\r\n\r\n";
  Serial.print("AT+CIPSEND=");
  Serial.println(cmd.length());
  Serial.print(cmd);
  //if(Serial.find(">")){
    //Serial.print(cmd);
  //}  
}

// Connect WiFi Procedure
void connectWiFi(){
  // Connect to Access Point
  Serial.println("AT+CWMODE=1");
  delay(2000);
  String cmd="AT+CWJAP=\"";
  cmd+=SSID;
  cmd+="\",\"";
  cmd+=PASS;
  cmd+="\"";
  Serial.println(cmd);
  delay(5000);
  // WiFi Connection Checking
  if(Serial.find("OK")){
    Serial.println("Connection");
    //return true;
  }
  else{
    Serial.println("No Connection");
    //return false;
  }
}
