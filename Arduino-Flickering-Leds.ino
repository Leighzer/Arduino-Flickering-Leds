const int ledStart = 2;//inclusive range for leds that we will randomly switch on and off
const int ledEnd = 6;
const int ledOffset = 3;//since arduino nano data pins start at 2

bool ledStates[ledEnd - ledStart + ledOffset];
bool builtInLedState = false;

void setup() {
  Serial.begin(9600);
  for(int i = ledStart; i <= ledEnd; i++){
    pinMode(i,OUTPUT);    
  }  
  int ledStatesLength = sizeof(ledStates) / sizeof(bool);  
  Serial.print("Length of ledStates: ");
  Serial.println(ledStatesLength);
}

void loop() {
  for(int i = ledStart; i <= ledEnd; i++){
    int ran = random(2);
    if(ran == 0){
      //do nothing - 50% chance
    }
    else{
      ledStates[i] = !ledStates[i];
      digitalWrite(i,ledStates[i]);
    }
    delay(random(50));//random delay to make toggling more chaotic
  } 
  builtInLedState = !builtInLedState;
  digitalWrite(LED_BUILTIN,builtInLedState);//toggle the built in led to have an indication for when a batch of leds is processed
}
