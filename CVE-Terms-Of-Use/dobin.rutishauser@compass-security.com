Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp3354495ivl;
        Mon, 2 Oct 2017 00:07:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCiZzhGAv4aImTnKApMaDGzxK/mJV/iW3xKBWaV4AoWFNKTHAkQXy930ziVQb6WyUgdb6Wi
X-Received: by 10.223.174.194 with SMTP id y60mr14420864wrc.105.1506928029279;
        Mon, 02 Oct 2017 00:07:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506928029; cv=none;
        d=google.com; s=arc-20160816;
        b=TVGI1c0s6OF3IEAK9+j3TZTryzzV7vfgMHj4NzQ99f/BeHqGOxPnRulJSi7Rqm5pqg
         d54iqfFMJzrwoeu6IEjbVBry5mEVlu1sP/9Mo8o25/+mkEjQrm+s1ZshdRmUI1VbK9+a
         DSkgIaRTPMSGF3OKHCLIVIwhmUDfZ2Xpam5jOIcGKlvYzQ5fHrsFLcja5G7ZPbjU2Xg3
         uPe3wY+Cyiz+Hm9fk3aWb83atdZHYGcJ4hUuI3SvyK4lz8xqzZqgYtVLj+woncsZNXsv
         ZNq1k1OHYpdnOZs7nGb9Rx23RhrASd3NdSTa43mGRlnnPGgOiXIwqpOaxDqx7cr1xV2j
         AoAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-filter:dkim-filter:arc-authentication-results;
        bh=WbuZaR2FESaWByqVt0nW70t2UnJe8KE9D80DXybbIX0=;
        b=F1UdhGu/DTOIfFu+VokT1Ujbb5cn5dJRYKCnc3Afk3MFIf5v+3EVDxWO+vM/ZVdRrf
         T819tLZdNW4P/fT0nz77PTqExZksbAxKHA5AzPjESaP4kGu0ihPoylo1r4+k8g8x1yG5
         1WD5zVUFEuukWsv/OfYxtm/cCOB2D+uN2K8MkCV9AIX8OXpJbxFK6/7H+l99/W09Oheb
         VsuEsCUnnmCzVypgGcjiUbAsNBrturTnloIvsAg15N0KaXxB/orVb26rBkgy0TJkEU5P
         8QQTfNFl2k+KQPyXBpAHO9OdmU/w4g9SNIi2LO+IzKkmi6fffcTpOZC7HUpj8uf5D2Hx
         ktpQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dobin.rutishauser@compass-security.com designates 62.2.85.154 as permitted sender) smtp.mailfrom=dobin.rutishauser@compass-security.com
Return-Path: <dobin.rutishauser@compass-security.com>
Received: from mx2.compass-security.com (mx2.compass-security.com. [62.2.85.154])
        by mx.google.com with ESMTPS id s67si2519330wme.122.2017.10.02.00.07.08
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:07:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of dobin.rutishauser@compass-security.com designates 62.2.85.154 as permitted sender) client-ip=62.2.85.154;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of dobin.rutishauser@compass-security.com designates 62.2.85.154 as permitted sender) smtp.mailfrom=dobin.rutishauser@compass-security.com
Received: from localhost (unknown [127.0.0.1])
	by mx2.compass-security.com (Postfix) with ESMTP id 8A6E5AC
	for <kurt@seifried.org>; Mon,  2 Oct 2017 07:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx2.compass-security.com 8A6E5AC
X-Virus-Scanned: amavisd-new at compass-security.com
Received: from mx2.compass-security.com ([62.2.85.154])
	by localhost (mx2.compass-security.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdRDCwDWSUFQ for <kurt@seifried.org>;
	Mon,  2 Oct 2017 09:43:22 +0200 (CEST)
Received: from Wapiti.compass-security.com (62-2-85-147.static.cablecom.ch [62.2.85.147])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx2.compass-security.com (Postfix) with ESMTPS id BBCC4AB
	for <kurt@seifried.org>; Mon,  2 Oct 2017 09:43:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx2.compass-security.com BBCC4AB
Received: from Wapiti.compass-security.com (10.4.10.10) by
 Wapiti.compass-security.com (10.4.10.10) with Microsoft SMTP Server (TLS) id
 15.0.847.32; Mon, 2 Oct 2017 09:06:46 +0200
Received: from Wapiti.compass-security.com ([::1]) by
 Wapiti.compass-security.com ([::1]) with mapi id 15.00.0847.040; Mon, 2 Oct
 2017 09:06:46 +0200
From: Dobin Rutishauser <dobin.rutishauser@compass-security.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 dobin.rutishauser@compass-security.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 dobin.rutishauser@compass-security.com
Thread-Index: AQHTOY0rUx7Me5eEC0KiMwJ6IlzeHKLQJt/g
Date: Mon, 2 Oct 2017 07:06:45 +0000
Message-ID: <4d8a6fb1777c4423bf471edcd27ee6f5@Wapiti.compass-security.com>
References: <20170930014102.3437.35664@222.2.168.192.in-addr.arpa>
In-Reply-To: <20170930014102.3437.35664@222.2.168.192.in-addr.arpa>
Accept-Language: en-US, de-CH
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_05B3_01D33B5D.C3FE8130"
MIME-Version: 1.0

------=_NextPart_000_05B3_01D33B5D.C3FE8130
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I accept

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] 
Sent: Samstag, 30. September 2017 03:41
To: Dobin Rutishauser
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
dobin.rutishauser@compass-security.com

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


