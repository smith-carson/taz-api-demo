<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
        crossorigin="anonymous" />
        <style>
          *  {font-size: 12px;}
          h2.report-header,
          h3.report-header,
          h4.report-header,
          h5.report-header,
          .report-primary-header,
          .report-secondary-header,
          .report-tertiary-header,
          .report-quaternary-header,
          .report-secondary-header th {
            font-family: Roboto, sans-serif;
            font-weight: bold;
            margin: 0 0 2px 0;
            border-top: solid 1px;
            border-bottom: solid 1px;
          }
          h2.report-header,
          h3.report-header,
          h4.report-header,
          h5.report-header {
            clear: both;
            width: 100%;
            text-align: center;
          }
          h2.report-header {
            font-size: 1.46667rem;
            padding: 7px 0;
          }
          h3.report-header {
            font-size: 1.2rem;
            padding: 7px 0 5px 0;
          }
          .report-secondary-header {
            font-size: 1.2rem;
            padding: 2px 0;
          }
          h4.report-header,
          h5.report-header {
            font-size: 1.2rem;
            padding: 5px 0 3px 0;
          }
          h2.report-header,
          .report-primary-header {
            background-color: #133048;
            color: #ffffff;
            border-top-color: #133048;
            border-bottom-color: #133048;
          }
          h3.report-header,
          .report-secondary-header {
            background-color: #4975d4;
            color: #ffffff;
            border-top-color: #4975d4;
            border-bottom-color: #4975d4;
          }
          h4.report-header,
          .report-tertiary-header {
            background-color: #b1bcce;
            color: #003366;
            border-top-color: #b1bcce;
            border-bottom-color: #b1bcce;
          }
          h5.report-header,
          .report-quaternary-header {
            background-color: #d9e1e6;
            color: #003366;
            border-top-color: #d9e1e6;
            border-bottom-color: #d9e1e6;
          }
          .report-label {
            text-transform: uppercase;
            vertical-align: middle;
            color: #333;
            font-size: 0.9rem;
            white-space: nowrap;
            padding: 0 10px;
          }
        </style>
      </head>
      <body>
        <section class="container">
          <div class="row">
            <div class="col">
              <img src="https://via.placeholder.com/180x90" />
            </div>
            <div class="col text-right">
              <span style="font-size:18px;font-weight:bold;">
              Background Screening Report</span>
              <div style="font-size: 10px; color: #222;">
              <br />Critical Research 
              <br />5755 North Point Pkwy 
              <br />Ste 279 
              <br />Alpharetta, GA 30022 
              <br />Phone: 877-316-4808 
              <br />Fax: 877-349-5860</div>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <table class="table table-sm table-borderless">
                <tbody>
                  <tr>
                    <td class="report-label">File Number</td>
                    <td>
                      <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/OrderId" />
                    </td>
                  </tr>
                  <tr>
                    <td class="report-label">Report To</td>
                    <td class="">International Student Exchange Inc
                    (iseinc) 
                    <br />36 Park Avenue 
                    <br />Bay Shore, NY 11706 
                    <br />Phone: (631) 241-0010 
                    <br />Fax: -</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="col">
              <table class="table table-sm table-borderless">
                <tbody>
                  <tr>
                    <td class="report-label">Report Date</td>
                    <td>CURRENT DATE (Not part of XML Result)</td>
                  </tr>
                  <tr>
                    <td class="report-label">Order Date</td>
                    <td>CURRENT DATE (Not part of XML Result)</td>
                  </tr>
                  <tr>
                    <td class="report-label">Reference</td>
                    <td>(Not part of XML Result)</td>
                  </tr>
                  <tr>
                    <td class="report-label">Type</td>
                    <td>ISE Criminal Package</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <h2 class="report-header">Application Information</h2>
          <table class="table table-sm table-borderless">
            <tbody>
              <tr>
                <td class="report-label">Applicant</td>
                <td class="reportBodyEditTD" id="applicantNameTd">
                <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/FirstName/text()" />&#160;
                
                <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/MiddleName/text()" />&#160;
                
                <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/LastName/text()" /></td>
                <td class="report-label">SSN</td>
                <td>
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/SSN/text()" />
                </td>
                <td></td>
                <td class="report-label">DOB</td>
                <td>
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/DOB/text()" />
                </td>
              </tr>
              <tr>
                <td class="report-label">Drivers License</td>
                <td class="reportBodyEditTD">-</td>
                <td class="report-label">Phone Number</td>
                <td class="reportBodyEditTD" colspan="4">
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/Phones/Phone/PhoneNumber" />
                </td>
              </tr>
              <tr>
                <td class="report-label">E-mail</td>
                <td class="reportBodyEditTD">
                  <a href="mailto:test@noemail.com">
                  test@noemail.com</a>
                </td>
                <td class="report-label"></td>
                <td class="reportBodyEditTD" colspan="4"></td>
              </tr>
            </tbody>
          </table>
          <table class="table table-sm table-borderless">
            <tbody>
              <tr>
                <td class="report-label">Address(es)</td>
                <td class="reportBodyEditTD">
                  <xsl:for-each select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo/Addresses/Address">

                    <xsl:value-of select="AddressLine" />
                    <br />
                  </xsl:for-each>
                </td>
                <td class="report-label">
                  <span style="white-space:nowrap">City / State /
                  Zip</span>
                </td>
                <td class="reportBodyEditTD">
                  <xsl:for-each select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo/Addresses/Address">
                  <xsl:value-of select="City" />, 
                  <xsl:value-of select="State" />/ 
                  <xsl:value-of select="Zip" />
                  <br /></xsl:for-each>
                </td>
              </tr>
            </tbody>
          </table>
          <h2 class="report-header">Investigative</h2>
          <h3 class="report-header">CrimNet Pro</h3>
          <table class="table table-borderless">
            <tbody>
              <tr>
                <td class="report-label">Results</td>
                <td colspan="3">
                  <xsl:for-each select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/Records/Record">

                    <dl class="row">
                      <dt class="col-sm-3 report-label">
                      Offender:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="Offender/FullName" />
                      </dd>
                      <dt class="col-sm-3 report-label">
                      Aliases:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="Offender/Aliases/text()" />
                      </dd>
                      <dt class="col-sm-3 report-label">DOB:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="Offender/DOB" />
                      </dd>
                      <dt class="col-sm-3 report-label">Other
                      Personal Identifiers:</dt>
                      <dd class="col-sm-9">
                        <xsl:if test="Offender/OtherPersonalIdentifiers/Gender/text()">

                          <span class="report-label">Gender:</span>
                          <xsl:value-of select="Offender/OtherPersonalIdentifiers/Gender" />
                        </xsl:if>
                        <xsl:if test="Offender/OtherPersonalIdentifiers/Race/text()">

                          <span class="report-label">Race:</span>
                          <xsl:value-of select="Offender/OtherPersonalIdentifiers/Race" />
                        </xsl:if>
                        <xsl:if test="Offender/OtherPersonalIdentifiers/Height/text()">

                          <span class="report-label">Height:</span>
                          <xsl:value-of select="Offender/OtherPersonalIdentifiers/Height" />
                        </xsl:if>
                        <xsl:if test="Offender/OtherPersonalIdentifiers/Weight/text()">

                          <span class="report-label">Weight:</span>
                          <xsl:value-of select="Offender/OtherPersonalIdentifiers/Weight" />
                        </xsl:if>
                        <xsl:if test="Offender/OtherPersonalIdentifiers/HairColor/text()">

                          <span class="report-label">Hair
                          Color:</span>
                          <xsl:value-of select="Offender/OtherPersonalIdentifiers/HairColor" />
                        </xsl:if>
                        <xsl:if test="Offender/OtherPersonalIdentifiers/EyeColor/text()">

                          <span class="report-label">Eye
                          Color:</span>
                          <xsl:value-of select="Offender/OtherPersonalIdentifiers/EyeColor" />
                        </xsl:if>
                      </dd>
                      <dt class="col-sm-3 report-label">
                      Provider:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="Provider" />
                      </dd>
                      <dt class="col-sm-3 report-label">
                      Jurisdiction:</dt>
                      <dd class="col-sm-9">
                      <xsl:value-of select="StateAbbreviation" />/ 
                      <xsl:value-of select="Jurisdiction" /></dd>
                      <dt class="col-sm-3 report-label">
                      Addresses:</dt>
                      <dd class="col-sm-9">
                        <xsl:for-each select="Offender/Addresses/Address">

                          <xsl:value-of select="Street" />
                          <xsl:value-of select="City" />
                          <xsl:value-of select="State" />
                          <xsl:value-of select="ZipCode" />
                          <xsl:value-of select="County" />
                          <xsl:value-of select="Country" />
                        </xsl:for-each>
                      </dd>
                    </dl>
                    <table class="table table-sm table-hover">
                      <thead>
                        <tr>
                          <th>Offense Type</th>
                          <th>Offense Description</th>
                          <th>Offense Date</th>
                        </tr>
                      </thead>
                      <tbody>
                        <xsl:for-each select="Offenses/Offense">
                          <tr>
                            <td>
                              <xsl:value-of select="OffenseType" />
                            </td>
                            <td>
                              <xsl:value-of select="Description" />
                            </td>
                            <td>
                              <xsl:value-of select="OffenseDate" />
                            </td>
                          </tr>
                        </xsl:for-each>
                      </tbody>
                    </table>
                  </xsl:for-each>
                </td>
              </tr>
              <tr>
                <td class="report-label">
                  <span style="white-space:nowrap">Name
                  Searched</span>
                </td>
                <td class="reportBodyEditTD">
                  <div>
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/FirstName/text()" />&#160;
                  
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/MiddleName/text()" />&#160;
                  
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/AddressInfos/AddressInfo[1]/LastName/text()" /></div>
                </td>
                <td class="report-label">Search Date</td>
                <td class="reportBodyEditTD">Not available in
                XML</td>
              </tr>
              <tr>
                <td class="report-label">DOB Searched</td>
                <td class="reportBodyEditTD">
                  <div>01-20-1974</div>
                </td>
              </tr>
              <tr>
                <td class="report-label">Jurisdiction</td>
                <td class="reportBodyEditTD">NATIONWIDE</td>
                <td colspan="2"></td>
              </tr>
              <tr>
                <td class="report-label-nowidth" colspan="4">Name
                Variation(s) Searched</td>
              </tr>
              <tr>
                <td colspan="4">
                  <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/NameVariationsSearched/text()" />
                </td>
              </tr>
              <tr>
                <td class="report-label-nowidth" colspan="4">
                Jurisdiction(s) Searched</td>
              </tr>
              <tr>
                <td colspan="4">
                  <details>
                    <summary>Show All</summary>
                    <p>
                      <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/JurisdictionsSearched" />
                    </p>
                  </details>
                </td>
              </tr>
            </tbody>
          </table>
          <div id="resultsNoRecords" style="">
            <table class="table table-sm table-borderless">
              <tbody>
                <tr>
                  <td class="report-label-nowidth" colspan="4">SSN
                  Validation Information</td>
                </tr>
                <tr>
                  <td>
                    <dl class="row">
                      <dt class="col-sm-3 report-label">
                      Deceased:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/SSNInfos/SSNInfo/Deceased" />
                      </dd>
                      <dt class="col-sm-3 report-label">
                      Message:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/SSNInfos/SSNInfo/Message" />
                      </dd>
                      <dt class="col-sm-3 report-label">Issued
                      Location:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/SSNInfos/SSNInfo/IssuedLocation" />
                      </dd>
                      <dt class="col-sm-3 report-label">Issued Date
                      Range:</dt>
                      <dd class="col-sm-9">
                        <xsl:value-of select="/BackgroundReports/BackgroundReportPackage/Screenings/Screening/GatewayXml/ResponseData/SSNInfos/SSNInfo/IssuedDateRange" />
                      </dd>
                    </dl>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <table class="background-report-table background-report-table-spacing">

            <tbody>
              <tr>
                <td style="text-align:center;padding-top:15px;padding-bottom:15px;">
                CAUTION: Based on the information provided Critical
                Research searched for public records in the sources
                referenced herein for criminal history information
                as permitted by federal and state law. 'No
                Reportable Records Found' means that our
                researchers could not locate a record that matched
                the SSN and at least one personal identifier (i.e.,
                Name or Date of Birth) for the subject in that
                jurisdiction. Further investigation into additional
                jurisdictions, or utilization of additional
                identifying information, may be warranted. Please
                call for assistance.</td>
              </tr>
            </tbody>
          </table>
          <h3 class="report-header">Disclaimer</h3>
          <table class="background-report-table background-report-table-spacing">

            <tbody>
              <tr>
                <td align="center">This report is furnished to you
                pursuant to the Agreement for Service between the
                parties and in compliance with the Fair Credit
                Reporting Act. This report is furnished based upon
                your certification that you have a permissible
                purpose to obtain the report. The information
                contained herein was obtained in good faith from
                sources deemed reliable, but the completeness or
                accuracy is not guaranteed.</td>
              </tr>
            </tbody>
          </table>
          <h3 class="report-header">*** End Of Report ***</h3>
        </section>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
