import processing.net.*;


int port = 10001; 


Server server; 

void setup() {
  PFont font = createFont("HiraginoSans-W2", 20);
  textFont(font);
  server = new Server(this, port); 
  println("server address: " + server.ip() + "\n"); 
}

void draw() {
  Client client = server.available();

  if (client !=null) {
    String whatClientSaid = client.readString();
    if (whatClientSaid != null) {
      println(whatClientSaid); 
    }
  }
}
