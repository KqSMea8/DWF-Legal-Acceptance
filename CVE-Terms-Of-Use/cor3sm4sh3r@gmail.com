Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp183881vkh;
        Fri, 7 Oct 2016 23:20:45 -0700 (PDT)
X-Received: by 10.107.188.133 with SMTP id m127mr22743842iof.50.1475907645349;
        Fri, 07 Oct 2016 23:20:45 -0700 (PDT)
Return-Path: <cor3sm4sh3r@gmail.com>
Received: from mail-it0-x22e.google.com (mail-it0-x22e.google.com. [2607:f8b0:4001:c0b::22e])
        by mx.google.com with ESMTPS id a22si6684077itb.107.2016.10.07.23.20.45
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cor3sm4sh3r@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) client-ip=2607:f8b0:4001:c0b::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of cor3sm4sh3r@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) smtp.mailfrom=cor3sm4sh3r@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22e.google.com with SMTP id l13so33027111itl.1
        for <kurt@seifried.org>; Fri, 07 Oct 2016 23:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=dX0D0F+v8xDc6SLFF4lbkdpdGTk4gO8BUauZ8UZDoz8=;
        b=LdFCZXhJnlvb7MEq1kfXNXdTtBZjhbuZNsN+F3oNV3/BoP4us9QHsf7XSkMTZc9nG+
         jbE/gLU3GfbUW4bzDnZvvGJ1v9xsJVcN+AjpySWaBWehFRAHONE925Xs3qv25JaMTUnc
         tnTvNfH3GA8uNfFdFgN8jltAlv0ulpMIih1xTdLip5EMD9zwfcGn7MExYEZKTnu/muct
         KWols2npY4eQTKJrjVQ/nvRU1BR9EjWqqd+mA2l5e7W21aLrU/SQIB3jHnrJFNrfA5bp
         ChUmEYFX3jGKdGtGT5luwJN74FhG0vLpVnGw4LiyzFCPHfNuZc5hyYvJn/jU7OYtqPL2
         IjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dX0D0F+v8xDc6SLFF4lbkdpdGTk4gO8BUauZ8UZDoz8=;
        b=G/sU54dEUCQ+SXcOlqNWvBhmuIMs/GMRTDtaAn1bLB7Uk06wv2wi4HlRddi97iEMBv
         b9kIMvKsxhjr5nsAKHehmBUKZcMdp26pO0/8Jx1wfZNVwfYgN8bYEaJzB6/cXlvMd3ua
         wh2jojpaa3omWr+2aPvr2Ck27tkhqLuOjvHn2Y0H98LY8X7NBBW5uRejaSQFWr6ITSgg
         I8DPOVcQJlA/FnvaBChy9wW8YNZqzvlZ+ZfqUt0U3JBwsv8aaSvoO4jnrX+2+H7zP3R9
         Ue80FaBnD5QJyMBse+ssbUqTpQxvKH26FhVQyMgA6euG8KpZWsAdTHoNpoMW5Ok1fXNK
         Gr0g==
X-Gm-Message-State: AA6/9Rm7fK899h9QojqEvyzr8r58xVOty3p4YocCTHffiwQez+SK6LKyHS9G7rgbh4OyQzaZu0l9mt6uynTUzg==
X-Received: by 10.36.158.4 with SMTP id p4mr1954698itd.98.1475907644734; Fri,
 07 Oct 2016 23:20:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.23.129 with HTTP; Fri, 7 Oct 2016 23:20:44 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: shravan kumar <cor3sm4sh3r@gmail.com>
Date: Sat, 8 Oct 2016 11:50:44 +0530
Message-ID: <CAOmn9FQA9JG_Z4AFia+HH+KDY0i3bt=jOjWVMeJHChgXXtLt4w@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c05b874e2eae0053e5486ba

--94eb2c05b874e2eae0053e5486ba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Sir,

I accept the terms and conditions qouted at

https://github.com/distributedweaknessfiling/DWF-Database/
blob/master/TermsOfUse.md

On Wed, Oct 5, 2016 at 10:11 PM, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly perfor=
m,
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
=AE).
> Any copy you make for such purposes is authorized provided that you
> reproduce MITRE's copyright designation and this license in any such copy=
.
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
> --
> Kurt Seifried
> kurt@seifried.org
>



