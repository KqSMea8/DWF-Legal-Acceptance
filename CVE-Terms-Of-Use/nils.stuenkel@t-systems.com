Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp10500435otc;
        Wed, 5 Dec 2018 23:23:54 -0800 (PST)
X-Google-Smtp-Source: AFSGD/X4sDKRpCOpHoUqxvL9laoqWII5rbgq+E9iZILaep2Dtcri8B2qnYXSba2+OsJnz++eQp0M
X-Received: by 2002:a7b:cd85:: with SMTP id y5mr17624455wmj.129.1544081032661;
        Wed, 05 Dec 2018 23:23:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544081032; cv=none;
        d=google.com; s=arc-20160816;
        b=0ZsBLVSx4buchMNBFPIkIgYItdeQXSF7rk1sdZ8ShVnT+XXygXVbkM09isNMiJWguH
         81yqyxWuEQh8Kjw2rcl6inaC+zSrhcghxS7B1YUPF1LNlOyQWMn5K2kS1UXMu48PwnEH
         P6kq7lfT0Cw6yBApfSI3U3OUdDVpk1xrSSvTN+GskiMDO+3ZQidEcfTpUbGg5gcYbgpi
         oTg/8MBqxkIh8WDbdWGYDLJ/xCnTc7fj5v5Y5wnzR7MxgXbv+AUWWiQu8G0By1uz9QnM
         Pe/kuj1/4ysawLUvgRCdhhLgLf1iEH7nWQX4a3twQHPNSU7+cOxTkVdzi8Co+5o5f0IF
         iDDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=8Y3wMKq8IF5RvaCfrPjGcgwLxd7IEA3KE9M56XkB7nc=;
        b=D899ENFcEQrUGkU56uNy0dzymdzvvy+YnIxntO6nnb45jIURpNi9UXlETTkJSVzK9O
         BCeWqMf21j7kza4lJFzoI6qzTU9dSNbhIcF/U0xx9lSAMUqS7CpXN5NqXqVE68vlmHlP
         c/qeCG23RfknAog6d6Ql7gm9Cbbr4YQ+rzlCuXruLzOi+KGwYMMb4mmqOysKdw4jgbuF
         n+bJ8xn9PKX0EB4J+RaNJbujWmcEcYEUg5jgHyujTHMA/c63EJ1yXuQTGLeW6VBJnuAb
         /QJA0nmJIjWeCZdfB9MrjCYoNuqq1Lqy00N23gvUSciIsPhiK34y4Lp+S953M7Ii94k7
         A5MQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@t-systems.com header.s=mail header.b=k43G2k43;
       spf=neutral (google.com: 194.25.225.207 is neither permitted nor denied by best guess record for domain of nils.stuenkel@t-systems.com) smtp.mailfrom=Nils.Stuenkel@t-systems.com
Return-Path: <Nils.Stuenkel@t-systems.com>
Received: from mailout11.telekom.de (MAILOUT11.telekom.de. [194.25.225.207])
        by mx.google.com with ESMTPS id x1si16898134wro.277.2018.12.05.23.23.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Dec 2018 23:23:52 -0800 (PST)
Received-SPF: neutral (google.com: 194.25.225.207 is neither permitted nor denied by best guess record for domain of nils.stuenkel@t-systems.com) client-ip=194.25.225.207;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@t-systems.com header.s=mail header.b=k43G2k43;
       spf=neutral (google.com: 194.25.225.207 is neither permitted nor denied by best guess record for domain of nils.stuenkel@t-systems.com) smtp.mailfrom=Nils.Stuenkel@t-systems.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=t-systems.com; i=@t-systems.com; q=dns/txt; s=mail;
  t=1544081032; x=1575617032;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=8Y3wMKq8IF5RvaCfrPjGcgwLxd7IEA3KE9M56XkB7nc=;
  b=k43G2k43tny5V27bIl3bEKf0rV056OngrjrIzX68eJ1INm59xCAGRCTf
   yUP8miHnT+RSZMXpii3Pujh6iKCvVIMKM31wozhXPxO0wJkEppp+fHQfp
   nVNlI/dv0S/TmJ08FqrmTGOhGoucN+Io6Wl8r5iUXFx/Ny2bTBabT1dwB
   AUC1Q4gNX1FviT/J+wSVzNidS5X33+RCxcUEPUWVuWInH9s6R4UxItxMH
   DSpPyhUmjOfeGFHmbkL2xF1QRcyawfQMj87Z4Lt8702PdBeQ5S3eUIka1
   TmXev47kF2NX35RiMeN8Gxzbt3B1JmLHBAeC950Hd+sfDobNRsnBrYBc+
   w==;
