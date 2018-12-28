Delivered-To: kurt@seifried.org
Received: by 10.103.27.130 with SMTP id b124csp1209311vsb;
        Fri, 18 Aug 2017 14:59:09 -0700 (PDT)
X-Received: by 10.99.120.200 with SMTP id t191mr9973908pgc.191.1503093549083;
        Fri, 18 Aug 2017 14:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503093549; cv=none;
        d=google.com; s=arc-20160816;
        b=KiIlT7BhXqlN+ZSM5fkW1OXxifnYMgi0TrPuqFQy/wqxwVShRHZSjSk963hV4Z7oPK
         o8yhfRJD3bSyYi+stXaY3Op2wQvgO5Lx0KlYUHy6SKVlfjCLuScs+X1ltmXE5cyrVPkA
         jD9P6JBusVt6s6LYu1dfq6khzwxlpHxpvTYSKhCOYVqxnyW8pY37M6ENMfRY5K3NaLYO
         TC6SYHCELcdToHFZ7ql3ee/zl9maJuBt+j8kHzTjCnyeJfUmAc0bNDS+N132Mjg2uM2x
         syvZ6nKaCic5hNHHgTItlNohM0dJPYOJT84Ce/+MAQ0IkJnUrwXmDvuxSknDWTqjWFfG
         F90A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=eQVz/g9cgPrDmj4tfSFndBWPsFM+i4n+FQr2kCrI32k=;
        b=h61bmstLDmx4qEVD886mNsL6pD+obyIFUEKKCDjvG+gvWc3UwLmyUN/P2P0QoRD/vo
         WzTIA/yA+YLBMGdC5Ud3aoWjFaeNhTxozGRXpFvbUu9NUX++krM8/sh0kxDJYkniDzuE
         L+beqpEipKVUEl9IralI8TtJyDVw3DICu4mwKYlKFzEjANbHFzKfPQh2T9zuDEfx/2m5
         gv++dztT7hdk3rx9cOyMJasE0EQn/CPQn8PiH5BNe0YCKR20JQNQnKxRgM+YTyBVHuZs
         g7gel8pGfHSBBytWO3nnYAtkoA+3ziCtx2T4L+l116hC3ttuH9rxNY/cLyOKt57MOKOa
         o1Jw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=BDR4KWlV;
       spf=pass (google.com: domain of junxzm@hotmail.com designates 40.92.3.12 as permitted sender) smtp.mailfrom=junxzm@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
