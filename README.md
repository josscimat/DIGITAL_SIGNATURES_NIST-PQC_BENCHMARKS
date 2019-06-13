# DIGITAL_SIGNATURES_NIST-PQC_BENCHMARKS

This repository contains the benchmarks of the NIST's Post Quantum Crypto Contest of Digital Signatures in Process of Standardization (CRYSTALS-DILITHIUM, FALCON, GeMSS, LUOV, MQDSS, PICNIC, qTESLA, RAINBOW, SPHINCS+)

This project is finished, the main purpose was to measure the "signature" and "verification" in clock cycles of all versions of the implementations of digital signatures in the PQC Contest, here you can download the modified versions of the schemes and test it yourself.

I am not the owner of the sourcecode contained in the original schemes, the codes belongs to the original developers of the schemes, I only developed the file that contains the main function (benchmarks.c), also modified another files in the algorithms to execute the code the most similar way in all the schemes, the "benchmarks.c" file is include in all implementations of the schemes, next you will find the instructions to execute them:

1. Download this repository and extract the content, in the main folder create a folder named RESULTS.

2. In order to execute the benchmarks in all the schemes you will have to follow the instructions of installation of the individual schemes, in the original implementations you will find a readme file that contains the instructions to install the libraries needed in order to execute them, here is the link to download the original schemes: https://csrc.nist.gov/Projects/Post-Quantum-Cryptography/Round-2-Submissions

3. In the main of this repository you will find 5 shell scripts to automate the operations; MAKES.sh performs a make command in every implementation in order to compile the codes, RUNS.sh performs the benchmarks of every implemtation and writes the results in the RESULTS folder, CLEANS.sh performs a make clean command in order to reverse the what make command does, CYCLES1K.sh modify the number of executing cycles of every implementation from 10k to 1k, since some schemes take up to more than 20 seconds to execute each process if you leave this number up high the complete process could take several weeks to finish, that is why I recomend to down the number of cycles to 1k, this reduce the number of the process to a few days only, finally the MICRO.sh modify in every benchmarks.c file the speed of the processor of the computer that will perform the test process, this is in the order of gigahertz, you will have to modify the code and write down the correct speed of your processor, when I ran the tests my computer was 1895000000 hz of raw speed, the test must be performed with an Intel(R) processor from the Haswell(TM) architecture or more recent, it has to have the AVX2 instruction set and the TurboBoost(TM) technology must be disabled.

This software is distributed on an "AS IS" basis WITHOUT WARRANTY OF ANY KIND.

The original software implementations belongs to the RESPECTIVE OWNERS.

If you have any questions, recomendations or corrections regarding this repository feel free to contact me to: jose.rodriguez@cimat.mx

The machine where I performed the original test has the following characteristics:
- Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz, 1895Mhz
- 4GB of RAM DDR3, 3824MiB
- SSD 128GB Sata3

Next I include a table with the results of measuring the digital signature algorithms; it includes the 9 Second Round Candidates of the NIST's Post Quantum Crypto Contest, all signatures were tested 10000 cycles except the GeMMS, RAINBOW and SPHINCS+ 1000 cycles and averaging; the categories where digital signatures based on Lattices, Multivariate Polynomials and Hash Functions, the results are in the clasifications mentions above sorted by the fastest signature in every category.





**Digital Signatures over Lattices**

