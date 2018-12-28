Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp1592967ivl;
        Sat, 30 Sep 2017 01:36:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCBls2/71m6KO4apY9P3ryUOT2RUrFnVIAhg2YdnPL2eyNSkv/X8D8UDY5YU0ZS0zLuQjr3
X-Received: by 10.99.116.14 with SMTP id p14mr2569641pgc.70.1506760564273;
        Sat, 30 Sep 2017 01:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506760564; cv=none;
        d=google.com; s=arc-20160816;
        b=RG1gy1fkS1D7ab1c5a0gDgjmE9Kyz07f9zv8f5WdtxZ4czZhiSi4kwxFoENWUO/cUo
         QNDXKKy3cCL+upGNjfSaRNo+K/XqwmKvvOX9l7yD4oqTQmk9TT2WZPP8QI1NPSvGcWDy
         NgfZVhRDH/GvnfbuXro9Na+0l33t3MVc4hzDKl/QH/k9bEdxqo+rRrBmc87TnqN9v54e
         K8pPmH90YAxYzuwWWzcYhbBV2ly+b0393Zq80NHJtFr+Y+WajPCAW8N8t/WOnyVtYHxf
         5jp+pWsTjkoPd9UDWYYn8azhG+ERV72ISGBVztRgEAgYPEc+DHCSWyYqNKgcmSazj6rr
         RU0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:accept-language:in-reply-to:references:message-id:date
         :thread-index:thread-topic:subject:to:from:mime-version
         :arc-authentication-results;
        bh=intM7214zUxhtbYrfJjThFGQlN0h6B5TKarfP4frkQ0=;
        b=ri7Nxo7Lzw5pJ0umTGXsltDct6ZbjnP64uBgAvBt4Xfss4C7M1Cnw5D8QjGHmgPazb
         siTG7wBv5oew6mdyM9UIIqo+5J+ZFgh6iJe3LUw0wjjMiy8DwXVBPbjLSfiYa5endBci
         7noGPI4Z01a89wEl4qoMmCG9pIA0dDkhkWxwtCu+26BGMmi0GWg2NPvqCn2Jq0Q9e5eX
         g2JcpU71GeOS2V2xZ2HjiB36ykClFwZiakYPJPXZTJq0twVnRmxC+yfuxcGkzuZ1yJ3V
         47FMlMJYoURS1DFog6WWFwTWRjDQFzAZ92kn6Wt/bzbxrwHWT71PK1VukJ+1SUSBMaqF
         jFCw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of przemyslaw.duda@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=przemyslaw.duda@intel.com
Return-Path: <przemyslaw.duda@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by mx.google.com with ESMTPS id r8si2368122pli.171.2017.09.30.01.36.04
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 01:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of przemyslaw.duda@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of przemyslaw.duda@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=przemyslaw.duda@intel.com
Content-Type: multipart/mixed; boundary="===============0789208970245687289=="
MIME-Version: 1.0
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 01:36:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,457,1500966000"; 
   d="p7s'?scan'208";a="1177253130"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
  by orsmga001.jf.intel.com with ESMTP; 30 Sep 2017 01:36:01 -0700
Received: from irsmsx107.ger.corp.intel.com ([169.254.10.65]) by
 IRSMSX108.ger.corp.intel.com ([169.254.11.167]) with mapi id 14.03.0319.002;
 Sat, 30 Sep 2017 09:36:00 +0100
From: "Duda, Przemyslaw" <przemyslaw.duda@intel.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 przemyslaw.duda@intel.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 przemyslaw.duda@intel.com
Thread-Index: AQHTOY0Y2okxt66jFE6rZun3G6VLbKLNGuSA
Date: Sat, 30 Sep 2017 08:36:00 +0000
Message-ID: <6E9829ACDE75504099B9B81E643BBB657604A55D@IRSMSX107.ger.corp.intel.com>
References: <20170930014024.3437.80496@222.2.168.192.in-addr.arpa>
In-Reply-To: <20170930014024.3437.80496@222.2.168.192.in-addr.arpa>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0

--===============0789208970245687289==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0000_01D339D7.E76D7AE0"

------=_NextPart_000_0000_01D339D7.E76D7AE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I accept

Regards,
Przemyslaw Duda

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] 
Sent: Saturday, September 30, 2017 3:40 AM
To: Duda, Przemyslaw <przemyslaw.duda@intel.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
przemyslaw.duda@intel.com

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


