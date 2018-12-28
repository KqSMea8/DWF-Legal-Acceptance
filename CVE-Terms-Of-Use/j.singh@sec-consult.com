Delivered-To: kurt@seifried.org
Received: by 10.157.8.51 with SMTP id 48csp828564oty;
        Sun, 20 Aug 2017 08:50:49 -0700 (PDT)
X-Received: by 10.223.167.73 with SMTP id e9mr8758499wrd.205.1503244249555;
        Sun, 20 Aug 2017 08:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503244249; cv=none;
        d=google.com; s=arc-20160816;
        b=J/JyfRQt9fIRnGnxW6g1PjJIG1HdPI3Ew0K51pdfo3wCXdlIh3TxLQ9JSJYb/L5sDp
         W5/L3EsWXPScsUEv/RwGRxFbpPCMvAly6uqeH1Ttx0X+Y9K4nISJCihPlTsdd6SrlJeC
         xRBEDIeFp2JqJxUyIEImavnS8Xu5NNbPA/iJaue8+xXeOXDjcIcdY4s7hDy7D/I7kIvu
         yN0CO25tI2VFoPTIUG23M7k9qbCRET4RNlecGTjy8TwViOUXcey8RCEt8XWwgMXC2nb/
         hPPh5NLyZDspck7Aiv5PEz5paTqi0oKOc4XUoK+ua5B2FJYGCVKNLJllgR71yuXK0FQb
         qiZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:arc-authentication-results;
        bh=VPQATYLzGnRCGyxhNoZlQiwF7bL6kn8fPGT7DFv3Te0=;
        b=CZW9m4+dtnh/hcMkHXXKdXrDjW9XrCtF0QguYtA6lvfUBx76TZptEGw0VQSPlaxKEv
         tG8CtbKYv2iLDSPh0MxJM/+0iNWOmLQ4DirrSUE9ZG5KlHcfYLPg9yZTSHgn9vSLrg/B
         IUn6cj+GjpF13wMb8mWft2X05edotWluhiSa9KlTZnNIv95IbIzdWlQg54MN4r6rSH86
         TV12Y/8EfrzIcGxbXZ6xxtHinZ2ZtUhAoVljXrgo6jWe6MItWCGshHcsK9eBQCIbE8rU
         A3NGhNiuEUZOSqDSabGQfnZywiayPlibHcqbHmR7dIKEuDZzj9kGBT5s87l3FYmYHp1l
         MtxA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of j.singh@sec-consult.com designates 185.39.174.137 as permitted sender) smtp.mailfrom=j.singh@sec-consult.com
Return-Path: <j.singh@sec-consult.com>
Received: from mail.sec-consult.com (mail.sec-consult.com. [185.39.174.137])
        by mx.google.com with ESMTPS id 93si7848039wrf.473.2017.08.20.08.50.49
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Aug 2017 08:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of j.singh@sec-consult.com designates 185.39.174.137 as permitted sender) client-ip=185.39.174.137;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of j.singh@sec-consult.com designates 185.39.174.137 as permitted sender) smtp.mailfrom=j.singh@sec-consult.com
From: Jasveer Singh <j.singh@sec-consult.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 j.singh@sec-consult.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 j.singh@sec-consult.com
Thread-Index: AQHTGFh1JheCYMGC+0SdBx4vONV5fqKNZ0pQ
Date: Sun, 20 Aug 2017 15:50:47 +0000
Message-ID: <97e119f6cd974ff48a975024de48dc4b@sec-consult.com>
References: <20170818193022.55281.72440@shiny-2.local>
In-Reply-To: <20170818193022.55281.72440@shiny-2.local>
Accept-Language: en-SG, de-AT, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_000A_01D31A0F.23DDDAD0"
MIME-Version: 1.0

------=_NextPart_000_000A_01D31A0F.23DDDAD0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I accept

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities =
and
Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and =
all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an =
"AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express =
or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVE??). Any copy you =
make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, =
EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF =
THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED =
WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

Best regards,
Jasveer Singh
Security Consultant

SEC Consult Malaysia Sdn Bhd,
Unit C-12-4, Level 12,
Block C Megan Avenue II,
12, Jalan Yap Kwan Seng,
50450 Kuala Lumpur.

Mobile (MY)=A0=A0=A0=A0=A0=A0=A0 : +60 17 466 7712
Email=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 : =
j.singh@sec-consult.com
_________________________________________________________________________=
___
_________________
ADVISOR FOR YOUR INFORMATION SECURITY.
www.sec-consult.com | blog.sec-consult.com | twitter.com/sec_consult

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org]=20
Sent: Saturday, 19 August 2017 3:30 AM
To: Jasveer Singh <j.singh@sec-consult.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
j.singh@sec-consult.com

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the =
data
until you accept the MITRE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree =
to
the MITRE CVE Terms of Use and we will add a copy of the email to the =
DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ste
r/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when =
they
were accepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore =
this
message, however we may resend it at some point in the future, if you =
don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
we don't spam you with these, please note that this will prevent you =
from
being able to accept the MITRE CVE Terms of Use via the DWF =
automatically in
future (you'll have to manually ask). But again, if you have no idea =
what a
CVE is then you can ignore this/ask to be added to the block list with =
no
problems.=20

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities =
and
Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and =
all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an =
"AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express =
or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVE??). Any copy you =
make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, =
EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF =
THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED =
WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msO
fUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.=20


