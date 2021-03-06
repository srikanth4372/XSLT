
import java.io.File;

import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class TEs {

	static void Transform(){

		String XSLFile = "src/investToPortfolio.xsl";
		String INFile = "src/investments.xml";
		String OutFile = "src/Portfolio.xml";

		StreamSource xslCode = new StreamSource(new File(XSLFile));
		StreamSource xmlInput = new StreamSource(new File(INFile));
		StreamResult xmlOut = new StreamResult(new File(OutFile));

		//Perform transformation
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer trans;
		try {
			trans = tf.newTransformer(xslCode);
			trans.transform(xmlInput, xmlOut);
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}
	}


	public static void main(String[] args) {
		Transform();
		System.out.println("Transformation Done!!! Please check the output file...");
	}
}
