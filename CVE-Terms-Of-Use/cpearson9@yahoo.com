Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp859914ocg;
        Fri, 12 Oct 2018 08:40:43 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61Un4Ec1XV63aXpSJxy3+37A/jcDG50NV1k+5ri98vLN0zSZGu8selEgY3vyw3/uKSrCuI3
X-Received: by 2002:a24:3795:: with SMTP id r143-v6mr5250174itr.43.1539358843622;
        Fri, 12 Oct 2018 08:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539358843; cv=none;
        d=google.com; s=arc-20160816;
        b=CKXyOMN2xuCQUi/EFwBKCzwMdo/tuOkhzq4n2mdmAsjObAccMSJHOPIg4pwIm46Liy
         TZ/wsfQJqJ07aiL8VWXmuZB2/3vuBuivYe+TS8aDVx8dJBzmGkHHaRg8w0wc3Oz0PJBi
         tHfvHMa4NW4z9AbdA1rl0t/dktpDgpFAVHbHAY7TP09E2/S9/LiQTH9ytjFaLwwsqW4Z
         xBUu+G8UJkUu2ekvFodu/YV7MdcFPhY31JrvDhgjEOPfulochwQ/7j9mTKfcW0hItSfn
         iM697c0t3Fi0B/lXuDbvAa5JrbeiTgMd6VETtkQ0+npe8zEDXSyFri9DXzVTq96A6wrl
         vqcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:reply-to
         :from:date:dkim-signature;
        bh=0DfI1IKB2epcQWX1Imz8CGwHDWAViK3gWCanndBLz24=;
        b=ZFdQ/9YWxDNg+tTyKY5iKSTkVmMumfASjT4383+In1nGT0lHwKiQGEloavaaFh6wW0
         TqeHGx7TIGEk3mLCtZUziRAirTMpqlCeTAGHnTciK14FhJKuegkPVlpuK/wEqnEm99IV
         +etz/eU3N/UMxboUuqRmvEYzDvUAYlLcKnhYcP1VOD6uUxs69FVrf3RHuCLAF5riGR4n
         4sMgKyBgJ7d4R64C69N1bwJNRNMjzvwrfKUREftM/L7B3OOq3vZa+5H6fw9OUgWE2ocZ
         RuP4dGBD5dSWNxsildZyqIEZqSKLbNIpSKqmSxQOYU6dPzbL1rTB4vpqauzM03cSL17y
         86KQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=gap0aMq2;
       spf=pass (google.com: domain of cpearson9@yahoo.com designates 66.163.190.34 as permitted sender) smtp.mailfrom=cpearson9@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <cpearson9@yahoo.com>
Received: from sonic307-11.consmr.mail.ne1.yahoo.com (sonic307-11.consmr.mail.ne1.yahoo.com. [66.163.190.34])
        by mx.google.com with ESMTPS id o187-v6si1337723ite.34.2018.10.12.08.40.43
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Oct 2018 08:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cpearson9@yahoo.com designates 66.163.190.34 as permitted sender) client-ip=66.163.190.34;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=gap0aMq2;
       spf=pass (google.com: domain of cpearson9@yahoo.com designates 66.163.190.34 as permitted sender) smtp.mailfrom=cpearson9@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1539358842; bh=0DfI1IKB2epcQWX1Imz8CGwHDWAViK3gWCanndBLz24=; h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject; b=gap0aMq2sq3tCnTFf0gO71bijgAFfLBgPeNfUqo69boH41rDIbzgh6spVCJ9kKyRtNE5z1i9FLacDbMG3f4gq+TKbYhT6KRUTDg8/gx1RTGWDikj+Rx1uumcP/npdLpgJZl0OIpSH4HCSDXwI6Rm6/3O/wtIv/R5pHFHQ95xX0QNggT5nM2repKndzrp4VPLGTDjbD5+RXWswuVSnlmYLBZLACh/1iHkGMXXwygP0i0sinUbmypWyeOhkneCTF5JzSeiIBe+AwqBZiqpVErloVOFtMTPgt+tkNc7dFLD75qDdV/U5iYxo2V49D2lpoEdQCU3kFe5FYDeOSx/tiUwWw==
