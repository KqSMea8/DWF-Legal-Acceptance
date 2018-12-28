Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp1506204ivl;
        Fri, 29 Sep 2017 23:09:57 -0700 (PDT)
X-Received: by 10.99.115.19 with SMTP id o19mr7669691pgc.327.1506751796987;
        Fri, 29 Sep 2017 23:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506751796; cv=none;
        d=google.com; s=arc-20160816;
        b=irOhQvf5gOYW/tsQnUox4hP7SxGoQ7szvwi6wyckRgFMvcCNVgT5dQPV21p3/dV1l2
         kFsoeS6IVYr7RbSSbFi6D8gkS/AyTCej51r//coCuSjL8BOC5YM6DhBS+QW4i88mAvky
         S9T0rL69VvklEJO4rb46T/XhVDxsx9ZzeT7Wq6sJnyMhFZY2bCri18teX5rMQ+1lrKPi
         3cqh5LfhCVZ9v1tgWNheScNAV1oafCJyvcnI/f1Cb5gxiRpaOmYd8vdoejZvIxMYt+OY
         U0+pbg0gc/9IuaoJ9KfHofgUy2QzPdO0s2FqeG9iquR7Z19D4WaPLxpM7tXUJ2DKjdCO
         GDcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=XIcvpkGlrhRUFTB+9paNdyNqUz6mEtBFB4YmeSyCJiw=;
        b=DBORmINiLm+fd8IcdwOEnDkeBDKz87UBOqPnPDj0bHJP7EjqJJtr6amW5aWkvKpW08
         XABMbIF8d9biBij2fd8FtuIMTBlNLijxrri47OPZWXtUUwtMTb1uRMkpLmwlzJpZS30p
         6j6NTGEX1AujmPmuvo/Qiil5QQUDoC2n+n9KGj3o8F3WwGCTb8XnKoz6V77C0nCyDR4f
         AY/Vmj3JIKAxGwKrsCRrkbLpTzONzJjv05uD6YFa0zhaKXFMX6qxtoOgpTzijiXqCIYh
         wIknjDehB1BGYrh6u3/eGh+8SqLtAurwCue0jRL9O+PQ8Zp4Kyy7H/flTV5HUEy4PpYN
         HJbw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mK7ijYWc;
       spf=pass (google.com: domain of viennadd@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=viennadd@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <viennadd@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id g7sor610016pgp.231.2017.09.29.23.09.56
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 29 Sep 2017 23:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of viennadd@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mK7ijYWc;
       spf=pass (google.com: domain of viennadd@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=viennadd@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=XIcvpkGlrhRUFTB+9paNdyNqUz6mEtBFB4YmeSyCJiw=;
        b=mK7ijYWcOOAFaQ1uEvhN7hr28iDtv0ramzMmL7fEZCsFEjM4pxz824EC2WZf7lNlBu
         599ymfqLd81iPRBMQ6hSnJ05RtAGzhkSijCzYdkg1SSIt5voZ2rY3fNlskoCSKspv/O3
         hny51H6CLYGe3jeF4q9t80u64va2cmDQI6HGpM1dlyHATk/mGOIp2yTD4Pyq2Q3KlrP9
         yYCYyTt+cV640fLsgrWlgDrHM7nIkau5FjWHBdYBvUDAxx8YJsNDjPs415+qcPq8oh4z
         59jCIdD9Rfv+KNdjhT01imWMv6OHSsQdppBvmx+9sQ0f4c+toruqxYong8pL1MNSJCgb
         is2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=XIcvpkGlrhRUFTB+9paNdyNqUz6mEtBFB4YmeSyCJiw=;
        b=nAbPkIxrUp1DimHNHt+m3BS6eWLhP6EJnLV+EtcSBRK7z53KghLilx1G2HkiQNP20X
         MLAwJcSsGe/VB/cFV9oIqufrPg8uWBcRX94s11FUuZD+E2sqxnWmIbwT6ueaxQxckz5G
         RoeUbrjgAUHYkhpDgmCnV/RqyOhJsKQfD5WJHZ+Ti1cWw1jqDPpgE/6en4go51cNiuZY
         DUycJiM/sUlMWFC6+pztgDeXgnSww6A9aQPiaVISMrZhnn6mn2IIrbt4VYBZM7o8mXly
         aGDj4vAxNQDkw2DrAJ8P9BUxv65vBuS8bTkuj3ttVtqqoDNnCFMTOZII53/6LvUebB5h
         /eFw==
X-Gm-Message-State: AHPjjUjT1s7XGUX8TrKgd8X75AyWTaaBg16FRs8Rk1SfGD81MlXpo2S0
	sGGj3rmV1rmziGpr6D0adDoBNqI=
X-Google-Smtp-Source: AOwi7QA4ntL3ZvsNNhn3j8uLhj/7YaAA4UHFbd35Hzwlj4DEaOoTgzxmVqkPXe1JqC+WAlhz7gVaJw==
X-Received: by 10.99.109.139 with SMTP id i133mr7576135pgc.29.1506751796223;
        Fri, 29 Sep 2017 23:09:56 -0700 (PDT)
Return-Path: <viennadd@gmail.com>
Received: from [192.168.43.22] (ec2-13-124-216-250.ap-northeast-2.compute.amazonaws.com. [13.124.216.250])
        by smtp.gmail.com with ESMTPSA id j68sm9104939pfa.93.2017.09.29.23.09.54
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 23:09:55 -0700 (PDT)
From: =?big5?B?s6+nzKfMoV1ERKFe?= <viennadd@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Sat, 30 Sep 2017 14:09:49 +0800
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for viennadd@gmail.com
Message-Id: <27439E0F-CC55-4217-B0FB-67FDFB5F8394@gmail.com>
References: <20170930014150.3437.96565@222.2.168.192.in-addr.arpa>
In-Reply-To: <20170930014150.3437.96565@222.2.168.192.in-addr.arpa>
To: kurt@seifried.org
X-Mailer: iPhone Mail (15A372)


I accept=20

Thx

> kurt@seifried.org =E6=96=BC 2017=E5=B9=B49=E6=9C=8830=E6=97=A5 =E4=B8=8A=E5=
=8D=889:41 =E5=AF=AB=E9=81=93=EF=BC=9A
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
