import java.io . * ;
import java.net . * ;
public class ClientUDP
{
	public static void main ( String [ ] args )
	{
	InetAddres addr = InetAddress.getLocalHost();
	System.out.println("adresse="+addr.getHostName() );
	DatagramPacket packet = new DatagramPacket (data, data.length, addr, 1234 );
	DatagramSocket sock = new DatagramSocket();
	sock.send(packet);
	sock.close();
}}