------=_NextPart_000_0000_01D339D7.E76D7AE0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
BAQDAgGGMBIGA1UdEwEB/wQIMAYBAf8CAQAwNgYDVR0lBC8wLQYIKwYBBQUHAwQGCisGAQQBgjcK
AwQGCisGAQQBgjcKAwwGCSsGAQQBgjcVBTAXBgNVHSAEEDAOMAwGCiqGSIb4TQEFAWkwSQYDVR0f
BEIwQDA+oDygOoY4aHR0cDovL2NybC50cnVzdC1wcm92aWRlci5jb20vQWRkVHJ1c3RFeHRlcm5h
bENBUm9vdC5jcmwwOgYIKwYBBQUHAQEELjAsMCoGCCsGAQUFBzABhh5odHRwOi8vb2NzcC50cnVz
dC1wcm92aWRlci5jb20wNQYDVR0eBC4wLKAqMAuBCWludGVsLmNvbTAboBkGCisGAQQBgjcUAgOg
CwwJaW50ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQApws2j/ZKjUmeiLwbtblDoVI+rV+bIpbex
IN/Vqa/IeSMSB3bmfswpEcYSZHHGjOI8qlyZt9dhT4nSDnrScKjmA8XvxZ3tmbNyYJybVQUV8jF/
DpADX1tGlMLxswxpJISXzLf0+DBr4cQ2ag9mwzrcN1nrOIOc+pxJtx9izyp3+bl3baulerkgZVS1
fotftH+FJLD/ex8BOcEuCIm2KVXJjs4YaZgoIBLYjTiK29JLVa15xdO305kPI1uXsu05sGuAwuFm
Sklb6k5H1/eHlUbZLm4qQDtOH00L0ShJx3BAIAjD5RYptJDQiyPZQUvt8cq+apYpVMv3yxHO8jex
40LgMIIFyTCCBLGgAwIBAgITMwAAjJLfjfkt+ClwoAAAAACMkjANBgkqhkiG9w0BAQUFADB5MQsw
CQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJ
bnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBD
QSA0QTAeFw0xNzAxMjUxMDM0MDJaFw0xODAxMjAxMDM0MDJaMEUxGTAXBgNVBAMTEER1ZGEsIFBy
emVteXNsYXcxKDAmBgkqhkiG9w0BCQEWGXByemVteXNsYXcuZHVkYUBpbnRlbC5jb20wggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCJ8Y06W+eQsfTNyBLJPJv7PcATm4ivwErFID+fz7f5
ytfH3yP6pKcApev6V2H7AEF+/HXgBNZKc4sQt6tuTf01AlYcmK+/3XBjtndzzmxPBBKKEw31k4gG
FvatCkSqXFLf9Tsa90mlFdBaWy+1Uwqmo92RaMYw2shL6pAoeLlo++/3nlaZ0Dx2ToU/bHmIVqaw
XS9CDrsI/Z6jO8JSJ27Dll2qIq/Ua2g71FzrjMOpre2ucMAjap8iNgKG6cwo5q7FuovsqvdZL13s
pVAid6XTJVfh6KHlxbN11vvqgb3BCkVIo6Fj7ETBVkRzMBMwQcQhR0lDUB1TaHqeoPfVPfhhAgMB
AAGjggJ8MIICeDALBgNVHQ8EBAMCBDAwPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUIhsOMdYSZ
5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQ8wRAYJKoZIhvcNAQkPBDcwNTAOBggqhkiG9w0D
AgICAIAwDgYIKoZIhvcNAwQCAgCAMAcGBSsOAwIHMAoGCCqGSIb3DQMHMB0GA1UdDgQWBBTNQCqp
83jRlTxJ8lXda7WjdqTBRDAfBgNVHSMEGDAWgBQeaSq03Cj+RxhOIQs/vKwRL/CY9TBlBgNVHR8E
XjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0QS5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGP
MGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRl
cy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0QS5jcnQwIgYIKwYB
BQUHMAGGFmh0dHA6Ly9vY3NwLmludGVsLmNvbS8wHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQB
gjcKAwQwKQYJKwYBBAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMEME8GA1UdEQRI
MEagKQYKKwYBBAGCNxQCA6AbDBlwcnplbXlzbGF3LmR1ZGFAaW50ZWwuY29tgRlwcnplbXlzbGF3
LmR1ZGFAaW50ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQAQTp0htq9N8OJjl3x04K3h91vbAf7l
+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
bnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjElMCMGA1UEAxMcSW50ZWwgRXh0
ZXJuYWwgSXNzdWluZyBDQSA3QjAeFw0xNzAxMjUxMDI0MjZaFw0xODAxMjAxMDI0MjZaMEUxGTAX
BgNVBAMTEER1ZGEsIFByemVteXNsYXcxKDAmBgkqhkiG9w0BCQEWGXByemVteXNsYXcuZHVkYUBp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+jG6o8A3qXfsqsfSgiBlj
qMVq4l3tTa9jQsNmzcMzhIw7O8lpL7RR2rMsjVs6GVRjXEIsGkwgZq5mW6CRkpv+3noyUxyN5yK7
9U7Oy2EHvWpfRVrq3zO4XJqsVwpjhFde1WKywfuS27NwwWx4QExaq3BZ1upvNM29IWwcIOu37y7R
Id7MNExXKIh+tCzhtiBRrsBN1pTVAaNTOJNgvD/1j9wfCY+q5DfXruDglyhWR0A1GBntuu0OM/Xh
upxd+O4inIMqTL3CfsRt7FCDp/QNq+QN1LngHn7FQi51D9VXSNvHxhEdtsA0lTnJj9MRRdnxUhx+
4VXkSzC9oNQ7ByDPAgMBAAGjggGiMIIBnjALBgNVHQ8EBAMCB4AwPAYJKwYBBAGCNxUHBC8wLQYl
KwYBBAGCNxUIhsOMdYSZ5VGD/YEohY6fU4KRwAlnqNVdgZSVQwIBZAIBCjAdBgNVHQ4EFgQUrlq1
2Imj0qHLGLudPDFx5+688jAwHwYDVR0jBBgwFoAUssBnplaNJ3kQdMP1xaWJZtbxLjYwNwYDVR0f
BDAwLjAsoCqgKIYmaHR0cDovL3BraS5pbnRlbC5jb20vY3JsL0ludGVsQ0E3Qi5jcmwwZgYIKwYB
BQUHAQEEWjBYMDIGCCsGAQUFBzAChiZodHRwOi8vcGtpLmludGVsLmNvbS9jcnQvSW50ZWxDQTdC
LmNydDAiBggrBgEFBQcwAYYWaHR0cDovL09DU1AuaW50ZWwuY29tLzAfBgNVHSUEGDAWBgorBgEE
AYI3CgMMBggrBgEFBQcDBDBPBgNVHREESDBGoCkGCisGAQQBgjcUAgOgGwwZcHJ6ZW15c2xhdy5k
dWRhQGludGVsLmNvbYEZcHJ6ZW15c2xhdy5kdWRhQGludGVsLmNvbTANBgkqhkiG9w0BAQsFAAOC
AgEAfHFuHnjBIuWNhge9NsKaLkbuDswuyObjH3MgOFyOBV9+W9HQffVSbvMF1+llPTDsBFgNjSrF
/zRfjMkTik55qN971XTRLHfs6SYCKAuZosfMTZBBjM9YzwvXNH2ndjpEyTJVi+tWEEaMkwYFaTGa
hPSeio6tFkjWjSVLnUHPJbV24IudfTH8hWQbAbiLfS1QFQysnDaNgO3LCGtBjUCsT1wRkuNuk6wd
QA/3CWVPYcg2xEOblWwxRR0/U7QfTq1GOHES3A7AgQxudbm2LLXPI3ZpqopIG8G3Xhms7ut8Ml/b
0ZB1A20ZCm9pOIUMBe/FkULHpAjPeY94+l0X2w70UbR7UsZqeIHXoSWbctTnSoky6yGa8CBfNeyT
zxePP5TpmshmZ7oSf1zqdcrmutQnWbLU4WL92LqKFiGTQvg/uvjzUniZCej6GANV5ZQPBTArxlyM
oOtQafalPk27OT5qEu2b4saLBnzQWb8xRe+eerI2ZzjdrV51pqfze+IaelFLiCQlli4Hz+/znjgO
5iC/cJ3Lw6a7SOr5lG7M5oLDXNhH76ggukHpaMvp5QMZ2B6QgodoXuWHCyFsxENcgpkS9/Zgrv92
qQrSc5m0RS9YGMfStRSopZXhNn0fr3+gqIIk88ACb3ipHAW6n9sGzguPBQFBtgDB3IrUIN7eJ5i+
KaEwggdJMIIFMaADAgECAhAGm16ZJ3KEyHZ/E2in3rDzMA0GCSqGSIb3DQEBDAUAMIGFMQswCQYD
VQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRow
GAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDErMCkGA1UEAxMiQ09NT0RPIFJTQSBDZXJ0aWZpY2F0
aW9uIEF1dGhvcml0eTAeFw0xNTEwMjgwMDAwMDBaFw0yMTA2MTcyMzU5NTlaMHMxCzAJBgNVBAYT
AlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENv
cnBvcmF0aW9uMSUwIwYDVQQDExxJbnRlbCBFeHRlcm5hbCBJc3N1aW5nIENBIDdCMIICIjANBgkq
hkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAulpv8V8aC1QQErqQ1qLrDl6sPc4VhZpKEcpkfyKKaRZX
zyA6JIDXu+BT3KlLz2yBsb4aogHgRXtsDGbUT49uIu3zUpiiejU3imzsuDGGSWcpx7SziHDQmR4r
xBL37h7zvCSOEYYDk9J5C+eu3FoxqaLngAn6WpJRZzDvO7H0sf1OqxpoJefbVWBzexW/AEyQQp4p
Zg96PON9oEKZkJ41XIMc5UjfQXyznumXKsP6A0YjqSbCZfGV4ldNpqqAs4lRtzKWQyX0L5D4DszP
eHR1Da4vnaGgC/wdTSPGhrbdYcemv5cR7RUMQOP95RAtnbPB7+3rZHkXjAauaZLrRgMq1CHRWfr8
NumXFkZ5KDOjWSsZ9BXmcDxKibLJPo13SNQKfKxF5UQpXBPzyE2OJp7wVIUA7Z/r7s/iE8G6rdOq
1USttHQeqwDdB3JenKa0kOP2RqEAVFfIJhfjSHPRmGjRkaysOnbsS+M2hZMZYsAhSGgLisWUJR0o
1QLUB+n+UFODkRNsYQAH/ED3l82PMnsNejcMCKP77F76jXPjusSS0HH0+xxhlW1XWx5mLWogflUw
u6yJX8px7VwTjgaFIHJGzCH9DmMQ3xxHPxLS+VBLBBvfb9LMm45XBSCVr2NWiyFQCc+V75829yt7
/4BxUK99S5qe0PdEGLBgGpSjijAInusCAwEAAaOCAcQwggHAMB8GA1UdIwQYMBaAFLuvfgI9+qbx
PISOre44mOzZMjLUMB0GA1UdDgQWBBSywGemVo0neRB0w/XFpYlm1vEuNjAOBgNVHQ8BAf8EBAMC
AYYwEgYDVR0TAQH/BAgwBgEB/wIBADA+BgNVHSUENzA1BggrBgEFBQcDAwYIKwYBBQUHAwQGCCsG
AQUFBwMIBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwIgYDVR0gBBswGTANBgsqhkiG+E0BBQFpATAI
BgZngQwBBAEwTAYDVR0fBEUwQzBBoD+gPYY7aHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RP
UlNBQ2VydGlmaWNhdGlvbkF1dGhvcml0eS5jcmwwcQYIKwYBBQUHAQEEZTBjMDsGCCsGAQUFBzAC
hi9odHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FBZGRUcnVzdENBLmNydDAkBggrBgEF
BQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20w
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

