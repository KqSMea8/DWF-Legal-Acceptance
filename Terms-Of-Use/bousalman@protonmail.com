Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp2303327ocg;
        Sun, 7 Oct 2018 01:50:33 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62C3Uph0f/4+EcIJPsapWkAQA4+NYa9cqyYTyEbA2Vt+fWTYVbtHwn/VCCiTugD67NeRwl8
X-Received: by 2002:a1c:e5cf:: with SMTP id c198-v6mr12403977wmh.113.1538902233856;
        Sun, 07 Oct 2018 01:50:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538902233; cv=none;
        d=google.com; s=arc-20160816;
        b=N/8vipS3HY//Bg+ESFYsjYt2IPjsyabWmYJY5/K0TWGtbX72CRsWY+bNQYxfTMh1rx
         3JVCZbf3MgjPM7Zym8DpgOnoS5Zcn2h6msOafiK7CpGUsK6oaq8UJo5qWJr75UmRU7Of
         /Zhq22+X4NA49w1RtwPIXCApiqjsHP9KcKdv1UGWZ8q2+cSj1USesKjP7VbxIzREusDy
         7wxpcqU2qs+dh1eXgN8KMnBsL+J883x0AhBQqm8EWDROJDVlFugseOf2HewtINBptPZ7
         uMsPvblGWPd9L3lRfjHt0O6H/E4w3SrMgwIVkfIN2qBwB8LUh3LwEg76f1Dcqq5taJPa
         289A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:reply-to:from:to:dkim-signature:date;
        bh=7TTOyi496bJ0h02Qy3hd7gNhJ/jvKY0nuMNCZZmfAQA=;
        b=gMdx/JCymBNmAU8bHE9ItvinnahQBU0NPl409dmwbF57PiljMC2UJcZiIvxNwIkQm+
         mAGWp/se8d6nSINntdrt+b69z0FjKJ8eb/XoKGI22CM3IAMaqm1Ht2kRusOww6V7FzB4
         PdSe/6oqvPDBanQ1WfPh2Q/NacGjzvUc7S3UoTKQjjvn8NNPwThXOQiq84E82knZKMWp
         ln8kwMXpNkQu72Ioqa5moQjtsLMctHxsU+9IHa7K1NlmrpSXtZ9dOo+W5MxsaFsBsdeY
         eKaRNp6vSDRVEK2VUM1alCn/+qK+r1hXPntNHaDB117jhkHCt58WXr1zJpz+j3oYSWT6
         mt5w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=sOcXb6tx;
       spf=pass (google.com: domain of bousalman@protonmail.com designates 185.70.40.130 as permitted sender) smtp.mailfrom=Bousalman@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Return-Path: <Bousalman@protonmail.com>
Received: from mail-40130.protonmail.ch (mail-40130.protonmail.ch. [185.70.40.130])
        by mx.google.com with ESMTPS id d4-v6si13128683wrc.239.2018.10.07.01.50.33
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 01:50:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bousalman@protonmail.com designates 185.70.40.130 as permitted sender) client-ip=185.70.40.130;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=sOcXb6tx;
       spf=pass (google.com: domain of bousalman@protonmail.com designates 185.70.40.130 as permitted sender) smtp.mailfrom=Bousalman@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Date: Sun, 07 Oct 2018 08:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1538902231;
	bh=7TTOyi496bJ0h02Qy3hd7gNhJ/jvKY0nuMNCZZmfAQA=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	 From;
	b=sOcXb6txXsDOY1D5ThHkKrMcL4a/yggjQjCGvvf2Y52/VDXMYcjg17BeJObVNLupU
	 FbqpdjVpfoNZEgvQObaIkXa+uvJILKQT9rXPxDVSf2CVtNWiwxTjIli8mbAX5BvO9A
	 JqmE77dLbr96kKIqgeOu35RJu1gmAPsX9n92uxu4=
To: "kurt@seifried.org" <kurt@seifried.org>
From: BouSalman <Bousalman@protonmail.com>
Reply-To: BouSalman <Bousalman@protonmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for bousalman@protonmail.com
Message-ID: <KTWKNtdAvMSHqXXr5ZC_laZVGHYXyoUL__et5k1mQZb8ZUxxI4YcEqO8jmpaOF4r6MYBQMQAF1Gnh1qjcno_7B5U03zVd9d0eZWOAdn7MJ4=@protonmail.com>
In-Reply-To: <20181006033419.1475.42822@bigbox.local>
References: <20181006033419.1475.42822@bigbox.local>
Feedback-ID: 8s1Y_m8O0fZuMPDOdh0KLtQDYbio203zB_LrOdiE75K2fjPyEMREsGoMOHE6SlLP0G8_mABfhLHw50MXhEDF7Q==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.1 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham autolearn_force=no
	version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on mail.protonmail.ch

I accept


Sent with ProtonMail Secure Email.

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Saturday, October 6, 2018 6:34 AM, <kurt@seifried.org> wrote:

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
nd Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (=
MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly display, publicly perform, subl=
icense, and distribute such materials and derivative works. Unless required=
 by applicable law or agreed to in writing, you provide such materials on a=
n "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any cop=
y you make for such purposes is authorized provided that you reproduce MITR=
E's copyright designation and this license in any such copy.
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.


