
/**
 * Please modify this class to meet your needs
 * This class is not complete
 */

package org.rsm.finjournal.service;

import java.util.logging.Logger;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * This class was generated by Apache CXF 2.4.6
 * 2014-11-24T12:13:11.890-05:00
 * Generated source version: 2.4.6
 * 
 */

@javax.jws.WebService(
                      serviceName = "FinjournalService",
                      portName = "FinjournalServiceSOAP",
                      targetNamespace = "org:rsm:finjournal:service",
                      wsdlLocation = "file:/C:/rsmtemp/projects/finjournalws-parent/finjournalws-services/src/main/webapp/wsdl/FinjournalService.wsdl",
                      endpointInterface = "org.rsm.finjournal.service.FinjournalService")
                      
public class FinjournalServiceImpl implements FinjournalService {

    private static final Logger LOG = Logger.getLogger(FinjournalServiceImpl.class.getName());

    /* (non-Javadoc)
     * @see org.rsm.finjournal.service.FinjournalService#getFinancialSummary(org.rsm.finjournal.service.FinancialSummaryRequest  financialSummaryRequest )*
     */
    public org.rsm.finjournal.service.FinancialSummaryResponse getFinancialSummary(FinancialSummaryRequest financialSummaryRequest) { 
        LOG.info("Executing operation getFinancialSummary");
        System.out.println(financialSummaryRequest);
        try {
            org.rsm.finjournal.service.FinancialSummaryResponse _return = new org.rsm.finjournal.service.FinancialSummaryResponse();
            _return.setReturnMessageText("ReturnMessageText1598743997");
            _return.setErrorCode("ErrorCode-1182558589");
            _return.setReasonCode("ReasonCode-671944666");
            _return.setServiceIdentifier("ServiceIdentifier1970737708");
            _return.setOperationIdentifier("OperationIdentifier-2052369769");
            _return.setAccountName("AccountName-1345288603");
            _return.setAccountBalance("AccountBalance1929790437");
            return _return;
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }

}
