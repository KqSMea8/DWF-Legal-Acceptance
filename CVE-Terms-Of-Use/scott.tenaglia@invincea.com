Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp626804vkh;
        Thu, 29 Sep 2016 18:48:54 -0700 (PDT)
X-Received: by 10.202.49.212 with SMTP id x203mr4520206oix.58.1475200134219;
        Thu, 29 Sep 2016 18:48:54 -0700 (PDT)
Return-Path: <scott.tenaglia@invincea.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by mx.google.com with ESMTPS id 98si11441364oti.263.2016.09.29.18.48.53
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 18:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of scott.tenaglia@invincea.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@invincea.com;
       spf=pass (google.com: domain of scott.tenaglia@invincea.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=scott.tenaglia@invincea.com
Received: by mail-qk0-x230.google.com with SMTP id n189so21695455qke.0
        for <kurt@seifried.org>; Thu, 29 Sep 2016 18:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=invincea.com; s=google;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :references:in-reply-to:to;
        bh=OepeJ9xAHsavjx+Zx0aDEnH5q7MTMgLViwOB0sNIPg4=;
        b=iVL9toDSpgcekJ5xRiBpKgb1zLRli5LyMHBCb2NWs9YnKkj+MsbZNr9+8mZyC5ad+Q
         vBDviU42ljqQtIqrSK3O8yQnCctnmyJdNqVfNhEFw6JRmTwvWDn3DVqqFq4XojTS3tDV
         GNtbzzVbCqi4Du6FiqOemFnSULLtoiR6Ry3kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:references:in-reply-to:to;
        bh=OepeJ9xAHsavjx+Zx0aDEnH5q7MTMgLViwOB0sNIPg4=;
        b=eK3IrAWw9VSE/3t8npKNqrWIUAE9cyLNRHlP5q6ZHg9DZ6fv7Bc2edCMsNGD2LSYa8
         Jxe4G+BP75k+7+y7HnxUTKe+NZVFFDfBOQJLzYddjNQWtoEM/5y+SJVaodOE0Z6HlVtJ
         lyxtlX+U6iIfe4CGgIX/ha3C8jNWyiHtmVKBIgZ6uzpKTv1KtZdVuDHKu+CBZLC41cUi
         /4LlWDP+SJQZuHBRFAeVmTk4P+RWuAhTpqFYoUpg8rgOTtZNSVGaplQXUzofYDVFP7Xj
         ld/ZM6NpKFDwwt4/wRyVXqwJIpUhbc9y6ZbS4Z+f/vZ7tUXU0Q/7K2o5Y0/Y4bry4091
         cRxw==
X-Gm-Message-State: AA6/9Rnsx3sH2/ppghJfSurqVoeOBF1yeYlMkbEtowlk9/obKW2z9mu2hEiW5Hp6acFNo1Fq
X-Received: by 10.55.220.193 with SMTP id v184mr4442431qki.303.1475200133421;
        Thu, 29 Sep 2016 18:48:53 -0700 (PDT)
Return-Path: <scott.tenaglia@invincea.com>
Received: from [10.146.171.78] (mobile-166-171-058-255.mycingular.net. [166.171.58.255])
        by smtp.gmail.com with ESMTPSA id b29sm8553781qkj.14.2016.09.29.18.48.52
        for <kurt@seifried.org>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 18:48:52 -0700 (PDT)
From: Scott <scott.tenaglia@invincea.com>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-A60D78F4-A193-4969-AE45-4C605497505D
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Message-Id: <5DB950E7-EEF8-4919-915A-F3CF53C2A8FB@invincea.com>
Date: Thu, 29 Sep 2016 21:48:51 -0400
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
To: Kurt Seifried <kurt@seifried.org>
X-Mailer: iPhone Mail (13G36)


--Apple-Mail-A60D78F4-A193-4969-AE45-4C605497505D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept

> On Sep 29, 2016, at 20:31, Kurt Seifried <kurt@seifried.org> wrote:
>=20
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for CV=
E, available at:
>=20
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> and quoted below, please reply with "I accept" and I'll be able to process=
 your CVE request. Thanks!
>=20
> Terms of Use
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
>=20
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org

--Apple-Mail-A60D78F4-A193-4969-AE45-4C605497505D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div>I accept</div><div><br>On S=
ep 29, 2016, at 20:31, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><d=
iv><div dir=3D"ltr">Hi, I need to confirm that you have accepted the MITRE T=
erms of Use for CVE, available at:<div><br></div><div><a href=3D"https://git=
hub.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md">ht=
tps://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfU=
se.md</a></div><div><br></div><div>and quoted below, please reply with "I ac=
cept" and I'll be able to process your CVE request. Thanks!</div><div><br></=
div><div><h1 style=3D"box-sizing:border-box;margin:0px 0px 16px;line-height:=
1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb=
(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;=
,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe=
 ui emoji&quot;,&quot;segoe ui symbol&quot;">Terms of Use</h1><h2 style=3D"b=
ox-sizing:border-box;margin-top:24px;margin-bottom:16px;line-height:1.25;pad=
ding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51,5=
1);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,=
helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoj=
i&quot;,&quot;segoe ui symbol&quot;"><a id=3D"gmail-user-content-license" cl=
ass=3D"gmail-anchor" href=3D"https://github.com/distributedweaknessfiling/DW=
F-Database/blob/master/TermsOfUse.md#license" style=3D"box-sizing:border-box=
;background-color:transparent;color:rgb(64,120,192);text-decoration:none;flo=
at:left;padding-right:4px;line-height:1"></a>LICENSE</h2><p style=3D"box-siz=
ing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-fa=
mily:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,=
arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&q=
uot;segoe ui symbol&quot;;font-size:16px">Submissions: For all materials you=
 submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), you hereby g=
