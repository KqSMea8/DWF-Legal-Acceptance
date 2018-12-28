Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp640590vkh;
        Thu, 29 Sep 2016 19:41:36 -0700 (PDT)
X-Received: by 10.176.68.167 with SMTP id n36mr3786146uan.164.1475203296917;
        Thu, 29 Sep 2016 19:41:36 -0700 (PDT)
Return-Path: <derek@thoughtbot.com>
Received: from mail-ua0-x234.google.com (mail-ua0-x234.google.com. [2607:f8b0:400c:c08::234])
        by mx.google.com with ESMTPS id m186si5479384vkh.81.2016.09.29.19.41.36
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 19:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of derek@thoughtbot.com designates 2607:f8b0:400c:c08::234 as permitted sender) client-ip=2607:f8b0:400c:c08::234;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@thoughtbot-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of derek@thoughtbot.com designates 2607:f8b0:400c:c08::234 as permitted sender) smtp.mailfrom=derek@thoughtbot.com
Received: by mail-ua0-x234.google.com with SMTP id n13so82804809uaa.3
        for <kurt@seifried.org>; Thu, 29 Sep 2016 19:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thoughtbot-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=AQnjobn7b53e2W3acMcK6JyZnmvF+hD1uRsDQvE9Kds=;
        b=byk9nsqJttkU0hNTfulu3uyiPVRa/ClEQcs0itTSvKXrgBWspP/8ZwBqN/wig7oNpd
         kBos6eCak5aTleyjMvWxmyxA+XzxKWVlX28vT+nkwOOMce19Nn0a+ZWCEJdhzisQei2x
         ZrwaQfLKbxGSA42iWP3mJ5/F2Ul3IYEKovNdUm6M0GvDY5r3AtUKjQKagQILg8gMfY3z
         RFpPneC3MvvmzGibfiFBbBctSKOOuXmlTcXmYYlFtqcO03LmqdCXJAgbqAJ8d2OneNMZ
         sXfwktH824MVlCLBeJyyjwUG6sVopV1AYzk1jAal48PFnLlIgN6zaPof57+4xLLTWUvd
         R9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=AQnjobn7b53e2W3acMcK6JyZnmvF+hD1uRsDQvE9Kds=;
        b=YKe1Q3Jp0T4QtfSaAzL+o+boEtKsb21zHw4leE+5Ax3Hf9QJvvN026WDzeatla/2Tc
         lSUtm4lSd9WeU163cc4grekHA/qjUgQa3CEPtJkeZ9wa6WykPPVmCDu1iRHiIqdqlf/H
         JaIvtS2bRWkD7dulpz/E9Ar0jzpCtLxovBxy3mar2RAP21oS+FvmAFHk2p26YEmbcaow
         FSnKtQHTKLaVlefhcpPskz9ZUh2Ey7Q2pEwZXvjrIKO2VAysmJzYh0/4Wo+mKNDfE/in
         lNYSkYOOPk1CL5rk/32Xh2AwhzHrkrKx8/9bkd0k1boPMv4amqql11GOqifXUFgM7dis
         gpyQ==
X-Gm-Message-State: AA6/9RnRj7OpTdAykER6RYiSyFdHyjqLPNrgYZHTvVkiRaXi5uqIALby4xJRIQEAQFifIex+cwJISi7a0rlv0hDQ
X-Received: by 10.159.48.194 with SMTP id k2mr3962215uab.2.1475203296335; Thu,
 29 Sep 2016 19:41:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.45.139 with HTTP; Thu, 29 Sep 2016 19:41:35 -0700 (PDT)
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Derek Prior <derek@thoughtbot.com>
Date: Thu, 29 Sep 2016 22:41:35 -0400
Message-ID: <CAPPEjHBjp6-NEsEahAoj0GnVguQ7T2qSwghPX_MYkw_6bJ__cQ@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=f403045e329c732c96053db088c1

--f403045e329c732c96053db088c1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thursday, September 29, 2016, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/
> TermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#license>
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
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#disclaimers>
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
>
>
> --
> Kurt Seifried
> kurt@seifried.org <javascript:_e(%7B%7D,'cvml','kurt@seifried.org');>
>

--f403045e329c732c96053db088c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept<br><br>On Thursday, September 29, 2016, Kurt Seifried &lt;<a href=
=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">Hi, I need to confirm that you have =
accepted the MITRE Terms of Use for CVE, available at:<div><br></div><div><=
a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/ma=
ster/TermsOfUse.md" target=3D"_blank">https://github.com/<wbr>distributedwe=
aknessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a></div><div=
><br></div><div>and quoted below, please reply with &quot;I accept&quot; an=
d I&#39;ll be able to process your CVE request. Thanks!</div><div><br></div=
><div><h1 style=3D"margin:0px 0px 16px;line-height:1.25;padding-bottom:0.3e=
m;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51,51);font-family:=
-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,aria=
l,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot=
;segoe ui symbol&quot;">Terms of Use</h1><h2 style=3D"margin-top:24px;margi=
n-bottom:16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid=
 rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsys=
temfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple =
color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;"><=
a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/ma=
ster/TermsOfUse.md#license" style=3D"background-color:transparent;color:rgb=
(64,120,192);text-decoration:none;float:left;padding-right:4px;line-height:=
1" target=3D"_blank"></a>LICENSE</h2><p style=3D"margin-top:0px;margin-bott=
om:16px;color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&q=
uot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoj=
i&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16=
px">Submissions: For all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITR=
E) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exc=
lusive, no-charge, royalty-free, irrevocable copyright license to reproduce=
, prepare derivative works of, publicly display, publicly perform, sublicen=
se, and distribute such materials and derivative works. Unless required by =
applicable law or agreed to in writing, you provide such materials on an &q=
uot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either=
 express or implied, including, without limitation, any warranties or condi=
tions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICU=
LAR PURPOSE.</p><p style=3D"margin-top:0px;margin-bottom:16px;color:rgb(51,=
51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,ro=
boto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe u=
i emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">CVE Usage: MITRE =
hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty=
-free, irrevocable copyright license to reproduce, prepare derivative works=
 of, publicly display, publicly perform, sublicense, and distribute Common =
Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make for such purpo=
ses is authorized provided that you reproduce MITRE&#39;s copyright designa=
tion and this license in any such copy.</p><h2 style=3D"margin-top:24px;mar=
gin-bottom:16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px sol=
id rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacs=
ystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;appl=
e color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;"=
><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/=
master/TermsOfUse.md#disclaimers" style=3D"background-color:transparent;col=
or:rgb(64,120,192);text-decoration:none;float:left;padding-right:4px;line-h=
eight:1" target=3D"_blank"></a>DISCLAIMERS</h2><p style=3D"margin-top:0px;c=
olor:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe=
 ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&=
quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px;margin=
-bottom:0px">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED B=
Y MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE=
 ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORP=
ORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM A=
LL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANT=
Y THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR A=
NY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOS=
E.</p><div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div>Kurt=
 Seifried<br><a href=3D"javascript:_e(%7B%7D,&#39;cvml&#39;,&#39;kurt@seifr=
ied.org&#39;);" target=3D"_blank">kurt@seifried.org</a></div>
</div></div></div>
</blockquote>

--f403045e329c732c96053db088c1--