Received: from qde9xy.de.t-internal.com ([10.171.254.32])
  by MAILOUT11.dmznet.de.t-internal.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Dec 2018 08:23:52 +0100
X-IronPort-AV: E=Sophos;i="5.56,321,1539640800"; 
   d="scan'208,217";a="179052820"
Received: from he106162.emea1.cds.t-internal.com ([10.169.118.73])
  by QDE9Y1.de.t-internal.com with ESMTP/TLS/AES256-SHA; 06 Dec 2018 08:23:51 +0100
Received: from HE105715.EMEA1.cds.t-internal.com (10.169.118.51) by
 HE106162.emea1.cds.t-internal.com (10.169.118.73) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Thu, 6 Dec 2018 08:23:51 +0100
Received: from HE104164.emea1.cds.t-internal.com (10.171.40.35) by
 HE105715.EMEA1.cds.t-internal.com (10.169.118.51) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4 via Frontend Transport; Thu, 6 Dec 2018 08:23:51 +0100
Received: from GER01-FRA-obe.outbound.protection.outlook.de (51.4.80.24) by
 O365mail06.telekom.de (172.30.0.233) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Thu, 6 Dec 2018 08:25:41 +0100
Received: from LEJPR01MB1242.DEUPRD01.PROD.OUTLOOK.DE (10.158.142.25) by
 LEJPR01MB1243.DEUPRD01.PROD.OUTLOOK.DE (10.158.142.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1382.22; Thu, 6 Dec 2018 07:23:50 +0000
Received: from LEJPR01MB1242.DEUPRD01.PROD.OUTLOOK.DE
 ([fe80::90b6:dd9b:df61:2d9]) by LEJPR01MB1242.DEUPRD01.PROD.OUTLOOK.DE
 ([fe80::90b6:dd9b:df61:2d9%6]) with mapi id 15.20.1382.023; Thu, 6 Dec 2018
 07:23:50 +0000
From: <Nils.Stuenkel@t-systems.com>
To: <kurt@seifried.org>
Subject: AW: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nils.stuenkel@t-systems.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nils.stuenkel@t-systems.com
Thread-Index: AQHUjN5LKlKH75kzBUKPxtG9SFufmaVxT0gi
Date: Thu, 6 Dec 2018 07:23:50 +0000
Message-ID: <LEJPR01MB12424D72853E3DF9963218D2B7A90@LEJPR01MB1242.DEUPRD01.PROD.OUTLOOK.DE>
References: <20181205210526.11686.49689@bigbox.local>
In-Reply-To: <20181205210526.11686.49689@bigbox.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Nils.Stuenkel@t-systems.com; 
x-originating-ip: [164.19.4.120]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;LEJPR01MB1243;6:dWgaWNtc2HFf9+Yuo7T2l5HGMPwQLr0XLzhsEdcx37ACze2FfPjUveMIkWsND9NxsLh98BiF9AbpJjKTIPWDzQJgHZTQKHdeoDevOzbLBOLqGkj29WsFGNXyWg57FlO9tgutc0QQFcpt2sJ2d7A3GuM5M7YnK6F3CbdQFgWOPcylKu/nn8oJ6U4a7rxEuySZ3AhIQN8LkqMqLoBeSYzrIXJKKLgTBaImL4Aa7oNQXhjt1jIUfyDC0OLr1MB8en14eX8eKLsAjakts0dAVq+44ddy6bJmS9Jf2CX3/DThupi7rIuw9viPpMl3xF7eOTCNUnxxQCy0Oj/wKle99p9htAvNRKNFqq/a4uadNkVRMYcNn8k3wvAw0AgQH5kJifE/g+NByekmzSKhP/3hdiUqGtbK6QkoVcAB2juotG9XTN+cN8e7zXsgUPCjqjqhvjuyGqOut1YJqZKPuOg6XBD/1g==;5:1I0yTnPaby0i3HeMqyZa/F4ePgYaJsyejknSbs0Isincqt2qvueQYWMvmZ2jaxQcs+IK1h2YXl5BHvUzh4lhkX4LFSByTtyNa8LPy+dRLsIP3swKY9eLUbPlNgH+as2AVci++9knYKEItuNXCg+DpN7IStOOdupTsdNUF6pF8Mg=;7:wJmBpriebGv7oY0Ke5NVs6zdsOot7Mhug729UarN6iz5F6U/UZ356yinfLKN7POZVSs21QmXdfiap//7628QCzwfABA4rSCmYkHFBVUHi3UF21SN7h2yDuk3d3qdkroyJxXGn8YhcalxynuU+gct4w==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 640e048b-f6eb-4754-898c-08d65b4bc525
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390098)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(2017052603328)(7153060)(7193020);SRVR:LEJPR01MB1243;
x-ms-traffictypediagnostic: LEJPR01MB1243:
x-microsoft-antispam-prvs: <LEJPR01MB124357CFB34A9E62A9175CEDB7A90@LEJPR01MB1243.DEUPRD01.PROD.OUTLOOK.DE>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(3231455)(999002)(944501520)(52105112)(148016)(149066)(150057)(6041310)(20161123562045)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(20161123555045)(201703061421075)(201708071742011)(7699051)(76991095);SRVR:LEJPR01MB1243;BCL:0;PCL:0;RULEID:;SRVR:LEJPR01MB1243;
x-forefront-prvs: 087894CD3C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(136003)(376002)(39860400002)(366004)(396003)(346002)(13624006)(38564003)(199004)(189003)(53936002)(5660300001)(76176011)(6606003)(476003)(446003)(11346002)(68736007)(7696005)(7736002)(256004)(97736004)(52396003)(1015004)(606006)(222073003)(2351001)(19627405001)(86362001)(486006)(6916009)(106356001)(105586002)(2906002)(966005)(186003)(8936002)(102836004)(81166006)(72206003)(26005)(5640700003)(33656002)(81156014)(6306002)(9686003)(54896002)(236005)(71200400001)(14444005)(71190400001)(2501003)(66066001)(14454004)(8676002)(1730700003)(3846002)(6116002)(55016002)(66574009)(508600001);DIR:OUT;SFP:1101;SCL:1;SRVR:LEJPR01MB1243;H:LEJPR01MB1242.DEUPRD01.PROD.OUTLOOK.DE;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: t-systems.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: lVTUCXLY8ATa4WRtJc1OkP3FjAnX6PPaeUFlz/01dS1B5taAbCzUxDyYrwl7TZvNHOQ8fsq7KwFZMDfK+8MZDqJW686jMnymCrQMx68Y5YSHBG/V/FrV3hTqCI9L3h+p353OviZavIiFmKdU4lyB4eozAa9UnJuZfzHW0NYIGiffhYbSnJlmijqIUcqgFEZmgm8g9magcp7j7WW6AOv7GSFKvJnWMEoCeXwEHwXu0m6cbevDgsk45UF8qDSVZ4fT/weQorntL2TV6JvpEZOIxW7jUD6EK3FkdmAWGXxv2OMpDZwWr6nYEf7/PbBzuPfRUCi2/qYRLdfmmLby9AQDcdK4RvXWCPexgmrZLucom/A=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_LEJPR01MB12424D72853E3DF9963218D2B7A90LEJPR01MB1242DEUP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 640e048b-f6eb-4754-898c-08d65b4bc525
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2018 07:23:50.6909
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bde4dffc-4b60-4cf6-8b04-a5eeb25f5c4f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LEJPR01MB1243
Return-Path: Nils.Stuenkel@t-systems.com
X-OriginatorOrg: t-systems.com

