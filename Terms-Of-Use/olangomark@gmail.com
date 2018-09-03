Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2037898otd;
        Sun, 2 Sep 2018 18:57:48 -0700 (PDT)
X-Received: by 2002:aca:d098:: with SMTP id j24-v6mr4230038oiy.72.1535939868801;
        Sun, 02 Sep 2018 18:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535939868; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZUBkln555gP33Mt7geqLVS26tSaSBvV3kLBt725K/hrlOpcyIwdA3Wo1iyr+4l+NA
         CZB7+YfR1HzHfKignNlApXmW2Jkyjvm/wAlkiYaq7ktoYH/vl4SghxPOqMatNfWUJFVr
         NyAUtlg7AjpojPhCdeik2PyhzIGXG2Ukp6t0dnjENiAy7evJi1RSUWuvVpo843Vo1ImV
         a2Fu7ve5jyR3Ua0k6iTdBg4KrE7sFkuZK57SJpHl0SrkUYUb1FfIGy+3yL7jWRKyRaKj
         IHuI8ilUO097L6wcnCsMBrjYXVZ4I3SZug9q7jbdeaf+OH8GaHlAvA7Glr8DpTcbQVL9
         9yrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=cLTzDk0/flZ+NIHhhCRHvNlVeuZ4rvXKLOqETqAETIY=;
        b=nFJVqVAOPCH2vY612bqP70s20J0S+4nI/CgRWTDySB2pXVMEriemNSGvV66oXBDsdN
         h1Y7UNM0dcLvASMhGLFdEWWh6LP6rMFWfQPt8ykuo4JjLjqoVk6bs/Uy4hOJ8hA8F0nn
         f7TC3vNA3SMp7OpBlO9kITxQ8FwG6S3R/tCLx4Vc1eqV4OVy++qB5/TnHj0rTyAaCwws
         8OImZPULM045j+3C1bwGLQVpF+U1hVcvDc3FF1dPpGPvcAaYA5LfZqZRoSloAT3OTI1t
         y1CA1B1/6cu+gg6m27ekae6QH/+XgnU8QsD3NibKJQOLOxxtiLmYZybKS9zusC7IFPAT
         dFwQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EznJxeLk;
       spf=pass (google.com: domain of olangomark@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=olangomark@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <olangomark@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id c24-v6sor13454458oiy.102.2018.09.02.18.57.48
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 02 Sep 2018 18:57:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of olangomark@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EznJxeLk;
       spf=pass (google.com: domain of olangomark@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=olangomark@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=cLTzDk0/flZ+NIHhhCRHvNlVeuZ4rvXKLOqETqAETIY=;
        b=EznJxeLk1pul07e6sR5ctwDbdqi8do/g0nPn3dNKlYeyoVm+lTSnhJv8p63EKhxnZZ
         2rTMCRIdGV6C1me9lIMxu/PQ/xpWoGrJOsJuc2RCDJFi7muP+wCmtPkXsyMgs/8nHixS
         FO4rq3DCjJUqC3WZms9rDyx5GqgYvxUzaqE050UWzmBhu+FnY6GTDcvP3PV509zrPhhw
         ox6WAlvzQg1YgzjZ+TdgHEeuUoC5e6ce79DBA9Psl6/rQoudqIqrlbdUbIaMTH1pvVUR
         Nb8aT+u3SD+Mr8gWhyJN2rpLhf2wLDKuIGIj3vp/Dwv/3SMtiUXoohptYqBraOCun0tq
         gTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=cLTzDk0/flZ+NIHhhCRHvNlVeuZ4rvXKLOqETqAETIY=;
        b=oh/zWhtuJgKV33WEQZfiH1vM7uV8rAsDNUt6qXacVKChRwLdOMBFEHHDxm7izPF7m0
         HR/ZM+fJ/ONNNLTFQXjRPYuzauFvGXCWW0FxeIwXk8Krf8FnmIpHE/JqXxU/i7PCLdQb
         Rvcbaid6s1Qxof91hc7500+hxQBsHn7AUJ26dkavEEmBhx9XDQUStqxNxDFKOfAiXgak
         XVXXqzHsynO6Idxl5qoZdbHMdWSlQ/m1Ru2QrrUG15J3GvcEWKW2V/EatG2/lZtFgFrC
         Cuk6D68YBAJRoJHVr9J5RsxjYs5Vx97Kt4DMogbk6ZhDxMwjaJNDWK7NO6XIUbtaMOWm
         BRoA==
X-Gm-Message-State: APzg51AqJd12sQtHjZ+FcyeDGoqNsqiUbJqqaaowFmKLEUC1O60naR/b
	Ihi/cvJNKTwFEx7gt4ngoDnNDpyC6N/1gXH93c/ImA==
X-Google-Smtp-Source: ANB0VdYMtDJNis6ZSbRJankCpxKKcXeUtEv1D8cofJsx3qLMcNIeFrcuI5LNRflG5sCypTZVKJ4vcdb6Fu9JJbLHGZw=
X-Received: by 2002:aca:5512:: with SMTP id j18-v6mr10725121oib.17.1535939867997;
 Sun, 02 Sep 2018 18:57:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:12ec:0:0:0:0:0 with HTTP; Sun, 2 Sep 2018 18:57:47 -0700 (PDT)
Received: by 2002:ac9:12ec:0:0:0:0:0 with HTTP; Sun, 2 Sep 2018 18:57:47 -0700 (PDT)
In-Reply-To: <20180903005717.6662.40729@shiny-2.local>
References: <20180903005717.6662.40729@shiny-2.local>
From: mark clancys <olangomark@gmail.com>
Date: Sun, 2 Sep 2018 18:57:47 -0700
Message-ID: <CAGuhi-Z7v-RtAAFv5966O+PaucXxOwp6_mkrDcvRP+tym8rU_g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for olangomark@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000003a78720574edde8b"

--0000000000003a78720574edde8b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

kurt@seifried.com "I accept"
On 3 Sep 2018 8:57 AM, <kurt@seifried.org> wrote:

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

--0000000000003a78720574edde8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><a href=3D"mailto:kurt@seifried.com">kurt@seifried.com</a> &=
quot;I accept&quot;</p>
<div class=3D"gmail_quote">On 3 Sep 2018 8:57 AM,  &lt;<a href=3D"mailto:ku=
rt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">This is a confirmation email sent from CVE re=
quest form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=
=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE T=
erms of Use (assuming you filled out the CVE form and want one, we can&#39;=
t use the data until you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--0000000000003a78720574edde8b--
