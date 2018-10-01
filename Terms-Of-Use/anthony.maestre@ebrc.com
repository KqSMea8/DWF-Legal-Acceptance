Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c8c:0:0:0:0:0 with SMTP id l12-v6csp3558666ocg;
        Mon, 1 Oct 2018 01:14:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV603Zkje4x2S9r2/oLaEndQbHut5sbyMJSrrC9XpZqLw0fsj06QgoLgD3oeonyOyw2lBxm5f
X-Received: by 2002:a5d:680b:: with SMTP id w11-v6mr5749917wru.186.1538381653020;
        Mon, 01 Oct 2018 01:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538381652; cv=none;
        d=google.com; s=arc-20160816;
        b=daV9HyPD0AHdyIIJGJqH026E7aPWjRdx50Vw9kkQA5YXGGkrDvuHFrTm0OuS7KznLU
         efGQyhK0oPAwIFaMYV/r4JMjikEwWodGeI0itQOx/XbhypHvqBFZ9W2eqIHeTf79bbsB
         HpOnBlTz4JbAQwtNnz3rapdHbnTuRVxC7UYW0gRHZkpSqSI3Xkn4b+NqjqNSX5NYs5gc
         yc+qHraWpzF97EQ5EdV066eWneXNFHkpqjp5LDvDWeOWhSclEOxHuAGSysOt7onr/ID1
         iZXHsannuQZP+LqVnZxmxcVXCmyQ30NXengORKHLNM9hvsp49YxVo2+Bwt6RK9Tm+Q+d
         pMLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from;
        bh=GKetosjNg88ua7xOjfUPuCJwN+FuNRAvv/+5WjTLtYM=;
        b=gnjkerSeKumRDIN2wctiX251Bzjjw84emwRizGq186pnTo5258XQxX2/+MwJEj7eNw
         aPkoKW3xJ6MspM5FM+57TdB3PPCZrYf0yMWWFUk79I4COC6y5/9Orq7kYu2BzR5P8iIw
         YilQ72cDAwt/Wh7pEsVIvaXAdeoi1XCeShOwQjf0SbOZnTUN/bNoybRYwi22DWXrg2Z1
         nuoYmj/GcEUunbx/po/2Q87qH6PDbqVO2n4xtkvAxmLebbTe1yPdrpfLNrtjtZpzxpRS
         M35bko8NmM3Svq6Zv8kOFMctxq9/OyklUJThEOny514LoXCTr5tSAl1RybGeQVIOkYpm
         i0kg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of anthony.maestre@ebrc.com designates 194.154.197.57 as permitted sender) smtp.mailfrom=Anthony.Maestre@ebrc.com
