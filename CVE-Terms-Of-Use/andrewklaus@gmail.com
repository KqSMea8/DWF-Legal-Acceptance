Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2714001otd;
        Thu, 5 Jul 2018 21:26:34 -0700 (PDT)
X-Received: by 2002:a24:d7c5:: with SMTP id y188-v6mr6859010itg.50.1530851194215;
        Thu, 05 Jul 2018 21:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1530851194; cv=none;
        d=google.com; s=arc-20160816;
        b=Pm4kQUIhs5FWiWf0lKBXnycv3Iy68Y29FVM8LEhRyFQ9d8u1/k0SmNwMWsjzUN4/Zj
         9a4dSqhfN+b/shET/x8e4M/fW0Po7i+wi0EsEGLxdNm70kOqYFc7IHwEVBYCUKe8O/sP
         slXMRDKYiMi6TZfaEgeT4WddbbG3uOPuSSPbmy82x83Chm36DKDq32ulLcAgqF8mycot
         rZbh87nVqYccXpwl1XqvKLX/ZD+tnOw36VFzDPtlrLmWefHZd6kWXz2lYBFtHCENvpkM
         W6qmHWy0WEzxDkFko4gM38VcSQXQlElXuxNpJ1Uza9/RciRjdJRC3GXIX4mi47iD9jDd
         DEBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=3MIaUpYFja7Lapuor8xjngm/CuoVZXwrSmIBUsm8p/A=;
        b=Xe8RJlIk54LUp2u0krvai15zllWwSi4qiNsxnC0qciLrMnmV3Jl7fcACqAtqsua2f5
         OsLvM8JwqYrvZzYFg+P47MftT7iBj+eMb1ljs4k6FKU+t/Efoa0ANdaDB/MIIJVWxoO8
         PMbCO2MOMWg8mqUvqKn1/L5pfhVXHiTFT2rGHYAqePXEXn83oFK6eVZrq6+O4uXMYAyn
         jDnJ/IlTnjUd1c4P42fVn5H7y6DSNyVSKSLHieF5ajQM8m44JFb618Xx7iSdhBIevRGa
         /RDNxItU2K6ZknduOKQbYW8UN2MwJbbtUoaAewyY3izfQA85fdfIsPUPcWM9YL4DSJeU
         Thjg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FP+hAw6h;
       spf=pass (google.com: domain of andrewklaus@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=andrewklaus@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andrewklaus@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z79-v6sor2945388ioe.103.2018.07.05.21.26.33
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Jul 2018 21:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrewklaus@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FP+hAw6h;
       spf=pass (google.com: domain of andrewklaus@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=andrewklaus@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3MIaUpYFja7Lapuor8xjngm/CuoVZXwrSmIBUsm8p/A=;
        b=FP+hAw6hu43Bt4T9mz8O6rIdf6R/SSVYH5YUkxBrxvGfCs0y4PvB55D5r7RZGnACAK
         ryGDvMUNbJ1inLpf0a7vif3cqW5rmcmIHoxi9fFMusvphHno4Cjdx7AzfAj0Xebk/+XF
         BEUmIS1zI/IooOneL1P2PF8h7KEfHVkGlMlc5oiykrJojdxLE3twB0VphiwNTUm5stC1
         d7cnkaxb6j+oz6xC/z7UuKJf5vx1VyiMxwnWgiUVzH67mNppPA3bIi4rsX3tj6Qg+JIF
         asGLNDJYj+FRQxShewTXaNM0pCRlpkzI7ExZuHHHj7ouU7YuXxu2YVfE5DuSynM4G380
         l4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3MIaUpYFja7Lapuor8xjngm/CuoVZXwrSmIBUsm8p/A=;
        b=ASMiJlXTdO5+jHtZQuALyLJ/mDXTBgKciCcl/b4gP8BDHGN8xzzaJUYwvVF0A0/66x
         y9GALf9Z4twNsQURBOq3xTnNvQ4S8ToXqHaf2/Q2QN5gTbvFkL2tdQI99Oi8YeBev0Eo
         lY6V0X32diMhDczr4w9v9zHrLx9BxW3TS4ATLAjk+4gL19trK2rQN+wgi8WSqQYFcyVk
         bZTeKDDBnOQgrF65saaTcy+9rH+D2ogfeAy6d1djAal+7lOdJWEkU4HCX/QQ2h9QFLlb
         O9oHzYEVWYIAzgH37V6uf30JRkaKGknA5HkFrdhEzCET3OsuypokSPP0cnzmTF4EVcCl
         fUGw==
X-Gm-Message-State: AOUpUlGBS8snmWIrmxYBFfim6wVH0wBjw4kNe654ERoDyVXwXKOzWoCx
	wxSKJGvnrfzaxCnEGPiBddRf+00YA7klBPe0sfOXMg==
X-Google-Smtp-Source: AAOMgpcn/pctl2zJao/T3ot2PNO3Hcnh2jmNmhS9GqZsu6F72GRMkub9/UCfwmycXZDAPJePKxzmbWHimJcJbqryp+Q=
X-Received: by 2002:a6b:b452:: with SMTP id d79-v6mr7049301iof.163.1530851193448;
 Thu, 05 Jul 2018 21:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <20180706024332.12777.96607@shiny-2.local>
In-Reply-To: <20180706024332.12777.96607@shiny-2.local>
From: Andrew Klaus <andrewklaus@gmail.com>
Date: Thu, 5 Jul 2018 22:26:20 -0600
Message-ID: <CAKA4ij9tiRz1PPGA7vj4=Z_QUf0izu05x_SqMug=nWHk_NOFOQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for andrewklaus@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000096f02b05704d11b0"

--00000000000096f02b05704d11b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Jul 5, 2018, 8:43 PM , <kurt@seifried.org> wrote:

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

--00000000000096f02b05704d11b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.</div><span>
</span><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jul 5, 2018,=
 8:43 PM , &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation em=
ail sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D=
"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acc=
ept the MITRE CVE Terms of Use (assuming you filled out the CVE form and wa=
nt one, we can&#39;t use the data until you accept the MITRE CVE Terms of U=
se). <br>
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

--00000000000096f02b05704d11b0--
