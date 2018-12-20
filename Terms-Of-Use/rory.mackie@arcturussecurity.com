Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp6140951otb;
        Thu, 20 Dec 2018 01:35:33 -0800 (PST)
X-Google-Smtp-Source: AFSGD/V6lcN4+6RNNffHuIX8a9oPbfHk6qLZk5aXhYxaO55rEqaNqDGtPgfOlk3WqeGBMPqUFbYe
X-Received: by 2002:a50:8f04:: with SMTP id 4mr23222730edy.95.1545298533809;
        Thu, 20 Dec 2018 01:35:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1545298533; cv=none;
        d=google.com; s=arc-20160816;
        b=MdNuBlrkHqTWdrHxeEdswnxV+AI5Mpw6KSzUNj0/YwH62NbaDuJxFonok+SkMa60jp
         31zceRA4INsfArqYRUWaHcqJFN6diMgl900vwe31yl5ixMwBJVXjdYpussVkVBMKNROj
         g4VlNaeJRa/PUHDOhfM2ET+3ZtJ1ZGakZfW2wjjySpTcBJc5NY0I5ve6trSOVrA525g3
         TKH5sXzBYIpVigQaFxTrClwShICARzikoQfFoIfyDf56BSPP4/cDYOJ4n3YrxKsmMrGE
         nXPNmnPEYH2Xpmw5L28okSWgl8neDGf7AfU7Bn1CfGnD/1cicK5Bx5OPNolImotPeHDi
         APXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:spamdiagnosticmetadata
         :spamdiagnosticoutput:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature;
        bh=YcA7Q4qlG/RXffE46qrqD1rjXbIPLgK3fNm+T0kD9+c=;
        b=U4LmdyymZXVgBH7zjcZ8AJJZsekab+Lxn/LLuA87NKZzA4fV+MAFPKm2VjQ3QVoGzR
         d+/pXTurkTXnGxh0hX3SqL8TjMDnWjan+NPAmJ//j/IIjOTQuW29Evnfwcgiv5lnPlSC
         vvYJEMiDlE9EI3u0HHpIrAsR3ejvz4WO2uB/pcbTTluv328vXDOMfZl5DlvRNzAqdwq5
         cFa7fc9P5cmPX5xDw6nTWsZMWHrPiyuH8cn2r4grYQXuQxqBwOCN/kUsGxizMcqfy7dJ
         3KVfBluati/okHsFqo0PgimEUEj/E6MdfuEZXDrmQwGEoarPQdrY7usMMqnJzwe3KFZ2
         sdlQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ArcturusSecurity.onmicrosoft.com header.s=selector1-arcturussecurity-com header.b=YaGeqTTy;
       spf=pass (google.com: domain of rory.mackie@arcturussecurity.com designates 40.107.10.120 as permitted sender) smtp.mailfrom=rory.mackie@arcturussecurity.com
Return-Path: <rory.mackie@arcturussecurity.com>
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (mail-eopbgr100120.outbound.protection.outlook.com. [40.107.10.120])
        by mx.google.com with ESMTPS id m23si5323195edm.0.2018.12.20.01.35.33
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 20 Dec 2018 01:35:33 -0800 (PST)
Received-SPF: pass (google.com: domain of rory.mackie@arcturussecurity.com designates 40.107.10.120 as permitted sender) client-ip=40.107.10.120;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@ArcturusSecurity.onmicrosoft.com header.s=selector1-arcturussecurity-com header.b=YaGeqTTy;
       spf=pass (google.com: domain of rory.mackie@arcturussecurity.com designates 40.107.10.120 as permitted sender) smtp.mailfrom=rory.mackie@arcturussecurity.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ArcturusSecurity.onmicrosoft.com; s=selector1-arcturussecurity-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YcA7Q4qlG/RXffE46qrqD1rjXbIPLgK3fNm+T0kD9+c=;
 b=YaGeqTTyOn1lFRBH/lLnFmwL9dF5Hk/O+hA5jG6CaNmRFgzd1+HnqpUnDR/+O6sKeyW0/T+AXaQpXcAkroWFBhXDDgZaC5B6/Ttb6ewePp3Ijyiez80+psMD3fv5ion105ZWnGLy4s1kMZgPl3PaRfKAmdttKS5jY3gJMjijusw=