Return-Path: <Anthony.Maestre@ebrc.com>
Received: from mx2.ebrc.com (mx2.ebrc.com. [194.154.197.57])
        by mx.google.com with ESMTPS id 188-v6si436902wmk.174.2018.10.01.01.14.12
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Oct 2018 01:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of anthony.maestre@ebrc.com designates 194.154.197.57 as permitted sender) client-ip=194.154.197.57;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of anthony.maestre@ebrc.com designates 194.154.197.57 as permitted sender) smtp.mailfrom=Anthony.Maestre@ebrc.com
From: Maestre Anthony <Anthony.Maestre@ebrc.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 anthony.maestre@ebrc.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 anthony.maestre@ebrc.com
Thread-Index: AQHUV0Afx6iWoLAOlU+zm+m9iDDZraUKDuhQ
Date: Mon, 1 Oct 2018 08:14:09 +0000
Message-ID: <98132762aa934a68b22bbd4c00b836ad@ebrc.com>
References: <20180928152956.22875.37665@shiny-2.local>
In-Reply-To: <20180928152956.22875.37665@shiny-2.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-originating-ip: [172.26.1.6]
x-tm-as-product-ver: SMEX-12.5.0.1300-8.5.1010-24128.003
x-tm-as-result: No-18.267200-8.000000-10
x-tmase-matchedrid: rYpa/RC+czG7lpQUW6Uvz7iMC5wdwKqdt7k6BDMlB1h2EvQS5cIFJD11
	qDA2H+XsVJIZZPrCNU5iEDFIrzpzi32pjYl3WDG1ypeMiaCPnxtls8GUNi+ozRHfiujuTbedONL
	/wt8zzIt53upQHbmOMIhKV5n/9uUNQkQeJWnVObPyGRbPcm9NkiseSAhqf1rRyj+mMsG+Wjbj6f
	SiVX5Av1N1mpHF11Yw/HSsMHbgHH2jUsqYi6wLL00jzafXv7tTLi2dwKiMR9wM74Nf6tTB9gEN0
	fDYhIYQ1d3bfUUUXDjVagcjZxTxIK6sjRfHwKLz8vjpL4rKEfPTDXgcUlCNo5B79bJB40cY/cXb
	R0bNRT2rI10MB/17RVnXvaC0RNMqXtne4opDTiD1P43ozrarBYTqWr4ruO2HQtAmhdC/04vpu+R
	XAnPP6SKYkpvIP39gKXArU5WUZskuomMkG8nx0k5GBIYERk6j3E5VFJRbiIRvz6DFSrfHYwCwdK
	yEN9f3q1BrMLt2yU0T6x+nFOZDeZOdW5SNZumrLTHwnYOikQ2MUoj7yLheDJsoi2XrUn/JQYMOR
	uDWAmQ4BrATwm8hogP90fJP9eHt
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--18.267200-8.000000
x-tmase-version: SMEX-12.5.0.1300-8.5.1010-24128.003
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0019_01D4596F.7CF37940"
MIME-Version: 1.0
x-msw-jemd-newsletter: false

