Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp671204ivb;
        Thu, 23 Nov 2017 03:31:02 -0800 (PST)
X-Received: by 10.107.160.145 with SMTP id j139mr25377465ioe.236.1511436662367;
        Thu, 23 Nov 2017 03:31:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511436662; cv=none;
        d=google.com; s=arc-20160816;
        b=tiinzpGPg3fxlW0O15lLNqaycW8TArQwUaEv1csECUrgpOb/5QBYAal4HM800Xa+3I
         gxltTYukQ/cTH0Qgg7EgfeuCrNuGzZDOqy0dLkWMfXkOQzDoLB8IhANzmaq45MwmQO4T
         K2kc2t6kCojr/cwrqi1oy7IRHlrugU9ql5Cka04qpNbZhYlneUHI75eWl0woQpIDou13
         snkq7zFzi7HMo3eCNoWYgBhPdFWawagMM5UsVaFBWVqaTvXCwBXwhah3pIe+vDIGvYnx
         kWa8EOio58wRyBTm/SGArHrCyrcJZF7HoR8vWRpb8dhQUDHQHnfc58aF1H5u3ZlwyGzg
         ACrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=cB7Fas93h22T7QdsOpJJCxF1uNDqsaD4Tgd0pf3Pvs0=;
        b=E6MEg/Qlt0I5/pway4TV1xM3aQsBjV/ttuQ5Xa5IPrNF5hLNjzh39r9YPZCskg9ni5
         Jabz3cn5RmxxxwtoX9qEX9BsB5w44t3zcdLwzHTf1ZCWOcmfNAwxGs9spZ+wEmKKNMX1
         wTVlr/pu0tjqBVb+46isww+/ILeT3JOgix/OuUUVG7+3MfGi5E+0Mw+XKJrWQFLnMdti
         3r2eCcpGsLXf8hV7btIE7KrzF5P1BIUS2kSby1JaaM6CKgMZvU/FY2GJwk8S4PsWe7gL
         Rs6URTY/kIGdxwk9pQHCjnBOVu2blpnncCTHnoiDVwPQSHL+55VxKs72oENVysB6VPMl
         4I9g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xy9EqRJO;
       spf=pass (google.com: domain of becholey@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=becholey@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <becholey@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f75sor7612509ioe.156.2017.11.23.03.31.02
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 23 Nov 2017 03:31:02 -0800 (PST)
Received-SPF: pass (google.com: domain of becholey@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xy9EqRJO;
       spf=pass (google.com: domain of becholey@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=becholey@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cB7Fas93h22T7QdsOpJJCxF1uNDqsaD4Tgd0pf3Pvs0=;
        b=Xy9EqRJOuqnNQQu7D9SjtpoOSIbORv4UNbpcMe/Ps7t7nIRxnL2fl14OJRmESEoLfT
         aT9pWfObH9QHNjR3rZQDq9jH00yREXZ45QnHQDLVAkA1db9YPe5/Ho9O5nfHDG+gxS6s
         Up8NSbYqbSLcFnRSX8EdR3dMboIE4Hse4juEuXhU3dW9OpHSm3aP4Cb+loADiTAnUZX1
         3VFZhDqqFpmBlwjPHSm/9dQ4gCgQjcdPPWrr844XetPtLHy8sMNO1dOqiwoIRIlmO5Lk
         xBuopkQd0jvjuCFghPFhJGngOU9hSu6yxt4lds7GloHB1Jqk3BYpnFRa09UctU8jfnpF
         /1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cB7Fas93h22T7QdsOpJJCxF1uNDqsaD4Tgd0pf3Pvs0=;
        b=N+AVrPNkzJI57MbIf4DZwD9ZttKTKrf2zJtdi0yb/qgNi3WwCLKZEilUCBuIcm5+qx
         g1gkK7gX0pcdVZK6BN1DmGWCrIBg3EdUZ0U4OFZi/TjLcl545U3fz8CK5TLSfiHe1X6E
         UqorDTR13t6DX0tRvnhbawUbfZzyzGv64rX0/jUYqRQEgJqLw7JLe8uMMxyyQlQDInBv
         LjLIlRw38n9K8qqNFE4qQ+FkEEWYeMIRbyfnH6pTp/ajkbNnaIMO5x0k2FTiSSguvK3d
         BDvS0v3CLNbQG9aR7QAYbU+672UFUtjnOM2h7xXwtQBPZzuGkphTmkvvsWXokYCNhUZv
         uZNw==
X-Gm-Message-State: AJaThX7nenPpWHGOwywAPNweFAFCx/NQ7ddrbE37a/qveZyVQpqemla4
	2Jv5O37B3dAxuTGuqQITs8dvqNDwkXIJLUlCM+U=
X-Google-Smtp-Source: AGs4zMYQAs9ufEpxsC6S97/nPaiQufgJkAmzgaWZwFXI+Q7Pue27CGswP52txio4wVra6qYdgWpeLTeH4w8mrQDS/XI=
X-Received: by 10.107.46.92 with SMTP id i89mr15255277ioo.8.1511436661912;
 Thu, 23 Nov 2017 03:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20171118164129.64559.3892@slab.local>
In-Reply-To: <20171118164129.64559.3892@slab.local>
From: =?UTF-8?Q?Alexandre_B=C3=A9choley?= <becholey@gmail.com>
X-Goomoji-Body: true
Date: Thu, 23 Nov 2017 11:30:51 +0000
Message-ID: <CAJjb=46y8Z5Y4_d0=3aR+4GPnwoYNEj_8TvbFPGgnsaeTK9_Cw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for becholey@gmail.com
To: kurt@seifried.org
Content-Type: multipart/related; boundary="001a11358730557b1c055ea4c576"

--001a11358730557b1c055ea4c576
Content-Type: multipart/alternative; boundary="001a11358730557b1a055ea4c575"

--001a11358730557b1a055ea4c575
Content-Type: text/plain; charset="UTF-8"

I accept

On Sat, Nov 18, 2017 at 5:41 PM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
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
> and Exposures (CVE[?]), you hereby grant to The MITRE Corporation (MITRE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly perform,
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
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE[?]).
> Any copy you make for such purposes is authorized provided that you
> reproduce MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a11358730557b1a055ea4c575
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(33,33,33);font-size:13px">I accep=
t</span><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat, Nov 18,=
 2017 at 5:41 PM &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmat=
ion email sent from CVE request form at <a href=3D"https://iwantacve.org/" =
rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you =
to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form =
and want one, we can&#39;t use the data until you accept the MITRE CVE Term=
s of Use).<br>
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
 Exposures (CVE<img goomoji=3D"00ae" data-goomoji=3D"00ae" style=3D"margin:=
0 0.2ex;vertical-align:middle;max-height:24px" alt=3D"=C2=AE" src=3D"cid:00=
ae@goomoji.gmail">), you hereby grant to The MITRE Corporation (MITRE) and =
all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applica=
ble law or agreed to in writing, you provide such materials on an &quot;AS =
IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expres=
s or implied, including, without limitation, any warranties or conditions o=
f TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PUR=
POSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE<img goomoji=3D"00ae" da=
ta-goomoji=3D"00ae" style=3D"margin:0 0.2ex;vertical-align:middle;max-heigh=
t:24px" alt=3D"=C2=AE" src=3D"cid:00ae@goomoji.gmail">). Any copy you make =
for such purposes is authorized provided that you reproduce MITRE&#39;s cop=
yright designation and this license in any such copy.<br>
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

--001a11358730557b1a055ea4c575--
--001a11358730557b1c055ea4c576
Content-Type: image/png; name="emoji_u00ae.png"
Content-Transfer-Encoding: base64
X-Attachment-Id: 00ae@goomoji.gmail
Content-ID: <00ae@goomoji.gmail>

iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAD8UlEQVR4AdzYAWTUURzA8f92nc1W
Kyu1MmGLCZzUUNZMchXCYQHEwDRIN1aWLJtuSICLEAuRJKstS7ULFCGlq85dwtCyO93tpGp33a8v
wjN7957d242Oz4N7v/97v3Pv93/veZV+ep7PNyKAPkQxiwQWkPlnAQnMIoo+BNDorceHgWvRhn5M
YQ4FiKUC5jCFfrShthoTr0EHRpFEEYIScojjAaIYQfifEUTxAHHkUIKgiCRG0YGatZp8M8JIKYPn
EcN5dKEF9WWeUY8WdOE8YshDUEIKYTS7nvwBTGMJgixuIYimCp7bhCAmkIVgCdM44GLiPvTiEwQF
zCCIOoc/UB2CmEEBgk/ohW+1D/VjAGkI0hjG1jVcY1sxDHXMAfhXU2UGsAhBEiH4qlAofAghCcEi
BmBfpejcizQE79G9DqW6G+8hSKPXNrATKQiS6F6hz1FEMI6IhXFcwVkEsRM1lkkkIUih06ZUTilZ
hzSlcBqySj/wFsNotUgihDQEU2gu13kQBRRxEb4V+jTgCaRCf/ACPRZr4iKKKGBQ17EDKQhmNNXG
YQIAPuOYRXWagSCFjpU6jUKQLfNA9wkA77DXkMQxZCEYXf5lO5IQTKCuggR+YVGFnyhByrgOv+Fl
NwFBEu3ql/0oIY+gEreaBK6jGz2Kk7iEFERjHvsNYweRRwn96oQeQhDD5goTOGfYU72BaAwZxt6M
GAQP0eDRBDAHwQU1wGECavxp/NbE3obPEH8BgjkEPJo+FJBDVxUSaMdnTewzbDLEdyGHAvo8migE
cbRUIYHdSGhiY2gyxLcgDkHUo5mFYBL1VUjgCPKa2PuoM8TXYxKCWU/5NaKaGJeLeBvuQTTGLecQ
hSDh0SxAMOIogcvYgV2KVhzGHRQ1cd9x3HIOIxAseDQZCMKOEpjHO8QVH5E1vMweY4vlHMIQZBwk
4EQGJ9Rx7BOo4C/kyE8Maeu/4S9U0SJ2IIMhNJhH1i9i12XUxhIe4wQ2GIY0lFH3L7KveI1EmYqT
R8gwlOWLzP1W4hoasRuPIBov0WYaz7yVcL+Ziyh99+EjROMmNhqGNGzm3G+nI8v6n0K2zOHnrPmG
Qr+dNhxonCTgx1iZ9fAFR9UY+wPN2hwpI5o90CRE4xX2qDG2R0q1w5ijQ31EExfAB4jGLTRZHurH
3F6rmBNQ10NOE/cbg6i1vlap4GLrKey3xPbr4SuOW19saTKdNlwt+nEDeeSg+oYzhv/yNtzFInJQ
fcdV09Wii8vdHTiIQ1B1YpNFNdm+YjzQarjc/c+v1/9uME9wDOkppmE4yUf5NOtCWk+zjk5003mp
QQt8qcHoYg/Kl9tcB+KX9FhuAwALt+DN1OvMZwAAAABJRU5ErkJggg==
--001a11358730557b1c055ea4c576--