------=_NextPart_000_0000_01D339D7.E76D7AE0--

--===============0789208970245687289==
Content-Type: multipart/alternative; boundary="===============5083922289677652821=="
MIME-Version: 1.0
Content-Disposition: inline

--===============5083922289677652821==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by
others is strictly prohibited.

--===============5083922289677652821==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<p>---------------------------------------------------------------------<br>
<strong style=3D"line-height: 11.25pt;"><span  style=3D"font-size: 9pt; col=
or:
#595959;"><span style=3D"font-family: 'Arial Narrow', sans-serif;">Intel
Technology Poland sp. z o.o.<br></span></span></strong><span style=3D"color:
#595959; font-family: 'Arial Narrow', sans-serif; font-size: 9pt; line-heig=
ht:
11.25pt;">ul. S&#322owackiego 173 | 80-298 Gda&#324sk | S&#261d Rejonowy Gd=
a&#324sk
P&#243&#322noc
| VII Wydzia&#322 Gospodarczy Krajowego Rejestru S&#261dowego - KRS 101882 =
| NIP
957-07-52-316 | Kapita&#322 zak&#322adowy 200.000 PLN.</span></p><p>

<span style=3D"font-size:8.0pt;font-family:&quot;Arial
Narrow&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New
Roman&quot;;mso-bidi-font-family:Arial;
color:#595959;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-l=
anguage:
AR-SA">Ta wiadomo&#347&#263 wraz z za&#322&#261cznikami jest przeznaczona d=
la okre&#347lonego
adresata i mo&#380e zawiera&#263 informacje poufne. W razie przypadkowego o=
trzymania
tej wiadomo&#347ci, prosimy o powiadomienie nadawcy oraz trwa&#322e jej usu=
ni&#281cie;
jakiekolwiek przegl&#261danie lub rozpowszechnianie jest zabronione.<br>
This e-mail and any attachments may contain confidential material for the s=
ole
use of the intended recipient(s). If you are not the intended recipient,
please
contact the sender and delete all copies; any review or distribution by oth=
ers
is strictly prohibited.</span></p><p class=3D"MsoNormal"><o:p></o:p></p>

--===============5083922289677652821==--
--===============0789208970245687289==--
