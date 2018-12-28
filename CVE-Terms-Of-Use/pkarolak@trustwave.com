Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp22116uaa;
        Thu, 6 Apr 2017 16:02:32 -0700 (PDT)
X-Received: by 10.36.48.139 with SMTP id q133mr29749385itq.93.1491519752574;
        Thu, 06 Apr 2017 16:02:32 -0700 (PDT)
Return-Path: <PKarolak@trustwave.com>
Received: from seg-node-chi-03.trustwave.com (seg-node-chi-03.trustwave.com. [204.13.200.202])
        by mx.google.com with ESMTPS id n2si22305326itn.120.2017.04.06.16.02.32
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 16:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of pkarolak@trustwave.com designates 204.13.200.202 as permitted sender) client-ip=204.13.200.202;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of pkarolak@trustwave.com designates 204.13.200.202 as permitted sender) smtp.mailfrom=PKarolak@trustwave.com
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (Not Verified[216.32.180.184]) by seg-node-chi-03.trustwave.com with Trustwave SEG (v7,5,7,9330) (using TLS: TLSv1.2, AES256-SHA256)
	id <B58e6c9070005>; Thu, 06 Apr 2017 18:02:31 -0500
Received: from BN3PR07MB2564.namprd07.prod.outlook.com (10.167.4.153) by
 BN3PR07MB2564.namprd07.prod.outlook.com (10.167.4.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1005.10; Thu, 6 Apr 2017 23:02:30 +0000
Received: from BN3PR07MB2564.namprd07.prod.outlook.com ([10.167.4.153]) by
 BN3PR07MB2564.namprd07.prod.outlook.com ([10.167.4.153]) with mapi id
 15.01.1005.020; Thu, 6 Apr 2017 23:02:30 +0000
From: Piotr Karolak <PKarolak@trustwave.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 pkarolak@trustwave.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 pkarolak@trustwave.com
Thread-Index: AQHSrxOTBM+mtT3zkE2SdYScaG1NbaG5nTUA
Date: Thu, 6 Apr 2017 23:02:30 +0000
Message-ID: <D50D05FD.1E281%pkarolak@trustwave.com>
References: <20170406202157.4090.38242@shiny-2.local>
In-Reply-To: <20170406202157.4090.38242@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/14.7.2.170228
authentication-results: seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=none action=none header.from=trustwave.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [141.168.228.131]
x-microsoft-exchange-diagnostics: 1;BN3PR07MB2564;7:E4x2kwx+NsRxPzdJtkglZxCgkKcSeMy6f42wprlFFkzJ3gs4JseT4z2GqHGqKAmiNYNhfulBAUr0KgB5HZEyguVowK9scrT/jACPtC7ddkvQHrGYvZloO6O6S7680jgeIoRO2uZXt337PsYkkbcAEeT1I3Bfg8+7mUYm1iKXLVJ/dl59KkDTUupQpeVI8TIBoDlgfrTfa6drkB8Qt4736k5gzferjrwAyeipIsbRk4zLEPVxvJrxuiua6fMC7TrQjuIsn7yAkaAKDBwC+MyE2sEWfjfx/4gR1dHDZ3Wk34glP26a4L8sRLQSjluwTF/8WuDuPVDECCJ4O22nhEgAfQ==
x-ms-office365-filtering-correlation-id: f898660f-b6f8-4208-ea86-08d47d4100b5
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);SRVR:BN3PR07MB2564;
x-microsoft-antispam-prvs: <BN3PR07MB25644149038E2CAF62B2E0FCC50D0@BN3PR07MB2564.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(232896897485771);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123555025)(20161123560025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(20161123562025)(6072148);SRVR:BN3PR07MB2564;BCL:0;PCL:0;RULEID:;SRVR:BN3PR07MB2564;
x-forefront-prvs: 02698DF457
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(39410400002)(39860400002)(39450400003)(39400400002)(39840400002)(39850400002)(13624006)(377454003)(28244002)(38564003)(24454002)(5640700003)(6506006)(3660700001)(122556002)(36756003)(77096006)(6246003)(229853002)(6486002)(8676002)(575784001)(6436002)(80792005)(1730700003)(305945005)(38730400002)(3280700002)(53546009)(2501003)(6916009)(7736002)(83506001)(25786009)(99286003)(66066001)(54356999)(6512007)(5180700001)(76176999)(86362001)(6116002)(5660300001)(53936002)(189998001)(110136004)(3846002)(102836003)(2900100001)(6306002)(50986999)(2906002)(81166006)(2950100002)(8936002)(2351001)(221513004)(222073002);DIR:OUT;SFP:1102;SCL:1;SRVR:BN3PR07MB2564;H:BN3PR07MB2564.namprd07.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A8ADE231003E4547919849487BB1F7E7@namprd07.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: trustwave.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2017 23:02:30.2169
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cb1dab68-a067-4b6b-ae7e-c012e8c33f6a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR07MB2564

"I accept=B2



Regards,
Piotr Karolak





On 4/7/17, 6:21 AM, "kurt@seifried.org" <kurt@seifried.org> wrote:

>This is a confirmation email sent from CVE request form at
>https://scanmail.trustwave.com/?c=3D4062&d=3D66Pm2J0K92VbvOC_I_cbfXCVHQVl0=
2GRM
>ME7Ud7J8g&s=3D5&u=3Dhttps%3a%2f%2fiwantacve%2eorg%2f asking you to accept =
the
>MITRE CVE Terms of Use (assuming you filled out the CVE form and want
>one, we can't use the data until you accept the MITRE CVE Terms of Use).
>
>Simply quote the email and reply with "I accept" at the top if you agree
>to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE
>Terms of Use acceptance data at
>https://scanmail.trustwave.com/?c=3D4062&d=3D66Pm2J0K92VbvOC_I_cbfXCVHQVl0=
2GRM
>MBqBIrOpw&s=3D5&u=3Dhttps%3a%2f%2fgithub%2ecom%2fdistributedweaknessfiling=
%2fD
>WF-Legal-Acceptance%2ftree%2fmaster%2fTerms-Of-Use
>
>If you did not submit a CVE request to the DWF you can safely ignore this
>message, however we may resend it at some point in the future, if you
>don't want any future emails simply reply with "unsubscribe" or "DON'T
>SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the
>block list so we don't spam you with these, please note that this will
>prevent you from being able to accept the MITRE CVE Terms of Use via the
>DWF automatically in future (you'll have to manually ask). But again, if
>you have no idea what a CVE is then you can ignore this/ask to be added
>to the block list with no problems.
>
>MITRE CVE Terms of Use
>
>LICENSE
>
>Submissions: For all materials you submit to the Common Vulnerabilities
>and Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE)
>and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
>non-exclusive, no-charge, royalty-free, irrevocable copyright license to
>reproduce, prepare derivative works of, publicly display, publicly
>perform, sublicense, and distribute such materials and derivative works.
>Unless required by applicable law or agreed to in writing, you provide
>such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
>ANY KIND, either express or implied, including, without limitation, any
>warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
>FITNESS FOR A PARTICULAR PURPOSE.
>
>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
>no-charge, royalty-free, irrevocable copyright license to reproduce,
>prepare derivative works of, publicly display, publicly perform,
>sublicense, and distribute Common Vulnerabilities and Exposures (CVE??).
>Any copy you make for such purposes is authorized provided that you
>reproduce MITRE's copyright designation and this license in any such copy.
>
>DISCLAIMERS
>
>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
>PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
>REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD
>OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,
>EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE
>USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY
>IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
>A copy is available at
>https://scanmail.trustwave.com/?c=3D4062&d=3D66Pm2J0K92VbvOC_I_cbfXCVHQVl0=
2GRM
>Js2Woybow&s=3D5&u=3Dhttps%3a%2f%2fgithub%2ecom%2fdistributedweaknessfiling=
%2fD
>WF-Database%2fblob%2fmaster%2fTermsOfUse%2emd
>
>To contact the DWF either hit reply, or email kurt@seifried.org manually
>with your question/concerns/etc.
>

