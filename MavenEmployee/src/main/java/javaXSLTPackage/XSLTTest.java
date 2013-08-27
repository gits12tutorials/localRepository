package  javaXSLTPackage;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
public class XSLTTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dataXML = "src\\main\\webapp\\data.xml" ;
        String inputXSL = "src\\main\\webapp\\converted.xsl";
        String outputHTML = "src\\main\\webapp\\NewFile.html";
 System.out.println("hi");
        XSLTTest st = new XSLTTest();
        try
        {
            st.transform(dataXML, inputXSL, outputHTML);
        }
        catch (TransformerConfigurationException e)
        {
            System.err.println("TransformerConfigurationException");
            System.err.println(e);
        }
        catch (TransformerException e)
        {
            System.err.println("TransformerException");
            System.err.println(e);
        }
    }
 
    public void transform(String dataXML, String inputXSL, String outputHTML)
            throws TransformerConfigurationException,
            TransformerException
    {
 
        TransformerFactory factory = TransformerFactory.newInstance();
        StreamSource xslStream = new StreamSource(inputXSL);
        Transformer transformer = factory.newTransformer(xslStream);
        StreamSource in = new StreamSource(dataXML);
        StreamResult out = new StreamResult(outputHTML);
        transformer.transform(in, out);
        System.out.println("The generated HTML file is:" + outputHTML);
    }


	}