|	**SIGNATURE NAME**	|	**VERSION**	|	**SECRET SIZE KEY BITS**	|	**PUBLIC SIZE KEY BITS**	|	**SIGN CLOCK CYCLES**	|	**SIGN TIME SECONDS**	|	**VERIFY CLOCK CYCLES**	|	**VERIFY TIME SECONDS**	|
|	---	|	---	|	---	|	---	|	---	|	---	|	---	|	---	|
|	qTESLA	|	ref-128	|	sk-2112-bytes	|	pk-4128-bytes	|	1005268	|	0.00053	|	694103	|	0.000366	|
|	CRYSTALS-DILITHIUM	|	ref-medium	|	sk-2800-bytes	|	pk-1184-bytes	|	1136277	|	0.0006	|	413412	|	0.007286	|
|	CRYSTALS-DILITHIUM	|	opt-medium	|	sk-2800-bytes	|	pk-1184-bytes	|	1138428	|	0.000601	|	413444	|	0.014065	|
|	CRYSTALS-DILITHIUM	|	ref-weak	|	sk-2096-bytes	|	pk-896-bytes	|	1278746	|	0.000675	|	263295	|	0.017798	|
|	CRYSTALS-DILITHIUM	|	opt-weak	|	sk-2096-bytes	|	pk-896-bytes	|	1279508	|	0.000675	|	263575	|	0.028258	|
|	CRYSTALS-DILITHIUM	|	ref-recommended	|	sk-3504-bytes	|	pk-1472-bytes	|	1858036	|	0.00098	|	579953	|	0.028075	|
|	CRYSTALS-DILITHIUM	|	opt-recommended	|	sk-3504-bytes	|	pk-1472-bytes	|	1858412	|	0.000981	|	580565	|	0.000835	|
|	qTESLA	|	ref-256	|	sk-8256-bytes	|	pk-8224-bytes	|	4412737	|	0.002329	|	1695958	|	0.000743	|
|	CRYSTALS-DILITHIUM	|	ref-very-high	|	sk-3856-bytes	|	pk-1760-bytes	|	4833393	|	0.002551	|	760394	|	0.010726	|
|	CRYSTALS-DILITHIUM	|	opt-very-high	|	sk-3856-bytes	|	pk-1760-bytes	|	4835068	|	0.002551	|	759631	|	0.000992	|
|	FALCON	|	ref-512	|	sk-4097-bytes	|	pk-897-bytes	|	11997543	|	0.006331	|	885480	|	0.000467	|
|	FALCON	|	opt-512	|	sk-4097-bytes	|	pk-897-bytes	|	12009319	|	0.006337	|	885905	|	0.016295	|
|	FALCON	|	ref-768	|	sk-6145-bytes	|	pk-1441-bytes	|	20304924	|	0.010715	|	1581977	|	0.000836	|
|	FALCON	|	opt-768	|	sk-6145-bytes	|	pk-1441-bytes	|	20323381	|	0.010725	|	1583744	|	0.052751	|
|	qTESLA	|	ref-192	|	sk-8256-bytes	|	pk-8224-bytes	|	21357279	|	0.01127	|	1407572	|	0.000401	|
|	FALCON	|	opt-1024	|	sk-8193-bytes	|	pk-1793-bytes	|	25758261	|	0.013593	|	1877062	|	0.115638	|
|	FALCON	|	ref-1024	|	sk-8193-bytes	|	pk-1793-bytes	|	25768978	|	0.013598	|	1879675	|	0.000991	|





**Digital Signatures over Multivariate Polynomials**