------=_NextPart_000_000A_01D31A0F.23DDDAD0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
EwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDE9MDsGA1UEAxM0Q09NT0RPIFJT
QSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAL6znlesKHZ1QBbHOAOY08YYdiFQ8yV5C0y1oNF9Olg+nKcxLqf2
NHbZhGra0D00SOTq9bus3/mxgUsg/Wh/eXQ0pnp8tZ8XZWAnlyKMpjL+qUByRjXCA6RQyDMqVaVU
kbIr5SU0RDX/kSsKwer3H1pT/HUrBN0X8sKtPTdGX8XAWt/VdMLBrZBlgvnkCos+KQWWCo63OTTq
Rvaq8aWccm+KOMjTcE6s2mj6RkalweyDI7X+7U5lNo6jzC8RTXtVV4/Vwdax720YpMPJQaDaElmO
upyTf1Qib+cpukNJnQmwygjD8m046DQkLnpXNCAGjuJy1F5NATksUsbfJAr7FLUCAwEAAaOCATww
ggE4MB8GA1UdIwQYMBaAFLuvfgI9+qbxPISOre44mOzZMjLUMB0GA1UdDgQWBBSCr2yM+MX+lmF8
6B89K3FIXsSLwDAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADARBgNVHSAECjAI
MAYGBFUdIAAwTAYDVR0fBEUwQzBBoD+gPYY7aHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RP
UlNBQ2VydGlmaWNhdGlvbkF1dGhvcml0eS5jcmwwcQYIKwYBBQUHAQEEZTBjMDsGCCsGAQUFBzAC
hi9odHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FBZGRUcnVzdENBLmNydDAkBggrBgEF
BQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMA0GCSqGSIb3DQEBDAUAA4ICAQB4XLKBKDRP
PO5fVs6fl1bsj6JrF/bz9kkIBtTYLzXN30D+03Hj6OxCDBEaIeNmsBhrJmuubvyE7HtoSmR809Ag
cYboW+rcTNZ/8u/Hv+GTrNI/AhqX2/kiQNxmgUPt/eJPs92Qclj0HnVyy9TnSvGkSDU7I5Px+TbO
+88G4zipA2psZaWeEykgzClZlPz1FjTCkk77ZXp5cQYYexE6zeeN4/0OqqoAloFrjAF4o50YJafX
8mnahjp3I2Y2mkjhk0xQfhNqbzlLWPoT3m7j7U26u7zg6swjOq8hITYc3/np5tM5aVyu6t99p17b
TbY7+1RTWBviN9YJzK8HxzObXYWBf/L+VGOYNsQDTxAk0Hbvb1j6KjUhg7fO294F29QIhhmiNOr8
4JHoy+fNLpfvYc/Q9EtFOI5ISYgOxLk3nD/whbUe9rmEQXLp8MB933Ij474gwwCPUpwv9mj2PMnX
oc7mbrS22XUSeTwxCTP9bcmUdp4jmIoWfhQm7X9w/Zgddg+JZ/YnIHOwsGsaTUgj7fIvxqith7Do
JC91WJ8Lce3CVJqb1XWeKIJ84F7YLXZN0oa7TktYgDdmQVxYkZo1c5noaDKH9Oq9cbm/vOYRUM1c
Wcef20Wkyk5S/GFyyPJwG0fR1nRas3DqAf4cXxMiEKcff7PNa4M3RGTqH0pWR8p6EjCCBkQwggUs
oAMCAQICEQDBcBIoSg9iBwTpSQ9JrT21MA0GCSqGSIb3DQEBCwUAMIGXMQswCQYDVQQGEwJHQjEb
MBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFD
T01PRE8gQ0EgTGltaXRlZDE9MDsGA1UEAxM0Q09NT0RPIFJTQSBDbGllbnQgQXV0aGVudGljYXRp
b24gYW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0xNzA3MjYwMDAwMDBaFw0xODA3MjYyMzU5NTlaMIIB
RjELMAkGA1UEBhMCQVQxDTALBgNVBBETBDI3MDAxGjAYBgNVBAgTEU5pZWRlcm9lc3RlcnJlaWNo
MRUwEwYDVQQHEwxXci4gTmV1c3RhZHQxGTAXBgNVBAkTEEtvbWFyaWdhc3NlIDE0LzExLjAsBgNV
BAoTJVNFQyBDb25zdWx0IFVudGVybmVobWVuc2JlcmF0dW5nIEdtYkgxSTBHBgNVBAsTQElzc3Vl
ZCB0aHJvdWdoIFNFQyBDb25zdWx0IFVudGVybmVobWVuc2JlcmF0dW5nIEdtYkggRS1QS0kgTWFu
YWcxHzAdBgNVBAsTFkNvcnBvcmF0ZSBTZWN1cmUgRW1haWwxFjAUBgNVBAMTDUphc3ZlZXIgU2lu
Z2gxJjAkBgkqhkiG9w0BCQEWF2ouc2luZ2hAc2VjLWNvbnN1bHQuY29tMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAyH1Jnv0OcJxkTcE7cxuAQ1xsHYKMrFPNFfiFuUxtI/ifwjahNAjP
OOjA2Bv7UMIjR07Z2IMnmouhxwbJm6kZDiaEiRINZy+Bcesyb82OBSHU1Semq130TH6ToFDffH+F
D8sW7PUHFJ9xegAFtQag8HT2Y1yaSG1ySPp95MGKDGcsB3vcuix/DQ0e5wbrh6tWJ6oC6YgXtUK2
qxigq003W91nLo3uxr/R+x4anupDn7oGV3gWm/9NcSAt6hdtMk1x5/d6BSNLcKFCS+KYayNkGDrC
w+oeL9LlMn4Jsxc3dbR5IRbdFKHb3aZjmX0yeiG47jMJZSS0cWq0NrDm8AatAQIDAQABo4IB1zCC
AdMwHwYDVR0jBBgwFoAUgq9sjPjF/pZhfOgfPStxSF7Ei8AwHQYDVR0OBBYEFFsO+pYCb1LD+D+j
9NGFWeM76FfpMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUF
BwMEBggrBgEFBQcDAjBGBgNVHSAEPzA9MDsGDCsGAQQBsjEBAgEDBTArMCkGCCsGAQUFBwIBFh1o
dHRwczovL3NlY3VyZS5jb21vZG8ubmV0L0NQUzBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3Js
LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWls
Q0EuY3JsMIGLBggrBgEFBQcBAQR/MH0wVQYIKwYBBQUHMAKGSWh0dHA6Ly9jcnQuY29tb2RvY2Eu
Y29tL0NPTU9ET1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5jcnQwJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNvbTAiBgNVHREEGzAZgRdqLnNpbmdoQHNl
Yy1jb25zdWx0LmNvbTANBgkqhkiG9w0BAQsFAAOCAQEAl4tI8ba3D4z2G88CMRg3fHfztL4epuMO
Pkf70YVu+q8cV0mfbXugNzRi/cnPN6612EL7i8QRp+zWcPzJsJPW2v+rRnSMVj0RBvrO8vrDCwmr
hBO2tGWSGwW//kDthIvI42wNPcxfgJ+JHjVavo/7qb9p91kEzFW1E/mnusAMxCLqmikb8H+wyLKp
00yNmPFvKhw1DW3lGRiKZvuEBmiL5p9Iv+o55WfKXxdNv+UWvBNNQu9AAcAa1BypMpvRwsmmc7+s
wi2wokzuoNf5mPHur/MwSmWnn75OnUs2od4GOLB2j1AZM63UlTaqEnWgCN2zde2OUyGwdX44SHf8
HHTzajGCBGAwggRcAgEBMIGtMIGXMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5j
aGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDE9MDsG
A1UEAxM0Q09NT0RPIFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAMFwEihKD2IHBOlJD0mtPbUwDQYJYIZIAWUDBAIBBQCgggKDMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE3MDgyMDE1NTA0NVowLwYJKoZIhvcNAQkEMSIEIKo8
kTFrVJfxPXt2eICw8KsriCMAB64uB1CY3ciUAahrMIGTBgkqhkiG9w0BCQ8xgYUwgYIwCwYJYIZI
AWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwDgYIKoZIhvcNAwIC
AgCAMA0GCCqGSIb3DQMCAgFAMAsGCWCGSAFlAwQCATALBglghkgBZQMEAgMwCwYJYIZIAWUDBAIC
MAcGBSsOAwIaMIG+BgkrBgEEAYI3EAQxgbAwga0wgZcxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJH
cmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBM
aW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2Vj
dXJlIEVtYWlsIENBAhEAwXASKEoPYgcE6UkPSa09tTCBwAYLKoZIhvcNAQkQAgsxgbCgga0wgZcx
CzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZv
cmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVu
dCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEAwXASKEoPYgcE6UkPSa09tTAN
BgkqhkiG9w0BAQEFAASCAQAxtUlTPwPtxI+RovKYZ3Eb672zqStqTww8oZBNvic80LFbpe+LHqD8
S1uPZXBruyyUayEsjngnqVQdBHgY2HbpcLWm+anj2gn5wRiFgrG7cdwCaylN4EBbsCh0//nsm9S4
Wx7BsqZeDV2Q+Fex1c6nFjt1XjN4YgXWo6uPx9eL2lBKRDL+7KKVY6O3QuoR/mq2T5KqgB4W9VDl
FLI/+K+IwhsLPO9/EsVSsBhe6dT39fwBdM6A3ubXEjajaWZe7oy+ANu3qoG3h46g0KhxqGbfEXv1
UzCtozq9OgrL3A9t7rq7qHmx4MkVIEN7j8eT6kynYXhJTvnt5pp/+RyRXYGvAAAAAAAA

------=_NextPart_000_000A_01D31A0F.23DDDAD0--
