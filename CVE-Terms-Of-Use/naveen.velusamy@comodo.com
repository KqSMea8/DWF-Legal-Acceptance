Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp805139vkh;
        Fri, 30 Sep 2016 04:06:42 -0700 (PDT)
X-Received: by 10.157.54.180 with SMTP id h49mr5059319otc.155.1475233602794;
        Fri, 30 Sep 2016 04:06:42 -0700 (PDT)
Return-Path: <naveen.velusamy@comodo.com>
Received: from mmextmx1.mcr.colo.comodoca.net (mmextmx1.mcr.colo.comodoca.net. [2a02:1788:402:c00::c0a8:9cd5])
        by mx.google.com with ESMTPS id j110si13107089otc.264.2016.09.30.04.06.41
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 04:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of naveen.velusamy@comodo.com designates 2a02:1788:402:c00::c0a8:9cd5 as permitted sender) client-ip=2a02:1788:402:c00::c0a8:9cd5;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of naveen.velusamy@comodo.com designates 2a02:1788:402:c00::c0a8:9cd5 as permitted sender) smtp.mailfrom=naveen.velusamy@comodo.com
Received: (qmail 5050 invoked by uid 1004); 30 Sep 2016 11:06:38 -0000
Received: from ian.brad.office.comodo.net (HELO ian.brad.office.comodo.net) (192.168.0.202)
    by mmextmx1.mcr.colo.comodoca.net (qpsmtpd/0.84) with ESMTP; Fri, 30 Sep 2016 12:06:38 +0100
Received: (qmail 16876 invoked by uid 1000); 30 Sep 2016 11:06:38 -0000
Received: from Unknown (HELO [10.108.51.228]) (10.108.51.228)
  (smtp-auth username naveeenv, mechanism plain)
  by ian.brad.office.comodo.net (qpsmtpd/0.40) with (AES128-SHA encrypted) ESMTPSA; Fri, 30 Sep 2016 12:06:38 +0100
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: naveen <naveen.velusamy@comodo.com>
Message-ID: <b44e7c6a-a86c-9f4c-fe0f-8de4428acab2@comodo.com>
Date: Fri, 30 Sep 2016 07:06:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.2.0
MIME-Version: 1.0
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms020304010104000506020808"
X-Comodo-Virus-Checked: Checked by ClamAV on ian.brad.office.comodo.net
X-Comodo-ClamAV-Virus-Program: ClamAV 0.98/22278/Fri Sep 30 10:41:32 2016

This is a cryptographically signed message in MIME format.

--------------ms020304010104000506020808
Content-Type: multipart/alternative;
 boundary="------------AA7EE63D8CF584F8FF969912"

This is a multi-part message in MIME format.
--------------AA7EE63D8CF584F8FF969912
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable



On 09/29/2016 08:31 PM, Kurt Seifried wrote:
> Hi, I need to confirm that you have accepted the MITRE Terms of Use=20
> for CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to=20
> process your CVE request. Thanks!
>
>
>   Terms of Use
>
>
>     LICENSE
>
> Submissions: For all materials you submit to the Common=20
> Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITR=
E=20
> Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a=20
> perpetual, worldwide, non-exclusive, no-charge, royalty-free,=20
> irrevocable copyright license to reproduce, prepare derivative works=20
> of, publicly display, publicly perform, sublicense, and distribute=20
> such materials and derivative works. Unless required by applicable law =

> or agreed to in writing, you provide such materials on an "AS IS"=20
> BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =

> implied, including, without limitation, any warranties or conditions=20
> of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A=20
> PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide,=20
> non-exclusive, no-charge, royalty-free, irrevocable copyright license=20
> to reproduce, prepare derivative works of, publicly display, publicly=20
> perform, sublicense, and distribute Common Vulnerabilities and=20
> Exposures (CVE=C2=AE). Any copy you make for such purposes is authorize=
d=20
> provided that you reproduce MITRE's copyright designation and this=20
> license in any such copy.
>
>
>     DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE=20
> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =

> HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,=20
> ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL=20
> WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY=20
> WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =

> RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A=20
> PARTICULAR PURPOSE.
>
>
>
>
> --=20
> Kurt Seifried
> kurt@seifried.org <mailto:kurt@seifried.org>
"I accept"

And i Sincerely Thank you for Reaching Back.

