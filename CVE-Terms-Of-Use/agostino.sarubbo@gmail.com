Delivered-To: kurt@seifried.org
Received: by 10.157.8.51 with SMTP id 48csp376776oty;
        Sat, 19 Aug 2017 02:33:31 -0700 (PDT)
X-Received: by 10.46.25.151 with SMTP id 23mr4274049ljz.114.1503135211601;
        Sat, 19 Aug 2017 02:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503135211; cv=none;
        d=google.com; s=arc-20160816;
        b=dE2HjpeS4/1XmI4eaD4n0GzZDxQgWvSjiQxB81xGuZe1eFQ4VNBZuaomWwNFF1f855
         y9GDY4aKIMFFo3hX67e+dhNuDDfATts+535BEid+dbB9oWknKMEy2oxHEKxKLqo2oGUS
         CvNyOXqa0ME95YPdvC7qyZHwxHFAnVPOnyBUbDQZoj2ho2ZWu1bstvSc08+5RyGKUFXT
         17ln5tHbDlVz1M6JIqUhICw31PvQ+A3vJDxNvx3q3MQ0bxHBdZwtuxIu8nXfUA7/VPEM
         PH4m+mdta5M3z4HJ9SVJpmnBbWyW/2JBwER+bOWkuOjpSMdyTcbqZX3fQMlkdMFL7ZV8
         oykA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=cz3oOBsms8HQ4UGIFgNmYp5lq3GxOTwzFF6VXZlAsVM=;
        b=k8YmO4W0tbFqtZ7Q/cfbm+4PBsXw0XYzanfN9flp0/+tS1D8d+vOWHfNspHzdC5+4u
         c3QVeZIB7LccGr50YF9hC02ehaxcauUKtJTLmKynyfTwYqi//sQ3uF2j9h9k2dr903rv
         OqwHG664KLTMyLnk2iZQzhMmM/kpXHtIg4BmVyCQEB+zMJGA6W3gokmRijmdrMXjnDDx
         J6mp2cWDUElCmf/C7BfDwB6Af2qp34N8L4atO33MeHuQJaDtOyTjv6NhAEhjbCn8t7rX
         7MK0DCP8E8ajx5VHuj9GE/Jta8VyPDn9Tlx7L17H7Hn5eom+6CXBlWvMGycqiaelF3P2
         POYQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6m59fmu;
       spf=pass (google.com: domain of agostino.sarubbo@gmail.com designates 2a00:1450:4010:c07::22c as permitted sender) smtp.mailfrom=agostino.sarubbo@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <agostino.sarubbo@gmail.com>
Received: from mail-lf0-x22c.google.com (mail-lf0-x22c.google.com. [2a00:1450:4010:c07::22c])
        by mx.google.com with ESMTPS id l62si3269109lfg.315.2017.08.19.02.33.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Aug 2017 02:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of agostino.sarubbo@gmail.com designates 2a00:1450:4010:c07::22c as permitted sender) client-ip=2a00:1450:4010:c07::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6m59fmu;
       spf=pass (google.com: domain of agostino.sarubbo@gmail.com designates 2a00:1450:4010:c07::22c as permitted sender) smtp.mailfrom=agostino.sarubbo@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22c.google.com with SMTP id g77so18707138lfg.1
        for <kurt@seifried.org>; Sat, 19 Aug 2017 02:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=cz3oOBsms8HQ4UGIFgNmYp5lq3GxOTwzFF6VXZlAsVM=;
        b=K6m59fmuXye+vbSYrsa8CzF78W8FyaIXL+RGkmAVp7BwxF47BHmp84yUwoeOc/NPIy
         f5M8rC7av5R4Pz0G5nvoW2bYc9cmY8BRyJTFoVaS+uMZvcYjwUX9IyNJjGCWh3sPmfPM
         +IkxUPOiKnIG8YGeeScd1wJUW4YaV/e9H8tGG830fq20zc2hOxMzcqSKb4/HkHJNlTe8
         OyMF7DNrhQEP2Iea+hM8wLVwZHWYPU0icIrgIeD3kDo1stzJU//r4c5YwU7XQmF4g5uP
         YSHHTIlx8ILbHYeCnsDvtmRN5UVSLEHRyje6wCT9QLnA1gyHMVT/KO+BKGEKxNUIkbcO
         BLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=cz3oOBsms8HQ4UGIFgNmYp5lq3GxOTwzFF6VXZlAsVM=;
        b=UraqmwotGG8wfulTGK78ZHP/uxLIpxIwMfKLvPl7JWCpu4lMXnWKbP6rfjVQmuJRIY
         HQ4OVP7Lt9063eZb5OIe/O3jnm9HKpVeJ/1o2TqjZpy4CGwmpBUX49RtGLEyMlbK97+u
         GQskMI3alH4VVQy6Yj8bAyjBQca3z6jsB2dJ8kBJy+uzO8bG1BUg7V0wLgSqzqTd+c/N
         ZsooQm2aWPv19rzbU271Woa/RrU/JDBSejQs7h9he4aHQEJYmdAy3Mdw/5eRXe8AYljP
         sU/QKlJB2yIpp5mkC2QjdVqoW/ePB4f+iU4rGZfjU66GvkYPq/z6iqhlB06jLyn8KZZb
         95Gg==
X-Gm-Message-State: AHYfb5hpHqPh8GVi62otEKz0EybSgfQ2K7q8MWQ47ZN9EkswnEcJMnPs
	wua4Qph0uOt3ZUW7DZtk+Z8IeaQAHX4/
X-Received: by 10.25.152.205 with SMTP id a196mr4826867lfe.165.1503135210915;
 Sat, 19 Aug 2017 02:33:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.192.1 with HTTP; Sat, 19 Aug 2017 02:33:30 -0700 (PDT)
In-Reply-To: <20170818192800.55281.55001@shiny-2.local>
References: <20170818192800.55281.55001@shiny-2.local>
From: Agostino Sarubbo <agostino.sarubbo@gmail.com>
Date: Sat, 19 Aug 2017 11:33:30 +0200
Message-ID: <CABkbYS7QdV0KtHpysu_jUNpDp0k2k8tCz2ZGehmXx-08iF4T0g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for agostino.sarubbo@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"I accept"

2017-08-18 21:28 GMT+02:00  <kurt@seifried.org>:
> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add a copy of the email to the DW=
F MITRE CVE Terms of Use acceptance data at https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they w=
ere accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you don'=
t want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically i=
n future (you'll have to manually ask). But again, if you have no idea what=
 a CVE is then you can ignore this/ask to be added to the block list with n=
o problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE)=
 and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclu=
sive, no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare derivative works of, publicly display, publicly perform, sublicense=
, and distribute such materials and derivative works. Unless required by ap=
plicable law or agreed to in writing, you provide such materials on an "AS =
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =
implied, including, without limitation, any warranties or conditions of TIT=
LE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you =
make for such purposes is authorized provided that you reproduce MITRE's co=
pyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
 PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE =
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF=
 TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRES=
S OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE=
 INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES=
 OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF-D=
atabase/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.
>