--_000_LEJPR01MB12424D72853E3DF9963218D2B7A90LEJPR01MB1242DEUP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I accept.


________________________________
Von: kurt@seifried.org <kurt@seifried.org>
Gesendet: Mittwoch, 5. Dezember 2018 22:05
An: St=FCnkel, Nils
Betreff: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nils.stuenk=
el@t-systems.com

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


--_000_LEJPR01MB12424D72853E3DF9963218D2B7A90LEJPR01MB1242DEUP_
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
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I accept.<br>
<br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"width: 98%; display: inline-block;">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif" style=3D"font-size: 11pt;"><b>Von:</b> kurt@seifried.org &l=
t;kurt@seifried.org&gt;<br>
<b>Gesendet:</b> Mittwoch, 5. Dezember 2018 22:05<br>
<b>An:</b> St=FCnkel, Nils<br>
<b>Betreff:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nils=
.stuenkel@t-systems.com</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size: 11pt=
;">
<div class=3D"PlainText">This is a confirmation email sent from CVE request=
 form at
<a class=3D"OWAAutoLink" id=3D"LPlnk400728" href=3D"https://iwantacve.org/"=
 previewremoved=3D"true">
https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the data u=
ntil you accept the MITRE CVE Terms of Use).
<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at
<a class=3D"OWAAutoLink" id=3D"LPlnk14927" href=3D"https://github.com/distr=
ibutedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" preview=
removed=3D"true">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use</a><br>
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
A copy is available at <a class=3D"OWAAutoLink" id=3D"LPlnk151346" href=3D"=
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md" previewremoved=3D"true">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.
<br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_LEJPR01MB12424D72853E3DF9963218D2B7A90LEJPR01MB1242DEUP_--
