Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2356:0:0:0:0:0 with SMTP id k22csp4212957otd;
        Tue, 6 Nov 2018 08:49:37 -0800 (PST)
X-Google-Smtp-Source: AJdET5cc0NDLWkYT9o8qOEsEhEObGn2ejtJbD41Bn8uyqKJvuf2WYUb5INyRoD+pRUvHZvidJC5b
X-Received: by 2002:a37:5e86:: with SMTP id s128-v6mr25852033qkb.69.1541522977191;
        Tue, 06 Nov 2018 08:49:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541522977; cv=none;
        d=google.com; s=arc-20160816;
        b=ClMQMhGqZqej2xSCbwj0hcfGFMtjGUVA5t+VIaUblytPTgzlVAXzQ28MmJrG/LSPJj
         JdA9QLa33sapOAHvlb566nAaJYGZAkN+jgMeGeVdpislcvPWl4auboJU74ANDkV5HlnG
         G65eTB7hSzSkAFCr5GpoX7ml95C0P+SH2/pan8L6g64k0RBboh6xnPfPxVMG3iEDsIgT
         XBnXWchx0t0N9tkOp6cQwxlcXnvnyB35ixQNUmpi7r9gU3Gd9IVf8xcy6tbi6hSPcCdb
         S3jAYot2yjmEgghx2GsNDOni74w+zbyJjdcT7NWkt4p7Z65MdTW7svVPA8HZbF8qJpsT
         VsAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=zbNmHt3tOJ/bavJ7z+6OlfH5Kiyn4xq0JD5SnDZGhPU=;
        b=Z9sh8YDxoCRTruZ/gteqyJ1cFYbS1eb9XsU8naKNwY6Gw6EXBWljLD4mHdSBAuN9Dn
         FL/Fnr4xftCv8t8yJkHL+bfTOCH7/mBnZokny+iYDz/HTzcqEHNuadpTobayYTSLj4eH
         hXoGABg61r1v+aR2IOeOW/9pYMGvo3yl203uSYgACfThkyOIfifzy6c38Qym/KRTL2GC
         wej/zGX3Y9ejcGSqfg0oV1eHlGucz9bvYe5VwtgeimOf2gUJljBzf7Rq38mKhT9qAPXa
         yu0phfcU4OuZ919lM2Hf4OQYzWRlQmqaYZZuFpLG5n/74kSH3hOEbJ3LZ0XJhrrMprFr
         l37Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=qacyepdV;
       spf=pass (google.com: domain of pouyadarabi@yahoo.com designates 74.6.130.229 as permitted sender) smtp.mailfrom=pouyadarabi@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <pouyadarabi@yahoo.com>
Received: from sonic308-30.consmr.mail.bf2.yahoo.com (sonic308-30.consmr.mail.bf2.yahoo.com. [74.6.130.229])
        by mx.google.com with ESMTPS id w1si3630783qtj.360.2018.11.06.08.49.37
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 08:49:37 -0800 (PST)
Received-SPF: pass (google.com: domain of pouyadarabi@yahoo.com designates 74.6.130.229 as permitted sender) client-ip=74.6.130.229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=qacyepdV;
       spf=pass (google.com: domain of pouyadarabi@yahoo.com designates 74.6.130.229 as permitted sender) smtp.mailfrom=pouyadarabi@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1541522976; bh=zbNmHt3tOJ/bavJ7z+6OlfH5Kiyn4xq0JD5SnDZGhPU=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject; b=qacyepdVStxJXcWe7ec56bkYtfO3wZQ8jrQG/9k2ai0E5AnLarj8IoCPBJmh/CCKlgAr22KdCcIpZkUZYtltGQwLU1t1pSLvT2it/z+nXsTxBqzlgsbvuyGf6qg14svwA4zp5TBOSHA1Ors0xoZ3OaXdH+HRMg4mFyO/SiwVA/1DDSUkvHTGSS3iAQLXwRkoXUPUajcR58Lfg0R/nsZcbpklMJko5gkqXxJJw4mH45MHgcso1gFjyUjGLKWCk5BwMTCAUgsX5vVWHsD4qslSLlvCAPpgHaLxTNZXEx/rNldWTzMkae415LbzUfm2HhRUOOb7PBXE7osR8KE79hXLmg==