Return-Path: <junxzm@hotmail.com>
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-oln040092003012.outbound.protection.outlook.com. [40.92.3.12])
        by mx.google.com with ESMTPS id x15si4179170pfk.157.2017.08.18.14.59.08
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 18 Aug 2017 14:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of junxzm@hotmail.com designates 40.92.3.12 as permitted sender) client-ip=40.92.3.12;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=BDR4KWlV;
       spf=pass (google.com: domain of junxzm@hotmail.com designates 40.92.3.12 as permitted sender) smtp.mailfrom=junxzm@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=eQVz/g9cgPrDmj4tfSFndBWPsFM+i4n+FQr2kCrI32k=;
 b=BDR4KWlV5YKLb/9b0S9fixKQ3dXH3m/P2bdhnuvKd73hqwsKpi/kaaJAQEacTGL2qbxMUQI3ky2nCyx1k1GvuwCPHMHXQwTByhWoU8ukR8uLNDocMw0sXkuuSgfDMPsOBaZDoVr46CBJa5/kPpAAH9jD2nqDn10Bj8tjDfI9O5F2aRgjMZEXQIjBTtKsSv+OWCwaxIDn5vDZKFh38LDhhNKT2wPN2zbEV97o8+KBVkzdSuJY3Z20Xh3R1wJxh1OACHCDydmtlhp8zumjUTPlatxC2+m2oBquY+At0htOxY1Ob5Gz27CQG4cVw4whSfOK+W4mGOp3F8egn+jDK+lkyA==
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (10.152.76.53) by BL2NAM02HT043.eop-nam02.prod.protection.outlook.com
 (10.152.76.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1304.16; Fri, 18
 Aug 2017 21:59:07 +0000
Received: from MWHPR12MB1791.namprd12.prod.outlook.com (10.152.76.54) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1341.15 via Frontend Transport; Fri, 18 Aug 2017 21:59:07 +0000
Received: from MWHPR12MB1791.namprd12.prod.outlook.com ([10.175.55.138]) by
 MWHPR12MB1791.namprd12.prod.outlook.com ([10.175.55.138]) with mapi id
 15.01.1362.019; Fri, 18 Aug 2017 21:59:07 +0000
From: Jun Xu <junxzm@hotmail.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 junxzm@hotmail.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 junxzm@hotmail.com
Thread-Index: AQHTGFjRptm19r6cmEWugQVfv35CcqKKqVo+
Date: Fri, 18 Aug 2017 21:59:07 +0000
Message-ID: <MWHPR12MB17916A794582F1C4305EF10CD1800@MWHPR12MB1791.namprd12.prod.outlook.com>
References: <20170818193257.55281.97057@shiny-2.local>
In-Reply-To: <20170818193257.55281.97057@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=none action=none header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:DAE01FC117FFEC19EC54EAFBAE99A86DA9E28214DCD765269E8C97BC7269BEB9;UpperCasedChecksum:B4F7D6D399BE478E1F7C550376A651F64341796CB5E8D232C4B36AB57BB05CE1;SizeAsReceived:7001;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FLN7ncZ8fLT3jnQHAUem2APYLaoi+sm+]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;BL2NAM02HT043;7:X7XSs1D9YfYbJ02mMxCHfSjKAuG0NZwJU7cnc2nV4rxKH0FthBxx6vQgGNBp+HzQ24k6cQ0TuIKEkx60vEbr535yk/5+tk8hdWP6X7/hdD2MJ2zEez7fKQs47eP04ppEy0KyDNp5gvhBEZGCny4yHj63qBNJMebsjRhjwkpw9qwRHQzXnVJ0Qk536khVhttn31GT15Ch5mCagS1Yhksv8XGR3hMJCsRBJZ1bXTkjJi+RK4DTeku29JQEdwt02eeYC8Px528PuWzBsEO64h/NaBMXyvIMlN+alE+kBpqGi2GAPgSGatm/UV6+3qkmVpP28jWKedcssIydml+jfeMSN84ap4ctuTQcmj7b/jh0Cj0zvBC1tCi067yEwwYeoROdWUqqHMTdZCTAdNpII914f6A9LNIwrqI5cNZuKC2w4GX1O0VZlPQkdwME2AzUbc9CH4PdjYbNUFwbNAUlWLw+jeyelZjgXQ5DdhcokGJDoa1yT9MD12Kptpd92sTa64iU0UGuDmolo34gKJS0b1pnn2S0HZLj04nmn9ruzLimRgGWBbzUP4PAqGbVntgT66/UPDgmBq9qF9aJF4Ml/Q8xQ1R8gQfVOuvesj785OSPPZFNq+m9KDWYu2Hii0sF7Tpmb/HCvxoOoa4bGc/B1i2FaN78YG9nJyp9LOPbC8YleTH0dLQOXSZVdMJBX0sbvEbR4JjivlrqpUGvoK0AeG+SPSpoVON+s2PVVx14/uzoLi410c14Tu7SY93dmC+F4CMs+hVRI66BI4GFkOyyFFxSRQ==
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI;SFV:NSPM;SFS:(7070007)(98901004);DIR:OUT;SFP:1901;SCL:1;SRVR:BL2NAM02HT043;H:MWHPR12MB1791.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;
x-ms-office365-filtering-correlation-id: d08b5e04-e447-47e2-2315-08d4e684595a
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322377)(1603101448)(1601125374)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);SRVR:BL2NAM02HT043;
x-ms-traffictypediagnostic: BL2NAM02HT043:
x-exchange-antispam-report-test: UriScan:(166708455590820)(194151415913766);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);SRVR:BL2NAM02HT043;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:BL2NAM02HT043;
x-forefront-prvs: 040359335D
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_MWHPR12MB17916A794582F1C4305EF10CD1800MWHPR12MB1791namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2017 21:59:07.4764
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT043

