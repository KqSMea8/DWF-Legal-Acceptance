Delivered-To: kurt@seifried.org
Received: by 10.176.6.200 with SMTP id g66csp799481uag;
        Mon, 19 Jun 2017 19:03:10 -0700 (PDT)
X-Received: by 10.55.77.2 with SMTP id a2mr29207608qkb.156.1497924190795;
        Mon, 19 Jun 2017 19:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497924190; cv=none;
        d=google.com; s=arc-20160816;
        b=e+ovHw6Srdeer2IIwcHzlPQrkcjyDSFirRcfRRFLOWS9WU6BwiHL9AFKBbibSeLiMN
         B910I2LjgePHk+trLfOhpMhi/nZRsrcm153cQ6rMwGY4fcnoXtl1m0UeX9i69rQzbhak
         6xl5LgKs4fGUDkN6KnM+rcZotx9mlsS4YpCFjsl0fF4/mUmSgG0GAISu05aLD9ZvxLGE
         FYrCW4ILTW2Q5fnwwHO+aOZhztbPv9uFpTqgnJ8wIHSJSBADmtI7cqprKxboXP22WK8V
         gF4z3UgvhNPg8j9+akGo3nn9rMW+Abcqe7skOpqavW9y3hkew5/VdVp1Ru355zQtmrGT
         rOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=rsVhekmkINeoltUMe5MaL/YjA4NzR7LuevvwrVXNuyI=;
        b=jWQPhZmR/er1Ftbf2kHhL+oH5KEjTSTYwDwwu34mHby1WsmAm4px3z3uDgXGhPHiq0
         CYJ9GywXXnn4eo/BT9HO5qwWjszdIWADmM8NMVITtSayvv4ndcEW0ZoYc5yr5TIuYEU5
         l8AAO7UEr3UuJEOoN7EbAQ/SNVCgMPZ9ast+UhjWCwkVX2C35yfm/biL3vga9vp+Ezu9
         CsL5hgWa0cYUloCnzNplFAEFPkrlL90mBBFCyNdhE9k69IyQ0ejuYWUj0D+gDGjKzuWX
         k7zGxaLBWQJhfK3rhXnNTK53RPHcLFoa/ZlCKQW4LFBgxBBMhoke5Y68bUDjobvJ3R9z
         4BUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@coreos.com header.b=LlNJSng4;
       spf=pass (google.com: domain of brandon.philips@coreos.com designates 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=brandon.philips@coreos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=coreos.com
Return-Path: <brandon.philips@coreos.com>
Received: from mail-qk0-x22c.google.com (mail-qk0-x22c.google.com. [2607:f8b0:400d:c09::22c])
        by mx.google.com with ESMTPS id u12si10476965qku.31.2017.06.19.19.03.10
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2017 19:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandon.philips@coreos.com designates 2607:f8b0:400d:c09::22c as permitted sender) client-ip=2607:f8b0:400d:c09::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@coreos.com header.b=LlNJSng4;
       spf=pass (google.com: domain of brandon.philips@coreos.com designates 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=brandon.philips@coreos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=coreos.com
Received: by mail-qk0-x22c.google.com with SMTP id g83so47283875qkb.3
        for <kurt@seifried.org>; Mon, 19 Jun 2017 19:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rsVhekmkINeoltUMe5MaL/YjA4NzR7LuevvwrVXNuyI=;
        b=LlNJSng4rKHD9xNG5jOf5LuAF7SoEXX7zEZopZBxhjGQHFWI1+61qkTIosHIhuFcmX
         MhA98GJDDHGPNnFjYBryRoeZ6iIhoAjMnyepZsmuXq1b1k4lFPJU0WJ6nNkkiJtPE7mo
         m02j+8RU6qJFN6p1F0q4oHq9c9kYeMH31eqeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rsVhekmkINeoltUMe5MaL/YjA4NzR7LuevvwrVXNuyI=;
        b=Eyt6UVfjpsq9EecQ5u0aMhFVukV9g+I8XWsFCQXODHZCoXCVqVkK/LPttrpYr7m4JM
         v8v/xvkvDORclfAmYxbqa1StVtsYE6TXKU0caYf7XogbCfRgolEFSUlchbJwvlKmyd1Z
         B02xCkfz/BSANykp/CeCiylyUgyM/eOTPCUN7blWtdmfnkEsX/eMAmjkQ1f1VOp6z1o6
         o8225PR7hJl0U7/XsR5+4bkCAMATJ8rOwU4+pxtT0dzMTh1FkW1im2/sYMxcu3m6z2kW
         ALCfuyAQx2zM+oVGCUlunHbBoQLm6ThkE2cs9B/pGWmUlXcd7Q1XWU3bjq+Y4Kiupusk
         Kl5w==
X-Gm-Message-State: AKS2vOxjYJ5ciwwGd1g5qfYAFqJi6AKW+AsBzgPk1qTjjZQuwd+iMb3S
	EDbTlXGc0Fw/O6ReZSkoCh7AkLCx7TEAVl7Ahw==
X-Received: by 10.55.81.10 with SMTP id f10mr33053795qkb.79.1497924190103;
 Mon, 19 Jun 2017 19:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20170620014534.46686.94149@bigbox.local>
In-Reply-To: <20170620014534.46686.94149@bigbox.local>
From: Brandon Philips <brandon.philips@coreos.com>
Date: Tue, 20 Jun 2017 02:02:58 +0000
Message-ID: <CAD2oYtN5QRx8yx-tpK5BqUNT9vK6Cr28iH4dqKvWBt+sU=3aaw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for brandon.philips@coreos.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114a843e408b0305525aa71b"

--001a114a843e408b0305525aa71b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Mon, Jun 19, 2017, 6:45 PM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a114a843e408b0305525aa71b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jun 19, 2017, 6:45 =
PM  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sen=
t from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br=
>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div>

--001a114a843e408b0305525aa71b--
