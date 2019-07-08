/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/SyntaxHighlighter
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/SyntaxHighlighter/donate.html
 *
 * @version
 * 3.0.87 (November 12 2010)
 * 
 * @copyright
 * Copyright (C) 2004-2010 Alex Gorbatchev.
 *
 * @license
 * Dual licensed under the MIT and GPL licenses.
 */
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('K M;I(M)1R 2K("2d\'t 4g M 5f 2g 3m 5e 5d");(6(){6 r(e,f){I(!M.1S(e))1R 3n("3f 16 5c");K a=e.1r;e=M(e.1n,t(e)+(f||""));I(a)e.1r={1n:a.1n,1d:a.1d?a.1d.1c(0):N};H e}6 t(e){H(e.1I?"g":"")+(e.5g?"i":"")+(e.5h?"m":"")+(e.5l?"x":"")+(e.3l?"y":"")}6 B(e,f,a,b){K c=u.L,d,h,g;v=R;5k{O(;c--;){g=u[c];I(a&g.3o&&(!g.2N||g.2N.W(b))){g.2x.11=f;I((h=g.2x.X(e))&&h.P===f){d={3E:g.2f.W(b,h,a),1E:h};1P}}}}5j(i){1R i}5i{v=13}H d}6 p(e,f,a){I(3c.Y.1j)H e.1j(f,a);O(a=a||0;a<e.L;a++)I(e[a]===f)H a;H-1}M=6(e,f){K a=[],b=M.1G,c=0,d,h;I(M.1S(e)){I(f!==1b)1R 3n("2d\'t 5b 5a 53 52 51 16 4Y 4Z");H r(e)}I(v)1R 2K("2d\'t W 3m M 55 59 58 57 56");f=f||"";O(d={2I:13,1d:[],2z:6(g){H f.1j(g)>-1},3a:6(g){f+=g}};c<e.L;)I(h=B(e,c,b,d)){a.U(h.3E);c+=h.1E[0].L||1}Z I(h=n.X.W(z[b],e.1c(c))){a.U(h[0]);c+=h[0].L}Z{h=e.3b(c);I(h==="[")b=M.2k;Z I(h==="]")b=M.1G;a.U(h);c++}a=16(a.1L(""),n.Q.W(f,w,""));a.1r={1n:e,1d:d.2I?d.1d:N};H a};M.3v="1.5.0";M.2k=1;M.1G=2;K C=/\\$(?:(\\d\\d?|[$&`\'])|{([$\\w]+)})/g,w=/[^5m]+|([\\s\\S])(?=[\\s\\S]*\\1)/g,A=/^(?:[?*+]|{\\d+(?:,\\d*)?})\\??/,v=13,u=[],n={X:16.Y.X,1t:16.Y.1t,1E:1z.Y.1E,Q:1z.Y.Q,1f:1z.Y.1f},x=n.X.W(/()??/,"")[1]===1b,D=6(){K e=/^/g;n.1t.W(e,"");H!e.11}(),y=6(){K e=/x/g;n.Q.W("x",e,"");H!e.11}(),E=16.Y.3l!==1b,z={};z[M.2k]=/^(?:\\\\(?:[0-3][0-7]{0,2}|[4-7][0-7]?|x[\\26-2a-f]{2}|u[\\26-2a-f]{4}|c[A-3k-z]|[\\s\\S]))/;z[M.1G]=/^(?:\\\\(?:0(?:[0-3][0-7]{0,2}|[4-7][0-7]?)?|[1-9]\\d*|x[\\26-2a-f]{2}|u[\\26-2a-f]{4}|c[A-3k-z]|[\\s\\S])|\\(\\?[:=!]|[?*+]\\?|{\\d+(?:,\\d*)?}\\??)/;M.1i=6(e,f,a,b){u.U({2x:r(e,"g"+(E?"y":"")),2f:f,3o:a||M.1G,2N:b||N})};M.2B=6(e,f){K a=e+"/"+(f||"");H M.2B[a]||(M.2B[a]=M(e,f))};M.3i=6(e){H r(e,"g")};M.5B=6(e){H e.Q(/[-[\\]{}()*+?.,\\\\^$|#\\s]/g,"\\\\$&")};M.5F=6(e,f,a,b){f=r(f,"g"+(b&&E?"y":""));f.11=a=a||0;e=f.X(e);H b?e&&e.P===a?e:N:e};M.3r=6(){M.1i=6(){1R 2K("2d\'t 5J 1i 5I 3r")}};M.1S=6(e){H 5H.Y.1x.W(e)==="[2F 16]"};M.3q=6(e,f,a,b){O(K c=r(f,"g"),d=-1,h;h=c.X(e);){a.W(b,h,++d,e,c);c.11===h.P&&c.11++}I(f.1I)f.11=0};M.5A=6(e,f){H 6 a(b,c){K d=f[c].1K?f[c]:{1K:f[c]},h=r(d.1K,"g"),g=[],i;O(i=0;i<b.L;i++)M.3q(b[i],h,6(k){g.U(d.3p?k[d.3p]||"":k[0])});H c===f.L-1||!g.L?g:a(g,c+1)}([e],0)};16.Y.1B=6(e,f){H J.X(f[0])};16.Y.W=6(e,f){H J.X(f)};16.Y.X=6(e){I(e!=N)e+="";K f=n.X.1B(J,15),a;I(f){I(!x&&f.L>1&&p(f,"")>-1){a=16(J.1n,n.Q.W(t(J),"g",""));n.Q.W(e.1c(f.P),a,6(){O(K c=1;c<15.L-2;c++)I(15[c]===1b)f[c]=1b})}I(J.1r&&J.1r.1d)O(K b=1;b<f.L;b++)I(a=J.1r.1d[b-1])f[a]=f[b];!D&&J.1I&&!f[0].L&&J.11>f.P&&J.11--}H f};I(!D)16.Y.1t=6(e){(e=n.X.W(J,e))&&J.1I&&!e[0].L&&J.11>e.P&&J.11--;H!!e};1z.Y.1E=6(e){M.1S(e)||(e=16(e));I(e.1I){K f=n.1E.1B(J,15);e.11=0;H f}H e.X(J)};1z.Y.Q=6(e,f){K a=M.1S(e),b,c;I(a&&1g f.5z()==="3g"&&f.1j("${")===-1&&y)H n.Q.1B(J,15);I(a){I(e.1r)b=e.1r.1d}Z e+="";I(1g f==="6")c=n.Q.W(J,e,6(){I(b){15[0]=1k 1z(15[0]);O(K d=0;d<b.L;d++)I(b[d])15[0][b[d]]=15[d+1]}I(a&&e.1I)e.11=15[15.L-2]+15[0].L;H f.1B(N,15)});Z{c=J+"";c=n.Q.W(c,e,6(){K d=15;H n.Q.W(f,C,6(h,g,i){I(g)5r(g){2i"$":H"$";2i"&":H d[0];2i"`":H d[d.L-1].1c(0,d[d.L-2]);2i"\'":H d[d.L-1].1c(d[d.L-2]+d[0].L);5q:i="";g=+g;I(!g)H h;O(;g>d.L-3;){i=1z.Y.1c.W(g,-1)+i;g=1M.3j(g/10)}H(g?d[g]||"":"$")+i}Z{g=+i;I(g<=d.L-3)H d[g];g=b?p(b,i):-1;H g>-1?d[g+1]:h}})})}I(a&&e.1I)e.11=0;H c};1z.Y.1f=6(e,f){I(!M.1S(e))H n.1f.1B(J,15);K a=J+"",b=[],c=0,d,h;I(f===1b||+f<0)f=5o;Z{f=1M.3j(+f);I(!f)H[]}O(e=M.3i(e);d=e.X(a);){I(e.11>c){b.U(a.1c(c,d.P));d.L>1&&d.P<a.L&&3c.Y.U.1B(b,d.1c(1));h=d[0].L;c=e.11;I(b.L>=f)1P}e.11===d.P&&e.11++}I(c===a.L){I(!n.1t.W(e,"")||h)b.U("")}Z b.U(a.1c(c));H b.L>f?b.1c(0,f):b};M.1i(/\\(\\?#[^)]*\\)/,6(e){H n.1t.W(A,e.2J.1c(e.P+e[0].L))?"":"(?:)"});M.1i(/\\((?!\\?)/,6(){J.1d.U(N);H"("});M.1i(/\\(\\?<([$\\w]+)>/,6(e){J.1d.U(e[1]);J.2I=R;H"("});M.1i(/\\\\k<([\\w$]+)>/,6(e){K f=p(J.1d,e[1]);H f>-1?"\\\\"+(f+1)+(45(e.2J.3b(e.P+e[0].L))?"":"(?:)"):e[0]});M.1i(/\\[\\^?]/,6(e){H e[0]==="[]"?"\\\\b\\\\B":"[\\\\s\\\\S]"});M.1i(/^\\(\\?([5u]+)\\)/,6(e){J.3a(e[1]);H""});M.1i(/(?:\\s+|#.*)+/,6(e){H n.1t.W(A,e.2J.1c(e.P+e[0].L))?"":"(?:)"},M.1G,6(){H J.2z("x")});M.1i(/\\./,6(){H"[\\\\s\\\\S]"},M.1G,6(){H J.2z("s")})})();1g 24!="1b"&&(24.M=M);I(1g 1q=="1b")K 1q=6(){6 r(a,b){a.1l.1j(b)!=-1||(a.1l+=" "+b)}6 t(a){H a.1j("3d")==0?a:"3d"+a}6 B(a){H f.1X.2M[t(a)]}6 p(a,b,c){I(a==N)H N;K d=c!=R?a.3t:[a.2L],h={"#":"1h",".":"1l"}[b.1p(0,1)]||"3e",g,i;g=h!="3e"?b.1p(1):b.5v();I((a[h]||"").1j(g)!=-1)H a;O(a=0;d&&a<d.L&&i==N;a++)i=p(d[a],b,c);H i}6 C(a,b){K c={},d;O(d 2g a)c[d]=a[d];O(d 2g b)c[d]=b[d];H c}6 w(a,b,c,d){6 h(g){g=g||1Q.5L;I(!g.1J){g.1J=g.4u;g.3N=6(){J.4w=13}}c.W(d||1Q,g)}a.3h?a.3h("4z"+b,h):a.4y(b,h,13)}6 A(a,b){K c=f.1X.2t,d=N;I(c==N){c={};O(K h 2g f.1T){K g=f.1T[h];d=g.4A;I(d!=N){g.1Y=h.4p();O(g=0;g<d.L;g++)c[d[g]]=h}}f.1X.2t=c}d=f.1T[c[a]];d==N&&b!=13&&1Q.1U(f.14.1w.1U+(f.14.1w.39+a));H d}6 v(a,b){O(K c=a.1f("\\n"),d=0;d<c.L;d++)c[d]=b(c[d],d);H c.1L("\\n")}6 u(a,b){I(a==N||a.L==0||a=="\\n")H a;a=a.Q(/</g,"&1A;");a=a.Q(/ {2,}/g,6(c){O(K d="",h=0;h<c.L-1;h++)d+=f.14.1Z;H d+" "});I(b!=N)a=v(a,6(c){I(c.L==0)H"";K d="";c=c.Q(/^(&2r;| )+/,6(h){d=h;H""});I(c.L==0)H d;H d+\'<17 1e="\'+b+\'">\'+c+"</17>"});H a}6 n(a,b){a.1f("\\n");O(K c="",d=0;d<50;d++)c+="                    ";H a=v(a,6(h){I(h.1j("\\t")==-1)H h;O(K g=0;(g=h.1j("\\t"))!=-1;)h=h.1p(0,g)+c.1p(0,b-g%b)+h.1p(g+1,h.L);H h})}6 x(a){H a.Q(/^\\s+|\\s+$/g,"")}6 D(a,b){I(a.P<b.P)H-1;Z I(a.P>b.P)H 1;Z I(a.L<b.L)H-1;Z I(a.L>b.L)H 1;H 0}6 y(a,b){6 c(k){H k[0]}O(K d=N,h=[],g=b.2C?b.2C:c;(d=b.1K.X(a))!=N;){K i=g(d,b);I(1g i=="3g")i=[1k f.2G(i,d.P,b.22)];h=h.1O(i)}H h}6 E(a){K b=/(.*)((&1D;|&1A;).*)/;H a.Q(f.3A.3M,6(c){K d="",h=N;I(h=b.X(c)){c=h[1];d=h[2]}H\'<a 27="\'+c+\'">\'+c+"</a>"+d})}6 z(){O(K a=1C.30("1m"),b=[],c=0;c<a.L;c++)a[c].3f=="21"&&b.U(a[c]);H b}6 e(a){a=a.1J;K b=p(a,".21",R);a=p(a,".48",R);K c=1C.3V("3s");I(!(!a||!b||p(a,"3s"))){B(b.1h);r(b,"1n");O(K d=a.3t,h=[],g=0;g<d.L;g++)h.U(d[g].4B||d[g].4P);h=h.1L("\\r");c.3G(1C.4N(h));a.3G(c);c.2H();c.4R();w(c,"4S",6(){c.2L.4V(c);b.1l=b.1l.Q("1n","")})}}I(1g 3F!="1b"&&1g M=="1b")M=3F("M").M;K f={2O:{"1e-29":"","2h-1s":1,"2m-1s-2p":13,2b:N,1u:N,"4i-4k":R,"4j-1W":4,1v:R,18:R,"3T-17":R,2n:13,"44-43":R,2R:13,"1y-1m":13},14:{1Z:"&2r;",2q:R,4h:13,4d:13,36:"4T",1w:{23:"4M 1n",2S:"?",1U:"1q\\n\\n",39:"4F\'t 4D 1F O: ",4f:"4C 4G\'t 4H O 1y-1m 4K: ",31:\'<!4J 1y 4Q "-//4I//3H 4E 1.0 4L//4O" "20://2w.3L.3K/4W/3I/3H/3I-4m.4q"><1y 4o="20://2w.3L.3K/4x/4r"><3J><5M 20-4s="4t-5p" 5Y="2D/1y; 71=75-8" /><1u>6V 1q</1u></3J><3B 1N="28-6T:74,6G,6S,6A-6H;6J-2e:#6K;2e:#6L;28-1W:6M;2D-3D:3C;"><T 1N="2D-3D:3C;3w-37:1.6N;"><T 1N="28-1W:6Q-6P;">1q</T><T 1N="28-1W:.6I;3w-6B:6z;"><T>3v 3.0.6C (6D 12 3x)</T><T><a 27="20://3u.2l/1q" 1J="38" 1N="2e:#3y">20://3u.2l/1q</a></T><T>6E 17 6R 72.</T><T>73 6Z-3x 6Y 6U.</T></T><T>70 6X 6W J 1m, 76 <a 27="6x://2w.62.2l/61-60/5Z?63=64-68&67=66" 1N="2e:#3y">6y</a> 5X <2Q/>5Q 5P 5O!</T></T></3B></1y>\'}},1X:{2t:N,2M:{}},1T:{},3A:{5R:/\\/\\*[\\s\\S]*?\\*\\//2j,5S:/\\/\\/.*$/2j,5W:/#.*$/2j,5V:/"([^\\\\"\\n]|\\\\.)*"/g,5U:/\'([^\\\\\'\\n]|\\\\.)*\'/g,5T:1k M(\'"([^\\\\\\\\"]|\\\\\\\\.)*"\',"3z"),69:1k M("\'([^\\\\\\\\\']|\\\\\\\\.)*\'","3z"),6q:/(&1A;|<)!--[\\s\\S]*?--(&1D;|>)/2j,3M:/\\w+:\\/\\/[\\w-.\\/?%&=:@;]*/g,6n:{19:/(&1A;|<)\\?=?/g,1a:/\\?(&1D;|>)/g},6r:{19:/(&1A;|<)%=?/g,1a:/%(&1D;|>)/g},6s:{19:/(&1A;|<)\\s*1m.*?(&1D;|>)/2U,1a:/(&1A;|<)\\/\\s*1m\\s*(&1D;|>)/2U}},18:{1H:6(a){6 b(i,k){H f.18.2v(i,k,f.14.1w[k])}O(K c=\'<T 1e="18">\',d=f.18.2o,h=d.33,g=0;g<h.L;g++)c+=(d[h[g]].1H||b)(a,h[g]);c+="</T>";H c},2v:6(a,b,c){H\'<2W><a 27="#" 1e="6w 6v\'+b+" "+b+\'">\'+c+"</a></2W>"},2f:6(a){K b=a.1J,c=b.1l||"";b=B(p(b,".21",R).1h);K d=6(h){H(h=16(h+"6u(\\\\w+)").X(c))?h[1]:N}("6t");b&&d&&f.18.2o[d].2P(b);a.3N()},2o:{33:["23","2S"],23:{1H:6(a){I(a.V("2n")!=R)H"";K b=a.V("1u");H f.18.2v(a,"23",b?b:f.14.1w.23)},2P:6(a){a=1C.6l(t(a.1h));a.1l=a.1l.Q("3W","")}},2S:{2P:6(){K a="6e=0";a+=", 19="+(35.32-2X)/2+", 37="+(35.2Z-34)/2+", 32=2X, 2Z=34";a=a.Q(/^,/,"");a=1Q.6b("","38",a);a.2H();K b=a.1C;b.6f(f.14.1w.31);b.6g();a.2H()}}}},2Y:6(a,b){K c;I(b)c=[b];Z{c=1C.30(f.14.36);O(K d=[],h=0;h<c.L;h++)d.U(c[h]);c=d}c=c;d=[];I(f.14.2q)c=c.1O(z());I(c.L===0)H d;O(h=0;h<c.L;h++){O(K g=c[h],i=a,k=c[h].1l,j=3U 0,l={},m=1k M("^\\\\[(?<2V>(.*?))\\\\]$"),s=1k M("(?<29>[\\\\w-]+)\\\\s*:\\\\s*(?<1V>[\\\\w-%#]+|\\\\[.*?\\\\]|\\".*?\\"|\'.*?\')\\\\s*;?","g");(j=s.X(k))!=N;){K o=j.1V.Q(/^[\'"]|[\'"]$/g,"");I(o!=N&&m.1t(o)){o=m.X(o);o=o.2V.L>0?o.2V.1f(/\\s*,\\s*/):[]}l[j.29]=o}g={1J:g,1o:C(i,l)};g.1o.1F!=N&&d.U(g)}H d},2b:6(a,b){K c=J.2Y(a,b),d=N,h=f.14;I(c.L!==0)O(K g=0;g<c.L;g++){b=c[g];K i=b.1J,k=b.1o,j=k.1F,l;I(j!=N){I(k["1y-1m"]=="R"||f.2O["1y-1m"]==R){d=1k f.4l(j);j="4v"}Z I(d=A(j))d=1k d;Z 6h;l=i.3O;I(h.2q){l=l;K m=x(l),s=13;I(m.1j("<![6i[")==0){m=m.4e(9);s=R}K o=m.L;I(m.1j("]]\\>")==o-3){m=m.4e(0,o-3);s=R}l=s?m:l}I((i.1u||"")!="")k.1u=i.1u;k.1F=j;d.2y(k);b=d.2T(l);I((i.1h||"")!="")b.1h=i.1h;i.2L.6j(b,i)}}},6k:6(a){w(1Q,"4g",6(){f.2b(a)})}};f.2G=6(a,b,c){J.1V=a;J.P=b;J.L=a.L;J.22=c;J.1Y=N};f.2G.Y.1x=6(){H J.1V};f.4l=6(a){6 b(j,l){O(K m=0;m<j.L;m++)j[m].P+=l}K c=A(a),d,h=1k f.1T.6c,g=J,i="2T 1H 2y".1f(" ");I(c!=N){d=1k c;O(K k=0;k<i.L;k++)(6(){K j=i[k];g[j]=6(){H h[j].1B(h,15)}})();d.2c==N?1Q.1U(f.14.1w.1U+(f.14.1w.4f+a)):h.2A.U({1K:d.2c.17,2C:6(j){O(K l=j.17,m=[],s=d.2A,o=j.P+j.19.L,F=d.2c,q,G=0;G<s.L;G++){q=y(l,s[G]);b(q,o);m=m.1O(q)}I(F.19!=N&&j.19!=N){q=y(j.19,F.19);b(q,j.P);m=m.1O(q)}I(F.1a!=N&&j.1a!=N){q=y(j.1a,F.1a);b(q,j.P+j[0].6d(j.1a));m=m.1O(q)}O(j=0;j<m.L;j++)m[j].1Y=c.1Y;H m}})}};f.4b=6(){};f.4b.Y={V:6(a,b){K c=J.1o[a];c=c==N?b:c;K d={"R":R,"13":13}[c];H d==N?c:d},3R:6(a){H 1C.3V(a)},3Q:6(a,b){K c=[];I(a!=N)O(K d=0;d<a.L;d++)I(1g a[d]=="2F")c=c.1O(y(b,a[d]));H J.3X(c.6m(D))},3X:6(a){O(K b=0;b<a.L;b++)I(a[b]!==N)O(K c=a[b],d=c.P+c.L,h=b+1;h<a.L&&a[b]!==N;h++){K g=a[h];I(g!==N)I(g.P>d)1P;Z I(g.P==c.P&&g.L>c.L)a[b]=N;Z I(g.P>=c.P&&g.P<d)a[h]=N}H a},3P:6(a){K b=[],c=2u(J.V("2h-1s"));v(a,6(d,h){b.U(h+c)});H b},40:6(a){K b=J.V("2b",[]);I(1g b!="2F"&&b.U==N)b=[b];a:{a=a.1x();K c=3U 0;O(c=c=1M.6o(c||0,0);c<b.L;c++)I(b[c]==a){b=c;1P a}b=-1}H b!=-1},2s:6(a,b,c){a=["1s","6p"+b,"P"+a,"6a"+(b%2==0?1:2).1x()];J.40(b)&&a.U("5N");b==0&&a.U("1P");H\'<T 1e="\'+a.1L(" ")+\'">\'+c+"</T>"},49:6(a,b){K c="",d=a.1f("\\n").L,h=2u(J.V("2h-1s")),g=J.V("2m-1s-2p");I(g==R)g=(h+d-1).1x().L;Z I(45(g)==R)g=0;O(K i=0;i<d;i++){K k=b?b[i]:h+i,j;I(k==0)j=f.14.1Z;Z{j=g;O(K l=k.1x();l.L<j;)l="0"+l;j=l}a=j;c+=J.2s(i,k,a)}H c},41:6(a,b){a=x(a);K c=a.1f("\\n");J.V("2m-1s-2p");K d=2u(J.V("2h-1s"));a="";O(K h=J.V("1F"),g=0;g<c.L;g++){K i=c[g],k=/^(&2r;|\\s)+/.X(i),j=N,l=b?b[g]:d+g;I(k!=N){j=k[0].1x();i=i.1p(j.L);j=j.Q(" ",f.14.1Z)}i=x(i);I(i.L==0)i=f.14.1Z;a+=J.2s(g,l,(j!=N?\'<17 1e="\'+h+\' 65">\'+j+"</17>":"")+i)}H a},4a:6(a){H a?"<3Y>"+a+"</3Y>":""},46:6(a,b){6 c(l){H(l=l?l.1Y||g:g)?l+" ":""}O(K d=0,h="",g=J.V("1F",""),i=0;i<b.L;i++){K k=b[i],j;I(!(k===N||k.L===0)){j=c(k);h+=u(a.1p(d,k.P-d),j+"4c")+u(k.1V,j+k.22);d=k.P+k.L+(k.6F||0)}}h+=u(a.1p(d),c()+"4c");H h},1H:6(a){K b="",c=["21"],d;I(J.V("2R")==R)J.1o.18=J.1o.1v=13;1l="21";J.V("2n")==R&&c.U("3W");I((1v=J.V("1v"))==13)c.U("6O");c.U(J.V("1e-29"));c.U(J.V("1F"));a=a.Q(/^[ ]*[\\n]+|[\\n]*[ ]*$/g,"").Q(/\\r/g," ");b=J.V("4j-1W");I(J.V("4i-4k")==R)a=n(a,b);Z{O(K h="",g=0;g<b;g++)h+=" ";a=a.Q(/\\t/g,h)}a=a;a:{b=a=a;h=/<2Q\\s*\\/?>|&1A;2Q\\s*\\/?&1D;/2U;I(f.14.4h==R)b=b.Q(h,"\\n");I(f.14.4d==R)b=b.Q(h,"");b=b.1f("\\n");h=/^\\s*/;g=4n;O(K i=0;i<b.L&&g>0;i++){K k=b[i];I(x(k).L!=0){k=h.X(k);I(k==N){a=a;1P a}g=1M.4U(k[0].L,g)}}I(g>0)O(i=0;i<b.L;i++)b[i]=b[i].1p(g);a=b.1L("\\n")}I(1v)d=J.3P(a);b=J.3Q(J.2A,a);b=J.46(a,b);b=J.41(b,d);I(J.V("44-43"))b=E(b);1g 2E!="1b"&&2E.42&&2E.42.1E(/5w/)&&c.U("5x");H b=\'<T 1h="\'+t(J.1h)+\'" 1e="\'+c.1L(" ")+\'">\'+(J.V("18")?f.18.1H(J):"")+\'<3S 5y="0" 5t="0" 4X="0">\'+J.4a(J.V("1u"))+"<3Z><47>"+(1v?\'<25 1e="1v">\'+J.49(a)+"</25>":"")+\'<25 1e="17"><T 1e="48">\'+b+"</T></25></47></3Z></3S></T>"},2T:6(a){I(a===N)a="";J.17=a;K b=J.3R("T");b.3O=J.1H(a);J.V("18")&&w(p(b,".18"),"5s",f.18.2f);J.V("3T-17")&&w(p(b,".17"),"5K",e);H b},2y:6(a){J.1h=""+1M.5G(1M.5C()*5D).1x();f.1X.2M[t(J.1h)]=J;J.1o=C(f.2O,a||{});I(J.V("2R")==R)J.1o.18=J.1o.1v=13},5E:6(a){a=a.Q(/^\\s+|\\s+$/g,"").Q(/\\s+/g,"|");H"\\\\b(?:"+a+")\\\\b"},5n:6(a){J.2c={19:{1K:a.19,22:"1m"},1a:{1K:a.1a,22:"1m"},17:1k M("(?<19>"+a.19.1n+")(?<17>.*?)(?<1a>"+a.1a.1n+")","54")}}};H f}();1g 24!="1b"&&(24.1q=1q);',62,441,'||||||function|||||||||||||||||||||||||||||||||||||return|if|this|var|length|XRegExp|null|for|index|replace|true||div|push|getParam|call|exec|prototype|else||lastIndex||false|config|arguments|RegExp|code|toolbar|left|right|undefined|slice|captureNames|class|split|typeof|id|addToken|indexOf|new|className|script|source|params|substr|SyntaxHighlighter|_xregexp|line|test|title|gutter|strings|toString|html|String|lt|apply|document|gt|match|brush|OUTSIDE_CLASS|getHtml|global|target|regex|join|Math|style|concat|break|window|throw|isRegExp|brushes|alert|value|size|vars|brushName|space|http|syntaxhighlighter|css|expandSource|exports|td|dA|href|font|name|Fa|highlight|htmlScript|can|color|handler|in|first|case|gm|INSIDE_CLASS|com|pad|collapse|items|numbers|useScriptTags|nbsp|getLineHtml|discoveredBrushes|parseInt|getButtonHtml|www|pattern|init|hasFlag|regexList|cache|func|text|navigator|object|Match|focus|hasNamedCapture|input|Error|parentNode|highlighters|trigger|defaults|execute|br|light|help|getDiv|gi|values|span|500|findElements|height|getElementsByTagName|aboutDialog|width|list|250|screen|tagName|top|_blank|noBrush|setFlag|charAt|Array|highlighter_|nodeName|type|string|attachEvent|copyAsGlobal|floor|Za|sticky|the|TypeError|scope|backref|iterate|freezeTokens|textarea|childNodes|alexgorbatchev|version|margin|2010|005896|gs|regexLib|body|center|align|output|require|appendChild|DTD|xhtml1|head|org|w3|url|preventDefault|innerHTML|figureOutLineNumbers|findMatches|create|table|quick|void|createElement|collapsed|removeNestedMatches|caption|tbody|isLineHighlighted|getCodeLinesHtml|userAgent|links|auto|isNaN|getMatchesHtml|tr|container|getLineNumbersHtml|getTitleHtml|Highlighter|plain|stripBrs|substring|brushNotHtmlScript|load|bloggerMode|smart|tab|tabs|HtmlScript|transitional|1E3|xmlns|toLowerCase|dtd|xhtml|equiv|Content|srcElement|htmlscript|returnValue|1999|addEventListener|on|aliases|innerText|Brush|find|XHTML|Can|wasn|configured|W3C|DOCTYPE|option|Transitional|expand|createTextNode|EN|textContent|PUBLIC|select|blur|pre|min|removeChild|TR|cellspacing|from|another||one|constructing|when|sgi|constructor|functions|definition|token|within|flags|supply|expected|frame|same|twice|ignoreCase|multiline|finally|catch|try|extended|gimy|forHtmlScript|Infinity|Type|default|switch|click|cellpadding|imsx|toUpperCase|MSIE|ie|border|valueOf|matchChain|escape|random|1E6|getKeywords|execAt|round|Object|after|run|dblclick|event|meta|highlighted|active|development|keep|multiLineCComments|singleLineCComments|multiLineDoubleQuotedString|singleQuotedString|doubleQuotedString|singleLinePerlComments|to|content|webscr|bin|cgi|paypal|cmd|_s|spaces|2930402|hosted_button_id|xclick|multiLineSingleQuotedString|alt|open|Xml|lastIndexOf|scrollbars|write|close|continue|CDATA|replaceChild|all|getElementById|sort|phpScriptTags|max|number|xmlComments|aspScriptTags|scriptScriptTags|command|_|command_|toolbar_item|https|donate|3em|sans|bottom|87|November|JavaScript|offset|Arial|serif|75em|background|fff|000|1em|5em|nogutter|large|xx|syntax|Helvetica|family|Gorbatchev|About|like|you|Alex|2004|If|charset|highlighter|Copyright|Geneva|utf|please'.split('|'),0,{}));