X-YMail-OSG: ind73XMVM1lFzUtqGUSM42uzth218wp4n1qQkLt3DC1N.9qVfHHv1PrYqcU4bQP
 w8X7tGPoi72vcha8AtdFTj_e4ZZxcAXXOUrPmMKecB6tx63uJ.cYqshwUZwxefstO4A6SkdPRjFW
 wDqt3KQtdSafB97tO6Wk2vjVMwB5Af4ESQW1oCc7YZgyNkvy3m8DVkzaFBGj3nv0sVWqVfh5giQ7
 p4EsEVKgaXAyxNodRyVK6Etml6p5aVFdniRg5634cVPYmz0meKuywpFToO.eGRYLKZ4Ux94bUlwn
 .o1jWx98Q3GBmKM2GHxfhKPfB812C6Hx4cLCay8gMP.L.Bzcp1Z_IVfXXihJEa6h1hLr.n2ZhNth
 Ji_3MX8JrrOJ4u3i2_pvK1VKTyhsSh5zaURSnW24WsgHT.qrL.yt2NsQzisa1uPUOvEIQ1kH7njb
 StdkTqPMCPbpB2zjVXUDKGGTcwb9Uypqm5nlEi9hyUiDHL4sVCPcgy11o6NclcA0x1NbVLV1knba
 poo_iP1fspI2ECotWbvyV8ArvX2wZiAMKiWQwQtMnIUiTu.RL92AYrweO8r3Tz2YRemOvxSzYMJn
 sqgh2yibeyJr_lWZkm1pnaQVdy36BPjORehbCImIG9KwHtBEpDTw8AfgH_Rb.Duph24GPRe0fc4b
 uwYBxfGdcgNJPzxL0AX1pyrfrSuEyc5xGymRq4dSST6gzsrm8fvN3MfP_QhuSvhIa8zlcfLXIwcJ
 0J1kkZnJ5E5KNBpM.eHbwSDftTa8JtiUMFryLo9Aa1RnQ8EiL7MXJ0I1xA2xkIoWBYxQFpBA_6Zc
 3gIzT_r37yu97kMzK9xBy94CEePhiAfqNTkfd6Gi1TClEe5VW_7jP0mq7r53uPDJiOo2iJKCtFDt
 iFitC9nmJWH1Ph16_OjA.hfHXOgK9MXtbuvNgjqFjSpa7N_yv_Wj2f__ghojgi_MBnsX9tc8PZQT
 9FaDcFrQtJwd6Df9HggNQamJn6qcW4Kvcer4lPVsdSzejvl2PE_YO6NDBM8kPa8wiDxrNvj8GHGd
 7GbJdsNyGUhBwcrlDwamJkE5VS7gNsrXyAEW3
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Oct 2018 15:40:42 +0000
Date: Fri, 12 Oct 2018 15:40:37 +0000 (UTC)
From: Carl Pearson <cpearson9@yahoo.com>
Reply-To: "cpearson9@yahoo.com" <cpearson9@yahoo.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Message-ID: <651494776.202698.1539358837263@mail.yahoo.com>
In-Reply-To: <20181012153445.7847.61588@bigbox.local>
References: <20181012153445.7847.61588@bigbox.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cpearson9@yahoo.com
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_202697_488994149.1539358837261"
X-Mailer: WebService/1.1.12605 YahooMailAndroidMobile YMobile/1.0 (com.yahoo.mobile.client.android.mail/5.32.1; Android/8.0.0; 34.4.A.2.118; F5121; Sony; F5121; 4.67; 1776x1080;)
Content-Length: 8655

------=_Part_202697_488994149.1539358837261
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

