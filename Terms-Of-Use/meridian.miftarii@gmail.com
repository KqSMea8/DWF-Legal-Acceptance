Delivered-To: kurt@seifried.org
Received: by 2002:a37:291d:0:0:0:0:0 with SMTP id p29csp1402482qkh;
        Tue, 27 Nov 2018 08:05:48 -0800 (PST)
X-Received: by 2002:aca:f0f:: with SMTP id 15mr19386883oip.47.1543334747971;
        Tue, 27 Nov 2018 08:05:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543334747; cv=none;
        d=google.com; s=arc-20160816;
        b=UTZtO3+sBVwrL/K2gTSrsmpbuM96hTbM4LIeFM/sw7Z18LpdyWuuCFSaUgm5r1+b1r
         BC9TOjIXQPlgFYFk5ESS7lnUZToDzeXv+yKM1fXBvlwww852WEkwhDKxHa17M21MbFZe
         2LN6t9uEknDIcr22T0NXf7ryGCU3Igbs4D12/CU/mpuhKorYCOYJhHNTA6ka+HAlR5ZU
         E0yymshQ0hP+qYS7UJJLLj89dZJNzfH1oew0haTH5M8EYxxYQupGFWrREqyXdCGCGu7R
         gLeyYz3dSJkwKh+b4V9bnHSBR27j0/CJwkoz1f/z5FNOHKP6ra06d2qKI7cH0PALHLEW
         Y2qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=W7g/dDm8UuQNEDjMgIgD5iRgrSWF6BVqQofBvOJ4rXo=;
        b=wBCf5VOitoqARbwIeSEqO3xQynX5sVWytkcL7QYLXVgF35Aeyne+WYZU2p/DNSxXBs
         yIvqoqktY8Ftrz6tqFFq2aCeK4uzak812eSgSRYMM+U65nKSzUmvpgFnu/SqPGiyR6oe
         r7K2CwJQeu9Nm63inUFFwQoqNbHGsetZ+5tmpSYsGecp/UcCYDcFx75Ym071WDIRE1kq
         E/DouFmx2tFdOWJWLxqIp33i492wWvvL4FD7KTaw92/TX7zRoO/Vb3gw+atkNLoqVEo4
         TF7YBALh0zMIP4QdDqR0o5a6WI3R62kbiptOUjOOR5Z2wo0HV2p7+Feqi67QPaMmMEV2
         z3DA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c19R+Fg2;
       spf=pass (google.com: domain of meridian.miftarii@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=meridian.miftarii@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <meridian.miftarii@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h82sor2031842oia.60.2018.11.27.08.05.47
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 27 Nov 2018 08:05:47 -0800 (PST)
Received-SPF: pass (google.com: domain of meridian.miftarii@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c19R+Fg2;
       spf=pass (google.com: domain of meridian.miftarii@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=meridian.miftarii@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=W7g/dDm8UuQNEDjMgIgD5iRgrSWF6BVqQofBvOJ4rXo=;
        b=c19R+Fg265LNI5I9KWc4uNTWObXyygRzzVASqvSnT64L9rXw1NC3r2Tjxb1iuuaJss
         vl2Vx9+F8JnF1Jke6AX7J0DE2g1zwt71zMNHcOsfg/T0Uc536FpeZ8gt1DvCYEYEApjS
         tDUljoLe2hGEZ+AzCCmE3WbeJdcgGLZe2T9nkjKsROZGY5bSNGuSxkXTEyjFF2xIimhg
         IQcsbaovQw4S+fWPa/1nw9o87o0GdnKIgiARFZBwX/E3dCSnzkZg/2nMcVJTH7VD9APV
         llTKC5kMYKYVK6lb1UrTmhDnpmdfK6wU1fgUitvvtnvp4V5ZEfHbo5konRU9SCQZmy6O
         fX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=W7g/dDm8UuQNEDjMgIgD5iRgrSWF6BVqQofBvOJ4rXo=;
        b=Tt1zDVnHsgYRVCvfoEAOpFhyyufv+5YddyIyDgz2l8m92P/5G2fAoaWSI8lU2THE0z
         vOKhAWHy0tF9NDtofTgAJts7S3mfbSYF68/oAz/snKlmjf13qy8t+VRIeMsZdTVUgzwO
         ciINjfSeXjZ9ZMqVM2740Zr4dS4GEbo+DGo+17zm88EZNoAn64k0DvglqifxxDcKT23z
         tY1oDQUwTbgAoFWGjLPUEmOYueTONFy+KHnShyTSkIWEP7gKtPYB8XGJLscYtB2ILSo1
         rriE0Iaf0ahdleStL91ygxIiqxAm+FgdDMhTPC+qD8ancPduaDrI6biI8WLNa9kcXFko
         hxdw==
X-Gm-Message-State: AA+aEWbebqh101W1Hg59pCuJzLuBbDwwY3kwd1vw3fQK//O5FYK9Gfme
	8e0BACaq2sbE0SA2YPtXsK1OUTZCdqhqRAkBbvVF5Qtk
X-Google-Smtp-Source: AFSGD/WkQ8IPKZ/bEzJ4EdI+bs5IWJDwOM4GkJP+z8PP3S9fIcGB2CHqXzR+WPr6Snm1ujiEm7vuWkqtlFfAfCvAv+0=
X-Received: by 2002:aca:ad8f:: with SMTP id w137mr1238613oie.38.1543334747280;
 Tue, 27 Nov 2018 08:05:47 -0800 (PST)
MIME-Version: 1.0
References: <20181127154238.36526.35736@bigbox.local>
In-Reply-To: <20181127154238.36526.35736@bigbox.local>
From: Meridian <meridian.miftarii@gmail.com>
Date: Tue, 27 Nov 2018 17:05:11 +0100
Message-ID: <CA+_Phy5cavLttgTkZ8OhkzHexoQCK-3WxDxsKfHV0-kaFORq=Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for meridian.miftarii@gmail.com
To: kurt@seifried.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.
On Tue, Nov 27, 2018 at 4:42 PM <kurt@seifried.org> wrote:
>
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.
>