--=20
Yours sincerely,

Naveen
COMODO Web Application Firewall (Security Operations Center)
COMODO India


--------------AA7EE63D8CF584F8FF969912
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 09/29/2016 08:31 PM, Kurt Seifried
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">Hi, I need to confirm that you have accepted the
        MITRE Terms of Use for CVE, available at:
        <div><br>
        </div>
        <div><a moz-do-not-send=3D"true"
href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/ma=
ster/TermsOfUse.md">https://github.com/distributedweaknessfiling/DWF-Data=
base/blob/master/TermsOfUse.md</a></div>
        <div><br>
        </div>
        <div>and quoted below, please reply with "I accept" and I'll be
          able to process your CVE request. Thanks!</div>
        <div><br>
        </div>
        <div>
          <h1 style=3D"box-sizing:border-box;margin:0px 0px
            16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px
            solid
rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsy=
stemfont,&quot;segoe
            ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color
            emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui
            symbol&quot;">Terms of Use</h1>
          <h2
style=3D"box-sizing:border-box;margin-top:24px;margin-bottom:16px;line-he=
ight:1.25;padding-bottom:0.3em;border-bottom:1px
            solid
rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsy=
stemfont,&quot;segoe
            ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color
            emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui
            symbol&quot;">LICENSE</h2>
          <p
