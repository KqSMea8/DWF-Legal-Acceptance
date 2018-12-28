Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp855169uaa;
        Thu, 6 Apr 2017 13:39:52 -0700 (PDT)
X-Received: by 10.84.217.149 with SMTP id p21mr44505814pli.59.1491511192835;
        Thu, 06 Apr 2017 13:39:52 -0700 (PDT)
Return-Path: <ahmad@rancher.com>
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (mail-co1nam03on0132.outbound.protection.outlook.com. [104.47.40.132])
        by mx.google.com with ESMTPS id 59si2651600plp.203.2017.04.06.13.39.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Apr 2017 13:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ahmad@rancher.com designates 104.47.40.132 as permitted sender) client-ip=104.47.40.132;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@GraniteComputing.onmicrosoft.com;
       spf=pass (google.com: domain of ahmad@rancher.com designates 104.47.40.132 as permitted sender) smtp.mailfrom=ahmad@rancher.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=GraniteComputing.onmicrosoft.com; s=selector1-rancher-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=PV3gLjWxeHYv37dGLDdVNqUVBqquPdwTqzOytYXHPps=;
 b=vgK0fOk7R8x3U7j3aQ840nZIVHiZNiFYPt/FvPQmi/KxzgXejp/fT2ru1k28dU4dDblNMQpcXav3aZjvf2h/DE2J7KG5H9haww1WpefQ394Vz1nsY+kMwK39RQO3A9aQwWpQXELltqB1Pi/ala2hW0QfcmfBjkxr9vWVQBBS8zg=
Received: from DM5PR11MB1497.namprd11.prod.outlook.com (10.172.36.144) by
 DM5PR11MB1497.namprd11.prod.outlook.com (10.172.36.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1019.17; Thu, 6 Apr 2017 20:39:51 +0000
Received: from DM5PR11MB1497.namprd11.prod.outlook.com ([10.172.36.144]) by
 DM5PR11MB1497.namprd11.prod.outlook.com ([10.172.36.144]) with mapi id
 15.01.1019.021; Thu, 6 Apr 2017 20:39:50 +0000
From: Ahmad Emneina <ahmad@rancher.com>
To: "kurt@seifried.org" <kurt@seifried.org>
CC: Security <security@rancher.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@rancher.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@rancher.com
Thread-Index: AQHSrxFt+gHAcfesaEe2DU+WpTB9XqG4zb0U
Date: Thu, 6 Apr 2017 20:39:50 +0000
Message-ID: <96280096-5A71-483C-AC49-D27FD55824AA@rancher.com>
References: <20170406200719.4090.97212@shiny-2.local>
In-Reply-To: <20170406200719.4090.97212@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=none action=none header.from=rancher.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [68.186.53.191]
x-microsoft-exchange-diagnostics: 1;DM5PR11MB1497;7:C4jm8atEx/fVcMiBS9fksdjopisPakAHBxMcHYWSMGmtyIZvF1twwEAAZHqdj23AwPH/so4WO9HJOeH4+q2p8FK0Bjg9SxfiR7HEs2TLLJOP7EWutzkAyn4V/EpsdJpJqLMZOQBbs9/iXkbEsRsvoQe1+gfpEH+BS7I3shOSUowvIDWNq4IRyzaig/u0WGGpRPe8lSpYbyMwa+wRzz/D5Ab6WHg2q6VKvtomxX4EDs2GMZoFl39NYVZrk62UpTsoBS3a1dC3hJFbMGqKQxvwHR9uIXT1wpStGZrwOcVTSqyltngcwgd2CzsT/djx/mv2IPtVQieTJ18KkNxDjQOWaA==
x-ms-office365-filtering-correlation-id: 21453f46-b24f-44bb-32a9-08d47d2d12e0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(201703131423075);SRVR:DM5PR11MB1497;
x-microsoft-antispam-prvs: <DM5PR11MB14976AB4BF0D80D97109BB1AB50D0@DM5PR11MB1497.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123562025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(20161123560025)(20161123564025)(2016111802025)(6043046)(6072148);SRVR:DM5PR11MB1497;BCL:0;PCL:0;RULEID:;SRVR:DM5PR11MB1497;
x-forefront-prvs: 02698DF457
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(39400400002)(39410400002)(39830400002)(39450400003)(377454003)(13624006)(24454002)(38564003)(229853002)(86362001)(38730400002)(107886003)(2501003)(2351001)(110136004)(189998001)(53936002)(66066001)(25786009)(4326008)(83716003)(6916009)(3280700002)(82746002)(2906002)(2950100002)(3660700001)(6506006)(6306002)(99286003)(5660300001)(6512007)(8676002)(305945005)(33656002)(7736002)(15650500001)(5180700001)(6436002)(122556002)(5640700003)(77096006)(6486002)(54356999)(76176999)(50986999)(36756003)(3846002)(102836003)(81166006)(2900100001)(8936002)(1730700003)(6116002)(221513004)(222073002);DIR:OUT;SFP:1102;SCL:1;SRVR:DM5PR11MB1497;H:DM5PR11MB1497.namprd11.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: rancher.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2017 20:39:50.5962
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: abb5adde-bee8-4821-8b03-e63efdc7701c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1497

I accept

Ahmad E

> On Apr 6, 2017, at 1:07 PM, "kurt@seifried.org" <kurt@seifried.org> wrote=
:
>=20
> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms=
 of Use acceptance data at https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you don'=
t want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically i=
n future (you'll have to manually ask). But again, if you have no idea what=
 a CVE is then you can ignore this/ask to be added to the block list with n=
o problems.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and=
 all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive=
, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, an=
d distribute such materials and derivative works. Unless required by applic=
able law or agreed to in writing, you provide such materials on an "AS IS" =
BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impl=
ied, including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make=
 for such purposes is authorized provided that you reproduce MITRE's copyri=
ght designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
 PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE =
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF=
 TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRES=
S OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE=
 INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES=
 OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at https://github.com/distributedweaknessfiling/DWF-D=
atabase/blob/master/TermsOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.=20
>=20
