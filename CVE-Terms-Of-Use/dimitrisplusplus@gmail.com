Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp856888uaa;
        Thu, 6 Apr 2017 13:46:02 -0700 (PDT)
X-Received: by 10.200.55.152 with SMTP id d24mr36021173qtc.1.1491511562700;
        Thu, 06 Apr 2017 13:46:02 -0700 (PDT)
Return-Path: <dimitrisplusplus@gmail.com>
Received: from mail-qk0-x231.google.com (mail-qk0-x231.google.com. [2607:f8b0:400d:c09::231])
        by mx.google.com with ESMTPS id x13si2406851qtc.249.2017.04.06.13.46.02
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dimitrisplusplus@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) client-ip=2607:f8b0:400d:c09::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dimitrisplusplus@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=dimitrisplusplus@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x231.google.com with SMTP id p22so48015917qka.3
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=qVjOGxsphnpukoGTygce9DozuEIAtiEjcEA9nSsG/kY=;
        b=L/xq5xhYBXvRERS+eDPYpIEYjpe4RcqqYVmuAbGfvNlEn6RhHL4GJRnmoKGyHFTqwG
         3H2p75s7qPl9FBcUeaojHWrTN+CRFT20o9polRfCi8jYO6LWRoVTiqPdRP0ROESjVBEj
         NQ9qIqyrz5w+El3cMZs6bmn+Yb4RcUCYfwxTwxas0kEw7KmsloFNA/ni/pGfe51DktQ0
         Teu+UqJFFbrmqDsisPadF856b9yPf7zEKyZxTX4q1VM09zEDuP6yfylnHmh/viCRGuFE
         QgPbNQoU1LetwvviTSrZdSyz/azUZ7UlYE3RPoGiAqRLJlYc80xDD15LcPUbsvtPz8TN
         5NGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=qVjOGxsphnpukoGTygce9DozuEIAtiEjcEA9nSsG/kY=;
        b=o2/yLD8xZnE3+wMq3yFbeUNuY/OCKZ5gAiPP+EsbyVv7rYBSgae+Kza3/6axtk0Erh
         EuTKLiCAcPX3O/kXIWR6etkB+NI9g9cOC4Wc7BSg4zgX/y6anZyywBBTGCfoRuo3Ohle
         GsJHj2zioXtsEiHWBSASCRsq8MG75Hqn3gcZGaDpYn12a5Qicg3Ih1XEw9b4JCFmZ0+B
         BJQEDIeHpVflMWL9YkLX1Oiun5kYAUfFuGYpJCph+Ws3mHvbyv1yxxvO+DST1NSl13ZE
         vA+02QsKLoVv9i58ERCbcxZEVLMiXmniQLKmqChlhEkeuxu4CeDPxSz5LBY3s2uwj7CU
         Vn+Q==
X-Gm-Message-State: AFeK/H3YgP1J+d8+vq2v0Vl0RA1wBz9kKRPhdSuGOCupkm/fBrGeE5Ea+JbM6aaM5Hu3ocp59S4F5H4W5hYfJQ==
X-Received: by 10.55.147.129 with SMTP id v123mr34732464qkd.230.1491511562117;
 Thu, 06 Apr 2017 13:46:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.122 with HTTP; Thu, 6 Apr 2017 13:46:01 -0700 (PDT)
Received: by 10.200.55.122 with HTTP; Thu, 6 Apr 2017 13:46:01 -0700 (PDT)
In-Reply-To: <20170406202019.4090.36042@shiny-2.local>
References: <20170406202019.4090.36042@shiny-2.local>
From: Dimitrios Zorbas <dimitrisplusplus@gmail.com>
Date: Thu, 6 Apr 2017 21:46:01 +0100
Message-ID: <CABtxZ7mvj=7uLP3+3E=_WhWZYZd7a68Uc1ftqKridSgE7P6fXg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for dimitrisplusplus@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=94eb2c08bb62d6a881054c8598a0

--94eb2c08bb62d6a881054c8598a0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Apr 6, 2017 9:20 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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

--94eb2c08bb62d6a881054c8598a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Apr 6, 2017 9:20 PM,  &lt;<a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">This is a confirmation email sent from CVE request for=
m at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank=
">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Us=
e (assuming you filled out the CVE form and want one, we can&#39;t use the =
data until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
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
</blockquote></div></div>

--94eb2c08bb62d6a881054c8598a0--
