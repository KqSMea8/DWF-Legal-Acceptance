Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp653920otd;
        Fri, 14 Sep 2018 04:29:25 -0700 (PDT)
X-Google-Smtp-Source: ANB0VdZJT14C+6qau0/jl+N3FLGa7uEzoU0XiWbhat8/a5s+vWCIXeB8hqIQSdjAOMnak+1uPRFX
X-Received: by 2002:a50:f743:: with SMTP id j3-v6mr18939202edn.203.1536924565232;
        Fri, 14 Sep 2018 04:29:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1536924565; cv=pass;
        d=google.com; s=arc-20160816;
        b=D8TgSxeji/GgtNTeDJYSdU2ocWjs6h+KSvQDEqvOJM2Qn6gq52TfQivC6hixfhAn+S
         s6qWeZdg1ADH7TA2FJQXtud6qWVn1pBMcZnV6Izt3zi1hzbe3m+x5Pwx39h5n8kPwYuf
         73EieRMjhURSgDYxHPo/CiPuNr86nOc5Io6I65wSzwXuQRxXRaR2uSexPD/uhJxUMhMP
         54jk4l+jMZY4bmNG153MZnCjZVbt405lBtmQ7xOjstWvXIh5jzCNdzWyXndUfLujPUaL
         UUuXNo5lnfNjOWRvjuvnQsbW+ggEy2eR+AeSY3up6r+FbKg0bs5ky+YLry42edzaGrap
         tR9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature;
        bh=l+b0Qpt3fD0sbBtQ8tdrgJVY0DYxrhbeGwtTBN5jdzA=;
        b=0ofgDyrThswVyJ8NAzJ6mVSI1pT6dng6+3zo8sOFExa+uPsphoTMdqpI+sCs+KjwnQ
         gv0ojWE1sbCLSZIv7fz9dEL27Zv5QLrDLXBt7h0oqHcHSzQ4KgcEhDsCi2qxzs/U8mdJ
         vliEuxlq5oe2B6dDMeP4RgViwC7lqLkeGHFIIfjzffEmHO8jzmBh2ZBD0+9VJ/2QyYGK
         wEV9b1kJ9KEiie5l44qnan5e80ukcmvZtMKVGVU8g9nX/3WfrQLd4qmAGotZUhU1ors7
         HEo2Db1cEpm3JvbQccxMUHDnbMeLyF235XDV22cMA9EXTB7TTiHOm9g4CirtQU9bvN1E
         TH+A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hr.nl header.s=mail header.b=PtNpf0BB;
       arc=pass (i=1);
       spf=pass (google.com: domain of security@hr.nl designates 145.24.129.235 as permitted sender) smtp.mailfrom=security@hr.nl;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hr.nl
Return-Path: <security@hr.nl>
Received: from suffix04.hro.nl (suffix04.hro.nl. [145.24.129.235])
        by mx.google.com with ESMTPS id z13-v6si178839edh.60.2018.09.14.04.29.25
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 14 Sep 2018 04:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of security@hr.nl designates 145.24.129.235 as permitted sender) client-ip=145.24.129.235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@hr.nl header.s=mail header.b=PtNpf0BB;
       arc=pass (i=1);
       spf=pass (google.com: domain of security@hr.nl designates 145.24.129.235 as permitted sender) smtp.mailfrom=security@hr.nl;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hr.nl
Received: from localhost (localhost [127.0.0.1])
	by suffix04.hro.nl (Postfix) with ESMTP id DB4F3121091
	for <kurt@seifried.org>; Fri, 14 Sep 2018 13:29:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at suffix04.hro.nl
X-Spam-Flag: NO
X-Spam-Score: -11
X-Spam-Level:
X-Spam-Status: No, score=-11 tagged_above=-999 required=5 tests=[AM.WBL=-10,
	ALL_TRUSTED=-1, SHORTCIRCUIT=-0.0001] autolearn=disabled