|	**SIGNATURE NAME**	|	**VERSION**	|	**SECRET SIZE KEY BITS**	|	**PUBLIC SIZE KEY BITS**	|	**SIGN CLOCK CYCLES**	|	**SIGN TIME SECONDS**	|	**VERIFY CLOCK CYCLES**	|	**VERIFY TIME SECONDS**	|
|	---	|	---	|	---	|	---	|	---	|	---	|	---	|	---	|
|	RAINBOW	|	opt-Ia	|	sk-100209-bytes	|	pk-152097-bytes	|	796061	|	0.00042	|	481003	|	0.000139	|
|	RAINBOW	|	opt-IVa	|	sk-376141-bytes	|	pk-565489-bytes	|	2513794	|	0.001327	|	1697063	|	0.008191	|
|	RAINBOW	|	opt-Ic	|	sk-143385-bytes	|	pk-192241-bytes	|	2594078	|	0.001369	|	2139420	|	0.000254	|
|	RAINBOW	|	opt-Ib	|	sk-114308-bytes	|	pk-163185-bytes	|	4757370	|	0.00251	|	4481947	|	0.021099	|
|	RAINBOW	|	ref-Ib	|	sk-114308-bytes	|	pk-163185-bytes	|	4758162	|	0.002511	|	4478364	|	0.003162	|
|	RAINBOW	|	opt-VIa	|	sk-892079-bytes	|	pk-1351361-bytes	|	5441467	|	0.002871	|	3962689	|	0.000896	|
|	RAINBOW	|	ref-Ia	|	sk-100209-bytes	|	pk-152097-bytes	|	6758323	|	0.003566	|	5992774	|	0.000895	|
|	RAINBOW	|	opt-IIIc	|	sk-537781-bytes	|	pk-720793-bytes	|	9844353	|	0.005195	|	7661453	|	0.001129	|
|	RAINBOW	|	ref-Ic	|	sk-143385-bytes	|	pk-192241-bytes	|	12405235	|	0.006546	|	12535575	|	0.002363	|
|	RAINBOW	|	opt-IIIb	|	sk-409463-bytes	|	pk-564535-bytes	|	16050561	|	0.00847	|	15521693	|	0.002365	|
|	RAINBOW	|	ref-IIIb	|	sk-409463-bytes	|	pk-564535-bytes	|	16057712	|	0.008474	|	15523138	|	0.006615	|
|	RAINBOW	|	opt-Vc	|	sk-1274317-bytes	|	pk-1723681-bytes	|	19563589	|	0.010324	|	18370319	|	0.004043	|
|	RAINBOW	|	ref-IVa	|	sk-376141-bytes	|	pk-565489-bytes	|	24665343	|	0.013016	|	21446533	|	0.024536	|
|	LUOV	|	opt-8-63-256	|	sk-32-bytes	|	pk-15908-bytes	|	40320434	|	0.021277	|	22990280	|	0.06866	|
|	RAINBOW	|	ref-VIb	|	sk-1016868-bytes	|	pk-1456225-bytes	|	41863946	|	0.022092	|	39981667	|	0.027211	|
|	RAINBOW	|	opt-VIb	|	sk-1016868-bytes	|	pk-1456225-bytes	|	41881130	|	0.022101	|	40000863	|	0.009694	|
|	RAINBOW	|	ref-IIIc	|	sk-537781-bytes	|	pk-720793-bytes	|	45093432	|	0.023796	|	46494850	|	0.008192	|
|	RAINBOW	|	ref-VIa	|	sk-892079-bytes	|	pk-1351361-bytes	|	57373995	|	0.030277	|	51564102	|	0.05868	|
|	RAINBOW	|	ref-Vc	|	sk-1274317-bytes	|	pk-1723681-bytes	|	106032566	|	0.055954	|	111198585	|	0.011317	|
|	LUOV	|	opt-8-90-351	|	sk-32-bytes	|	pk-46101-bytes	|	122568206	|	0.06468	|	72194602	|	0.000218	|
|	LUOV	|	opt-48-49-242	|	sk-32-bytes	|	pk-7536-bytes	|	129919614	|	0.068559	|	82780601	|	0.10961	|
|	LUOV	|	ref-8-63-256	|	sk-32-bytes	|	pk-15908-bytes	|	162185865	|	0.085586	|	98678930	|	0.371427	|
|	LUOV	|	opt-8-117-404	|	sk-32-bytes	|	pk-100989-bytes	|	214268190	|	0.11307	|	130110977	|	0.043684	|
|	LUOV	|	ref-48-49-242	|	sk-32-bytes	|	pk-7536-bytes	|	220691115	|	0.11646	|	158051098	|	0.479908	|
|	LUOV	|	opt-64-68-330	|	sk-32-bytes	|	pk-19973-bytes	|	398408186	|	0.210242	|	207710031	|	0.215073	|
|	MQDSS	|	ref-48	|	sk-32-bytes	|	pk-62-bytes	|	412908418	|	0.217894	|	310403178	|	0.474934	|
|	MQDSS	|	opt-48	|	sk-32-bytes	|	pk-62-bytes	|	414913391	|	0.218952	|	309354778	|	0.476317	|
|	LUOV	|	ref-64-68-330	|	sk-32-bytes	|	pk-19973-bytes	|	757318365	|	0.39964	|	414266326	|	0.012132	|
|	LUOV	|	ref-8-90-351	|	sk-32-bytes	|	pk-46101-bytes	|	798495929	|	0.42137	|	387017506	|	0.083404	|
|	LUOV	|	opt-80-86-399	|	sk-32-bytes	|	pk-40248-bytes	|	834829122	|	0.440543	|	407563381	|	0.163801	|
|	MQDSS	|	ref-64	|	sk-48-bytes	|	pk-88-bytes	|	1207563575	|	0.637237	|	900000877	|	0.163248	|
|	MQDSS	|	opt-64	|	sk-48-bytes	|	pk-88-bytes	|	1210303923	|	0.638683	|	902620608	|	0.059413	|
|	LUOV	|	ref-8-117-404	|	sk-32-bytes	|	pk-100989-bytes	|	1443411016	|	0.761694	|	703854326	|	0.21861	|
|	GeMMS	|	opt-128	|	sk-14208-bytes	|	pk-417408-bytes	|	1711627727	|	0.903234	|	274617	|	0.001027	|
|	LUOV	|	ref-80-86-399	|	sk-32-bytes	|	pk-40248-bytes	|	1721338727	|	0.908358	|	909425321	|	0.038097	|
|	GeMMS	|	opt-192	|	sk-39440-bytes	|	pk-1304192-bytes	|	3772386346	|	1.990705	|	706550	|	0.052073	|
|	GeMMS	|	opt-256	|	sk-82056-bytes	|	pk-3603792-bytes	|	5694371132	|	3.004945	|	1945968	|	0.204231	|
|	GeMMS	|	ref-128	|	sk-14208-bytes	|	pk-417408-bytes	|	9162395627	|	4.835037	|	30879269	|	0.000145	|
|	GeMMS	|	ref-192	|	sk-39440-bytes	|	pk-1304192-bytes	|	16865413670	|	8.899954	|	99962693	|	0.000373	|
|	GeMMS	|	ref-256	|	sk-82056-bytes	|	pk-3603792-bytes	|	27781414012	|	14.660377	|	219134649	|	0.000139	|





