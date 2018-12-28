Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp5376625ivb;
        Tue, 21 Nov 2017 08:38:55 -0800 (PST)
X-Google-Smtp-Source: AGs4zMY3vrJoLT0JGLrZIkJwGaY9d2rwkg1pbHXQEzOzl/Aqdcf1wpomkH041m9/pN3iX0JK4MDp
X-Received: by 10.36.184.134 with SMTP id m128mr2599610ite.96.1511282335816;
        Tue, 21 Nov 2017 08:38:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511282335; cv=none;
        d=google.com; s=arc-20160816;
        b=xZ3THVZgJUwsVIzceazo0R9/JaqUnHZzhMyFe1eJcrIdmJ0fmRVBV9Q8sr5dOc95i7
         m8AmiS+hgw+ulNACLy3Gg13IPVtaQ/yaEN+06Gu2D4ptRMW9u7vfnyPrDW9t3fWx2iyS
         PKMwi5hjjYkad64WQrdEKWlkUmUy6kC6C6rs01IAzS1L5zjsAodpsqpCYqEsajMFcI5A
         a0UELhV0yPs7nnLrL+urllrnAiGttTzzgMwq4HN15q97kJuhE04ySFKGsQhu7divvrst
         9JmrcyYlKjBwI0Jr/fHpSKLXhFil2TllAFd2SqgPRtU/bUIsVBLp3KpQzQcl1kPzuYhZ
         Evug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:arc-authentication-results;
        bh=9wc1lm0xgLvoLGA3X4gPmGrbxeK0eQiCXBUedONW050=;
        b=a1pCgZZy5l0mPhRlS2lCNqwcqjX5A471YvrH1jA0B3m24v8X6G5bb+Qj6Dkc/KKlNF
         OZYNF7XbJZWbAJ7MXoiT+0VsxNo1Qq883FlqMfV/z8wgaEbQXuy3R6WfnBEwmPUCMKE2
         TMeTxmfHn/YBr/+AWLCXUS9lhzq92kDkX3sJXQSG/pg8Ue3KIoiBNORgX0FJ5uH8/hSl
         Y9pn8pf8KpZrvQS7FGSTw5/RpdJg73JZ5OrTku1TJVO/9vGPhax/5iJVnFwN/LxhtxeX
         Sso9H1UO1IIMnNQk/mtm0KY8Ers+d5DMU5madFUiN5Tz3rKzPToLg978b16i4VSUI0dm
         WyUw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of secure@veritas.com designates 216.82.251.1 as permitted sender) smtp.mailfrom=Secure@veritas.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=veritas.com
Return-Path: <Secure@veritas.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com. [216.82.251.1])
        by mx.google.com with ESMTPS id 95si10547879iop.231.2017.11.21.08.38.55
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Nov 2017 08:38:55 -0800 (PST)
Received-SPF: pass (google.com: domain of secure@veritas.com designates 216.82.251.1 as permitted sender) client-ip=216.82.251.1;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of secure@veritas.com designates 216.82.251.1 as permitted sender) smtp.mailfrom=Secure@veritas.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=veritas.com
Return-Path: <Secure@veritas.com>
Received: from [216.82.251.33] by server-1.bemta-12.messagelabs.com id 41/F6-08161-E96541A5; Tue, 21 Nov 2017 16:38:54 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRWlGSWpSXmKPExsWyUie5RXd2mEi
  UwckdmhbNG9eyODB6PHitE8AYxZqZl5RfkcCaMevtf9aC5TIV3948Y25gvC3excjFISRwgVHi
  4rYTrBDOOUaJ9ke9bBDOHUaJhU+vAGU4OdgEVCXWLfrOCGKLCGhLTH99nA3EFhZIkdh7v4MJI
  p4qsfPGF6gaI4m3y/+zgNgsQL3PV7xlBrF5BUIkfj6cCDSTA2iBscSnvyIgYU4BE4mp65aDlT
  AKiEl8P7UGbCSzgLjErSfzwWwJAQGJJXvOM0PYohIvH/9jhbB1JM5ef8IIYRtIbF26jwVkvIS
  AgsSsu5YQY3QkFuz+xAZha0ssW/ga6hpBiZMzn7BAtEpKHFxxA8wWEpCXOPS5gRniykqJhX8V
  JzBKzkJy0CwkU2chmToLydQFjCyrGDWKU4vKUot0TYz1kooy0zNKchMzc3QNDY30clOLixPTU
  3MSk4r1kvNzNzECY7GegYFxB+PlhdGHGCU5mJREeSVNRaKE+JLyUyozEosz4otKc1KLDzHKcH
  AoSfDeDQHKCRalpqdWpGXmAJMCTFqCg0dJhNczFCjNW1yQmFucmQ6ROsVozHHj7bU/TBzPZr5
  uYBZiycvPS5US550JUioAUppRmgc3CJasLjHKSgnzMjIwMAjxFKQW5WaWoMq/YhTnYFQS5tUE
  mcKTmVcCt+8V0ClMQKf8PC4MckpJIkJKqoFRprDwpLdkir1z/+1Mi7P/Q8I3XJSas9w44MhZf
  t6N3UsFF2vaXZtzND9x+7mFax40vjm6QqBMrbAv8ut/2x9R+1WLp7b8a3RmZiyfpnTsVv36OT
  6zK3a/ME791bPisMbKRQ3RWU/PxX9tTGO22l20yufv99T1QhJun9vu8B1XFAyrsp/MePGCEkt
  xRqKhFnNRcSIAg6uKhVEDAAA=