Received: from suffix04.hro.nl ([127.0.0.1])
	by localhost (suffix04.hro.nl [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vfejh_hy27lx for <kurt@seifried.org>;
	Fri, 14 Sep 2018 13:29:24 +0200 (CEST)
X-HR-OriginalIP: elfwine02.hrnet.hro.nl
Authentication-Results: suffix04; arc=none header.d=hr.nl
ARC-Seal: i=1; a=rsa-sha256; d=hr.nl; s=mail; t=1536924564; cv=none; b=rmVFaHfPwkq9gTc9mQ6qp413gJHpUMKkYZsZy/yUDcI+fMRCnsxYaQJ4pUXJ5H46zA4MYul8mZWMUbKEmW6Y2KIp8J25+AMFFk2ZbxNQU0qE1YNALmBsl3PKr9kfs0x64prdlNq+ISlzx2oz212Y71S5/bxup5G4jeCKxIuTJ40=
ARC-Message-Signature: i=1; a=rsa-sha256; d=hr.nl; s=mail; t=1536924564;
	c=relaxed/relaxed; bh=l+b0Qpt3fD0sbBtQ8tdrgJVY0DYxrhbeGwtTBN5jdzA=;
	h=X-HR-OriginalIP:DKIM-Signature:X-HR-OriginalFrom:Received:
	 Received:From:To:Subject:Thread-Topic:Thread-Index:Date:Message-ID:
	 References:In-Reply-To:Accept-Language:Content-Language:
	 X-MS-Has-Attach:X-MS-TNEF-Correlator:
	 x-ms-exchange-messagesentrepresentingtype:x-originating-ip:
	 Content-Type:Content-Transfer-Encoding:MIME-Version:From; b=JzeV7hxaCzNCSmFhu95IGl2MF3ijxFJASxwT2nDwaTs0JETxn9FaHnpRS2hbad9U3hVskhjWhwfGaoWKBuvF7TCCUm218JzaKj/w4hXtgx83/1Y28KSqydrwhgqrZFiJo9UgMmFkNOGMB9d9YU3sV92sO92ZZIjPGEx3Dt2K9TI=
ARC-Authentication-Results: i=1; suffix04; none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hr.nl; s=mail;
	t=1536924564; bh=l+b0Qpt3fD0sbBtQ8tdrgJVY0DYxrhbeGwtTBN5jdzA=;
	h=From:To:Subject:Date:References:In-Reply-To:From;
	b=PtNpf0BBg1gF5TAJ+j2bHPxGHKUYMsI9ezFfBCFHE8TLQNvBGmAUTrZ6p7r4krVdO
	 ZdU9eym3lPIkNMZaCpyEfnOyduhzikWR2HamfbQyOqSj1OV2lj4PYopZB2q8I4SZ2e
	 4LcAQSJC00KsSaDcX0iezJSJ+E73u+OgaylNUkss=
X-HR-OriginalFrom: security@hr.nl
Received: from elfwine02.HRNet.hro.nl (elfwine02.hrnet.hro.nl [145.24.129.204])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by suffix04.hro.nl (Postfix) with ESMTPS id 90A8512106B
	for <kurt@seifried.org>; Fri, 14 Sep 2018 13:29:24 +0200 (CEST)
Received: from elfwine03.HRNet.hro.nl (2002:9118:81cd::9118:81cd) by
 elfwine02.HRNet.hro.nl (2002:9118:81cc::9118:81cc) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1466.3;
 Fri, 14 Sep 2018 13:29:24 +0200
Received: from elfwine03.HRNet.hro.nl ([fe80::6492:9a5d:3dae:4d31]) by
 elfwine03.HRNet.hro.nl ([fe80::6492:9a5d:3dae:4d31%19]) with mapi id
 15.01.1466.008; Fri, 14 Sep 2018 13:29:23 +0200
From: HR-SECURITY <security@hr.nl>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@hr.nl
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@hr.nl
Thread-Index: AQHUS8CUKRA5iEOsPEKxtk6btXZzjqTvpMVg
Date: Fri, 14 Sep 2018 11:29:23 +0000
Message-ID: <d0fbbb9e2ac84317a94f3e1a725ba45f@hr.nl>
References: <20180914001903.1024.6183@shiny-2.local>
In-Reply-To: <20180914001903.1024.6183@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [145.24.17.88]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

I accept

> -----Original Message-----
> From: kurt@seifried.org <kurt@seifried.org>
> Sent: vrijdag 14 september 2018 02:19
> To: HR-CERT <cert@hr.nl>
> Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
> security@hr.nl
>=20
> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to the
> MITRE CVE Terms of Use and we will add a copy of the email to the DWF
> MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-
> Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an art=
ifact
> showing that the email address accepted the Terms of Use, when they were
> accepted and so on.
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea w=
hat a
> CVE is then you can ignore this/ask to be added to the block list with no
> problems.
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd
> Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are
> derivative works of, publicly display, publicly perform, sublicense, and
> distribute such materials and derivative works. Unless required by applic=
able
> law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS,
> WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
> implied, including, without limitation, any warranties or conditions of T=
ITLE,
> NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
> PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are
> derivative works of, publicly display, publicly perform, sublicense, and
> distribute Common Vulnerabilities and Exposures (CVE??). Any copy you
> make for such purposes is authorized provided that you reproduce MITRE's
> copyright designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED
> BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE
> ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE
> MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND
> EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
> BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
> THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
> MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with
> your question/concerns/etc.

