Delivered-To: kurt@seifried.org
Received: by 2002:a9d:246c:0:0:0:0:0 with SMTP id p99-v6csp4829419ota;
        Mon, 25 Jun 2018 19:56:36 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpfWsk/vHFtmXu19I3CXSY5lL/MVryAk2YZOUq/rsyfKcMCcvvFgZrYlqC3LjHkYeWBAAbHW
X-Received: by 2002:a6b:ea05:: with SMTP id m5-v6mr434362ioc.33.1529981796399;
        Mon, 25 Jun 2018 19:56:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529981796; cv=none;
        d=google.com; s=arc-20160816;
        b=UAhxil/4BbmAAlyRIf7Ki/1fj3e2gW3SLWtwwM+TaNY+iygDGe1/LvVXrw0QaIyzPq
         ZM9KdUxs0TL6og1CCAV0WKqVK4yEpd7afaFP4nKb123Z0oLGT5690JLRYZI97Nq7jtl6
         t7YyZ5A778O+82/TKzJXI4u2rwz8wcl6AC+DKrkuTXgFZu8oFd7W8rFB4uHFsKHINOA5
         5Awf3MeakAgI3k24AxXMYoJ9hwQbRJEuzNUgq7e0CI4mrFkzit0yy3jFWkMg9MWF3opf
         /yFfDXSQk+7nitORe49A5Ods+kxodOpXcXWjWtvlKJRgO8Gs+ypmatTlX5n/Zy2qo4Pu
         tqYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:spamdiagnosticmetadata
         :spamdiagnosticoutput:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature:arc-authentication-results;
        bh=uLHfm1b0ZNNfP8egJ5QpUnG+30/wEMF+lyJr7nKbR4Y=;
        b=l2u5+hSIjs1BN6I83n0UcRn+Sqai6Rs4eS1bloK+ay4IQJUJr/1OwgRgExtHCiZxJh
         9bnqkZ3uokphJpdLkbuVau083kZm8QEfAvcxnEzfQMkE2lfAPbh+V+lV+QBnjG7HSV70
         fBva2roXlktPyZ9axT7+VhyUC9oAYoRnJUYQXafdeSDGcQoOnU55fHFY7lQN8YLyGSKS
         nbBpIp6IZdvbZHxp/+ne3kBYvn3RIsla3m8XVK7Z/wEXHtOdV5Bf9MaSqZ6/lBRKgrFC
         4xa+wns0v9VnWtF5bFHj/vjsVd19uPIYW4FsMAuafJ3dUWTa45zZeBLFF1xGLP2bIgz4
         EjQQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@techlabcorp.onmicrosoft.com header.s=selector1-techlabcorp-com header.b=LXkDWleg;
       spf=neutral (google.com: 104.47.126.102 is neither permitted nor denied by best guess record for domain of toan.nguyen@techlabcorp.com) smtp.mailfrom=toan.nguyen@techlabcorp.com
Return-Path: <toan.nguyen@techlabcorp.com>
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-pu1apc01on0102.outbound.protection.outlook.com. [104.47.126.102])
        by mx.google.com with ESMTPS id z141-v6si359646iod.152.2018.06.25.19.56.35
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Jun 2018 19:56:36 -0700 (PDT)
Received-SPF: neutral (google.com: 104.47.126.102 is neither permitted nor denied by best guess record for domain of toan.nguyen@techlabcorp.com) client-ip=104.47.126.102;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@techlabcorp.onmicrosoft.com header.s=selector1-techlabcorp-com header.b=LXkDWleg;
       spf=neutral (google.com: 104.47.126.102 is neither permitted nor denied by best guess record for domain of toan.nguyen@techlabcorp.com) smtp.mailfrom=toan.nguyen@techlabcorp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=techlabcorp.onmicrosoft.com; s=selector1-techlabcorp-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uLHfm1b0ZNNfP8egJ5QpUnG+30/wEMF+lyJr7nKbR4Y=;
 b=LXkDWlegddNXSX4K9TFGJGbSEbaf4NHF0MagmbdUhmr8iTRZCu1YmxhteUihdkXiV1ojLf63z6GyunyzE9JXHWVCo7xa/zcFhLNOl3nnYpAGMYj74jG49ygJCraHOdBmS3uo+ERPZY06l0kX9WZq8lKF+yMf4JVYF3/9NA5ihto=
