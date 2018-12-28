Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp3374558ocg;
        Fri, 19 Oct 2018 08:04:20 -0700 (PDT)
X-Received: by 2002:a1f:21c1:: with SMTP id h184mr6209997vkh.61.1539961460093;
        Fri, 19 Oct 2018 08:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539961460; cv=none;
        d=google.com; s=arc-20160816;
        b=JNFT6s+KhBovkd2ATk2oP/8T+01cWE0Kq4+18nKvUlnEzV5qoeAlwXSor4O4YilzTB
         xtB/pTsVs1WPLhYX+MPSfkFe323cAHpDuWtJZJTCEQC7jUQOW4Cd6LJMTUH5xt42GwPs
         5f/ri37BPYwlGXjBb+Ww2y4uT/5FS5ONV22bp+qBuMclRoQHutT7u4ckD1EQJeScVv3U
         y1E/shYI4eeqXoCK5XzxXRtIOHL6pYL/yQ2uk9XqyaURNj/I20cTr4Oh1/U8NoG76eSE
         LPMRrMS0DMwPKza+40+ZA4O85ruqvxtenN2zA/Ao2/yF4PjXh/f4AIW6664GGDpbKcim
         b6Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature;
        bh=2Nj4mWOt48VVQnQvYcd9XxycvMZx7hhJh8wkW+XHoy0=;
        b=BtFyVTS0BTTSnF4Wm7tYINpWUes5KSvNs0lptoLGXVB7qsWjVvkayjfkT+tuq3AX7B
         jdXDQk3oMBObf2mmeQdtyoxDM4HZifJe4XlVUiUs6rOJiYuq/L037o3arpq6jL6lg1eo
         b2yby6DUcgLRAyqDxUeISs4v9QMK7MSipenFPNd7kN0SNA9LEEKNFyq2tRpr8UglrR0n
         quGie6nGQryZjRd5QKVv4HXdCqmVHjgxR9uweJhwO9YLQLX8UciKERK4iAhhgvBKU9JC
         YueycxGNSU3ZrIUUTv0zUs9J6VJDLqbEX5TLHW0Sj/7NwyLIIOpbmteOqbzhlt/7pyKC
         wfow==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@semmle.com header.s=google header.b="tF4bJe/N";
       spf=pass (google.com: domain of max@semmle.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=max@semmle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=semmle.com
Return-Path: <max@semmle.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m15sor14988245vsh.55.2018.10.19.08.04.19
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 19 Oct 2018 08:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of max@semmle.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@semmle.com header.s=google header.b="tF4bJe/N";
       spf=pass (google.com: domain of max@semmle.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=max@semmle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=semmle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semmle.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=2Nj4mWOt48VVQnQvYcd9XxycvMZx7hhJh8wkW+XHoy0=;
        b=tF4bJe/NMOZUIjmqXCNp0oO+I+iZGyFIcgEaaZyv3OOwb97P3aAR8wqDCXuYUC7IPp
         GKGj4d5CjHjGzNYjGK2OBprkg6bxD5IkboNJLALUpHJFhUBo/qgwdrIsyuiuJo+2AfHH
         8enw6YQnVQmu+4raMhk4w8driiwTyU9cm94kY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=2Nj4mWOt48VVQnQvYcd9XxycvMZx7hhJh8wkW+XHoy0=;
        b=AHnQBMdisPqKCy2LNUGN3IzRL7110F2xN/uCIcObIGz0ENGjrXx1MVKysikEMD3/+C
         EH9dOLxsQDxNXaYLEyu52e3F+Uxh4WJaomulKHFWBOyKGEp0Xmq+YtkswyIWFluYE5O9
         K5miMNVDBWgw1tu7zXt5/t0w/NROK2gTmD9s0R7e4p33HAKbJzxpg78quvaDSp5xCd4F
         HeSv51us5nOhVHqh2pt3fpnuNwoAjAfq+CxcyVVK2NfSbqsmE3BzhrlRaZGVYTyGxU5P
         9eUyl6oHp4fqK/GR8g7H2df6uh24W1lQAk59Z2MUpoE17VBwS3dEKUPRh2QMEFd+cs6r
         4teg==
X-Gm-Message-State: ABuFfoiA/0coykISfu+Q06HLGE7+ePj6m31srxYiTwepRfOF8O+xQ63F
	i853BCmUetNVhiERGALcT7J7jigjhcfOs2GYO8P3OtrB
X-Google-Smtp-Source: ACcGV61ROHTYxxZcF3+ZAMXl8+RAY1vQIJDg4MFLXoXw2weTrjiV3FExYOjQWQsUvZNjLMPb+JhHGXh9qY1bHL8e3VM=
X-Received: by 2002:a67:8c4a:: with SMTP id o71mr10917194vsd.55.1539961459218;
 Fri, 19 Oct 2018 08:04:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:3182:0:0:0:0:0 with HTTP; Fri, 19 Oct 2018 08:04:18
 -0700 (PDT)
In-Reply-To: <20181019142451.11823.50608@bigbox.local>
References: <20181019142451.11823.50608@bigbox.local>
From: Max Schaefer <max@semmle.com>
Date: Fri, 19 Oct 2018 16:04:18 +0100
Message-ID: <CA+mP=g8YYvCpPyVEh38ewAW_uRirU53AjvDQsDA7Lz1pHnot4A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for max@semmle.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000bebc260578963735"

--000000000000bebc260578963735
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.


On Fri, Oct 19, 2018 at 3:24 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--000000000000bebc260578963735
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I accept.</div><div><br></div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Fri, Oct 19, 2018 at 3:24 PM,  =
<span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>This is a confirmation email sent from CVE request form at <a href=3D"http=
s://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.=
org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can&#39;t use the data until you accep=
t the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
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
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div>

--000000000000bebc260578963735--
