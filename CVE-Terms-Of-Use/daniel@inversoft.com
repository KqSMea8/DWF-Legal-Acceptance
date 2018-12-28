Delivered-To: kurt@seifried.org
Received: by 10.79.12.84 with SMTP id 81csp355035ivm;
        Fri, 2 Mar 2018 21:09:39 -0800 (PST)
X-Received: by 10.200.35.46 with SMTP id a43mr12673950qta.311.1520053779162;
        Fri, 02 Mar 2018 21:09:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520053779; cv=none;
        d=google.com; s=arc-20160816;
        b=GTyaPW1K089oIHaKFm+9KhIwdpb/9j+pCzREUTpBE3xBCvRZ24z+5NOwMcgabPTzq6
         UcQvUPrXRU/tkYOPYJvgPtaMzASY2bfDvl33v3A2oHpV4vuAB4QghckRamJBpOuwlns3
         T21qqpoZMps3nDdYXbFl8k4UCgWN52o6kJYrLwurKNLWs8XYq9dIxEBElwiCYaQj6xh6
         KrnHxi2QcKHyZGIyjWoD1GFcLwF4s3TOshG1tghH7L59COiNaHX8Om9EoLNG7OaO++Pl
         G0mDvIgPEie2IL8P3Wpn6CuTw808Zna9IrAdF7iVYTbJaJgpYAMUp6KG18JGQ1Fwa2fc
         7utw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=tIioF0thXNYwEvzy7Bqc8dbzyzR1H4cZzxxTSVbQcRs=;
        b=WFRmDC9QfVv5/KojgRowdL9qfApca+6LlMvFbM5aYcj5tVrwtqr7DWKr1w4Ma91fMk
         xzYHonfAp/+F22RCXLK/GSUPVRuwD4ADxOSWihUAIg7ih71MdRY3M7RBz3snbzqowhcp
         LnGxFnT95a7gwI4sZ1Y7LzhtiGo4T2Jon4Am1rXn/g8CEf4NJo0paCnoMOl3ByacL3k8
         PBgvw8q5BBhbydmoPIMnL/WcEKR4QvgdKBgYIS5qvEYle93RIQ3YCgg4fJjYnUkJsWA/
         qw1nw9WTDOBWSLJ2PzFdKTGmONq6czt9gGdiSJpGqx9TzdwphyljaJbXLMcT1bdseWk9
         Vxrg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@inversoft.com header.s=google header.b=dmLVYmnd;
       spf=pass (google.com: domain of daniel@inversoft.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=daniel@inversoft.com
Return-Path: <daniel@inversoft.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y9sor3629498qkj.91.2018.03.02.21.09.38
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 02 Mar 2018 21:09:38 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel@inversoft.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@inversoft.com header.s=google header.b=dmLVYmnd;
       spf=pass (google.com: domain of daniel@inversoft.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=daniel@inversoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inversoft.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=tIioF0thXNYwEvzy7Bqc8dbzyzR1H4cZzxxTSVbQcRs=;
        b=dmLVYmnd2NZlZYPieR8GfFvy2ZiA9+7SqbzZXAknLzdiWRHQCc0//14IqrE+Pr2pF2
         0anczjXMc2yHBTXnKR2p7GmfzxZR0yPpLAC4hdj+bNLGo1QOcK/c4XDXjE2Rez9nMEbH
         cPxiyeMJHadxVrdV7IyFc0Sx6mdyCsgzjr/9czwrYsscruwYvHeCLLgk/XCNbz3iY71m
         CeM8t+tRIGF0Eb3et0IvH4Tb73ixn7moUpg5E5ShxuOWZa3qAhGlkPl2XpKg+4/fD34L
         n9lxhfy2BLEU1Md+AbjprR+Aod1FU52SSa+MDdLLKJN1e9lA4GISAcqpU1aSVA8PpB0y
         EGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=tIioF0thXNYwEvzy7Bqc8dbzyzR1H4cZzxxTSVbQcRs=;
        b=KyEMAtmpSfTGHuc1mbDz11bewvmfb6L2cQR2vI77Y69wtZ5J+X9X8w07VAOW36Ep4F
         2KyaRLi+pL6DPihvTLZxBqSQFX7VPSXlQVsM1piTR/ZiWUaW/QqjjhTMTmprPMqwWRun
         QgcGjNI1S6aZmvdHzF8zXtn6mRnwLPHOEfTJiA6dIUEy93JyQbktD5/Hf7BDxqINoa+X
         CnB1z/1E+hFgVixgTEltvYsgX8OJ1GM4q5AYlQM1am0tH3xB3XmS4I9lUytgsvwqV9Uw
         AaNt2sozoESxKk8QK7JlTj0SUJ6lhYmuNpYSNrfwJFfTNLjawiFKuKu+PIlOdqd8hS4l
         DAXg==
X-Gm-Message-State: AElRT7HKywfZaWqOzXlv5opsz5b3vmbqogO2T2q7Dmuhlcyi1SH9A3cw
	+G1jGeBmZ5I3v08XC/HMCcLeVHZ9u8UtHQn+89UOTjtk
X-Google-Smtp-Source: AG47ELsQ4zjTlzAIHRAHgRt90coqtNCgU8a64Y7E+mAHcagb815MMBQNGrZDpkRQ4+pma6u2UdvVtveQsv5/CfstGuA=
X-Received: by 10.233.232.75 with SMTP id a72mr11969001qkg.76.1520053778015;
 Fri, 02 Mar 2018 21:09:38 -0800 (PST)
MIME-Version: 1.0
References: <20180303043144.19481.57132@slab.local>
In-Reply-To: <20180303043144.19481.57132@slab.local>
From: Daniel DeGroff <daniel@inversoft.com>
Date: Sat, 03 Mar 2018 05:09:27 +0000
Message-ID: <CAO44br0MTMcGQ6AXxCsNUiicwj4P58S8hcmgjaqFzp9wOHeV9Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for daniel@inversoft.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c11019a7a7cb905667b196d"

--94eb2c11019a7a7cb905667b196d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Mar 2, 2018, 9:31 PM <kurt@seifried.org> wrote:

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

--94eb2c11019a7a7cb905667b196d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Mar 2, =
2018, 9:31 PM  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmatio=
n email sent from CVE request form at <a href=3D"https://iwantacve.org/" re=
l=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can&#39;t use the data until you accept the MITRE CVE Terms =
of Use).<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div>

--94eb2c11019a7a7cb905667b196d--
