Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp60873uaa;
        Thu, 6 Apr 2017 18:48:43 -0700 (PDT)
X-Received: by 10.36.98.80 with SMTP id d77mr27339255itc.99.1491529723524;
        Thu, 06 Apr 2017 18:48:43 -0700 (PDT)
Return-Path: <quanyang91@gmail.com>
Received: from mail-pg0-x236.google.com (mail-pg0-x236.google.com. [2607:f8b0:400e:c05::236])
        by mx.google.com with ESMTPS id 14si3716793iti.106.2017.04.06.18.48.43
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 18:48:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of quanyang91@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) client-ip=2607:f8b0:400e:c05::236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of quanyang91@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=quanyang91@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x236.google.com with SMTP id x125so51508135pgb.0
        for <kurt@seifried.org>; Thu, 06 Apr 2017 18:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=cTOSnlmvIBj7VZ+8tI50klOAFRcgK1wbPikWIHcyO7U=;
        b=RsK/8QCySQGivEJgwQ+m4ASC7F+2A5Dzx/pQuwkZ5xjCoTeN8um71cDgJuHzUCY98j
         z2aPNaRJO5WKs1xuhoUJHYtGCe+yyGzHgaWjuvTY45B5uyN4SVDwihhyTg/zUVKbzRt9
         qmQMRn85TPGTcLCi0uBH8PtWBGnYGlNWjGkymTqATvppqSqrCyLBPIYHJ54HXgxsj4Fl
         3WrHkctntOdhE7H5xJPE3jMXoq4Vu0GaQBNPzdc7+D7Xd/CHKg2bQYqbZVrNc3TdQN94
         AAZ5hMce4guaYbjXCldlH5YZkP3CQrLeXsoUEVcNgKC/R9HsM6aQZQGJsDhM1hFSpAVc
         Qgkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=cTOSnlmvIBj7VZ+8tI50klOAFRcgK1wbPikWIHcyO7U=;
        b=MiwQB2Qqvl8eHVYkChAhqh/SwPXiSeq14UUlES++/T1hakPWsNnND9mBVDCqDqoAK/
         QZcjjO+Mk6C3XpXZTyQYlSywZUM1lsCZRYvgfoiBSybSl6gUMrfrqFtTsii67IB3esEX
         M3QB9wEfb4VZHHmWoHKJFKxSw9Ype8jHr65ZRJlMSbqsVZi3RibzTx/sBf8NaTu4nKXe
         BVsMLRmy9NLNthXum5L0WnFK6dcGsya1ld7g+KPyw6YtIJEzxOmSwBZ1BQL+JXgL6ckZ
         393WxLA0ZPwamuth2oyDqWaMONioUiToW/hwoDAkyDs5x4H9GvI0rC2hp77bBvtgnk9i
         2AQA==
X-Gm-Message-State: AFeK/H0Nqy1zWPXBOedNiwr0SI8SGQtnPmvcSYqYQMf34C6jSn31DRH55A3cM/IkRbf1oA==
X-Received: by 10.84.140.36 with SMTP id 33mr13415434pls.8.1491529722766;
        Thu, 06 Apr 2017 18:48:42 -0700 (PDT)
Return-Path: <quanyang91@gmail.com>
Received: from [10.180.159.20] ([180.255.242.85])
        by smtp.gmail.com with ESMTPSA id l76sm5862150pfj.94.2017.04.06.18.48.41
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 18:48:41 -0700 (PDT)
From: quanyang91@gmail.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Fri, 7 Apr 2017 09:48:40 +0800
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for quanyang91@gmail.com
Message-Id: <B2F77D45-831E-488B-B915-228257849F0E@gmail.com>
References: <20170406200640.4090.5837@shiny-2.local>
In-Reply-To: <20170406200640.4090.5837@shiny-2.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (14E304)

I accept

> On 7 Apr 2017, at 4:06 AM, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the M=
ITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree t=
o the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms o=
f Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/tree/master/Terms-Of-Use
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't w=
ant any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS=
 EMAIL EVER AGAIN" and I'll add your email address to the block list so we d=
on't spam you with these, please note that this will prevent you from being a=
ble to accept the MITRE CVE Terms of Use via the DWF automatically in future=
 (you'll have to manually ask). But again, if you have no idea what a CVE is=
 then you can ignore this/ask to be added to the block list with no problems=
.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Da=
tabase/blob/master/TermsOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually w=
ith your question/concerns/etc.=20
>=20
