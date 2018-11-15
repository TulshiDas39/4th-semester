package assignment02;

import java.awt.BasicStroke;
import java.awt.BorderLayout;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Stroke;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.lang.management.ManagementFactory;
import java.util.ArrayList;

import javax.management.Attribute;
import javax.management.AttributeList;
import javax.management.MBeanServer;
import javax.management.ObjectName;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.Timer;

@SuppressWarnings("serial")
public class CPUusage extends JPanel implements ActionListener {
	
	private double cpuUsagePercentage;
	private Timer timer;
	private int second=0;
	private ArrayList<Integer> heightOfBar = new ArrayList<>();
	
	public CPUusage() {
		super();
		setLayout(null);
		timer = new Timer(2000,this);
		timer.start();
	}
	
	@Override
	public void paint(Graphics g) {
		super.paint(g);
		g.drawLine(0, 600, 1360, 600);
		g.drawLine(35, 0, 35, 700);
		g.drawString("0%", 10, 613);
		g.setFont(new Font("Vrinda", Font.PLAIN, 20));
		g.drawLine(30, 3, 40, 3);
		g.drawString("100%", 0, 12);
		
		for(int i=0;i<10;i++){
			if(i==0){ g.drawLine(30, 3, 40, 3);

			}
			else g.drawLine(30, 60*i, 40, 60*i);
			if(i!=9) g.drawString(String.valueOf(90-i*10)+"%", 3, 63+i*60);
			
		}
		
		/*g.drawLine(30, 60, 40, 60);
		g.drawString("90%", 3, 63);
		g.drawLine(30, 120, 40, 120);
		g.drawString("80%", 5, 123);
		g.drawLine(30, 180, 40, 180);
		g.drawString("70%", 3, 183);
		g.drawLine(30, 240, 40, 240);
		g.drawString("60%", 3, 243);
		g.drawLine(30, 300, 40, 300); 
		g.drawString("50%", 3, 303);
		g.drawLine(30, 360, 40, 360);
		g.drawString("40%", 3, 363);
		g.drawLine(30, 420, 40, 420);
		g.drawString("30%", 3, 423);
		g.drawLine(30, 480, 40, 480);
		g.drawString("20%", 3, 483);
		g.drawLine(30, 540, 40, 540);
		g.drawString("10%", 3, 543);*/
		
		for(int i=0;i<22;i++){
			g.drawLine(85+i*60, 595, 85+i*60, 605);
			g.drawString(String.valueOf(2+i*2)+"s", 82+i*60, 620);

		}
		
		 Graphics2D g2d = (Graphics2D) g.create();

	        Stroke dashed = new BasicStroke(1, BasicStroke.CAP_BUTT, BasicStroke.JOIN_BEVEL, 0, new float[]{3,10}, 0);
	        g2d.setStroke(dashed);
	        g2d.drawLine(35, 3, 1360, 3);
	        for(int i=0;i<10;i++){
		        g2d.drawLine(35, 60+60*i, 1360, 60+60*i);

	        }
	       /* g2d.drawLine(35, 60, 1360, 60);
	        g2d.drawLine(35, 120, 1360, 120);
	        g2d.drawLine(35, 180, 1360, 180);
	        g2d.drawLine(35, 240, 1360, 240);
	        g2d.drawLine(35, 300, 1360, 300);
	        g2d.drawLine(35, 360, 1360, 360);
	        g2d.drawLine(35, 420, 1360, 420);
	        g2d.drawLine(35, 480, 1360, 480);
	        g2d.drawLine(35, 540, 1360, 540);
	        g2d.drawLine(35, 600, 1360, 600);*/

	        g2d.dispose();
	        
			 Graphics2D g2d1 = (Graphics2D) g.create();
			
			 System.out.println(cpuUsagePercentage);
			 g2d1.setStroke(new BasicStroke(30));
			 for(int i=0;i<heightOfBar.size();i++){
				 g2d1.drawLine(85+i*60, 585-heightOfBar.get(i), 85+i*60, 585);

			 }
			 g2d1.dispose();


	}
	
	public static void main(String[] args) throws Exception {
		JFrame frame = new JFrame("CPU Usage");
		frame.setLayout(new BorderLayout());
		frame.setExtendedState(JFrame.MAXIMIZED_BOTH);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().add(new CPUusage(),BorderLayout.CENTER);
		frame.setVisible(true);
		
	}
	public static double getProcessCpuLoad() throws Exception {

	    MBeanServer mbs    = ManagementFactory.getPlatformMBeanServer();
	    ObjectName name    = ObjectName.getInstance("java.lang:type=OperatingSystem");
	    AttributeList list = mbs.getAttributes(name, new String[]{ "ProcessCpuLoad" });

	    if (list.isEmpty())  return Double.NaN;

	    Attribute att = (Attribute)list.get(0);
	    Double value  = (Double)att.getValue();

	    if (value == -1.0)    return Double.NaN;
	    return ((int)(value * 1000) / 10.0);
	}
	//@Override
	public void actionPerformed(ActionEvent e) {
		try {
			cpuUsagePercentage = getProcessCpuLoad();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		second += 2;
		if(second>44){second = 2;
			heightOfBar.clear();
		}
		System.out.println(cpuUsagePercentage);
		heightOfBar.add((int)(cpuUsagePercentage*6));
		
		repaint();
		
	}

}
