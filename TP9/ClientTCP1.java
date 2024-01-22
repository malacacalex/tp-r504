Socket socket = new Socket( "localhost", 2016 );
DataOutputStream dOut = new DataOutputStream( socket.getOutputStream() );
dOut.writeUTF( "message test" );
socket.close();