X-YMail-OSG: gv4_mg8VM1nQ9aMIZED8zqDdDz3gKkIwmiZ9T0OCX_LnAV7ivTGp16BUBhQiUlm
 8NO40GcOXZj5PmAT7yHxSPGGrvLs82os9.MSozFTDUbDUi3YkogLzfcJDi4aI06YOVGITs8mBXdc
 UWUu_grvUIkyjliJga6nBl4MY4dYQBbEMK2EnBCRTMWgoK.4YLJV.Pz.8tgWvtQKHfDAdc_UXC86
 sY2ESxbAfnc4fHgCQhPskXbTQTzS5B_6cOg.7VQuuHA_Y2bE28tbT1yUdFL_s0cpi.kKMdCuH8q7
 sjOC90gyJ_QS3XKYVHWVHEESKPZqhh3XZiqBWMjsfPMHEaq7qSMb8u3zVNtpulD.lM5QOBNzRxoK
 YV5UWOJ5a1HJPSPYQKU0a9NMH4RvPvL8UWovei5Gi5hNo17OULed.aOJ2.c7fPsi2fXNaF14GXPx
 fzQ9OGaH9e5DiY2wOMysu8PgqXZ_EG4ynTeDu.W1EWedkIOLomNixNlThvnVclhCWl36mKnjpHP4
 aiSR8KXEjWCaeMuyLK9AQFmqHAbV_AKexTbpmeNuQaZrDUPG0N9CvFs5W.pqLySLcQ3wG0ziUHbA
 _865dJj.Sr60nD9cSMctwhKlsR_pjJUKq4egX75KjcKf_oQ3enBs.mKm9yEc2V0e4ZCmrzTv2ONY
 1jfHq6jdU_6Xwned7ArVeRpwYh805Q0vlu5nt37dNZgraGT3gvomqnnHQG1dWOSFL9qRV9u7pwW4
 h89wJIihludGzS.NdieZe3xnpXaYfwMzVSeikLBmdE5PTzuQa6iCGbdMk6OOjXuksVWuG3FIV.Ff
 XtxZHKhznYblTPiuSN1Wvz32mKLLCNngTu5n5EeL1oCxwW3qh9wKmWppOoK56qleWAYIb4FChDzw
 KPVYIVHM6_xCAOrYtJ31haLJCTogdbI2aBKYoW1jNaK2nnh6lD72ie9TjXqCsCSwAmWIKFNBafG_
 wwcZ65GNTziVcObTZ3h9cyX9qkqozLFZkCGEvrLeK6.ij6SAEeWk.S4OVGWSbBcp64j8fODtbPfa
 58PT54NfgTgYs70n68dCqvkW26u671kqAP76l5fu8cc7ekPwMSxiKSjan09_S5N6GhQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Tue, 6 Nov 2018 16:49:36 +0000
Date: Tue, 6 Nov 2018 16:45:35 +0000 (UTC)
From: Pouya Darabi <pouyadarabi@yahoo.com>
To:  <kurt@seifried.org>
Message-ID: <853801865.1131620.1541522735478@mail.yahoo.com>
In-Reply-To: <20181106164158.7670.21565@bigbox.local>
References: <20181106164158.7670.21565@bigbox.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 pouyadarabi@yahoo.com
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_1131619_1530389095.1541522735476"
X-Mailer: WebService/1.1.12711 YMailNorrin Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36
Content-Length: 9048

------=_Part_1131619_1530389095.1541522735476
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I accept

    On Tuesday, November 6, 2018, 8:12:02 PM GMT+3:30, <kurt@seifried.org> =
wrote: =20
=20
 This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fille=
