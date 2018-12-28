Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp4493123ocg;
        Mon, 29 Oct 2018 11:57:25 -0700 (PDT)
X-Received: by 2002:a2e:8945:: with SMTP id b5-v6mr2478369ljk.55.1540839445685;
        Mon, 29 Oct 2018 11:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540839445; cv=none;
        d=google.com; s=arc-20160816;
        b=it3WzhC0c1tWMdG786Yl1k0DkKaKVUauREVul3msyKLm41wgEiw6H5Iv5j3SIGWnAB
         XvqRqiPqYZD1OOUeTIzvz7VCOg6C6YFOg/pZQsB25B51ovqKz3N8ve/jNtPuCQlqaeNo
         ez1zgQtp55SHwsu+L+4RN/S+JU3iRDTdZ7O/YOc4NGaTLwsyjPsxvqo7JJ4mQO8hPcfo
         JwIce2tgj5n3FAnMhCbJfrRUl7xyBTUqzJBHPBaINcuZoRv05wwXwKSY6dCVW4LVMuOJ
         7BVU9IAow0/5K2hL+y+6Q9AApxav5uO9fJrCKN6495FpX+2N3LePpbFUevVeYztcrYdx
         /zOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=E18aHIaOE5YB7PGv3ukOItavIfwhv5sNTXl/nzuMAIE=;
        b=NckeQNTsblgvOxc9PMpPIFzOLrspW/K8pYOOv8QngyN57Y2P5TqfIwB4tG3jPmA4vG
         bS103QjA5buL6CxPyzRJ885hylljWOL8WOAB97rryB49PM/81GLdIzpJY5r5MFPkyL06
         e23AFMCsauuDzraQExdnRixpoxykXF5Q+QMSrDBraJnK8qFuItCQTIYrbSLS6unevpgB
         szf1SAgDU2lJglO3/ktVhrZDkix9vvZzEOpDjnNaeQ1h4RJIhemT9vJyIPrFZ/9iVYRY
         KAWgFyUVeZPqJju4xOk7BNg5vPFGiP56N7tkzo5s2xcou9IBgEJYeTCKp+g4sL6waK8w
         URNQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@lucapezzolla.com header.s=google header.b=WQHN8YIG;
       spf=pass (google.com: domain of me@lucapezzolla.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=me@lucapezzolla.com
Return-Path: <me@lucapezzolla.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id v18-v6sor2528890ljv.21.2018.10.29.11.57.25
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 29 Oct 2018 11:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of me@lucapezzolla.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@lucapezzolla.com header.s=google header.b=WQHN8YIG;
       spf=pass (google.com: domain of me@lucapezzolla.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=me@lucapezzolla.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lucapezzolla.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=E18aHIaOE5YB7PGv3ukOItavIfwhv5sNTXl/nzuMAIE=;
        b=WQHN8YIG1YG63sUNJziK3qJ8Uz1EexF5F5jKP1HBP3NjM437R23xr8c+zaaKPfg4lU
         lcZNYzhK/pUwIFzhkig6tr3q7ErAZjqTqScInGM2KQLtMfH8tlmrzVeVJgHtShEVEMQ5
         rWA0cVnAEWOvEF9gNmlNB6Z0ps+coMB0ETgxxLAv9mMUkKiVlzvyOkpKzPdIKXA2ja0w
         uEraWhGYT8lzyJVJ4Ikpqqfu7X0xFGn+jMpk/13lIZEcYV15ithbCcefpkqsr1GtKNP7
         H/0QX+piedKNe+9GdUZumjTm1t4v+s4TAJK0C1FoDseyJ7W6tCm8CLU98tG06tAY3FHb
         0ODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=E18aHIaOE5YB7PGv3ukOItavIfwhv5sNTXl/nzuMAIE=;
        b=Q6aPpJsYHwTz6cebd7bQwyw0vW46yf5BmpLAF+me+v8OLFZAv/EsmLR5nlKJjHcpGD
         ppQSbnvbnroy6ZDBAwrfyYgC+rQckjS38bEhoseTRt84fXDggMAIoa3VeJbVQA1JYDMg
         N4MgDebPXYq1HE6JgvivQ+roiyq8lIBSlMsAYzy+6SFZFoJuqu8+Aw7XE+QjVnPw+2EY
         rE6iKgEOF5DqsxWAUnj7tJNm5XzPfO9KnyQBLzalyfKIwd5UZDqiXjZqo0d/E6r9T7EA
         lo4aBAzHHnEOL5C6wZjggOlHhFsRmj8ae/x+qJA/Z0yd/bJ8DmVqOmHVHOwIgchyJK7D
         24cA==
X-Gm-Message-State: AGRZ1gKugrZ1KLMDcbq6GA3yPrLDAmHFQMrEdl2NDsi7b70ea65rfTHC
	u1KfBcPL/0VY/yEPuKjNm6P0SVq1gnHvvcwVjDIRvTti
X-Google-Smtp-Source: AJdET5eDRVKA74Yg3qYq+TiwZrbslrI9DzxM6ULXFv5eW2v3kDTM4x6TBGUiQQ7oSGFK/2qrpQj8TnUynq7Wqlsti7U=
X-Received: by 2002:a2e:3012:: with SMTP id w18-v6mr2998218ljw.75.1540839444425;
 Mon, 29 Oct 2018 11:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <20181029185132.13656.82560@bigbox.local>
In-Reply-To: <20181029185132.13656.82560@bigbox.local>
From: Luca Pezzolla <me@lucapezzolla.com>
Date: Mon, 29 Oct 2018 19:57:13 +0100
Message-ID: <CAEwwGw7_1dUUwcmwdeZGEpt8gHp4usT+S_VgM6x6Dx1rOY51KQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for me@lucapezzolla.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000bdc010057962a315"

--000000000000bdc010057962a315
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

Il giorno lun 29 ott 2018 alle ore 19:51 <kurt@seifried.org> ha scritto:

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

--000000000000bdc010057962a315
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">Il giorno lun 29 ott 2018 alle ore 19:51 &lt;<a href=3D"mailto:kurt@sei=
fried.org">kurt@seifried.org</a>&gt; ha scritto:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is a confirmation email sent from CVE request form at <a=
 href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use). <br>
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

--000000000000bdc010057962a315--