Received: from LNXP265MB1484.GBRP265.PROD.OUTLOOK.COM (20.176.134.139) by
 LNXP265MB1609.GBRP265.PROD.OUTLOOK.COM (20.176.135.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1425.22; Thu, 20 Dec 2018 09:35:32 +0000
Received: from LNXP265MB1484.GBRP265.PROD.OUTLOOK.COM
 ([fe80::5556:b567:a01b:e741]) by LNXP265MB1484.GBRP265.PROD.OUTLOOK.COM
 ([fe80::5556:b567:a01b:e741%3]) with mapi id 15.20.1425.025; Thu, 20 Dec 2018
 09:35:32 +0000
From: Rory Mackie <rory.mackie@arcturussecurity.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 rory.mackie@arcturussecurity.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 rory.mackie@arcturussecurity.com
Thread-Index: AQHUmBC5oDyQ/vA1zk6LAwMa/CyjmqWHXoYg
Date: Thu, 20 Dec 2018 09:35:32 +0000
Message-ID:
 <LNXP265MB1484126648189A2E58B147AC96BF0@LNXP265MB1484.GBRP265.PROD.OUTLOOK.COM>
References: <20181220030424.11155.99116@bigbox.local>
In-Reply-To: <20181220030424.11155.99116@bigbox.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rory.mackie@arcturussecurity.com; 
x-originating-ip: [89.107.1.74]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics:
 1;LNXP265MB1609;6:ZRJ92IOO5V7OSnaRNOaO8oM6L3aEuB+Gv1zmtYHw9uy8puyotuI00IYgeS+d/VLuIJFcMGRmVwfCtVSqyI72VKQJpCSkc61FKMoC7ZcBlVfvbBUtUY6elhiUfIJwa7936BxPTdKxSIur3MRYSFa6Uguw35cjFTr/HCOmvw27nHEYhQEo+bQY3nbqivuh66lr6yWcI3V3n5Gt1Iw3A7dqaRYKZY0skbTgZr896TKXBteYbekYSSJocqz/ncIX0iXsA1gA2h1xHXvQZGbgXvEl0awY68wiwPLmlGyto+NC5RqkS1/mYzeFf7GGsRtxQH1xMPcbmBkPj7KQZXz0/He8/yz3N9Xaq4NEHYPfJzY6LooIVO+DsR4RIglH834fqrlqwTPyTPSJbnYGNe8QB6t8GndPIdvfB6htkREdTHMT8ieujBQ8wIC7mK2wNK9tRsLNLj9zMrTMOAcIOcOPlLfu7A==;5:1YKhN0dCKj3kkUGO9FpfLfQ371g2/5STnhIYY8diFfZAIxCug8UTdjlGqnTdJq0PjVAZIRrnUhcwlcL0a2ZZ/ANX8AF1WR0EJ3BvCOcOnQ2X4uITBzZocH7MBu15C54jzrBFgFzNcC6EEYAKl94TF8fmpTB8aujPaao8CCcfE3Q=;7:GiUKQ7Twnd4i+0WcfGa9/9L1/A6v50/oxpyULyQTsqsrN4R8jjZDWcEEb+Ii46LV8X9Fft7eSS0ZnONBYOT4Ip8S8EbjaOWuvqlpYaE0T84YgbIsQtgnTuQoQcmpbLEnm7/zNKf2qTMgndjHcbYKKQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e18bbe8d-4825-4728-4675-08d6665e7c89
x-microsoft-antispam:
 BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600074)(711020)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);SRVR:LNXP265MB1609;
x-ms-traffictypediagnostic: LNXP265MB1609:
x-microsoft-antispam-prvs:
 <LNXP265MB160989CE79622480C0E82CFC96BF0@LNXP265MB1609.GBRP265.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test:
 BCL:0;PCL:0;RULEID:(3230021)(999002)(5005026)(6040522)(2401047)(8121501046)(93006095)(93001095)(3231475)(944501520)(52105112)(3002001)(10201501046)(149066)(150057)(6041310)(20161123560045)(20161123558120)(20161123564045)(20161123562045)(2016111802025)(6043046)(201708071742011)(7699051)(76991095);SRVR:LNXP265MB1609;BCL:0;PCL:0;RULEID:;SRVR:LNXP265MB1609;
x-forefront-prvs: 0892FA9A88
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10019020)(396003)(136003)(366004)(39830400003)(376002)(346002)(199004)(38564003)(13624006)(189003)(13464003)(99286004)(68736007)(186003)(2906002)(53546011)(316002)(5660300001)(6506007)(9686003)(44832011)(6306002)(55016002)(2351001)(106356001)(105586002)(229853002)(53936002)(486006)(11346002)(446003)(5640700003)(6246003)(7696005)(6116002)(6916009)(76176011)(476003)(6436002)(33656002)(66066001)(256004)(45080400002)(14444005)(25786009)(3846002)(2501003)(71200400001)(71190400001)(97736004)(8936002)(81166006)(81156014)(1730700003)(14454004)(74316002)(305945005)(222073003)(86362001)(508600001)(347745004)(8676002)(26005)(7736002)(966005)(102836004);DIR:OUT;SFP:1102;SCL:1;SRVR:LNXP265MB1609;H:LNXP265MB1484.GBRP265.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: arcturussecurity.com does not
 designate permitted sender hosts)
x-microsoft-antispam-message-info:
 Zgi+wCd1v5zaG/rQ/fPmjM9a7NVBVyMN6JsJKelo7cfqmipllEYTMXBCRQW8QP54YAlXtWBpjVZ1v7KYbeiV382pXFJxfY+tyZ1X89E4p1jsywaSWD4x0V6GIMGH5DveA2CchYPIhZAoqA03+J5TqMZcYKsZKtk1OdeiMDgKFahqv8f0vDi4PtBGACu1DZt0JFNC7d+0uw7C44HEag44r2L3IUTLZ+VHXrW/not25BWNV9PiN/cDuEy+xrWFptUDMWGD6so6GXoRU/F0svVaWcTdQPJISdGOuKOhHx/baFn97Rx9DthkdyD7ICu6bJoC
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: arcturussecurity.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e18bbe8d-4825-4728-4675-08d6665e7c89
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2018 09:35:32.1003
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b92fe19b-343d-4483-8555-4ba01423da27
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LNXP265MB1609

I accept

-----Original Message-----
From: kurt@seifried.org <kurt@seifried.org>
Sent: 20 December 2018 03:04
To: Rory Mackie <rory.mackie@arcturussecurity.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for rory.mackie=
@arcturussecurity.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.

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
th your question/concerns/etc.

                        [Crest] <https://www.crest-approved.org/membercompa=
nies/arcturus-security-ltd/index.html>
        [Arcturus - Part of the CYBERFORT group] <https://arcturussecurity.=
com>

        [Linkedin] <https://www.linkedin.com/company/arcturussecurity>     =
             [Twitter] <https://twitter.com/arcturussec>
[spacer.png]
Privacy policy <https://arcturussecurity.com/privacy-policy/>


