Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1675159uau;
        Thu, 20 Jul 2017 00:44:49 -0700 (PDT)
X-Received: by 10.36.190.65 with SMTP id i62mr2444377itf.174.1500536689156;
        Thu, 20 Jul 2017 00:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1500536689; cv=none;
        d=google.com; s=arc-20160816;
        b=TSjXd+1+WorYD1uajaDL/T5trxUdfDYoqUUvHi6p1bdipc+VgkY0EDcg93zqgoeGGO
         0vmc0ighULHfM4wPb/i1fX4pdiKHu0dUkaWGLsZe/KCezWq6XOwBW3ZJc8KavMC/P8y1
         SSRHcg7GMuY3U/9eT0Xd/Q21x+78GeWqOlHMXvaXK3F4rpFzMa98l5l1K9ujE4RNV8qs
         yWqRd9iBds9j6r4inNb3kxVbG4EsmDiSQMPZV5+g1QeaKpW1EP4ZMxb3Z0u/g31abBiA
         R6H1nT1wFBN+Gn0ftlilMPJeLdamOfbvcxDu4Game6vaamHcxpTb6Pdm6CuSbZzAhKDi
         yHrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=aazxqYPmg1cmHgFWXOHMKTK31fsgvLJU7RncpvWXh5A=;
        b=gMSxobYMkT5uHj0ESIIz/mKCWmp81Al+zVgSAHIdq+smMPXQ4/XrZZwFpro1GvvZpO
         aeT9Re8Zmlf8CF9RiatCrrSNfWttJqWB+jHqxCPb1A5T1GlV3XG/bGTBmmr0OJeDaXLo
         Ic0aOWoSSrN3NyPayhnvXWrlnonQtvINEO6FxsfWKsrpflKYEbfDp0YnXpjlFYR7j4s1
         uaUlq1Kbli/h84ulzb+hYjiuOBXZzilPpf06g3sSqb7KVBjMNvbfC+zCYNzsYgvE4kyS
         Nb3ybGVPbgoRTJMciAuXKRLyMvhIjTDyO1/VFJeVCafa/im0uPI5FEZPpBSb7HZ8S9Ip
         CYAA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@semmle.com header.b=oCPW+Xpz;
       spf=pass (google.com: domain of mmo@semmle.com designates 2607:f8b0:4001:c06::231 as permitted sender) smtp.mailfrom=mmo@semmle.com
Return-Path: <mmo@semmle.com>
Received: from mail-io0-x231.google.com (mail-io0-x231.google.com. [2607:f8b0:4001:c06::231])
        by mx.google.com with ESMTPS id f200si1512860itf.58.2017.07.20.00.44.48
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jul 2017 00:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mmo@semmle.com designates 2607:f8b0:4001:c06::231 as permitted sender) client-ip=2607:f8b0:4001:c06::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@semmle.com header.b=oCPW+Xpz;
       spf=pass (google.com: domain of mmo@semmle.com designates 2607:f8b0:4001:c06::231 as permitted sender) smtp.mailfrom=mmo@semmle.com
Received: by mail-io0-x231.google.com with SMTP id l7so8915195iof.1
        for <kurt@seifried.org>; Thu, 20 Jul 2017 00:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semmle.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=aazxqYPmg1cmHgFWXOHMKTK31fsgvLJU7RncpvWXh5A=;
        b=oCPW+Xpz7BAV68GvDRDWpRaBkZ34XOuYmwMiZCjnaB0bz4Cb04OkdTNu1qjipnzh6C
         Jlv5xsOIK70jUXqxq/GuL3yPqBrv8JSaVY/hvAjVAA3E9Tzu8Z0dpieNr3xa9FBgsNE8
         7yoiyn2kCQkA4zaTm/FZPbh7gyZuU3uZXX35E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=aazxqYPmg1cmHgFWXOHMKTK31fsgvLJU7RncpvWXh5A=;
        b=rj4tvJ4ilZQPonlFwdpGghzh74js0gkDBdcj1piM1cXTQy6LEYV6x3tjJIg4HElOry
         7Regs+VGQdoOFvV9ggnQa86UCKqMpQdgwrX1C4LbxOth1zp/cC5ON1g3PCuXJBXjBH68
         haRavwfkEG3v+JrTVH5s7hCb/u6VYUyk5pmxTOzQDqDLfPnbzq+061JUlykGHfs3W/so
         Ni0dNT+gIlGPGJfNbLZXHEMonyaUaC/rsJrqPypsWzWg7lvOF0nHgcDh3cTRTkn68x7L
         4nOYTsWb3vM/2r2KT9jUfgrwtN7COHKV7tJdbuizPOK7F8c6u23W1JhGHHARW/yWGSCX
         PxTQ==
X-Gm-Message-State: AIVw112GGs3N93Ul2mBK04o43cH6qw1rAEWeKPORtsnTIKxGa8mrOvMO
	IFXJIb+/lbHAnQwW6nG6gJpDSZfEKl6K1Vo=
X-Received: by 10.107.184.86 with SMTP id i83mr3061639iof.139.1500536688548;
 Thu, 20 Jul 2017 00:44:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.36.83 with HTTP; Thu, 20 Jul 2017 00:44:48 -0700 (PDT)
In-Reply-To: <20170719175715.5944.81187@bigbox.local>
References: <20170719175715.5944.81187@bigbox.local>
From: Man Yue Mo <mmo@semmle.com>
Date: Thu, 20 Jul 2017 08:44:48 +0100
Message-ID: <CAOP_0_6fojo+NXeHjbru+vQ5NwLDiy-3urVeNpe+gPSgx3-+8Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mmo@semmle.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c07708c4b4adc0554baeca1"

--94eb2c07708c4b4adc0554baeca1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.
I would also like to update some details in the CVE submission. Thank you
very much for your help.

On 19 July 2017 at 18:57, <kurt@seifried.org> wrote:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c07708c4b4adc0554baeca1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I accept.<br></div>I would also like to update some d=
etails in the CVE submission. Thank you very much for your help.<br></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 19 July 2017 at=
 18:57,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=
=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">This is a confirmation email sent from CVE request form at <a hr=
ef=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://=
iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assumin=
g you filled out the CVE form and want one, we can&#39;t use the data until=
 you accept the MITRE CVE Terms of Use).<br>
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
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div>

--94eb2c07708c4b4adc0554baeca1--