**Digital Signatures over Hash Functions**

|	**SIGNATURE NAME**	|	**VERSION**	|	**SECRET SIZE KEY BITS**	|	**PUBLIC SIZE KEY BITS**	|	**SIGN CLOCK CYCLES**	|	**SIGN TIME SECONDS**	|	**VERIFY CLOCK CYCLES**	|	**VERIFY TIME SECONDS**	|
|	---	|	---	|	---	|	---	|	---	|	---	|	---	|	---	|
|	PICNIC	|	opt-l1fs	|	sk-49-bytes	|	pk-33-bytes	|	16497952	|	0.008706	|	11348432	|	0.005989	|
|	PICNIC	|	opt-l1ur	|	sk-49-bytes	|	pk-33-bytes	|	20645994	|	0.010895	|	14493073	|	0.007648	|
|	PICNIC	|	opt-l3fs	|	sk-73-bytes	|	pk-49-bytes	|	68520542	|	0.036159	|	45677364	|	0.024104	|
|	PICNIC	|	opt-l3ur	|	sk-73-bytes	|	pk-49-bytes	|	81467341	|	0.042991	|	56514986	|	0.029823	|
|	PICNIC	|	opt-l5fs	|	sk-97-bytes	|	pk-65-bytes	|	158759321	|	0.083778	|	108815993	|	0.057423	|
|	PICNIC	|	ref-l1fs	|	sk-49-bytes	|	pk-33-bytes	|	172396138	|	0.090974	|	112588383	|	0.074762	|
|	PICNIC	|	opt-l5ur	|	sk-97-bytes	|	pk-65-bytes	|	174866320	|	0.092278	|	121505256	|	0.064119	|
|	PICNIC	|	ref-l1ur	|	sk-49-bytes	|	pk-33-bytes	|	211139012	|	0.111419	|	141673078	|	0.196052	|
|	SPHINCS+	|	opt-sha256-128f	|	sk-64-bytes	|	pk-32-bytes	|	401658896	|	0.211957	|	16882435	|	0.000401	|
|	SPHINCS+	|	ref-sha256-128f	|	sk-64-bytes	|	pk-32-bytes	|	401752948	|	0.212007	|	16865235	|	0.026321	|
|	SPHINCS+	|	opt-sha256-128f	|	sk-64-bytes	|	pk-32-bytes	|	401764269	|	0.212013	|	16868254	|	0.044764	|
|	SPHINCS+	|	ref-sha256-128f	|	sk-64-bytes	|	pk-32-bytes	|	401767469	|	0.212014	|	16863064	|	0.019013	|
|	SPHINCS+	|	opt-sha256-128f	|	sk-64-bytes	|	pk-32-bytes	|	401953724	|	0.212113	|	16860365	|	0.019059	|
|	SPHINCS+	|	ref-sha256-128f	|	sk-64-bytes	|	pk-32-bytes	|	402018784	|	0.212147	|	16860041	|	0.04801	|
|	PICNIC	|	ref-l3fs	|	sk-73-bytes	|	pk-49-bytes	|	563440161	|	0.29733	|	371518589	|	0.000306	|
|	PICNIC	|	ref-l3ur	|	sk-73-bytes	|	pk-49-bytes	|	677296990	|	0.357413	|	455463856	|	0.24035	|
|	SPHINCS+	|	ref-shake256-128f	|	sk-64-bytes	|	pk-32-bytes	|	761395905	|	0.401792	|	33557333	|	0.007312	|
|	SPHINCS+	|	opt-shake256-128f	|	sk-64-bytes	|	pk-32-bytes	|	761718109	|	0.401962	|	33727720	|	0.008901	|
|	SPHINCS+	|	opt-shake256-192f	|	sk-96-bytes	|	pk-48-bytes	|	994866965	|	0.524996	|	53201817	|	0.007316	|
|	SPHINCS+	|	ref-shake256-192f	|	sk-96-bytes	|	pk-48-bytes	|	995186724	|	0.525164	|	53205072	|	0.027213	|
|	SPHINCS+	|	opt-haraka-128f	|	sk-64-bytes	|	pk-32-bytes	|	1271495315	|	0.670974	|	53348619	|	0.028077	|
|	SPHINCS+	|	ref-haraka-128f	|	sk-64-bytes	|	pk-32-bytes	|	1272443078	|	0.671474	|	53288175	|	0.002091	|
|	PICNIC	|	ref-l5fs	|	sk-97-bytes	|	pk-65-bytes	|	1372063397	|	0.724044	|	898904275	|	0.474356	|
|	PICNIC	|	ref-l5ur	|	sk-97-bytes	|	pk-65-bytes	|	1530672646	|	0.807743	|	1019203049	|	0.537838	|
|	SPHINCS+	|	opt-haraka-192f	|	sk-96-bytes	|	pk-48-bytes	|	1531706582	|	0.808288	|	84827829	|	0.028254	|
|	SPHINCS+	|	ref-haraka-192f	|	sk-96-bytes	|	pk-48-bytes	|	1543886913	|	0.814716	|	86009044	|	0.000218	|
|	SPHINCS+	|	ref-sha256-256f	|	sk-128-bytes	|	pk-64-bytes	|	2046030853	|	1.0797	|	51567960	|	0.008897	|
|	SPHINCS+	|	opt-sha256-256f	|	sk-128-bytes	|	pk-64-bytes	|	2046045457	|	1.079707	|	51569174	|	0.026319	|
|	SPHINCS+	|	opt-shake256-256f	|	sk-128-bytes	|	pk-64-bytes	|	2165301526	|	1.142639	|	53548978	|	0.013966	|
|	SPHINCS+	|	ref-shake256-256f	|	sk-128-bytes	|	pk-64-bytes	|	2166155047	|	1.14309	|	53541772	|	0.017708	|
|	SPHINCS+	|	ref-haraka-256f	|	sk-128-bytes	|	pk-64-bytes	|	3778044736	|	1.993691	|	90979612	|	0.012337	|
|	SPHINCS+	|	opt-haraka-256f	|	sk-128-bytes	|	pk-64-bytes	|	3783277786	|	1.996453	|	90651042	|	0.028152	|
|	SPHINCS+	|	opt-shake256-128s	|	sk-64-bytes	|	pk-32-bytes	|	11280574132	|	5.95281	|	13807031	|	0.008897	|
|	SPHINCS+	|	ref-shake256-128s	|	sk-64-bytes	|	pk-32-bytes	|	11282131615	|	5.953631	|	13805882	|	0.000306	|
|	SPHINCS+	|	ref-sha256-192s	|	sk-96-bytes	|	pk-48-bytes	|	16394887869	|	8.651656	|	13855843	|	0.008899	|
|	SPHINCS+	|	opt-sha256-192s	|	sk-96-bytes	|	pk-48-bytes	|	16395132821	|	8.651785	|	13863517	|	0.047837	|
|	SPHINCS+	|	ref-sha256-256s	|	sk-128-bytes	|	pk-64-bytes	|	17067351988	|	9.006518	|	26462794	|	0.0089	|
|	SPHINCS+	|	opt-sha256-256s	|	sk-128-bytes	|	pk-64-bytes	|	17070446583	|	9.008151	|	26465607	|	0.008909	|
|	SPHINCS+	|	opt-shake256-256s	|	sk-128-bytes	|	pk-64-bytes	|	17901701667	|	9.446808	|	26653404	|	0.000467	|
|	SPHINCS+	|	ref-shake256-256s	|	sk-128-bytes	|	pk-64-bytes	|	17903374830	|	9.447691	|	26655726	|	0.007285	|
|	SPHINCS+	|	ref-haraka-128s	|	sk-64-bytes	|	pk-32-bytes	|	20412652896	|	10.771848	|	23379167	|	0.021109	|
|	SPHINCS+	|	opt-haraka-128s	|	sk-64-bytes	|	pk-32-bytes	|	20413625723	|	10.772362	|	23383315	|	0.010729	|
|	SPHINCS+	|	ref-shake256-192s	|	sk-96-bytes	|	pk-48-bytes	|	22947213972	|	12.109348	|	20331294	|	0.013965	|
|	SPHINCS+	|	opt-shake256-192s	|	sk-96-bytes	|	pk-48-bytes	|	22948547892	|	12.110052	|	20325808	|	0.027213	|
|	SPHINCS+	|	ref-haraka-256s	|	sk-128-bytes	|	pk-64-bytes	|	33723689472	|	17.796142	|	49878128	|	0.045387	|
|	SPHINCS+	|	opt-haraka-256s	|	sk-128-bytes	|	pk-64-bytes	|	33748027996	|	17.808986	|	49874777	|	0.012339	|
|	SPHINCS+	|	opt-haraka-192s	|	sk-96-bytes	|	pk-48-bytes	|	50147628818	|	26.463129	|	36117596	|	0.014066	|
|	SPHINCS+	|	ref-haraka-192s	|	sk-96-bytes	|	pk-48-bytes	|	50182049618	|	26.481293	|	36029537	|	0.02812	|



