/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/SyntaxHighlighter
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/SyntaxHighlighter/donate.html
 *
 * @version
 * 3.0.83 (July 02 2010)
 * 
 * @copyright
 * Copyright (C) 2004-2010 Alex Gorbatchev.
 *
 * @license
 * Dual licensed under the MIT and GPL licenses.
 */
(function()
{
	// CommonJS
	typeof(require) != 'undefined' ? SyntaxHighlighter = require('shCore').SyntaxHighlighter : null;

	function Brush()
	{
		function process(match, regexInfo)
		{
			var constructor = SyntaxHighlighter.Match,
				code = match[0],
				tag = new XRegExp('(&lt;|<)[\\s\\/\\?]*(?<name>[:\\w-\\.]+)', 'xg').exec(code),
				result = []
				;
		
			if (match.attributes != null) 
			{
				var attributes,
					regex = new XRegExp('(?<name> [\\w:\\-\\.]+)' +
										'\\s*=\\s*' +
										'(?<value> ".*?"|\'.*?\'|\\w+)',
										'xg');

				while ((attributes = regex.exec(code)) != null) 
				{
					result.push(new constructor(attributes.name, match.index + attributes.index, 'color1'));
					result.push(new constructor(attributes.value, match.index + attributes.index + attributes[0].indexOf(attributes.value), 'string'));
				}
			}

			if (tag != null)
				result.push(
					new constructor(tag.name, match.index + tag[0].indexOf(tag.name), 'keyword')
				);

			return result;
		}
	
		this.regexList = [
			{ regex: new XRegExp('(\\&lt;|<)\\!\\[[\\w\\s]*?\\[(.|\\s)*?\\]\\](\\&gt;|>)', 'gm'),			css: 'color2' },	// <![ ... [ ... ]]>
			{ regex: SyntaxHighlighter.regexLib.xmlComments,												css: 'comments' },	// <!-- ... -->
			{ regex: new XRegExp('(&lt;|<)[\\s\\/\\?]*(\\w+)(?<attributes>.*?)[\\s\\/\\?]*(&gt;|>)', 'sg'), func: process }
		];
	};

	Brush.prototype	= new SyntaxHighlighter.Highlighter();
	Brush.aliases	= ['xml', 'xhtml', 'xslt', 'html'];

	SyntaxHighlighter.brushes.Xml = Brush;

	// CommonJS
	typeof(exports) != 'undefined' ? exports.Brush = Brush : null;
})();

