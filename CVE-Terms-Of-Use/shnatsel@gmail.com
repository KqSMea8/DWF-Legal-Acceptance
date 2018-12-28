Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2704455otd;
        Sun, 19 Aug 2018 03:20:21 -0700 (PDT)
X-Received: by 2002:a37:4843:: with SMTP id v64-v6mr39130437qka.209.1534674021632;
        Sun, 19 Aug 2018 03:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1534674021; cv=none;
        d=google.com; s=arc-20160816;
        b=aQEptZlYTLYiwaP8/7oBxm/cKrLeOepy4NMAJXGmLcWQ/l/DQi4vNQla/BFghwiDMC
         bitk+BJ+a3/aTAKh3ZYz9MgHSxXtDRIH+sUtrtDEtQYfcydgY7/ag6SKOWvrvAB5lVZ7
         m14Oe20xu+gkQAxIAmfW4nrsSaz3RM+KYuPJ+lUes9Czd4H36GblxFXMNfFpANbA4ib9
         Apho4zn1SKB5vw17wT09bKWX84HpNgDTD3+ejUyraIUHQ+CnRe4hAID7pNQHd4yd5Q/Q
         7xGRAt44QechDjGIbkO8r/H3aVqaCZqkL4ukbSQ2RAq++PrSbrRwPxARz0BnqRhPV/5G
         hFcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=5JXpiAwo0/csCDtq+xnTFXEMS7brpGzL5AMEoTtit4M=;
        b=niYEXpeTv2V/80TMTaAaD+4WQXjGzlKfswhTUIceu2UXTVukn9Zij+fykf1oAxm4Cm
         Ib95ST7bDOB77jsHcQbiAaQbsmr6rrpV4xTq2ntdvCoOgp8I//m8nEoXPk60n6ytf/IS
         vVR6fAdI8a1Z2hAoX5s0MtDtDyKiN4biQYxCP0TNJyDCbxPSEEoRi8SBkpB3YRl5S+86
         ex9442mwUgsubIG5RdGxyxB8I4sbGjMbiLvLQnXOhDsAV++kWar3UYyZeXNWPWnSnv3Q
         as/XqJdBHnvpnXtJlHiLTnGa99eLyI/36UKPPs1cB5eJnHb4t+oNzTQEgqrRV7q5dDOy
         hbYA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfhH3v0S;
       spf=pass (google.com: domain of shnatsel@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shnatsel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shnatsel@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u47-v6sor3607955qta.104.2018.08.19.03.20.21
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 19 Aug 2018 03:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shnatsel@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfhH3v0S;
       spf=pass (google.com: domain of shnatsel@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shnatsel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=5JXpiAwo0/csCDtq+xnTFXEMS7brpGzL5AMEoTtit4M=;
        b=dfhH3v0SAmyzPZmlaHrCQyJnlg5jxFoKZYo9m23SH6N2nM5TM+ZvC895FMkncen/7O
         MxyrJbiXKj/5IaYbozs0taAQt2kS7j/+Kben5txEyvK8UtFOS7oxezZs5nXNNYdiURIo
         IIlqoB8DJ72P6pYWG23uUV0A5WmeBBRCy7FrOMt3ABrTZBow2E11WrIIUbKFbw31n959
         DRI//l+a9BRERrlIYo8uM6ax8PPO1EEN0fWt5cIW0me8IORaI2G6z4FK0qbDaBALEH55
         okEYmaxS8uhf5cgA1COVHEV3t2TILqqZvGHv3Nn7ZHqrtlvsyIH43YkbthrQnkRFj2oy
         oT0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=5JXpiAwo0/csCDtq+xnTFXEMS7brpGzL5AMEoTtit4M=;
        b=baVkQ/m2zvcwxBNXSR+7I0DcG4KHQgykqK7aIVwjSXD2pq1m5O50MjlwaA5NWAq7iy
         J+AAyOxGbbb2ZN4DQAZUeBh3K2sOmmOh8e4MzYnzRr7QcqVvzK6SwwrkR6MnLcYIziIC
         oFzrgXLUYPv958XetqcsI4Dq4anVZcUWf63nJjESYDxVNG6NQnXoV1Ok3eaoHBHyJrwD
         xfPeWST4zh4ARnrYMLK2m+oLMewWAx9qeM/7VQSw2axNHj43mvgijK0FjOqLU8bQNvjs
         NQvv7ytsvTOfDxahXqfPRNXEJbfvsjRKrK01bU82zkq9joi0LVoalTUrcBYQTNRaGnwI
         DkyQ==
X-Gm-Message-State: APzg51CHLwxFfxxG9yBhhqRvTC5qQfUEKmO+XGYUusHyT6t2eWhWdM/I
	W3CxKADGSxdn95a096hkBSzc5ITS2kHNVb1m3QT57A==
X-Google-Smtp-Source: ANB0VdbBaF4yuP4hgsVAIZ6yGuoVMbC5dDB8np9Go4DOQeGL9uOYzEVsUQ3lvciMn9Nk476t+nsiDJyWb8L0CT7UPT8=
X-Received: by 2002:ac8:42cf:: with SMTP id g15-v6mr3933436qtm.162.1534674020902;
 Sun, 19 Aug 2018 03:20:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:2383:0:0:0:0:0 with HTTP; Sun, 19 Aug 2018 03:20:20
 -0700 (PDT)
In-Reply-To: <20180819023034.1341.26575@shiny-2.local>
References: <20180819023034.1341.26575@shiny-2.local>
From: Sergey Davidoff <shnatsel@gmail.com>
Date: Sun, 19 Aug 2018 13:20:20 +0300
Message-ID: <CABaUXi7_Tv+pjZ3xHPukgB3D+K0yad2d9fzaprTovTHFQ1Sc0w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for shnatsel@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000dcac7b0573c723e8"

--000000000000dcac7b0573c723e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-08-19 5:30 GMT+03:00 <kurt@seifried.org>:

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

--000000000000dcac7b0573c723e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">2018-08-19 5:30 GMT+03:00  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent =
from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferr=
er" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the M=
ITRE CVE Terms of Use (assuming you filled out the CVE form and want one, w=
e can&#39;t use the data until you accept the MITRE CVE Terms of Use). <br>
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

--000000000000dcac7b0573c723e8--