X-Env-Sender: Secure@veritas.com
X-Msg-Ref: server-14.tower-130.messagelabs.com!1511282330!134014442!1
X-Originating-IP: [169.44.99.132]
X-StarScan-Received:
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 109886 invoked from network); 21 Nov 2017 16:38:51 -0000
Received: from 84.63.2ca9.ip4.static.sl-reverse.com (HELO vrtsxchsmtpex01.community.veritas.com) (169.44.99.132)
  by server-14.tower-130.messagelabs.com with DHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 21 Nov 2017 16:38:51 -0000
Received: from vrtsxchclupin10.community.veritas.com (10.153.24.55) by
 vrtsxchsmtpex01.community.veritas.com (10.153.225.135) with Microsoft SMTP
 Server (TLS) id 15.0.1178.4; Tue, 21 Nov 2017 08:38:52 -0800
Received: from vrtsxchclupin09.community.veritas.com (10.153.24.19) by
 vrtsxchclupin10.community.veritas.com (10.153.24.20) with Microsoft SMTP
 Server (TLS) id 15.0.1293.2; Tue, 21 Nov 2017 10:38:50 -0600
Received: from vrtsxchclupin09.community.veritas.com
 ([fe80::8400:3d61:8ea3:fbc3]) by vrtsxchclupin09.community.veritas.com
 ([fe80::8400:3d61:8ea3:fbc3%25]) with mapi id 15.00.1293.002; Tue, 21 Nov
 2017 10:38:50 -0600
From: VRM-Secure <Secure@veritas.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: [EXTERNAL] DWF/CVE - Acceptance of MITRE Terms of Use for CVE
   for secure@veritas.com
Thread-Topic: [EXTERNAL] DWF/CVE - Acceptance of MITRE Terms of Use for CVE
   for secure@veritas.com
Thread-Index: AQHTYIvvfEvKIgJ7E0WOE7tvDH+i36MfDSrA
Date: Tue, 21 Nov 2017 16:38:49 +0000
Message-ID: <8dfbe1040edf40faba9e9865d6ff8853@vrtsxchclupin09.community.veritas.com>
References: <20171118164021.64559.95869@slab.local>
In-Reply-To: <20171118164021.64559.95869@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.153.24.62]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Received-SPF: None (vrtsxchsmtpex01.community.veritas.com: Secure@veritas.com
 does not designate permitted sender hosts)

I accept


-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org]=20
Sent: Saturday, November 18, 2017 11:40 AM
To: VRM-Secure <Secure@veritas.com>
Subject: [EXTERNAL] DWF/CVE - Acceptance of MITRE Terms of Use for CVE for =
secure@veritas.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.=20

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable copyright license to reproduce, prepar=
e derivative works of, publicly display, publicly perform, sublicense, and =
distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BA=
SIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implie=
d, including, without limitation, any warranties or conditions of TITLE, NO=
N-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE??). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyrigh=
t designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.=20