d out the CVE form and want one, we can't use the data until you accept the=
 MITRE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.=20

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required b=
y applicable law or agreed to in writing, you provide such materials on an =
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express=
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy =
you make for such purposes is authorized provided that you reproduce MITRE'=
s copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.=20

 =20
------=_Part_1131619_1530389095.1541522735476
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpca67337yahoo-style-wrap" style=3D=
"font-family: courier new, courier, monaco, monospace, sans-serif; font-siz=
e: 16px;"><div></div>
        <div><span><span style=3D"font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;">I accept</span></span><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_1959849822" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, November 6, 2018, 8:12:02 PM GMT+3:30,  &lt=
;kurt@seifried.org&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">This is a confirmation email sent fro=
m CVE request form at <a href=3D"https://iwantacve.org/ " target=3D"_blank"=
>https://iwantacve.org/ </a>asking you to accept the MITRE CVE Terms of Use=
 (assuming you filled out the CVE form and want one, we can't use the data =
until you accept the MITRE CVE Terms of Use). <br></div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr">Simply quote the email and reply with "I accept" a=
t the top if you agree to the MITRE CVE Terms of Use and we will add a copy=
 of the email to the DWF MITRE CVE Terms of Use acceptance data at <a href=
=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/=
master/Terms-Of-Use" target=3D"_blank">https://github.com/distributedweakne=
ssfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br></div><div di=
r=3D"ltr"><br></div><div dir=3D"ltr">The reason we use a complete copy of t=
he email is that it provides an artifact showing that the email address acc=
epted the Terms of Use, when they were accepted and so on. <br></div><div d=
ir=3D"ltr"><br></div><div dir=3D"ltr">If you did not submit a CVE request t=
o the DWF you can safely ignore this message, however we may resend it at s=
ome point in the future, if you don't want any future emails simply reply w=
ith "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add you=
r email address to the block list so we don't spam you with these, please n=
ote that this will prevent you from being able to accept the MITRE CVE Term=
s of Use via the DWF automatically in future (you'll have to manually ask).=
 But again, if you have no idea what a CVE is then you can ignore this/ask =
to be added to the block list with no problems. <br></div><div dir=3D"ltr">=
<br></div><div dir=3D"ltr">MITRE CVE Terms of Use<br></div><div dir=3D"ltr"=
><br></div><div dir=3D"ltr">LICENSE<br></div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">Submissions: For all materials you submit to the Common Vulne=
rabilities and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE C=
orporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, wo=
rldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright lice=
nse to reproduce, prepare derivative works of, publicly display, publicly p=
erform, sublicense, and distribute such materials and derivative works. Unl=
ess required by applicable law or agreed to in writing, you provide such ma=
terials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, =
either express or implied, including, without limitation, any warranties or=
 conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A P=
ARTICULAR PURPOSE.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">CVE=
 Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-c=
harge, royalty-free, irrevocable copyright license to reproduce, prepare de=
rivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy you=
 make for such purposes is authorized provided that you reproduce MITRE's c=
opyright designation and this license in any such copy.<br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">DISCLAIMERS<br></div><div dir=3D"ltr"><=
br></div><div dir=3D"ltr">ALL DOCUMENTS AND THE INFORMATION CONTAINED THERE=
IN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, =
THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE C=
ORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAI=
M ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARR=
ANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS O=
R ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PUR=
POSE.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">A copy is availa=
ble at <a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Ac=
ceptance/blob/master/Terms-Of-Use.md" target=3D"_blank">https://github.com/=
distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md<=
/a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">To contact the DWF=
 either hit reply, or email <a ymailto=3D"mailto:kurt@seifried.org" href=3D=
"mailto:kurt@seifried.org">kurt@seifried.org</a> manually with your questio=
n/concerns/etc. <br></div><div dir=3D"ltr"><br></div></div>
            </div>
        </div></body></html>
------=_Part_1131619_1530389095.1541522735476--
