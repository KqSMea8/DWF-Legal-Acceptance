Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp1975319ivb;
        Sat, 18 Nov 2017 11:00:26 -0800 (PST)
X-Received: by 10.25.59.155 with SMTP id d27mr1844551lfl.207.1511031626182;
        Sat, 18 Nov 2017 11:00:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511031626; cv=none;
        d=google.com; s=arc-20160816;
        b=LEpWaWgI+jW5R2UD3P79l5xR1Y4LoRvydNt4KaicOdwPH0AorbfMFtSMT+zTccDyH/
         N8t0GCvhwZmRCgUy1zKOE9Yry5YZxm+ovBGvuoGYej6uQ0/IbK2ScBf0s40DLYLjcIRW
         /lxmhLbCKeD/IvHI4pPJKC0JhMzu05lA16ga5Bf38JxCfmE1wBpKW0cxSJ8Eggtq3q+y
         XhAHiAiGpMMAR9W/g6GPBBiT4KKFOay7dFsku84iV4wf0+EEmIwZ/uiWFr+IH9mSH0Ro
         5oFbab/9Yao8Mw9oFQXo8nv1l5+aXx4bh66dUSRyQD2e7IE16C5MeedT4tdjxRo0bKfp
         vcjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=Q9S29S1QrTV57qirDuLFrMI9S3pRInRK7aXr494T85Y=;
        b=MVX/3Aocmr70t1yR8vA4Cf4gRJzzs8+OB7cMbg1o5ku3J0RHiEYWAe2RyWRBAHIgVr
         HesBrE17Wn4FBfo9tZiRvbEWG3SCBNL5s837ZYcoeoEqBeb7ur1C8qvrvP2uH3Bf8GBd
         C+VizosYU+k4CDLT50n0PjG21gtAn9RfAM/0roG6eisijYkbgJi1kILvODjZ8dX7iYrB
         gXL2xihtAOpwPwKLHVcMcwKsZLxMYWbWimuAQWF7KvbhNGh5R/SuF3M4DkAZSokEt0Ji
         w9l/er5+fXBy47ivdKwR5MGrMNKBjHw4e+kzJvmjsCsB1iLaZMuzxa8gkDGGvtMoZKs8
         c4Sg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@opera.com header.s=google header.b=INAiaEQI;
       spf=pass (google.com: domain of antukh@opera.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=antukh@opera.com
Return-Path: <antukh@opera.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 9sor1068265ljo.15.2017.11.18.11.00.25
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 18 Nov 2017 11:00:26 -0800 (PST)
Received-SPF: pass (google.com: domain of antukh@opera.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@opera.com header.s=google header.b=INAiaEQI;
       spf=pass (google.com: domain of antukh@opera.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=antukh@opera.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=opera.com; s=google;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=Q9S29S1QrTV57qirDuLFrMI9S3pRInRK7aXr494T85Y=;
        b=INAiaEQIi75L7VHrDLE9M3og3pacpiKeq56k7GreBaKvPTXQymTgVZXtpI3nlMvPM5
         831bpRkSDWMS6BKL6DNogMVUkgnN7wBcvbBp6311pk2d0r8CGyvlnCFrjWU21CO28v/8
         CUPhkAYum2PBQ/J1GS9zWZgpk15R749TVKULceGBrD3/cVV17/yIc9SE7qCpzyZy4ZMo
         uLKNK+6uG+KRhylpPBilg8v5I9zZb7BJJDAe7zgrlS67iT41FlbRIU0Wb50qG8+Qmq/o
         IPl4WimPsBqnjzVXZjUzzXwBaSlqJxB46EPhIy1VsL6MdNB9CIAvgF2J5W++oVqZwNZz
         CQ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=Q9S29S1QrTV57qirDuLFrMI9S3pRInRK7aXr494T85Y=;
        b=UBY0SI3BGo3qq9/QQws4lvaUbfKA8swf1fr05MxKQW7eOEKhb9u/aM1NGTxMnlOJhw
         gRgh4T5S8TNT8U1oR1vczNeir/lj7Cp+XdBmZUWOz/WSOE8CLSN3uswjwKcjB3DS1JR5
         wcP+ks3X/xPpUtBVo/KUntAC1r9psZn08jJEV5uO9rRn7l6K2qbxSw4MZ3LEuq6ope5+
         ffgc1WxeVMeBO/8q9M6EJcYwgl3PcioFPBW7L+cIo7IRIbti/47wnzMNstqCbLz/oFan
         yQ2IYQ3OUnRIwAfxvI1l6FzT0TZyP2C2aaoJsai9vbs2jaF14VuLyTomAtKWQzPfi4DK
         TEmA==
X-Gm-Message-State: AJaThX7eUfLJEJ3k+kHI5SZzMisEMzqRJv97lWsxvjSDWCDD+t3pBdtC
	QabtGnqjoXNhiEGoH+1V1h9Ct0ZEbJJykkFQNgJMnLwLX0xljKUOLGOvoUQiCPj35bSGjOos+I/
	//TTE9caG6AjSf0T1kTgHXulN38jygw+rOWQ08EIBKztWpIfZV+6D3zs=
X-Google-Smtp-Source: AGs4zMbVHus4M5lMaEtjUPjoWW76T4xmiV55Vpu5MG9XIJzGb5K8xFCPXFsjaCm5E+RQQr5pY5hWRA==
X-Received: by 10.46.89.196 with SMTP id g65mr2245345ljf.53.1511031625186;
        Sat, 18 Nov 2017 11:00:25 -0800 (PST)
Return-Path: <antukh@opera.com>
Received: from [192.168.1.78] ([188.95.110.15])
        by smtp.gmail.com with ESMTPSA id p21sm1592308ljb.43.2017.11.18.11.00.23
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Nov 2017 11:00:24 -0800 (PST)
From: Alexander Antukh <antukh@opera.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Sat, 18 Nov 2017 22:00:23 +0300
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for antukh@opera.com
Message-Id: <3A77071C-D41C-403E-900A-7D5686EC6FCB@opera.com>
References: <20171118163922.64559.76020@slab.local>
In-Reply-To: <20171118163922.64559.76020@slab.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (15B150)

I accept

> 18 =D0=BD=D0=BE=D1=8F=D0=B1. 2017 =D0=B3., =D0=B2 19:39, kurt@seifried.org=
 =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=D0=B0):
>=20
> This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the M=
ITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree t=
o the MITRE CVE Terms of Use and we will add a copy of the email to the DWF M=
ITRE CVE Terms of Use acceptance data at https://github.com/distributedweakn=
essfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an arti=
fact showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/blob/master/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually w=
ith your question/concerns/etc.=20
>=20
