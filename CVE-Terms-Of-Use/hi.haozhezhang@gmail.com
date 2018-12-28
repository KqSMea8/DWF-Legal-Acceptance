Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1116462ivl;
        Fri, 6 Apr 2018 11:47:44 -0700 (PDT)
X-Received: by 10.46.1.213 with SMTP id f82mr17393460lji.35.1523040463926;
        Fri, 06 Apr 2018 11:47:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523040463; cv=none;
        d=google.com; s=arc-20160816;
        b=zrRcOqaNB0DVChKHLKyXCYojvab5LBz50xqKtgUhsrF+iGwvwxWLHJj/wlyb4ux6J5
         p1DtOaiKMm5ASZvTNfh++G2Hh5JMUIhfFAMHswhUV9YsQFDMZWz2CWotlZGBxIlQvoLf
         NKYMOGUug6g314/EesENLG1fw08Fk8IINn7UfOOy+CAFtmNy69Pj5h2cMBpi11uLR+zH
         aRzvNqgG4XnRubqn7HQtGrKGw4qnSum4T/y12sMd48t/199nXTFm2I9Ie50bWamW5GTO
         XPVZ9H1yADOzl4fWVhNyxUaCaiAIdjW4dg2E89WJ+pMUwDuM5tOhrUzY5S/zSuVHARbu
         f3Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=1ZkQJMewy1+l43XtDp+HnJW3nLVmd5Ahpf8XrUtPpjU=;
        b=qDNRQq5IEPK2QAfBzXLxdCo7QxTLwRx10PZpAb7yHj5DPBGK5jvdP/k4U8hmk1yZ4k
         YAC+C7aYI/KkHFZURM5ImIqEIKMtATNyf7/+iVeTD4pAe9qqCmnfbHzJg1casRri9W7A
         +YMHR9GIg1PyBreGYJiup1M2xBOg4Jzgfljl44YcbbV+g18wcvMt9cML49WtXMo2IvI3
         ilIvic/ZMhzoCHRSbz6+uvTVcdimHaSKj/nA/6WjS+1Z9eHW73HuyMqoOF0A2LSRBAiU
         cV9gPtswSQOydC6pJlJZopMjpUiGx6Yejgfn+a4go3K78k96GvoPWWo1Dj/bixyjR5dm
         k/gQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRU1C2/e;
       spf=pass (google.com: domain of hi.haozhezhang@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=hi.haozhezhang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <hi.haozhezhang@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 63-v6sor2841351lfs.57.2018.04.06.11.47.43
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 06 Apr 2018 11:47:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of hi.haozhezhang@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRU1C2/e;
       spf=pass (google.com: domain of hi.haozhezhang@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=hi.haozhezhang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1ZkQJMewy1+l43XtDp+HnJW3nLVmd5Ahpf8XrUtPpjU=;
        b=eRU1C2/eQSJ9yacNJkGnf4buHMqJ0TbcgEKuDV25eWZLIyAus/0tuNDeptEXFZPoc1
         MZ9yG2MDIgqPyhl96kfHu3mVYK/yGPLM14uK+V6ItFf+YjBscxbiBZtt9b4SvwdEoiUZ
         l95sFMZFq9WfuCoV1Eszo16TLdW6IaPDVpAuImaJMAoWEDgo57LQd7X5C66JLu6YXsSm
         rzpfm5cA11lC64GHosO9TDobrB8S7cpZbBKEjthoJTg1LeQ5Xrz8dGELC9lGCSyMSyoL
         T5BYYrC0rIDA+v1xKlP9VZnVWO4c1mmmcwTsIyGM/EdtFv26erMNpBq+yb8gtk58zK8r
         Afrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1ZkQJMewy1+l43XtDp+HnJW3nLVmd5Ahpf8XrUtPpjU=;
        b=olXadUjo8ynpEuxywhw6nR86WnTsKWJ0zi/9jARY9QedZcawBjULugCfGvnmyYaPCJ
         BkL/y/qzGShbvL43t2rfTLrFTDukWQMaL/Y7NmZONSNg42GfyDLUxN8jMujxShA37XZG
         zocMFFROURWPoT1Eu1TNClZeEHXhqhdnAIkRc7cEXcDsS+jZhJC/nu7PuztsckPj/U3w
         monn8OOfvsDBtoVwX412CF0gNe8890DDBe/oA0xO63lYmUBJW3SsgYzfrUu2gIUUMWRA
         qcarOIfQ3sORp6HXOirVvSU+nNYClxvhspOcCRi1s8nJTpkYdI7268uCS5owaLQyRnMD
         dhPg==
X-Gm-Message-State: ALQs6tBTtGwEjlmM50Bez/dcSoAuyjqjJMJad9PiunyjmrLOtJu8w9jJ
	5+ezHfu+0LtNKMlfWkiHw7yqCyjp0mwIzD76tWY=
X-Google-Smtp-Source: AIpwx4+CJn5Mg/bAfWXwClBLV7l95NtjrMDQTpqh8HQEyILmWr93ySQ7qE94DZx457ZYCYWc7oaimOwwGy/lkxudhVc=
X-Received: by 2002:a19:a115:: with SMTP id k21-v6mr16619932lfe.127.1523040463127;
 Fri, 06 Apr 2018 11:47:43 -0700 (PDT)
MIME-Version: 1.0
References: <20180406183906.52767.35856@slab.local>
In-Reply-To: <20180406183906.52767.35856@slab.local>
From: Haozhe Zhang <hi.haozhezhang@gmail.com>
Date: Fri, 06 Apr 2018 18:47:32 +0000
Message-ID: <CAAsADiWPxHV6Bs02dafk3cUcpgagAsnHCtThWtNJicvbZbTefg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for hi.haozhezhang@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000c888e10569327d29"

--000000000000c888e10569327d29
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree

On Fri, Apr 6, 2018 at 11:39 AM <kurt@seifried.org> wrote:

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

--000000000000c888e10569327d29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I agree=C2=A0</div><br><div class=3D"gmail_quote"><d=
iv>On Fri, Apr 6, 2018 at 11:39 AM &lt;<a href=3D"mailto:kurt@seifried.org"=
>kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">T=
his is a confirmation email sent from CVE request form at <a href=3D"https:=
//iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.or=
g/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can&#39;t use the data until you accept =
the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--000000000000c888e10569327d29--
