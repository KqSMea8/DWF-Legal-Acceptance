Delivered-To: kurt@seifried.org
Received: by 2002:a37:291d:0:0:0:0:0 with SMTP id p29csp1380975qkh;
        Tue, 27 Nov 2018 07:47:40 -0800 (PST)
X-Received: by 2002:a1c:3a07:: with SMTP id h7mr28843326wma.41.1543333659965;
        Tue, 27 Nov 2018 07:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543333659; cv=none;
        d=google.com; s=arc-20160816;
        b=ymxFcwBYWGdikamLh9NmExLukZQ6Tj1iNzXrHUjZvmhEKa3iVy5YLgqLeeEKEPisYO
         wv6wzsYqZr7+ky/B1cm4l66PGIU15AL0aQSBs2HYCKTUaNZkPCEOOrLg4zM4VkM0E/Jf
         n+PSD7aYWQMbaW+1KV+Zln4KennKDWAFegbBbOw6XU+MQ6JSxcBsDM3YLYIVccDgdBnv
         2DMDs/Stbv0x8fm0ZD1Y6gpUIde0Je6jZUwglEwcNLXNED4AvSAGYn4c3iOwVLzg7IWP
         EKzn3z93JC0tsVqZyF6F5VloFqwRpb8bArIc6XsCFfJpP5W/dyJCd0sWcLP9rmbQ+Ycr
         vupg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=z1pv+xLiCoG7CqGcjyja7hso4mXTTb8Qtj+Vl0jbj7c=;
        b=tJTcnJB1L72zok8zcdOwwLgu2JIbGkNZT/UpBoZ7T0C0JUTlLXNu6aHpc7XXs2XJMP
         YVntxl+q4jUlA/Um/oolWjehOZQvybVfTHie8DboQlyN7T6gd4JpxZRy9utygc68B2hs
         E55N1mfjUz/cnrLqhNrcfsWkKWhkNPTZPvuKxuH5xCUtJeualIOZe4yZGA7m6zFIXgYw
         jMdgMYPYb9+z74lSHorWaIGsWX1vdtBvszaB9jIMThrYcXFf7RK+4p5vrih8cFI3m0tn
         7n+LDXmaDJZBNMgHyyeED2J/xQUanJAP01HW3clnJUXP8M/z0fWNhWFbn++dTAtTPa90
         ytWQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@basecamp.com header.s=google header.b="dHn0ZBu/";
       spf=pass (google.com: domain of rosa@basecamp.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rosa@basecamp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=basecamp.com
Return-Path: <rosa@basecamp.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r7sor3003080wru.16.2018.11.27.07.47.39
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 27 Nov 2018 07:47:39 -0800 (PST)
Received-SPF: pass (google.com: domain of rosa@basecamp.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@basecamp.com header.s=google header.b="dHn0ZBu/";
       spf=pass (google.com: domain of rosa@basecamp.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rosa@basecamp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=basecamp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=basecamp.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=z1pv+xLiCoG7CqGcjyja7hso4mXTTb8Qtj+Vl0jbj7c=;
        b=dHn0ZBu/tENvlS0qdbB8X2K4VNuHj2STP0boojhLdkq2hnlyaArf8IHKCTvRVhSQMl
         uoMi6xII5T3mPtUBf3BggbdYc9J6+EkZ4oUTU2PwBaOJrc1BsqJ3fFsbJ3hwuYl/b36A
         Pywhqt/AS7XZnah22qAwcASnWAychwT7CH+b8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=z1pv+xLiCoG7CqGcjyja7hso4mXTTb8Qtj+Vl0jbj7c=;
        b=UoYlOSmnh25bfBy93jnH+wh+fNLL9kqci7vAyP8eSn/EMxGVAvrs9/LaEn1FdZRrXi
         +y0fLTF9MtwTojEv3/sAZhPGTzdu+EpPQtLeEeSeSzca0b/WUPI706A5pKwZDyNdV4wV
         QUTwkQEJX3acdb8TbEwSrkRF06bignyA7VDXMKr8d7jZwdVn31JkNPl1fG7l0OvAqe3q
         7XJ8siIFI+MOyJ+jqd/halYIt3M7rgY3Raw2taaFUvBFJl9GTH953bJtCSxMRDVMgBJm
         SUJz1/vXQkVFgXUiUeo2Xz9zpxNca+uWIXpjdfa4PnV2kmqbiohp0GDmGZjiHkrtOAza
         O3xg==
X-Gm-Message-State: AA+aEWahpzyU7C0P/0loDKMUtZRsaWz389O2n1Qa3gB1EAIJ0MAyDFie
	seYSGHO/bjr80FRwjcIP8ogHCsYI8xYorE2Li94u0Te/
X-Google-Smtp-Source: AFSGD/X+ruLXIBuadfFPYGsqZTdbu/swUjHUtUOM9Zqc16PI+Gr1cIXpT0hOUTaKmWrLn9DoTWApP1tB01FXvTmdTGw=
X-Received: by 2002:adf:8421:: with SMTP id 30mr28799638wrf.153.1543333659249;
 Tue, 27 Nov 2018 07:47:39 -0800 (PST)
MIME-Version: 1.0
References: <20181127154113.36526.93935@bigbox.local>
In-Reply-To: <20181127154113.36526.93935@bigbox.local>
From: =?UTF-8?Q?Rosa_Guti=C3=A9rrez_Escudero?= <rosa@basecamp.com>
Date: Tue, 27 Nov 2018 16:47:28 +0100
Message-ID: <CADuF6cy1DUQvrL_GnVnV=UA+q12MZ+xkXaCvewyQx6wq+DVL5w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for rosa@basecamp.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000087a71e057ba75e8d"

--00000000000087a71e057ba75e8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, Nov 27, 2018 at 4:41 PM <kurt@seifried.org> wrote:

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

--00000000000087a71e057ba75e8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">On Tue, Nov 27, 2018 at 4:41 PM &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
This is a confirmation email sent from CVE request form at <a href=3D"https=
://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.o=
rg/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fille=
d out the CVE form and want one, we can&#39;t use the data until you accept=
 the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--00000000000087a71e057ba75e8d--