/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/SyntaxHighlighter
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/SyntaxHighlighter/donate.html
 *
 * @version
 * 3.0.83 (July 02 2010)
 * 
 * @copyright
 * Copyright (C) 2004-2010 Alex Gorbatchev.
 *
 * @license
 * Dual licensed under the MIT and GPL licenses.
 */
(function()
{
	// CommonJS
	typeof(require) != 'undefined' ? SyntaxHighlighter = require('shCore').SyntaxHighlighter : null;

	function Brush()
	{
		function getKeywordsCSS(str)
		{
			return '\\b([a-z_]|)' + str.replace(/ /g, '(?=:)\\b|\\b([a-z_\\*]|\\*|)') + '(?=:)\\b';
		};
	
		function getValuesCSS(str)
		{
			return '\\b' + str.replace(/ /g, '(?!-)(?!:)\\b|\\b()') + '\:\\b';
		};

		var keywords =	'ascent azimuth background-attachment background-color background-image background-position ' +
						'background-repeat background baseline bbox border-collapse border-color border-spacing border-style border-top ' +
						'border-right border-bottom border-left border-top-color border-right-color border-bottom-color border-left-color ' +
						'border-top-style border-right-style border-bottom-style border-left-style border-top-width border-right-width ' +
						'border-bottom-width border-left-width border-width border bottom cap-height caption-side centerline clear clip color ' +
						'content counter-increment counter-reset cue-after cue-before cue cursor definition-src descent direction display ' +
						'elevation empty-cells float font-size-adjust font-family font-size font-stretch font-style font-variant font-weight font ' +
						'height left letter-spacing line-height list-style-image list-style-position list-style-type list-style margin-top ' +
						'margin-right margin-bottom margin-left margin marker-offset marks mathline max-height max-width min-height min-width orphans ' +
						'outline-color outline-style outline-width outline overflow padding-top padding-right padding-bottom padding-left padding page ' +
						'page-break-after page-break-before page-break-inside pause pause-after pause-before pitch pitch-range play-during position ' +
						'quotes right richness size slope src speak-header speak-numeral speak-punctuation speak speech-rate stemh stemv stress ' +
						'table-layout text-align top text-decoration text-indent text-shadow text-transform unicode-bidi unicode-range units-per-em ' +
						'vertical-align visibility voice-family volume white-space widows width widths word-spacing x-height z-index';

		var values =	'above absolute all always aqua armenian attr aural auto avoid baseline behind below bidi-override black blink block blue bold bolder '+
						'both bottom braille capitalize caption center center-left center-right circle close-quote code collapse compact condensed '+
						'continuous counter counters crop cross crosshair cursive dashed decimal decimal-leading-zero default digits disc dotted double '+
						'embed embossed e-resize expanded extra-condensed extra-expanded fantasy far-left far-right fast faster fixed format fuchsia '+
						'gray green groove handheld hebrew help hidden hide high higher icon inline-table inline inset inside invert italic '+
						'justify landscape large larger left-side left leftwards level lighter lime line-through list-item local loud lower-alpha '+
						'lowercase lower-greek lower-latin lower-roman lower low ltr marker maroon medium message-box middle mix move narrower '+
						'navy ne-resize no-close-quote none no-open-quote no-repeat normal nowrap n-resize nw-resize oblique olive once open-quote outset '+
						'outside overline pointer portrait pre print projection purple red relative repeat repeat-x repeat-y rgb ridge right right-side '+
						'rightwards rtl run-in screen scroll semi-condensed semi-expanded separate se-resize show silent silver slower slow '+
						'small small-caps small-caption smaller soft solid speech spell-out square s-resize static status-bar sub super sw-resize '+
						'table-caption table-cell table-column table-column-group table-footer-group table-header-group table-row table-row-group teal '+
						'text-bottom text-top thick thin top transparent tty tv ultra-condensed ultra-expanded underline upper-alpha uppercase upper-latin '+
						'upper-roman url visible wait white wider w-resize x-fast x-high x-large x-loud x-low x-slow x-small x-soft xx-large xx-small yellow';

		var fonts =		'[mM]onospace [tT]ahoma [vV]erdana [aA]rial [hH]elvetica [sS]ans-serif [sS]erif [cC]ourier mono sans serif';
	
		this.regexList = [
			{ regex: SyntaxHighlighter.regexLib.multiLineCComments,		css: 'comments' },	// multiline comments
			{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,		css: 'string' },	// double quoted strings
			{ regex: SyntaxHighlighter.regexLib.singleQuotedString,		css: 'string' },	// single quoted strings
			{ regex: /\#[a-fA-F0-9]{3,6}/g,								css: 'value' },		// html colors
			{ regex: /(-?\d+)(\.\d+)?(px|em|pt|\:|\%|)/g,				css: 'value' },		// sizes
			{ regex: /!important/g,										css: 'color3' },	// !important
			{ regex: new RegExp(getKeywordsCSS(keywords), 'gm'),		css: 'keyword' },	// keywords
			{ regex: new RegExp(getValuesCSS(values), 'g'),				css: 'value' },		// values
			{ regex: new RegExp(this.getKeywords(fonts), 'g'),			css: 'color1' }		// fonts
			];

		this.forHtmlScript({ 
			left: /(&lt;|<)\s*style.*?(&gt;|>)/gi, 
			right: /(&lt;|<)\/\s*style\s*(&gt;|>)/gi 
			});
	};

	Brush.prototype	= new SyntaxHighlighter.Highlighter();
	Brush.aliases	= ['css'];

	SyntaxHighlighter.brushes.CSS = Brush;

	// CommonJS
	typeof(exports) != 'undefined' ? exports.Brush = Brush : null;
})();


/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/SyntaxHighlighter
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/SyntaxHighlighter/donate.html
 *
 * @version
 * 3.0.83 (July 02 2010)
 * 
 * @copyright
 * Copyright (C) 2004-2010 Alex Gorbatchev.
 *
 * @license
 * Dual licensed under the MIT and GPL licenses.
 */
(function()
{
	// CommonJS
	typeof(require) != 'undefined' ? SyntaxHighlighter = require('shCore').SyntaxHighlighter : null;

	function Brush()
	{
		var keywords =	'break case catch continue ' +
						'default delete do else false  ' +
						'for function if in instanceof ' +
						'new null return super switch ' +
						'this throw true try typeof var while with';

		var r = SyntaxHighlighter.regexLib;
		
		this.regexList = [
			{ regex: r.multiLineDoubleQuotedString,					css: 'string' },			// double quoted strings
			{ regex: r.multiLineSingleQuotedString,					css: 'string' },			// single quoted strings
			{ regex: r.singleLineCComments,							css: 'comments' },			// one line comments
			{ regex: r.multiLineCComments,							css: 'comments' },			// multiline comments
			{ regex: /\s*#.*/gm,									css: 'preprocessor' },		// preprocessor tags like #region and #endregion
			{ regex: new RegExp(this.getKeywords(keywords), 'gm'),	css: 'keyword' }			// keywords
			];
	
		this.forHtmlScript(r.scriptScriptTags);
	};

	Brush.prototype	= new SyntaxHighlighter.Highlighter();
	Brush.aliases	= ['js', 'jscript', 'javascript'];

	SyntaxHighlighter.brushes.JScript = Brush;

	// CommonJS
	typeof(exports) != 'undefined' ? exports.Brush = Brush : null;
})();


SyntaxHighlighter.all();