------=_NextPart_000_05B3_01D33B5D.C3FE8130
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
EdlEbynPC+cd/4lj6gxpGBgrAz/RcFDmMvyNkdr7L4FVoGL9osmOSOylRBfOTcKSm3s3EWJ6ib1z
SU7gGioRUUQwTe2Zxcdqtw8YEOgIDGpmJyRAVUG6jsFsqzsjFK2vaSQw2D1e4KdJ/U4t3C9MkoA4
D8Cy5/VnIO7wlMu2Sjvbj8u9l5Js/TMTTX9Eom/70QA7+iya9rwSzmXOMg/qjUTvnWI/Xxe4tf+4
ka5GHLUtc1PZnFPJ29/EG/BDXy+XEXElIlhUm0fpJiQukh+Sj9jWpjYgQ7xufVz/7mxkT3padBgS
CALlAwWzfwIDAQABo4IC0DCCAswwDgYDVR0PAQH/BAQDAgSwMBMGA1UdJQQMMAoGCCsGAQUFBwME
MB0GA1UdDgQWBBRIDxoK26WHxS8ci21QhjOV87dYsTAfBgNVHSMEGDAWgBTwx6MykbXryrVYdxWn
Tr4aXWFDJTCB/wYDVR0fBIH3MIH0MEegRaBDhkFodHRwOi8vY3JsLnN3aXNzc2lnbi5uZXQvRjBD
N0EzMzI5MUI1RUJDQUI1NTg3NzE1QTc0RUJFMUE1RDYxNDMyNTCBqKCBpaCBooaBn2xkYXA6Ly9k
aXJlY3Rvcnkuc3dpc3NzaWduLm5ldC9DTj1GMEM3QTMzMjkxQjVFQkNBQjU1ODc3MTVBNzRFQkUx
QTVENjE0MzI1JTJDTz1Td2lzc1NpZ24lMkNDPUNIP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/
YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludDBhBgNVHSAEWjBYMFYGCWCFdAFZ
AQMBBjBJMEcGCCsGAQUFBwIBFjtodHRwOi8vcmVwb3NpdG9yeS5zd2lzc3NpZ24uY29tL1N3aXNz
U2lnbi1TaWx2ZXItQ1AtQ1BTLnBkZjCB2QYIKwYBBQUHAQEEgcwwgckwZAYIKwYBBQUHMAKGWGh0
dHA6Ly9zd2lzc3NpZ24ubmV0L2NnaS1iaW4vYXV0aG9yaXR5L2Rvd25sb2FkL0YwQzdBMzMyOTFC
NUVCQ0FCNTU4NzcxNUE3NEVCRTFBNUQ2MTQzMjUwYQYIKwYBBQUHMAGGVWh0dHA6Ly9zaWx2ZXIt
cGVyc29uYWwtZzIub2NzcC5zd2lzc3NpZ24ubmV0L0YwQzdBMzMyOTFCNUVCQ0FCNTU4NzcxNUE3
NEVCRTFBNUQ2MTQzMjUwJAYDVR0RBB0wG4EZZG9iaW4ucnV0aXNoYXVzZXJAY3NuYy5jaDANBgkq
hkiG9w0BAQsFAAOCAQEAl2GQvE/i69KX+vZSJP5qRYzjPYRiKSKXLodandhalpwXX7lIcraQIK+8
nu5spoMI9ugrDsQUAg75ANF376V44SNL4F4z7VYQfrrB4kCYnEBbSuo5YoBeZ/+QOY00OVa08RJp
ifJqS5xfIuabnL3q0EqQEvCHYIS03+38JwQbM9zezkK9ftZeUg4rC3uaG+6/dAVbZTwIcVLoOIbG
anWYFBXU2l5bFS5DuqP4VC9vnPsEOyS5InVIfZHjA7UEZxUNy/fOpO4Bbb/lyOoSlG81+B+J0Ndz
0rOu6Zclj1BifA2iABN11tCnFJKzIhqKPkFxlUqNYrcx74TeORzMoJVgLDCCBkswggUzoAMCAQIC
FBQAtUNpcKSBy74oVfoefwPUesWOMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAkNIMRUwEwYD
VQQKEwxTd2lzc1NpZ24gQUcxMDAuBgNVBAMTJ1N3aXNzU2lnbiBQZXJzb25hbCBTaWx2ZXIgQ0Eg
MjAxNCAtIEcyMjAeFw0xNjA1MDIxMjUzMDhaFw0xOTA1MDIxMjUzMDhaMIGHMR0wGwYDVQQLExRF
bWFpbCBWYWxpZGF0ZWQgT25seTE1MDMGCSqGSIb3DQEJARYmZG9iaW4ucnV0aXNoYXVzZXJAY29t
cGFzcy1zZWN1cml0eS5jb20xLzAtBgNVBAMMJmRvYmluLnJ1dGlzaGF1c2VyQGNvbXBhc3Mtc2Vj
dXJpdHkuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAotSeEmXhhZKnzpE2SBVi
iX0iLMrZnnS2d6HUioyAQ0Dw9AxnEnugoabAEE4cvJ4Riw8uMuV2YfLNg68L2JsjchqNxxlB/xjQ
FsXu26NcuALrznZaZRQRsA2CfhadJDE8oF9WiBbrgVQ9oGffGFobYxguFvj/RueoRQ5ZInW0mYS+
0aJa/hHmQoOEUvKsThobJeZkoUwnl86Vq6RJas+Zgx33LoKXCHzuP+l9vyZ5jo2pu0Jwm5ejLvKN
c57HY0GCDQUYG5wP161ksqh5l5zBTXZV0cojSNL+C3Y5InCsyd5CsCrhvsoDz7AAy17uyyAzyrHG
tu2h2kS6so6y+yleVQIDAQABo4IC3TCCAtkwMQYDVR0RBCowKIEmZG9iaW4ucnV0aXNoYXVzZXJA
Y29tcGFzcy1zZWN1cml0eS5jb20wDgYDVR0PAQH/BAQDAgSwMBMGA1UdJQQMMAoGCCsGAQUFBwME
MB0GA1UdDgQWBBQ3VH4zaQ7hZAX0Lh3gVoGS9sQW/TAfBgNVHSMEGDAWgBTwx6MykbXryrVYdxWn
Tr4aXWFDJTCB/wYDVR0fBIH3MIH0MEegRaBDhkFodHRwOi8vY3JsLnN3aXNzc2lnbi5uZXQvRjBD
N0EzMzI5MUI1RUJDQUI1NTg3NzE1QTc0RUJFMUE1RDYxNDMyNTCBqKCBpaCBooaBn2xkYXA6Ly9k
aXJlY3Rvcnkuc3dpc3NzaWduLm5ldC9DTj1GMEM3QTMzMjkxQjVFQkNBQjU1ODc3MTVBNzRFQkUx
QTVENjE0MzI1JTJDTz1Td2lzc1NpZ24lMkNDPUNIP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/
YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludDBhBgNVHSAEWjBYMFYGCWCFdAFZ
AQMBBjBJMEcGCCsGAQUFBwIBFjtodHRwOi8vcmVwb3NpdG9yeS5zd2lzc3NpZ24uY29tL1N3aXNz
U2lnbi1TaWx2ZXItQ1AtQ1BTLnBkZjCB2QYIKwYBBQUHAQEEgcwwgckwZAYIKwYBBQUHMAKGWGh0
dHA6Ly9zd2lzc3NpZ24ubmV0L2NnaS1iaW4vYXV0aG9yaXR5L2Rvd25sb2FkL0YwQzdBMzMyOTFC
NUVCQ0FCNTU4NzcxNUE3NEVCRTFBNUQ2MTQzMjUwYQYIKwYBBQUHMAGGVWh0dHA6Ly9zaWx2ZXIt
cGVyc29uYWwtZzIub2NzcC5zd2lzc3NpZ24ubmV0L0YwQzdBMzMyOTFCNUVCQ0FCNTU4NzcxNUE3
NEVCRTFBNUQ2MTQzMjUwDQYJKoZIhvcNAQELBQADggEBAFDGYTLJ+ufQ+r278IyEY7Qq3KdXmc3l
e7GCHTt0fe6Y2D2crRxViEPEfGPA0vUn+BkXK8Hi2Cz3pYUII1eCzqcKJozreJ0rSc8uifji8rdC
wDSGhjtBxNlAHo9BtLuFC6XxUztJisXAU8yFV6p6DxJvxoRT0VaKInSQUyfab42zccYXC0QbVl7s
gQK1Ba0BpsQJxdcD6qmx0zn65vGgYFFBcL50gsMFanAcjdqjBwMRLrI79dfflo+qAdYOcuOIOmwl
uS8i7RIhdRYLYX4bZ0IAwbPBDgAJBpfXNVaeIJ/A5Am7orQ2Kuz2KxrdrVTJp+goedZcFMqDdVaf
+R04Hkowgga+MIIEpqADAgECAg8FRNZOrR7TNtUyQF0AuTYwDQYJKoZIhvcNAQELBQAwRzELMAkG
A1UEBhMCQ0gxFTATBgNVBAoTDFN3aXNzU2lnbiBBRzEhMB8GA1UEAxMYU3dpc3NTaWduIFNpbHZl
ciBDQSAtIEcyMB4XDTE0MDkxOTIwMzY0OVoXDTI5MDkxNTIwMzY0OVowVjELMAkGA1UEBhMCQ0gx
FTATBgNVBAoTDFN3aXNzU2lnbiBBRzEwMC4GA1UEAxMnU3dpc3NTaWduIFBlcnNvbmFsIFNpbHZl
ciBDQSAyMDE0IC0gRzIyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyzmxOYX++smh
vMODqQ5KLYRyHv9oxafEHewP16iLEx6z0RaLQNwPU28BPezoZLWX24O8qKjAhDhYXgMUK+bKMO8A
susTORmSRyohAOVyzcIxYg7MVir/d8RjjJjCb3jXtbbM6X0fM6aRBSr+0VLW9Oyc/k1MalLhhXZi
u7lo5lJj/MEhkZJdGdjcgNEZ40kWVwIOGUSFqynJL/rGbWsKofb3/2thNRUmlJQCaSVdafe9XmuC
2ZAMBvlDBSJJ6zbQIFpjEOM4IdV/FitBikZ68mfopNC6Hn8kJ3WYlEktVsRUM5GdYvnVX95bqRWY
nJRTwYDpCRcVtBuAKTKh0K8TpwIDAQABo4ICljCCApIwDgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB
/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPDHozKRtevKtVh3FadOvhpdYUMlMB8GA1UdIwQYMBaAFBeg
zcHkQbY6WzvLRZ29HMKY+oZYMIH/BgNVHR8EgfcwgfQwR6BFoEOGQWh0dHA6Ly9jcmwuc3dpc3Nz
aWduLm5ldC8xN0EwQ0RDMUU0NDFCNjNBNUIzQkNCNDU5REJEMUNDMjk4RkE4NjU4MIGooIGloIGi
hoGfbGRhcDovL2RpcmVjdG9yeS5zd2lzc3NpZ24ubmV0L0NOPTE3QTBDREMxRTQ0MUI2M0E1QjNC
Q0I0NTlEQkQxQ0MyOThGQTg2NTglMkNPPVN3aXNzU2lnbiUyQ0M9Q0g/Y2VydGlmaWNhdGVSZXZv
Y2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50MGEGA1UdIARa
MFgwVgYJYIV0AVkBAwEGMEkwRwYIKwYBBQUHAgEWO2h0dHA6Ly9yZXBvc2l0b3J5LnN3aXNzc2ln
bi5jb20vU3dpc3NTaWduLVNpbHZlci1DUC1DUFMucGRmMIHGBggrBgEFBQcBAQSBuTCBtjBkBggr
BgEFBQcwAoZYaHR0cDovL3N3aXNzc2lnbi5uZXQvY2dpLWJpbi9hdXRob3JpdHkvZG93bmxvYWQv
MTdBMENEQzFFNDQxQjYzQTVCM0JDQjQ1OURCRDFDQzI5OEZBODY1ODBOBggrBgEFBQcwAYZCaHR0
cDovL29jc3Auc3dpc3NzaWduLm5ldC8xN0EwQ0RDMUU0NDFCNjNBNUIzQkNCNDU5REJEMUNDMjk4
RkE4NjU4MA0GCSqGSIb3DQEBCwUAA4ICAQDDeadXt3utUWj1RIxBlSgBfHTWO2q8be+n1005mR1o
jcoI2dBxsRk1k2+CxhxJuFHuTPlsCm/Ypfv++zBeANKUq8QSUbqqiqtq3RnXK0r3FrJrUc90Wymi
c96X/thPICF9aQywUOWNWIyALuUXHN1jeqrvBfnDaZ7kjHFiXELuOvLN4BLvi1zpzlMoMuyVCxlU
oiGN+n9Qp0+8GXuya4wpP3c+yiPHaVpBnX1mMW96cXnaqWU663/XENULX1QZfM43JSSEUNCvQDTC
X5LiepHzL0JHG588QvvZX6W8cEWO76A5kPWheGzXwGdZGeEA3lz8eOhP3buskS5yi/zqR29DKLy7
uY6UvvpQ3VCTG0wYtnb/w0cKWbTNbVXYarZfyS/BlDY+vq5ANQYg7eACTC00RQ5Dr6L02JAV5dDA
m0RArjyPk1G8mWhzaXt1WJm31ARP3/GCcREde/wTHXdlVWPXUnJ83TFHhqeV2KwmcT0j5hI79H+a
lob+K+qg8yYNdcYWjDEg5xFHoeeparClsoEe3D3QoeNu1fBmphx915KITQAHC3Hnc+dz5FRlafw3
jfEeb3Dup2yzUkVnWdYFSLEh6Zco2dn0tKagZyM2vGBHDlwof12TijG6jTE2FMd6Qp1vIMFsKvgW
D2rZAJQyuz1VscXDoQ2xeXdUHeAzgn7u6jGCA8owggPGAgEBMG4wVjELMAkGA1UEBhMCQ0gxFTAT
BgNVBAoTDFN3aXNzU2lnbiBBRzEwMC4GA1UEAxMnU3dpc3NTaWduIFBlcnNvbmFsIFNpbHZlciBD
QSAyMDE0IC0gRzIyAhQUALVDaXCkgcu+KFX6Hn8D1HrFjjANBglghkgBZQMEAgMFAKCCAi0wGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTcxMDAyMDcwNjQzWjBPBgkq
hkiG9w0BCQQxQgRAAYnn+TDzOw5in4BVW2S7qTDRdCbu77kWMLiQfPnqU3TQhMg/t7oS9DknqXBn
WE7L6o/2YeY7fPx2B/QvMFWvrjB4BgkrBgEEAYI3EAQxazBpMFYxCzAJBgNVBAYTAkNIMRUwEwYD
VQQKEwxTd2lzc1NpZ24gQUcxMDAuBgNVBAMTJ1N3aXNzU2lnbiBQZXJzb25hbCBTaWx2ZXIgQ0Eg
MjAxNCAtIEcyMgIPZCBk5j6vxG/GJ7/6pSNQMHoGCyqGSIb3DQEJEAILMWugaTBWMQswCQYDVQQG
EwJDSDEVMBMGA1UEChMMU3dpc3NTaWduIEFHMTAwLgYDVQQDEydTd2lzc1NpZ24gUGVyc29uYWwg
U2lsdmVyIENBIDIwMTQgLSBHMjICD2QgZOY+r8Rvxie/+qUjUDCBqwYJKoZIhvcNAQkPMYGdMIGa
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDAHBgUrDgMCBzANBggqhkiG9w0DAgIBQDANBggqhkiG9w0DAgIBKDALBglghkgB
ZQMEAgMwCwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATAHBgUrDgMCGjANBgkqhkiG9w0BAQEFAASC
AQAlU27fCwUbFlUjmjP5F29LzeAsT1MhcT2JmQT0PT0kPg4wthnZ3mJJ2mSM/m7LPMYFWEcJuIZJ
UJ19JokTb8S6oxoFrb2660tRTJzOIzECWy9b6RuIi7nKZft9TeouGigZteBXbgDQsKZZU6aQLUQ0
WDOwKfCShDLo4+Vzp4jlf7zwgGO60Yrn6Dcu3P5bi2v/HEhEW3KVI2Wq0fb4/HNmGnNzWvxmKHBU
xIlunoJG1ImEoywV332HtH9fcF5Hv9FXNxwWz97Au/8xHZN5v/TT//pztMR7uSWXZLC11qRIvdwl
JTBt+hcWiQpQieBXKtUGHQ0i4gLNzjS/4/URh2nFAAAAAAAA

------=_NextPart_000_05B3_01D33B5D.C3FE8130--
