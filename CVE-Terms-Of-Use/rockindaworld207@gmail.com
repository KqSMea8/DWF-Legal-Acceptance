Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp692024uad;
        Thu, 20 Apr 2017 06:24:00 -0700 (PDT)
X-Received: by 10.55.126.130 with SMTP id z124mr7142893qkc.311.1492694640934;
        Thu, 20 Apr 2017 06:24:00 -0700 (PDT)
Return-Path: <rockindaworld207@gmail.com>
Received: from mail-qt0-x22b.google.com (mail-qt0-x22b.google.com. [2607:f8b0:400d:c0d::22b])
        by mx.google.com with ESMTPS id f205si5868205qke.18.2017.04.20.06.24.00
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Apr 2017 06:24:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rockindaworld207@gmail.com designates 2607:f8b0:400d:c0d::22b as permitted sender) client-ip=2607:f8b0:400d:c0d::22b;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rockindaworld207@gmail.com designates 2607:f8b0:400d:c0d::22b as permitted sender) smtp.mailfrom=rockindaworld207@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x22b.google.com with SMTP id m36so44595555qtb.0
        for <kurt@seifried.org>; Thu, 20 Apr 2017 06:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=rzs0hX8lnk9pJCBxiV9IwxSvbR9Xu1vJq7m3vaya+e8=;
        b=FkMimW3gUZNqmk7eG5DAQVTnjP2yQoI0TKrV3rhoxoekwiOU8A9whAwGegEsvi4OKp
         IllHbXDv+O6zqNt6jTwMfAFF7FOaI318miqbi5lnZsFwjXcX7243JJo7pyhLBv/RxfU+
         6H1UqaSHNLA0pHXVkyCU83OpZ8Aphj9WR5I1MgRsfGGCNIMO0Xe0jG9yC6z9qG8J3S1l
         93GlmGRnb/uPqaXVsrzt7P9twq8tvuxWakUJqvg5y8PqwFPWqlXoOa4q1Rpfk1MARzD5
         IXJT67H7RlryefiOwvuAba9hHF/UwYQ5KQ5gS9ByPvboQ22GpnoVN/SrPWkD8yD6WBuk
         QSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=rzs0hX8lnk9pJCBxiV9IwxSvbR9Xu1vJq7m3vaya+e8=;
        b=sS9EE859AxUooDJkumaO10D2jWUO+iNYNBstPjHIwYLRdtnyHArGjlNyjrI118IQE+
         WX+M8ZegBy9vG96A3X8HnrEBRgti0pI1wnX6CTmGYXuUtZW14IuD6B5CTm8OiBcR3m2u
         9xfpZ7n7F3KmR5+ryom47t0oTqiGVriRGX6AeyZkeyAGNGO5EKa9OVOAtTu0h1xcW1vV
         FjkW6JUUUyM8buLOQqBpNbJYjf0y6s0CU/BZsEuG0kI2d8D1TlZpigiVw3KfNDcA2bEi
         tYGgWNM1izGbaoEFSj3Qa10RjjTqR/Bju4+E2TXl3SMx+FQwb418ceTZfHq6Hi6dnyjb
         JXSA==
X-Gm-Message-State: AN3rC/7jnqY1xYxgGX3ZSSnNx8H03oInYHcT7xZou/5CbpsJfTpyfqTb
	z+d/BI7uDLr12isqqf8=
X-Received: by 10.200.58.70 with SMTP id w64mr7738342qte.174.1492694640505;
        Thu, 20 Apr 2017 06:24:00 -0700 (PDT)
Return-Path: <rockindaworld207@gmail.com>
Received: from [10.0.0.198] (c-67-163-104-212.hsd1.va.comcast.net. [67.163.104.212])
        by smtp.gmail.com with ESMTPSA id e34sm4106632qtb.43.2017.04.20.06.24.00
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Apr 2017 06:24:00 -0700 (PDT)
From: Robin Williams <rockindaworld207@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 rockindaworld207@gmail.com
Date: Thu, 20 Apr 2017 09:23:52 -0400
References: <20170420020839.49540.29513@bigbox.local>
To: kurt@seifried.org
In-Reply-To: <20170420020839.49540.29513@bigbox.local>
Message-Id: <DB0A4837-5B92-44F4-82EE-27815F5BB51E@gmail.com>
X-Mailer: Apple Mail (2.3273)

I accept.
> On Apr 19, 2017, at 10:08 PM, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the =
data until you accept the MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE =
CVE Terms of Use acceptance data at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use
>=20
> If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if =
you don't want any future emails simply reply with "unsubscribe" or =
"DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to =
the block list so we don't spam you with these, please note that this =
will prevent you from being able to accept the MITRE CVE Terms of Use =
via the DWF automatically in future (you'll have to manually ask). But =
again, if you have no idea what a CVE is then you can ignore this/ask to =
be added to the block list with no problems.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common =
Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE =
Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or =
agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, =
including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly =
perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL =
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY =
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A =
PARTICULAR PURPOSE.
>=20
> A copy is available at =
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.=20
>=20

