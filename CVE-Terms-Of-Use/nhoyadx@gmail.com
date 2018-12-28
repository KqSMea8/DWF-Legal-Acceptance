Delivered-To: kurt@seifried.org
Received: by 10.79.37.80 with SMTP id l77csp7448226ivl;
        Sun, 22 Oct 2017 08:39:26 -0700 (PDT)
X-Received: by 10.176.75.152 with SMTP id v24mr8491234uaf.43.1508686766231;
        Sun, 22 Oct 2017 08:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508686766; cv=none;
        d=google.com; s=arc-20160816;
        b=JsleX5VzoEdwjoyLrStPLrBc5PTiqxj8vJsfMujH66bTQ7OexJX/MuWOBw5hd6VmrX
         4m3Jz4eGdkVWmhILiip9avdyBqYvV7vVpDoxLPy4PW6ou7rMR03On53ka2jAWv6MO5jE
         73jLMK9B2kUbcpXwtRq1a8l26mQi1jw5HCWX6Hm9GaTwKMqsuQK9aVEWEjB7w0O5Wkru
         uXS8rK7bfqDkqPeLGi/o4v652HWNEW2vOMySKEPcBr3OESgmXiIBrR2a86QgoDEKtHae
         C6kni8S2LBe8zVFLpWkR+e97OMF+YSb6zLf/NCQR83KT0flH0VbNY6sI3hiOeBUg1/XY
         DsNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=op35fz7VjHiF0n0DGkp4tGjvkvGI/GFJGNq6EUhk2gc=;
        b=hXORck8EMd04NWxOiEKGe0jrJ0jxuSA2l7fhV5dsTfz69RPihWYhhA0hAwh1uMNH9b
         VGjTNwKaIKM3NxZ7x1Anf5pj3Hn2YDaZV8YrGy+0ABgJTfk+F8dpJgikFybS3hgXG+h1
         Fz76vVJ1fVIw+lXkMcFWj75tHQyET6/I9iXBFcLd8Ti0WNg1XKpueJ/qamfvmD2AFa8Z
         WMqMxE52UcFdYEEFfYOpi3q4aOjFbGAcpVoqlaJkI67h8ugHLrz4ycDJdNzzfNS1xWiB
         qdSAL810CY7yhJ4gp274EP8tUQ6mqdvUDCbJr5Gm3UJBi7u+q++10t3w1DIKmCx4QBxt
         p8CQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IDcBEkfN;
       spf=pass (google.com: domain of nhoyadx@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nhoyadx@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <nhoyadx@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p1sor2264383uab.250.2017.10.22.08.39.26
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 22 Oct 2017 08:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhoyadx@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IDcBEkfN;
       spf=pass (google.com: domain of nhoyadx@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nhoyadx@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=op35fz7VjHiF0n0DGkp4tGjvkvGI/GFJGNq6EUhk2gc=;
        b=IDcBEkfNUAc19buvtnB1IuL35Boso8bnkJMtYbihYs38bgvIkbv4usgMHGyhHyBmdk
         YSx+iMNj8t8ZXIGWAV327Hx7y9AaugQzn7m+7lVgZH6hzb5oKOBwtgRJj3ImvsYdnvUa
         haXAHNOghUGiKvAD2nuRMzvP6cZYlg87yaa+3lmatnqO8N6bn9yQtvezBub0uUmMlCTa
         Q3QrdhIUv3hqzD1lPnBEJ6K4JcPrDR5zUxbnpWnYLBCzOmQ11QQu2/d3JO/n1GfCljv2
         W6mFItQaPZ3JJtj280QpucBbYRIjrv8S0BDvYprFToVHEQKeqjCd2KtC5uMaCLbBF68F
         AHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=op35fz7VjHiF0n0DGkp4tGjvkvGI/GFJGNq6EUhk2gc=;
        b=H8YqCq1CGIB5XJrr60mUya8BAS07SWldmAbNeZdtU50r9iiYDEH3PvPgdXQVsgieH6
         1XwgzM3RBmpBOwZW4b74Jhq50rK57XLS/w5+ToJrr9AYaXCHZbXY7rrYLM3zMtFpiiQF
         bDaOd2Bm5ehiEfyLb8OaJKLE9f0ZAgBfOiNkJ2YlUgdC/MESc0x3+vGmEE86kwNhwfy8
         GyIVaZ5MB+M+MpEjpL0mmEIDih3CVkm93vDDMIsUoxQVpr+4520hWOM7gF9pQ3HIjXsm
         1u/Fwsg/wWLMRghNvATE8786nEzfE1h8KtrPXkL8HXtPdTvPFm1X4byZUnsJ29Z2x389
         VAZA==
X-Gm-Message-State: AMCzsaXFGCA+Ij9x1rb6YVME0Q1rESWMOaWs0Mx0sEy2WBwBlJWRFIME
	VaV3HEE2hdNvYan2tz5dKagZo8iYUp6yi+t6+R6Alezv
X-Google-Smtp-Source: ABhQp+RK7wACCNB+ZWCEWGnrLkkEofJ8AJWMpjVUj/2FCEwNuhIy62Re4bz2QbIAA7OhNCB/p9JrzmqnQrlJWpH+kw0=
X-Received: by 10.159.48.137 with SMTP id j9mr8585105uab.102.1508686765736;
 Sun, 22 Oct 2017 08:39:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.139.193 with HTTP; Sun, 22 Oct 2017 08:39:25 -0700 (PDT)
In-Reply-To: <20171021210045.19234.54088@shiny-2.local>
References: <20171021210045.19234.54088@shiny-2.local>
From: Francesco Giordano <nhoyadx@gmail.com>
Date: Sun, 22 Oct 2017 17:39:25 +0200
Message-ID: <CAEYSrg5KVDczOd--oXQsjUt6s8Wo-h9oqDPFgNR=zDvhGcEbcg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nhoyadx@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045e368ebfc6ef055c24828f"

--f403045e368ebfc6ef055c24828f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2017-10-21 23:00 GMT+02:00 <kurt@seifried.org>:

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

--f403045e368ebfc6ef055c24828f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">2017-10-21 23:00 GMT+02:00  <span dir=3D"ltr">&lt;<a href=3D"=
mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span=
>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">This is a confirmation email sent from=
 CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" =
target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE=
 CVE Terms of Use (assuming you filled out the CVE form and want one, we ca=
n&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div>

--f403045e368ebfc6ef055c24828f--