rant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNA=
s) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocab=
le copyright license to reproduce, prepare derivative works of, publicly dis=
play, publicly perform, sublicense, and distribute such materials and deriva=
tive works. Unless required by applicable law or agreed to in writing, you p=
rovide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS O=
F ANY KIND, either express or implied, including, without limitation, any wa=
rranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNE=
SS FOR A PARTICULAR PURPOSE.</p><p style=3D"box-sizing:border-box;margin-top=
:0px;margin-bottom:16px;color:rgb(51,51,51);font-family:-apple-system,blinkm=
acsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;ap=
ple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;=
;font-size:16px">CVE Usage: MITRE hereby grants you a perpetual, worldwide, n=
on-exclusive, no-charge, royalty-free, irrevocable copyright license to repr=
oduce, prepare derivative works of, publicly display, publicly perform, subl=
icense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any=
 copy you make for such purposes is authorized provided that you reproduce M=
ITRE's copyright designation and this license in any such copy.</p><h2 style=
=3D"box-sizing:border-box;margin-top:24px;margin-bottom:16px;line-height:1.2=
5;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51=
,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,ro=
boto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui=
 emoji&quot;,&quot;segoe ui symbol&quot;"><a id=3D"gmail-user-content-discla=
imers" class=3D"gmail-anchor" href=3D"https://github.com/distributedweakness=
filing/DWF-Database/blob/master/TermsOfUse.md#disclaimers" style=3D"box-sizi=
ng:border-box;background-color:transparent;color:rgb(64,120,192);text-decora=
tion:none;float:left;padding-right:4px;line-height:1"></a>DISCLAIMERS</h2><p=
 style=3D"box-sizing:border-box;margin-top:0px;color:rgb(51,51,51);font-fami=
ly:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,ar=
ial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quo=
t;segoe ui symbol&quot;;font-size:16px;margin-bottom:0px">ALL DOCUMENTS AND T=
HE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS=
" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSO=
RED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGE=
NTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING B=
UT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL N=
OT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNE=
SS FOR A PARTICULAR PURPOSE.</p><div><br></div><div><br clear=3D"all"><div><=
br></div>-- <br><div class=3D"gmail_signature">Kurt Seifried<br><a href=3D"m=
ailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></div>
</div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-A60D78F4-A193-4969-AE45-4C605497505D--