--=20
Shravan Kumar

--94eb2c05b874e2eae0053e5486ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Sir,<div><br></div><div>I accept the terms and condi=
tions qouted at</div><div><br></div><div><a href=3D"https://github.com/dist=
ributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_bl=
ank" style=3D"font-size:12.8px">https://github.com/distributed<wbr>weakness=
filing/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br></div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Oct 5, 2016 at=
 10:11 PM, Kurt Seifried <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifr=
ied.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr"><p class=3D"m_-26141070227203716=
05gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span cla=
ss=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-s1">Hi, I need=
 to confirm that you have accepted the MITRE=C2=A0<span class=3D"m_-2614107=
022720371605gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-261410702=
2720371605gmail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_-261410702272=
0371605gmail-il">CVE</span>, available at:</span></p><p class=3D"m_-2614107=
022720371605gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/=
master/TermsOfUse.md" target=3D"_blank">https://github.com/distributed<wbr>=
weaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span cla=
ss=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-s1"></span></p=
><p class=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-p2" sty=
le=3D"font-size:12.8px">and quoted below, please reply with &quot;I accept&=
quot; and I&#39;ll be able to process your=C2=A0<span class=3D"m_-261410702=
2720371605gmail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_-2=
614107022720371605gmail-m_-323732369566349682gmail-s1"></span></p><p class=
=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-p2" style=3D"fon=
t-size:12.8px"><span class=3D"m_-2614107022720371605gmail-il">Terms</span>=
=C2=A0of=C2=A0<span class=3D"m_-2614107022720371605gmail-il">Use</span><br>=
<span class=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-s1"><=
/span></p><p class=3D"m_-2614107022720371605gmail-m_-323732369566349682gmai=
l-p2" style=3D"font-size:12.8px">LICENSE<br><span class=3D"m_-2614107022720=
371605gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-261410=
7022720371605gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px=
"><span class=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-s1"=
>Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (<span class=3D"m_-2614107022720371605gmail-il">CVE</span>=C2=
=AE), you hereby grant to The MITRE Corporation (MITRE) and all=C2=A0<span =
class=3D"m_-2614107022720371605gmail-il">CVE</span>=C2=A0Numbering Authorit=
ies (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, pu=
blicly display, publicly perform, sublicense, and distribute such materials=
 and derivative works. Unless required by applicable law or agreed to in wr=
iting, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WA=
RRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, w=
ithout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT,=
 MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=
=3D"m_-2614107022720371605gmail-m_-323732369566349682gmail-p1" style=3D"fon=
t-size:12.8px"><span class=3D"m_-2614107022720371605gmail-m_-32373236956634=
9682gmail-s1"><span class=3D"m_-2614107022720371605gmail-il">CVE</span>=C2=
=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare =
derivative works of, publicly display, publicly perform, sublicense, and di=
stribute Common Vulnerabilities and Exposures (<span class=3D"m_-2614107022=
720371605gmail-il">CVE</span>=C2=AE). Any copy you make for such purposes i=
s authorized provided that you reproduce MITRE&#39;s copyright designation =
and this license in any such copy.</span></p><p class=3D"m_-261410702272037=
1605gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">DISCLAI=
MERS<br><span class=3D"m_-2614107022720371605gmail-m_-323732369566349682gma=
il-s1"></span></p><p class=3D"m_-2614107022720371605gmail-m_-32373236956634=
9682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-2614107022720371=
605gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION C=
ONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BAS=
IS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED =
BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS=
, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT=
 NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_-26141070227203=
71605gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE=
 ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A P=
ARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font color=3D"#888888"=
><div><br></div>-- <br><div class=3D"m_-2614107022720371605gmail_signature"=
>Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">ku=
rt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div><font size=3D"6"><span style=3D"background-color:rgb(2=
55,0,0)"><span style=3D"background-color:rgb(243,243,243)"><font size=3D"4"=
><span>Shravan=C2=A0Kumar=C2=A0</span></font></span></span></font></div></d=
iv></div></div></div></div></div></div></div></div></div></div>
</div>

--94eb2c05b874e2eae0053e5486ba--