style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;color:rg=
b(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe
            ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color
            emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui
            symbol&quot;;font-size:16px">Submissions: For all materials
            you submit to the Common Vulnerabilities and Exposures
            (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE=
)
            and all CVE Numbering Authorities (CNAs) a perpetual,
            worldwide, non-exclusive, no-charge, royalty-free,
            irrevocable copyright license to reproduce, prepare
            derivative works of, publicly display, publicly perform,
            sublicense, and distribute such materials and derivative
            works. Unless required by applicable law or agreed to in
            writing, you provide such materials on an "AS IS" BASIS,
            WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
            or implied, including, without limitation, any warranties or
            conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
            FITNESS FOR A PARTICULAR PURPOSE.</p>
          <p
style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;color:rg=
b(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe
            ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color
            emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui
            symbol&quot;;font-size:16px">CVE Usage: MITRE hereby grants
            you a perpetual, worldwide, non-exclusive, no-charge,
            royalty-free, irrevocable copyright license to reproduce,
            prepare derivative works of, publicly display, publicly
            perform, sublicense, and distribute Common Vulnerabilities
            and Exposures (CVE=C2=AE). Any copy you make for such purpose=
s is
            authorized provided that you reproduce MITRE's copyright
            designation and this license in any such copy.</p>
          <h2
style=3D"box-sizing:border-box;margin-top:24px;margin-bottom:16px;line-he=
ight:1.25;padding-bottom:0.3em;border-bottom:1px
            solid
rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsy=
stemfont,&quot;segoe
            ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color
            emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui
            symbol&quot;">DISCLAIMERS</h2>
          <p
style=3D"box-sizing:border-box;margin-top:0px;color:rgb(51,51,51);font-fa=
mily:-apple-system,blinkmacsystemfont,&quot;segoe
            ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color
            emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui
            symbol&quot;;font-size:16px;margin-bottom:0px">ALL DOCUMENTS
            AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
            PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE
            ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY),
            THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS,
            AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR
            IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE
            USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS
            OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR
            A PARTICULAR PURPOSE.</p>
          <div><br>
          </div>
          <div><br clear=3D"all">
            <div><br>
            </div>
            -- <br>
            <div class=3D"gmail_signature">Kurt Seifried<br>
              <a moz-do-not-send=3D"true" href=3D"mailto:kurt@seifried.or=
g"
                target=3D"_blank">kurt@seifried.org</a></div>
          </div>
        </div>
      </div>
    </blockquote>
    "I accept"<br>
    <br>
    And i Sincerely Thank you for Reaching Back.<br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Yours sincerely,

Naveen
COMODO Web Application Firewall (Security Operations Center)
COMODO India</pre>
  </body>
</html>

--------------AA7EE63D8CF584F8FF969912--

--------------ms020304010104000506020808
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
CrQwggSvMIIDl6ADAgECAhEA4CPLFRKDU4mtYW56VGdrITANBgkqhkiG9w0BAQsFADBvMQsw
CQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4
dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290
MB4XDTE0MTIyMjAwMDAwMFoXDTIwMDUzMDEwNDgzOFowgZsxCzAJBgNVBAYTAkdCMRswGQYD
VQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNP
TU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01PRE8gU0hBLTI1NiBDbGllbnQgQXV0aGVu
dGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBAImxDdp6UxlOcFIdvFamBia3uEngludRq/HwWhNJFaO0jBtgvHpRQqd5jKQi3xdh
TpHVdiMKFNNKAn+2HQmAbqUEPdm6uxb+oYepLkNSQxZ8rzJQyKZPWukI2M+TJZx7iOgwZOak
+FaA/SokFDMXmaxE5WmLo0YGS8Iz1OlAnwawsayTQLm1CJM6nCpToxDbPSBhPFUDjtlOdiUC
ISn6o3xxdk/u4V+B6ftUgNvDezVSt4TeIj0sMC0xf1m9UjewM2ktQ+v61qXxl3dnUYzZ7ifr
vKUHOHaMpKk4/9+M9QOsSb7K93OZOg8yq5yVOhM9DkY6V3RhUL7GQD/L5OKfoiECAwEAAaOC
ARcwggETMB8GA1UdIwQYMBaAFK29mHo0tCb3+sQmVO8DveAky1QaMB0GA1UdDgQWBBSSYWuC
4aKgqk/sZ/HCo/e0gADB7DAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAd
BgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud
HwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4dGVybmFs
Q0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0dHA6Ly9vY3NwLnVz
ZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQELBQADggEBABsqbqxVwTqriMXY7c1V86prYSvACRAj
mQ/FZmpvsfW0tXdeDwJhAN99Bf4Ss6SAgAD8+x1banICCkG8BbrBWNUmwurVTYT7/oKYz1gb
4yJjnFL4uwU2q31Ypd6rO2Pl2tVz7+zg+3vio//wQiOcyraNTT7kSxgDsqgt1Ni7QkuQaYUQ
26Y3NOh74AEQpZzKOsefT4g0bopl0BqKu6ncyso20fT8wmQpNa/WsadxEdIDQ7GPPprsnjJT
9HaSyoY0B7ksyuYcStiZDcGG4pCS+1pCaiMhEOllx/XVu37qjIUgAmLq0ToHLFnFmTPyOInl
tukWeh95FPZKEBom+nyK+5swggX9MIIE5aADAgECAhEA+L+l4B08qXjPHRpf5uX75DANBgkq
hkiG9w0BAQsFADCBmzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3Rl
cjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxQTA/BgNV
BAMTOENPTU9ETyBTSEEtMjU2IENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVt
YWlsIENBMB4XDTE2MDUxMzAwMDAwMFoXDTE5MDUxMzIzNTk1OVowgcUxDjAMBgNVBBETBTA3
MDEzMRowGAYDVQQKExFDb21vZG8gR3JvdXAgSW5jLjESMBAGA1UECRMJU3VpdGUgMTAwMRIw
EAYDVQQJEwlTdWl0ZSAxMDAxCzAJBgNVBAgTAk5KMRAwDgYDVQQHEwdDbGlmdG9uMQswCQYD
VQQGEwJVUzEYMBYGA1UEAxMPbmF2ZWVuIHZlbHVzYW15MSkwJwYJKoZIhvcNAQkBFhpuYXZl
ZW4udmVsdXNhbXlAY29tb2RvLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
AJ0q3uLWeaTGvuo6T40wQmzRwKERdAmyR31BMA/yA7Bwko+C6K0th7lTtD2PySILxXMc5qsN
yX1dNPC78AshJUh2lyWsxmuaIi1gTFxfCWT5G/aUYNvHLwZMQlvOG4N/Mv53dB/PwTZq+S/2
a6VfiyBZloA3GdNDXF0P4d4AEedRW4H9zwGjueJs47FGenV+yHw2MfguoxiT5Xh7Xt6h+Vzm
IJuwMecxQtctbHM3QYwPu5wuEGr4JUAPl9yNpNqzltvn8tOzLmJ0diWaKacQaei9/NvwKSev
XgRzagL6qypkONK6aSVhFxv/p6cd4p3pNtIale6rPOTC17PRUEK315kCAwEAAaOCAg4wggIK
MB8GA1UdIwQYMBaAFJJha4LhoqCqT+xn8cKj97SAAMHsMB0GA1UdDgQWBBTxt6FBhnQYfolX
wEFFX2OnUd3QDTAOBgNVHQ8BAf8EBAMCBaAwDAYDVR0TAQH/BAIwADAdBgNVHSUEFjAUBggr
BgEFBQcDBAYIKwYBBQUHAwIwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIBAwUwKzApBggrBgEF
BQcCARYdaHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwXQYDVR0fBFYwVDBSoFCgToZM
aHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPU0hBMjU2Q2xpZW50QXV0aGVudGljYXRp
b25hbmRTZWN1cmVFbWFpbENBLmNybDCBkAYIKwYBBQUHAQEEgYMwgYAwWAYIKwYBBQUHMAKG
TGh0dHA6Ly9jcnQuY29tb2RvY2EuY29tL0NPTU9ET1NIQTI1NkNsaWVudEF1dGhlbnRpY2F0
aW9uYW5kU2VjdXJlRW1haWxDQS5jcnQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9k
b2NhLmNvbTBRBgNVHREESjBIoCoGCisGAQQBgjcUAgOgHAwabmF2ZWVuLnZlbHVzYW15QGNv
bW9kby5jb22BGm5hdmVlbi52ZWx1c2FteUBjb21vZG8uY29tMA0GCSqGSIb3DQEBCwUAA4IB
AQBIUJ+7vxwE96WzCRZ9eO7Hn2O0lvazRpT69yziTP/0yya53leGGDOyRZ0NxIOmoNHbh4Kw
iOglueUTI92ZRSH3M3UzUaRXQrrYrTPvYvjkIEU2AAyjA3uafdwQA39IN24CUCqsl7Jn0mt6
gBawWbOq35Xx5liSYgzMxA1vsq8DpqlDl49CsiCMQ/QQIUD16ffjIM/KkbkOHfCSRTw8DFTk
5M0so7gR5uKbQrEiRNr4yQkY8dhpH7jPYhUzSnSEdNCdywY66SSThMzEctr9FjNRmT74wYLQ
R3q/m5R64ybnft9vSm6oWb5g7McgcHri/IDnXgxwspIeGndhlgKEMqbIMYIERDCCBEACAQEw
gbEwgZsxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNV
BAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01P
RE8gU0hBLTI1NiBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIR
APi/peAdPKl4zx0aX+bl++QwDQYJYIZIAWUDBAIBBQCgggJjMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE2MDkzMDExMDYwNVowLwYJKoZIhvcNAQkEMSIE
IFZg9RZMPC6r8cwYkgJYTozYpHmV7wcX6+FY7R5o8fM3MGwGCSqGSIb3DQEJDzFfMF0wCwYJ
YIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYI
KoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgcIGCSsGAQQBgjcQBDGBtDCB
sTCBmzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UE
BxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxQTA/BgNVBAMTOENPTU9E
TyBTSEEtMjU2IENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEA
+L+l4B08qXjPHRpf5uX75DCBxAYLKoZIhvcNAQkQAgsxgbSggbEwgZsxCzAJBgNVBAYTAkdC
MRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNV
BAoTEUNPTU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01PRE8gU0hBLTI1NiBDbGllbnQg
QXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAPi/peAdPKl4zx0aX+bl++Qw
DQYJKoZIhvcNAQEBBQAEggEAATR6rIcFYpGqHYKzc1EySs8IvUDwi7QseMjkgDwoZn6hMNTz
QDupAiMiJT99hF6ihFYU72LBpJGTAB3qVP/bxxqHVTsiZrLdbb0t4zmwRhC2lBU3PMx1LXCN
ad89WabVcb8VaKkaihWBGXCjpQx9a/k813b3+2rQnAn5RzRGCKOTkGCOmVrrm40MuTyXnh/m
kxIwZnEsbxov2Iaye++JVZQgqYY8kdQpcnFCMcUTR87FhSTddNnYiMJ5pu2J24256F1O/Fdr
ue3VjF1C8Gt8ypdsjlBpKaeF5nZOim3JOi3Fhp/CsQwZwZb3hQ0BqZdSZPeZpRGv9Rrw/6q6
8bX/6QAAAAAAAA==
--------------ms020304010104000506020808--