------=_NextPart_000_0019_01D4596F.7CF37940
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I accept

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] 
Sent: vendredi 28 septembre 2018 17:30
To: Maestre Anthony <Anthony.Maestre@ebrc.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
anthony.maestre@ebrc.com

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/maste
r/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when they
were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically in
future (you'll have to manually ask). But again, if you have no idea what a
CVE is then you can ignore this/ask to be added to the block list with no
problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an "AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/maste
r/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc. 


------=_NextPart_000_0019_01D4596F.7CF37940
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
bGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEAvrOeV6wodnVAFsc4A5jTxhh2IVDzJXkLTLWg0X06WD6cpzEup/Y0dtmE
atrQPTRI5Or1u6zf+bGBSyD9aH95dDSmeny1nxdlYCeXIoymMv6pQHJGNcIDpFDIMypVpVSRsivl
JTRENf+RKwrB6vcfWlP8dSsE3Rfywq09N0ZfxcBa39V0wsGtkGWC+eQKiz4pBZYKjrc5NOpG9qrx
pZxyb4o4yNNwTqzaaPpGRqXB7IMjtf7tTmU2jqPMLxFNe1VXj9XB1rHvbRikw8lBoNoSWY66nJN/
VCJv5ym6Q0mdCbDKCMPybTjoNCQuelc0IAaO4nLUXk0BOSxSxt8kCvsUtQIDAQABo4IBPDCCATgw
HwYDVR0jBBgwFoAUu69+Aj36pvE8hI6t7jiY7NkyMtQwHQYDVR0OBBYEFIKvbIz4xf6WYXzoHz0r
cUhexIvAMA4GA1UdDwEB/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMBEGA1UdIAQKMAgwBgYE
VR0gADBMBgNVHR8ERTBDMEGgP6A9hjtodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9DT01PRE9SU0FD
ZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNybDBxBggrBgEFBQcBAQRlMGMwOwYIKwYBBQUHMAKGL2h0
dHA6Ly9jcnQuY29tb2RvY2EuY29tL0NPTU9ET1JTQUFkZFRydXN0Q0EuY3J0MCQGCCsGAQUFBzAB
hhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wDQYJKoZIhvcNAQEMBQADggIBAHhcsoEoNE887l9W
zp+XVuyPomsX9vP2SQgG1NgvNc3fQP7TcePo7EIMERoh42awGGsma65u/ITse2hKZHzT0CBxhuhb
6txM1n/y78e/4ZOs0j8CGpfb+SJA3GaBQ+394k+z3ZByWPQedXLL1OdK8aRINTsjk/H5Ns77zwbj
OKkDamxlpZ4TKSDMKVmU/PUWNMKSTvtlenlxBhh7ETrN543j/Q6qqgCWgWuMAXijnRglp9fyadqG
OncjZjaaSOGTTFB+E2pvOUtY+hPebuPtTbq7vODqzCM6ryEhNhzf+enm0zlpXK7q332nXttNtjv7
VFNYG+I31gnMrwfHM5tdhYF/8v5UY5g2xANPECTQdu9vWPoqNSGDt87b3gXb1AiGGaI06vzgkejL
580ul+9hz9D0S0U4jkhJiA7EuTecP/CFtR72uYRBcunwwH3fciPjviDDAI9SnC/2aPY8ydehzuZu
tLbZdRJ5PDEJM/1tyZR2niOYihZ+FCbtf3D9mB12D4ln9icgc7CwaxpNSCPt8i/GqK2HsOgkL3VY
nwtx7cJUmpvVdZ4ognzgXtgtdk3ShrtOS1iAN2ZBXFiRmjVzmehoMof06r1xub+85hFQzVxZx5/b
RaTKTlL8YXLI8nAbR9HWdFqzcOoB/hxfEyIQpx9/s81rgzdEZOofSlZHynoSMIIGTDCCBTSgAwIB
AgIQTib49kuobEYo4yrdqc86ljANBgkqhkiG9w0BAQsFADCBlzELMAkGA1UEBhMCR0IxGzAZBgNV
BAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RP
IENBIExpbWl0ZWQxPTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFu
ZCBTZWN1cmUgRW1haWwgQ0EwHhcNMTcwOTI5MDAwMDAwWhcNMjAwOTI4MjM1OTU5WjCCAU4xCzAJ
BgNVBAYTAkxVMQ0wCwYDVQQREwQyNDUzMRMwEQYDVQQIEwpMdXhlbWJvdXJnMRMwEQYDVQQHEwpM
dXhlbWJvdXJnMR4wHAYDVQQJDBU1IHJ1ZSBFdWfDqG5lIFJ1cHBlcnQxKjAoBgNVBAoMIUUtQnVz
aW5lc3MgJiBSZXNpbGllbmNlIENlbnRyZSBTQTENMAsGA1UECxMEZUJSQzFHMEUGA1UECww+SXNz
dWVkIHRocm91Z2ggRS1CdXNpbmVzcyAmIFJlc2lsaWVuY2UgQ2VudHJlIFNBIEUtUEtJIE1hbmFn
ZXIxHzAdBgNVBAsTFkNvcnBvcmF0ZSBTZWN1cmUgRW1haWwxGDAWBgNVBAMTD0FudGhvbnkgTWFl
c3RyZTEnMCUGCSqGSIb3DQEJARYYYW50aG9ueS5tYWVzdHJlQGVicmMuY29tMIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAu1/0tBBQa1rNHs3gvIR5LVTVoVyYZtPjgbRDY3CahBt9a/tZ
mZtX321/C/U28ujInJxh2dmUQO/CJ+uU3SR7CktFzJWhxN8CfxIckeGPyKpiIFIeods4TDFthGNb
Qgk0j1KRyh5O/JQAQULQjBK1ni0F3x1w10//JuLegdx+tfC0slaff5WrMMhpRepuqCTQHnUozyhI
oBDWxnVm/xE/3Vt5MQzclAg2uMEtryabJohgFgQtvhaUdFpFuX229kl9LJPSdZGw2Wio6ftjajVO
RuKy5dNd3cva0txgxIIUHJSvYnLyF403MFFDVgqwV2VCUZlXTkk34lw31zVgtfkQKwIDAQABo4IB
2DCCAdQwHwYDVR0jBBgwFoAUgq9sjPjF/pZhfOgfPStxSF7Ei8AwHQYDVR0OBBYEFCoQSNYyxtb7
W7qm+kHF0USBr3tuMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsG
AQUFBwMEBggrBgEFBQcDAjBGBgNVHSAEPzA9MDsGDCsGAQQBsjEBAgEDBTArMCkGCCsGAQUFBwIB
Fh1odHRwczovL3NlY3VyZS5jb21vZG8ubmV0L0NQUzBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8v
Y3JsLmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVt
YWlsQ0EuY3JsMIGLBggrBgEFBQcBAQR/MH0wVQYIKwYBBQUHMAKGSWh0dHA6Ly9jcnQuY29tb2Rv
Y2EuY29tL0NPTU9ET1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5jcnQw
JAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNvbTAjBgNVHREEHDAagRhhbnRob255
Lm1hZXN0cmVAZWJyYy5jb20wDQYJKoZIhvcNAQELBQADggEBAF6usfPj0fpq4GhR5U5jY5wRdnD3
hZ54BahxNH4jYYpx1L1vREs80vOxFR9jbx7nUe+w0kx4aVLY7tRDMNUzbv31K+6RdVyuyrcIWt+d
NcImjtuAm4WtGknrpkSGgyL1xOqH4VRlqxjFQBlOT+Iq/RITYeBIHxVmg+0WHGIBlUBQ4vktQNr4
+Ztx0bNIk+YYUxxlEjDqq6IEDXcCFifxaJwilvwqgffKKuJDjo0XTz0SsO67+rOseUxYXOgehpTG
1clPvQLEiH691LToXNQizBDPBYTUKNw/Ch+Fivv2H4Emeyc+xRLC0wUoKTZ/OrAtWQduP9Io2ODW
rwWHXMflIswxggRNMIIESQIBATCBrDCBlzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
PTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEE4m+PZLqGxGKOMq3anPOpYwCQYFKw4DAhoFAKCCAnUwGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgxMDAxMDgxNDA3WjAjBgkqhkiG9w0BCQQxFgQUCspR
s/xAaj+xt03v6RpSOcxVypswgZMGCSqGSIb3DQEJDzGBhTCBgjALBglghkgBZQMEASowCwYJYIZI
AWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcN
AwICAUAwBwYFKw4DAhowCwYJYIZIAWUDBAIDMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgEwgb0G
CSsGAQQBgjcQBDGBrzCBrDCBlzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hl
c3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxPTA7BgNV
BAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EC
EE4m+PZLqGxGKOMq3anPOpYwgb8GCyqGSIb3DQEJEAILMYGvoIGsMIGXMQswCQYDVQQGEwJHQjEb
MBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFD
T01PRE8gQ0EgTGltaXRlZDE9MDsGA1UEAxM0Q09NT0RPIFJTQSBDbGllbnQgQXV0aGVudGljYXRp
b24gYW5kIFNlY3VyZSBFbWFpbCBDQQIQTib49kuobEYo4yrdqc86ljANBgkqhkiG9w0BAQEFAASC
AQCOXEUnIiBxtiTRaZt8+QkHcjKxZcVS/v6GgmZOzQsRG0RqiYBeGgoQk3LBzT/OPFr5c7dhTW+J
idp2aK+ZyFP6R/Ozy73jrxlLMkDJn+LaMPO3WBRkC0ekf43QZ6w0n1qL+pttqTjauH/oX2xEg34e
BiSxKV61vM07p78FL/oLDpA9mHflN2OTo3790QlN1u8HIzHR3+Tvv/Tt1MaWEgV6yFRtTIkrBAhh
+lPTQIb2VY/WGXF5T17a3ARERnV9JAFDowEWIjh59PDOcym0bmL5sYyb6/syHnECD6wEtTG0oZKu
oK/ETGNL/Jqwna4vM4/IQ1hKLvoltQ+0W4dsi8f6AAAAAAAA

------=_NextPart_000_0019_01D4596F.7CF37940--