=20
=20
  On Fri, Oct 12, 2018 at 8:34, kurt@seifried.org<kurt@seifried.org> wrote:=
   This is a confirmation email sent from CVE request form at https://iwant=
acve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fil=
led out the CVE form and want one, we can't use the data until you accept t=
he MITRE CVE Terms of Use).=20

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

------=_Part_202697_488994149.1539358837261
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept<br id=3D"yMail_cursorElementTracker_1539358823015"><br><div id=3D"=
ymail_android_signature"></div> <br> <blockquote style=3D"margin: 0 0 20px =
0;"> <div style=3D"font-family:Roboto, sans-serif; color:#6D00F6;"> <div>On=
 Fri, Oct 12, 2018 at 8:34, kurt@seifried.org</div><div>&lt;kurt@seifried.o=
rg&gt; wrote:</div> </div> <div style=3D"padding: 10px 0 0 20px; margin: 10=
px 0 0 0; border-left: 1px solid #6D00F6;"> <div dir=3D"ltr">This is a conf=
irmation email sent from CVE request form at <a href=3D"https://iwantacve.o=
rg/ " target=3D"_blank">https://iwantacve.org/ </a>asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can't use the data until you accept the MITRE CVE Terms of Use). <br></=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Simply quote the email and =
reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use=
 and we will add a copy of the email to the DWF MITRE CVE Terms of Use acce=
ptance data at <a href=3D"https://github.com/distributedweaknessfiling/DWF-=
Legal-Acceptance/tree/master/Terms-Of-Use" target=3D"_blank">https://github=
.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Us=
e</a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">The reason we us=
e a complete copy of the email is that it provides an artifact showing that=
 the email address accepted the Terms of Use, when they were accepted and s=
o on. <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">If you did not =
submit a CVE request to the DWF you can safely ignore this message, however=
 we may resend it at some point in the future, if you don't want any future=
 emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER A=
GAIN" and I'll add your email address to the block list so we don't spam yo=
u with these, please note that this will prevent you from being able to acc=
ept the MITRE CVE Terms of Use via the DWF automatically in future (you'll =
have to manually ask). But again, if you have no idea what a CVE is then yo=
u can ignore this/ask to be added to the block list with no problems. <br><=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">MITRE CVE Terms of Use<br>=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">LICENSE<br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">Submissions: For all materials you subm=
it to the Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE), you hereb=
y grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities =
(CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irre=
vocable copyright license to reproduce, prepare derivative works of, public=
ly display, publicly perform, sublicense, and distribute such materials and=
 derivative works. Unless required by applicable law or agreed to in writin=
g, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CO=
NDITIONS OF ANY KIND, either express or implied, including, without limitat=
ion, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILI=
TY, or FITNESS FOR A PARTICULAR PURPOSE.<br></div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">CVE Usage: MITRE hereby grants you a perpetual, worldwid=
e, non-exclusive, no-charge, royalty-free, irrevocable copyright license to=
 reproduce, prepare derivative works of, publicly display, publicly perform=
, sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C3=
=82=C2=AE). Any copy you make for such purposes is authorized provided that=
 you reproduce MITRE's copyright designation and this license in any such c=
opy.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">DISCLAIMERS<br></=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">ALL DOCUMENTS AND THE INFOR=
MATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS=
 AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY=
 (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, =
AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT N=
OT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT=
 INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNES=
S FOR A PARTICULAR PURPOSE.<br></div><div dir=3D"ltr"><br></div><div dir=3D=
"ltr">A copy is available at <a href=3D"https://github.com/distributedweakn=
essfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" target=3D"_blan=
k">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/m=
aster/Terms-Of-Use.md</a><br></div><div dir=3D"ltr"><br></div><div dir=3D"l=
tr">To contact the DWF either hit reply, or email <a ymailto=3D"mailto:kurt=
@seifried.org" href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a> manu=
ally with your question/concerns/etc. <br></div><div dir=3D"ltr"><br></div>=
 </div> </blockquote>
------=_Part_202697_488994149.1539358837261--