Received: from SG2PR06MB2265.apcprd06.prod.outlook.com (20.177.4.145) by
 SG2PR06MB0824.apcprd06.prod.outlook.com (10.162.198.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.884.23; Tue, 26 Jun 2018 02:56:32 +0000
Received: from SG2PR06MB2265.apcprd06.prod.outlook.com
 ([fe80::b138:b096:715f:1848]) by SG2PR06MB2265.apcprd06.prod.outlook.com
 ([fe80::b138:b096:715f:1848%13]) with mapi id 15.20.0884.024; Tue, 26 Jun
 2018 02:56:32 +0000
From: Toan Nguyen <toan.nguyen@techlabcorp.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 toan.nguyen@techlabcorp.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 toan.nguyen@techlabcorp.com
Thread-Index: AQHUDKxAMPtlaZ5NaEyCUIc+iA5X96Rx2QWw
Date: Tue, 26 Jun 2018 02:56:32 +0000
Message-ID: <SG2PR06MB226523A46701F8033C2F1886FA490@SG2PR06MB2265.apcprd06.prod.outlook.com>
References: <20180625174458.20093.69517@shiny-2.local>
In-Reply-To: <20180625174458.20093.69517@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=toan.nguyen@techlabcorp.com; 
x-originating-ip: [116.118.107.53]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;SG2PR06MB0824;7:9KuM0+3cm7K7WXl3d2qk7TLi0Ooo5119sM4megGax/cSI+Ym70REEPhbhWQcNrsqQhq/07yiDpQpIamzIgbJPtHQfuoKbHzwqvERmjunjugnI0ghhjXtCsOkduEZuj+euJ5GM9lQ30qEF6uvQXa4P2VUY1vTYay5ADvoPRS79UaHtAwVyejy6w+Bdde94XFB7W7/yDLkbhyAWcNZFCye73HyS/Q/VO2VPE9bkZ3YCkIWAkUSdk4IrlcUEUPz4pE8
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 11448106-aa50-4a07-7d0a-08d5db106c5b
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(7021125)(8989117)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990107)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(711020)(2017052603328)(7153060)(7193020);SRVR:SG2PR06MB0824;
x-ms-traffictypediagnostic: SG2PR06MB0824:
x-microsoft-antispam-prvs: <SG2PR06MB082497D3C71C3E968EFD70EFFA490@SG2PR06MB0824.apcprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231254)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123564045)(20161123558120)(20161123562045)(20161123560045)(2016111802025)(6043046)(6072148)(201708071742011)(7699016);SRVR:SG2PR06MB0824;BCL:0;PCL:0;RULEID:;SRVR:SG2PR06MB0824;
x-forefront-prvs: 071518EF63
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(39830400003)(396003)(366004)(136003)(376002)(346002)(13464003)(38564003)(199004)(13624006)(189003)(28244002)(486006)(5180700001)(11346002)(229853002)(44832011)(9686003)(53936002)(6306002)(186003)(305945005)(55016002)(6436002)(68736007)(2351001)(102836004)(966005)(74316002)(6246003)(14454004)(86362001)(7736002)(26005)(2906002)(6916009)(446003)(476003)(5640700003)(33656002)(6506007)(53546011)(5660300001)(478600001)(8676002)(316002)(99286004)(8936002)(1730700003)(66066001)(7696005)(76176011)(81166006)(5250100002)(97736004)(105586002)(106356001)(3846002)(81156014)(2501003)(2900100001)(25786009)(6116002)(14444005)(256004)(221513004)(222073002);DIR:OUT;SFP:1102;SCL:1;SRVR:SG2PR06MB0824;H:SG2PR06MB2265.apcprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: techlabcorp.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: PcL8dXUeyr9NQ5QCn3zmhZzU5F6afskHk/BZBfUFQqh1DT8QxekaA0rLJV8qoJK6vAPvk69wZsHwpM1aoAkiD9GrO5fyNShPym/2Um4IPlav2fpyoFz1VkX0FxvMTrgO41lnlJAhcE0Bvt+VHLDSjk/aA/x4KSiYTjoRHSbFa4s9sY3I5UrRcJWzkHN/x8duJabLu9WyN8OnKgwfwDjXHHRP6BHPu8tHQjy63WAKZOxX4SMTRVJwVNxyBmO0ylWzk69mbNC7Yz1qDs30kNxaTwsw7LL5cb50EbVBDxdyDaQfVDPW3IqI4916D3j7uVvEBgZqrfYguWIcu3j3PsZqwQHM1FoCPeogr4++g+Mk2J8=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: techlabcorp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11448106-aa50-4a07-7d0a-08d5db106c5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2018 02:56:32.6062
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ccadb3c5-1e29-410b-a0ca-37ec525f2133
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB0824

'toan.nguyen@techlabcorp.com'
I accept

-----Original Message-----
From: kurt@seifried.org <kurt@seifried.org>=20
Sent: Tuesday, June 26, 2018 12:45 AM
To: Toan Nguyen <toan.nguyen@techlabcorp.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for toan.nguyen=
@techlabcorp.com

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