--_000_MWHPR12MB17916A794582F1C4305EF10CD1800MWHPR12MB1791namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


I accept


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


________________________________
From: kurt@seifried.org <kurt@seifried.org>
Sent: Friday, August 18, 2017 2:32 PM
To: junxzm@hotmail.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for junxzm@hotm=
ail.com

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

A copy is available at https://github.com/distributedweaknessfiling/DWF-Dat=
abase/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.


--_000_MWHPR12MB17916A794582F1C4305EF10CD1800MWHPR12MB1791namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><br>
</p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">I accept</span><br>
</p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 13.3333px;">MITRE CVE Terms of Use</span><br style=3D"font-family: Cal=
ibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quo=
t;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;=
Android Emoji&quot;, EmojiSymbols; font-size: 13.3333px;">
<br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: =
13.3333px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 13.3333px;">LICENSE</span><br style=3D"font-family: Calibri, Helvetica, s=
ans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&q=
uot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot=
;, EmojiSymbols; font-size: 13.3333px;">
<br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: =
13.3333px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 13.3333px;">Submissions: For all materials you submit to the Common Vulne=
rabilities
 and Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly
 display, publicly perform, sublicense, and distribute such materials and d=
erivative works. Unless required by applicable law or agreed to in writing,=
 you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTI=
ES OR CONDITIONS OF ANY KIND, either express
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.</span><br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiF=
ont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEm=
oji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; =
font-size: 13.3333px;">
<br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: =
13.3333px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 13.3333px;">CVE Usage: MITRE hereby grants you a perpetual, worldwide, no=
n-exclusive,
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make=
 for such purposes is authorized
 provided that you reproduce MITRE's copyright designation and this license=
 in any such copy.</span><br style=3D"font-family: Calibri, Helvetica, sans=
-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot=
;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, =
EmojiSymbols; font-size: 13.3333px;">
<br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: =
13.3333px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 13.3333px;">DISCLAIMERS</span><br style=3D"font-family: Calibri, Helvetic=
a, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emo=
ji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&=
quot;, EmojiSymbols; font-size: 13.3333px;">
<br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: =
13.3333px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 13.3333px;">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED
 BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, T=
HE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CO=
RPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM=
 ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
 BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WI=
LL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR =
FITNESS FOR A PARTICULAR PURPOSE.</span><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> kurt@seifried.org &=
lt;kurt@seifried.org&gt;<br>
<b>Sent:</b> Friday, August 18, 2017 2:32 PM<br>
<b>To:</b> junxzm@hotmail.com<br>
<b>Subject:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for junx=
zm@hotmail.com</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">This is a confirmation email sent from CVE request=
 form at
<a href=3D"https://iwantacve.org/" id=3D"LPlnk584983" previewremoved=3D"tru=
e">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of U=
se (assuming you filled out the CVE form and want one, we can't use the dat=
a until you accept the MITRE CVE Terms
 of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at
<a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptanc=
e/tree/master/Terms-Of-Use" id=3D"LPlnk797950" previewremoved=3D"true">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use</a><br>
<br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.
<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with &quot;unsubscribe&quot; or &quot;D=
ON'T SEND ME THIS EMAIL EVER AGAIN&quot; and I'll add
 your email address to the block list so we don't spam you with these, plea=
se note that this will prevent you from being able to accept the MITRE CVE =
Terms of Use via the DWF automatically in future (you'll have to manually a=
sk). But again, if you have no idea
 what a CVE is then you can ignore this/ask to be added to the block list w=
ith no problems.
<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute such materials and deriva=
tive works. Unless required by applicable law or agreed to in writing, you =
provide such materials on an &quot;AS
 IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities
 and Exposures (CVE??). Any copy you make for such purposes is authorized p=
rovided that you reproduce MITRE's copyright designation and this license i=
n any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES,
 DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO =
ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTIC=
ULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" id=3D"LPlnk337261" previewremov=
ed=3D"true">
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.
<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_MWHPR12MB17916A794582F1C4305EF10CD1800MWHPR12MB1791namp_--
