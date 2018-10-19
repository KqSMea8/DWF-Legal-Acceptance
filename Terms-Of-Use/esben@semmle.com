Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp1700538ocg;
        Sat, 13 Oct 2018 04:09:17 -0700 (PDT)
X-Received: by 2002:a5d:6707:: with SMTP id o7-v6mr8441570wru.326.1539428957022;
        Sat, 13 Oct 2018 04:09:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539428956; cv=none;
        d=google.com; s=arc-20160816;
        b=NH6D1OmNRtXQoiyDY3IQhsULiWEZDU0v1DTjyMXEl1AMMqJxO6cL864XFZQpZQt58J
         QGlBcR5hFG6AN/FXCp0Zb1esBfgllehY6RRYc7/LlZvHUEBBBU5dt1BGuAZ5bNwZPHK1
         qMmAD8ClqJ5+aHjC62YNVcnK+PEOn7MvaCOnTtJmAcpYo6/iYTxKOzoTYvnwl4aNjq1p
         BU/jZWyagcJLoOjP66QiOsUiyPrcWxa+nQ3UPt1yCOCxBGuUQnpq8DtHi2fSuJB6IEtr
         sV1v1/NfgGlLogypz8/wMLChSH6T/mAXuTrECOJJOJEK0VCGL3ek9ZDPoFALnmSNnVcq
         ZRcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Q0xFaQ2D4+0I3YsQ+uYGSEHcpb6soa8FnvTyqqU926k=;
        b=hrE5Coj95rc23T/IdB6/cQvgLEWi9z5YoVres8GaUGEy2cyT+nbj7SzYU/fTT/foht
         /B8oFMJpynyqIremRgfT/qLQVrngxbtCMdOK07qXK72P/9szwxZ33fM1CWHoMUoppkT5
         hABU2pLAHR/luz3UhVzfnz4mse9CVyjnsz6XMVRL04jKBQ7z/a+oJBIb0mZZWMCTiRZT
         j19sa+D5bC65jL56RVOcdOzfeswiUjxWyoM+32+V5mZs5bldosuUsD7guX3xHNe0n+4T
         YSH9Q/OGBPyMbZWdDy5n4SIXKgxu8oYvIq3n0cVx3Eto9ieLMxwgeTPSI7LP5E+mrbg+
         bpGw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@semmle.com header.s=google header.b=szMmRLWl;
       spf=pass (google.com: domain of esben@semmle.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=esben@semmle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=semmle.com
Return-Path: <esben@semmle.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p18-v6sor2479097wrv.37.2018.10.13.04.09.16
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 13 Oct 2018 04:09:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of esben@semmle.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@semmle.com header.s=google header.b=szMmRLWl;
       spf=pass (google.com: domain of esben@semmle.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=esben@semmle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=semmle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semmle.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Q0xFaQ2D4+0I3YsQ+uYGSEHcpb6soa8FnvTyqqU926k=;
        b=szMmRLWlD+5qdRIkYLuv7eLE1Ds5KM2PXx6gu2RTEKauxk8/XzUSP3gXIQVPPoVdbE
         6dI88PUk0K4NlnI+Uo0W66XmVA97hM8tw45WZnqO5d0IUdLrnphDwi6hOYKEEZAVYbi9
         ZtRqKgk15sU3hS9B6H2rchpdcgGD72epaD1Pc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Q0xFaQ2D4+0I3YsQ+uYGSEHcpb6soa8FnvTyqqU926k=;
        b=rCzdnp05WFUvnk3uygWpg4D7x2oQ0fe2/6HpCiXhbLOF+2OsKW+7xfTzpVctEx2/hS
         34iCaZajjvauJxeT9Cc5Y21GaLDXMd232DgSZc0tMtaDnDC1HNMixyqGWUD4KqVi2sVv
         aPmZLOHk4+itUrhnr92/LPrKZgv7DDEQZ2DG7vYhR+1UEyZyUu0zijTES6suOvAyXElK
         lQqA//9rYdrFN28ayMy90unSoI7zgy5DYoZ+4va1qycw5AniBZSF3Yhsvg7PTQoiZ3zR
         OXUO4BSW+NpmRoVK2Kv88HoPkue2aHO07PtVavH9/0tsjrR+tzLVwYEVFT4euPGtT1IF
         W5fg==
X-Gm-Message-State: ABuFfojG/FjoLI54qfVfyIbgnB7xXJRi4x1Lhfsw/hC+1AiXH8fcUwmK
	Bc/wmGysjqZU/P7cLUMN1uwktboBMLHwcSuw4kSQhENIqeQ=
X-Google-Smtp-Source: ACcGV614sQ8jGxSMad+8n4PHqXb5Ou5v98cyXTN6aS29LWajFBnbxrAzfx2t/0aigutaXGsVqcLR9RMMa04uokq8vcY=
X-Received: by 2002:adf:dc4a:: with SMTP id m10-v6mr7836118wrj.84.1539428955933;
 Sat, 13 Oct 2018 04:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <20181012153425.7847.97727@bigbox.local>
In-Reply-To: <20181012153425.7847.97727@bigbox.local>
From: Esben Andreasen <esben@semmle.com>
Date: Sat, 13 Oct 2018 13:09:04 +0200
Message-ID: <CAOT4f7uJmA1PRSZZ4Bwyc7bEc_btKAqNDRQo+Syz+--uFrJ9bw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for esben@semmle.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000013674305781a3c0f"

--00000000000013674305781a3c0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept



On Fri, 12 Oct 2018 at 17:34, <kurt@seifried.org> wrote:

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
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--00000000000013674305781a3c0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div><br></div><div><br></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Fri, 12 Oct 2018 at 17:34, &lt;<a href=3D"ma=
ilto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">This is a confirmation email sent from CVE request fo=
rm at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blan=
k">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of U=
se (assuming you filled out the CVE form and want one, we can&#39;t use the=
 data until you accept the MITRE CVE Terms of Use). <br>
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
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div></div>

--00000000000013674305781a3c0f--
