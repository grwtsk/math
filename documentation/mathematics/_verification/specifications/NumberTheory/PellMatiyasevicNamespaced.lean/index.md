# Verification target: Pell Matiyasevic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11538141504660b997cf1f4a4eb3f1db224faff5",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11538141504660b997cf1f4a4eb3f1db224faff5`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPell](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell.md) | 70 | `declaration-track:ac2f9dce18047399b5e892c9f070f1d198a76c1eeb4e70ecd9ef12b8d16c4e3c` |
| 2 | `theorem` | [isPell_norm](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-norm.md) | 73 | `result-track:f3ac12cdafd09f6bed4fbc99071bd004cd9d243ec429b41e012553832c790867` |
| 3 | `theorem` | [isPell_iff_mem_unitary](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-iff-mem-unitary.md) | 76 | `result-track:d5f12f989dd835dc9ce732380b8ac71a49cb80bc0e1ea5bb9672daddaa89e78e` |
| 4 | `theorem` | [isPell_mul](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-mul.md) | 79 | `result-track:23fc0ed7af7369470cac535cc73ade8d39b3d37070e925c0d6b07ef6e7181b41` |
| 5 | `theorem` | [isPell_star](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-star.md) | 83 | `result-track:3b58563762531b7e82292432556cfc9f2096370e6c4beadd2cbc02333360c209` |
| 6 | `def` | [d](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/d.md) | 92 | `declaration-track:8fe0ba9d3e2c938c47bb644c84770e13e179a7900149f90f9effa469a91c52e3` |
| 7 | `theorem` | [d_pos](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/d-pos.md) | 96 | `result-track:d528098787e6a12bdef233baa09d58f535a06e969a9ec793d6fe33c8cecfdbca` |
| 8 | `def` | [pell](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pell.md) | 103 | `declaration-track:fa8d0156a3a28b6d76b61ec1d8a335f046dbe87c217fb54387ae454a82dcc27b` |
| 9 | `def` | [xn](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn.md) | 108 | `declaration-track:b94c0a3d614c23b64c76d551ef8480ff5e2ae8958591007ce19bd6b0e7b9d303` |
| 10 | `def` | [yn](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn.md) | 112 | `declaration-track:69dfcbe3ce3aaad61657f7f25da8c8f028561940dd624afa0b0d9d919cbd64c3` |
| 11 | `theorem` | [pell_val](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pell-val.md) | 116 | `result-track:c300ed5d4ec8f47fe5543c0e1475ef351cafe4482b13d638245728b4ada6c2cb` |
| 12 | `theorem` | [xn_zero](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-zero.md) | 122 | `result-track:0f711e09554d3658e17dd66e3cf1c00e63157c2c3845cd6e3dbe9578ee640ec4` |
| 13 | `theorem` | [yn_zero](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-zero.md) | 126 | `result-track:9cd0cd9b6302fcb73436e550d7c17b3e45852adafe9fa259c2d9cf2756023f9b` |
| 14 | `theorem` | [xn_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-succ.md) | 130 | `result-track:feaf7e4bd750244ec11d716c1c0647eab62e181693e2c99ec6c86d57735ca66f` |
| 15 | `theorem` | [yn_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-succ.md) | 134 | `result-track:25914f087eebd7c656bd8688e2200e536788e9becc38342103caaae0a8281125` |
| 16 | `theorem` | [xn_one](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-one.md) | 137 | `result-track:1040d96bbe34cf5c3650ed866070e50a6d14a493a262a62d92ce95990d084097` |
| 17 | `theorem` | [yn_one](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-one.md) | 139 | `result-track:c0c6361f1a07343f90ce31d159133a7cef8b579a9c58bc9f4a0cc4b873902db5` |
| 18 | `def` | [xz](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xz.md) | 142 | `declaration-track:81c28651ce72093ce8b1390c56eb776d3e726f9ffa7ee00fe220cfd80557a60c` |
| 19 | `def` | [yz](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yz.md) | 146 | `declaration-track:7e642c8b2a26e52e18f694028ce86f52068705543003d717a03276ab03be23da` |
| 20 | `def` | [az](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/az.md) | 152 | `declaration-track:dd895b92e453977665db7e76ed1873b53d1dfdf4c12c52cc8781b6c1d29b356d` |
| 21 | `theorem` | [asq_pos](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/asq-pos.md) | 158 | `result-track:d61ad8cfce24ff718574131130af14c2145bd028c7e38f547c7d4a2c75f61c64` |
| 22 | `theorem` | [dz_val](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/dz-val.md) | 162 | `result-track:0482343acd61f250667f7328b64564f86f319222e407e2097662dfdde70c591c` |
| 23 | `theorem` | [xz_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xz-succ.md) | 167 | `result-track:226b5e77b5a92d79627138a9e329a8c94fc6b81352c359fe924f6d721b80ce57` |
| 24 | `theorem` | [yz_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yz-succ.md) | 171 | `result-track:37a2009c230e5a7bc9116a30adc24223a7449722729e63b80ccacb8cb51ea173` |
| 25 | `def` | [pellZd](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd.md) | 175 | `declaration-track:c500de605153a3e7e1c692f812096b667b60a3324e87729f04dbf600d2c0bb0b` |
| 26 | `theorem` | [pellZd_re](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd-re.md) | 179 | `result-track:1ffbf508430e4b6151944c6edc39815daae0ed3f8d438d709298f8a907bd5a43` |
| 27 | `theorem` | [pellZd_im](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd-im.md) | 183 | `result-track:9569ada775f8d58546b0cfa99d2fb18dee042c2fbf378f7121518d8216df057f` |
| 28 | `theorem` | [isPell_nat](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-nat.md) | 186 | `result-track:2afe598ac135ffd557bddb4fd698af45393e5d6fc341aa9fa1d73637c6c9bee2` |
| 29 | `theorem` | [pellZd_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd-succ.md) | 195 | `result-track:ca837ce473a8d929308ae51ec3063fe7fe69a7c5c7e318a47843fe5564d3f8c7` |
| 30 | `theorem` | [isPell_one](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-one.md) | 197 | `result-track:ee913e47a8d57e5b398f04bd793cf1ff9f8c634503295f06b06cade3bd293a0e` |
| 31 | `theorem` | [isPell_pellZd](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ispell-pellzd.md) | 200 | `result-track:aceb4df99aae637da917d79fb1b403c1dc0348ff1a043cd9e85ebe49531674d7` |
| 32 | `theorem` | [pell_eqz](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pell-eqz.md) | 207 | `result-track:760b36ace4759b61e935cf98c172804145043dc07f9eacf2907a5357d90e0a66` |
| 33 | `theorem` | [pell_eq](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pell-eq.md) | 211 | `result-track:5c6c09c55e2d4f0f713c748a98b07be5e0e2ecf0f497f29fd83a562d3dd6cbfe` |
| 34 | `instance` | [dnsq](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/dnsq.md) | 219 | `declaration-track:05991de4dcc7fdf44f1ed7e5007831042758e7b44277e724063ee49c15d28807` |
| 35 | `theorem` | [xn_ge_a_pow](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-ge-a-pow.md) | 229 | `result-track:90068596844fcf0378dd2f959769a8682233ba9b1dcf2b3f5e674b90dc00375d` |
| 36 | `theorem` | [n_lt_xn](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/n-lt-xn.md) | 235 | `result-track:6784053c0b8c0c1bdf196934ea8f2c79309f6b9d6a7812743ea3df9b5c73c74d` |
| 37 | `theorem` | [x_pos](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/x-pos.md) | 238 | `result-track:e2fe12e23cc24e93371f0eb4a09b09d23525536c0317ea6a554b2917c34b049c` |
| 38 | `theorem` | [eq_pell_lem](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-pell-lem.md) | 241 | `result-track:7ae000ba660c5559595b1bd4181c685bb225ecef2510a852586d945eeaf2e1ce` |
| 39 | `theorem` | [eq_pellZd](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-pellzd.md) | 288 | `result-track:a943dae01800f4bc01c710b037e0f45d09309e8a93d50990078d1a99f2984937` |
| 40 | `theorem` | [eq_pell](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-pell.md) | 299 | `result-track:76bcdb847b8a47909cf2971819c59158b4c85a03d565dab414e684d86f72b6f8` |
| 41 | `theorem` | [pellZd_add](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd-add.md) | 310 | `result-track:2814617cd57456faa7a9f84d1c3052b443c0ca4d3982cf7cb3d31f7a18100288` |
| 42 | `theorem` | [xn_add](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-add.md) | 314 | `result-track:1d31259a1821e3bbe3423fb534e9df6bf183567aa29f3ce6912855d4442bcfcb` |
| 43 | `theorem` | [yn_add](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-add.md) | 320 | `result-track:16a729398cbc7fdabffbec8cef03ef1e9ccc6c3f334d47130a9835b660641015` |
| 44 | `theorem` | [pellZd_sub](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd-sub.md) | 326 | `result-track:aab5282ede31254338330b8b2be4edac817fabb10a145aefb42bb2d8cacd2cb4` |
| 45 | `theorem` | [xz_sub](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xz-sub.md) | 331 | `result-track:f29e69a554e3db0dbca3c2398ffc5c679a5e8c1f4835c82f6aae59b7f2c68ea3` |
| 46 | `theorem` | [yz_sub](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yz-sub.md) | 336 | `result-track:86c81e8c0694d900bb49dd234795bf46c9b26e579c703016d9647613cfe1c482` |
| 47 | `theorem` | [xy_coprime](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xy-coprime.md) | 340 | `result-track:64e7df097ded7c0808d2542943a8122e5578a2115d64410f37e8cec1ddcc0af4` |
| 48 | `theorem` | [strictMono_y](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/strictmono-y.md) | 346 | `result-track:58c7728323bae9b4ceb0e33d2e834ac2159b7d4f3d440d81c5f7c0266e30d438` |
| 49 | `theorem` | [strictMono_x](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/strictmono-x.md) | 356 | `result-track:bdce3fbbe70b50d67293faf0a08d0e697f2937207dbb36dce41bdc989ca26c63` |
| 50 | `theorem` | [yn_ge_n](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-ge-n.md) | 367 | `result-track:190a3b0ac1765cd03b9cfc952101549199a9f405acc7dc602ffc5d03612859cb` |
| 51 | `theorem` | [y_mul_dvd](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/y-mul-dvd.md) | 372 | `result-track:7419341f92c288d34aa2bef5e7a37c24bf5bee6413486cbca2f2ca3f2f9ae71f` |
| 52 | `theorem` | [y_dvd_iff](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/y-dvd-iff.md) | 377 | `result-track:868e03092cbd0465c5a87fd8ecdabe7ed0cfc756c14d771409fa322ad01afdfb` |
| 53 | `theorem` | [xy_modEq_yn](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xy-modeq-yn.md) | 395 | `result-track:633c1ebc8df122a8ecf5d60880391f8dd9d9c1bf80a27e7f73ffc5a569c01714` |
| 54 | `theorem` | [ysq_dvd_yy](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/ysq-dvd-yy.md) | 427 | `result-track:ccaac30559338181a821bd4b76c4d400e631d1e9031698cbea2543de6e350530` |
| 55 | `theorem` | [dvd_of_ysq_dvd](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/dvd-of-ysq-dvd.md) | 432 | `result-track:17bf2645d162dac2ef73628498fa1a28cfdf72f6025f29e09f9516d1b29fda68` |
| 56 | `theorem` | [pellZd_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/pellzd-succ-succ.md) | 444 | `result-track:278ed8ef51a914822c0e9847d844f56da2ca49fb6b1838437d6c97a06f6e5282` |
| 57 | `theorem` | [xy_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xy-succ-succ.md) | 454 | `result-track:3e2eed1ef511b960f4b93c0d794d8faea6e520fb7e7d392f389f2ce0b689ba7f` |
| 58 | `theorem` | [xn_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-succ-succ.md) | 462 | `result-track:20a61ff24f314fc36960573f8d69a928e444c1406c98ab0baf9c220ffdd64fac` |
| 59 | `theorem` | [yn_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-succ-succ.md) | 465 | `result-track:38d02b735f51026463ba2f5ea8240b749fa9b0dd08d3ea71ea1b272410b43897` |
| 60 | `theorem` | [xz_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xz-succ-succ.md) | 468 | `result-track:80d14d96b1c318f1a67fad7ab2995380db683eb28322c37092201f24eec0ab4e` |
| 61 | `theorem` | [yz_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yz-succ-succ.md) | 471 | `result-track:446d328e27f6e78abe08e0c7326b7fd2f10ab00a8820a673b9b7ec05729deabd` |
| 62 | `theorem` | [yn_modEq_a_sub_one](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-modeq-a-sub-one.md) | 474 | `result-track:74b869a8a2b7c0edd8d774308cc9637d7cf343c055b8678e5c690c70b904084d` |
| 63 | `theorem` | [yn_modEq_two](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/yn-modeq-two.md) | 482 | `result-track:52e00d53752190abc4cc871426ad9b4acd8c5442a13d5929cedb2c970c84455d` |
| 64 | `theorem` | [x_sub_y_dvd_pow_lem](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/x-sub-y-dvd-pow-lem.md) | 492 | `result-track:13fb37f1583d8ce761d90d70d8678338e863bbccfa39553ee47e9997a28525c7` |
| 65 | `theorem` | [x_sub_y_dvd_pow](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/x-sub-y-dvd-pow.md) | 499 | `result-track:cb3a477ea815d4526ad8912ccadbcf26f0875d76279e2c49f783bfcf0b18fff8` |
| 66 | `theorem` | [xn_modEq_x2n_add_lem](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-modeq-x2n-add-lem.md) | 513 | `result-track:2d61f8c7cf33368c72d2f360f255176cafc164dd9a75524c380224d725411db5` |
| 67 | `theorem` | [xn_modEq_x2n_add](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-modeq-x2n-add.md) | 522 | `result-track:b4bbefc81286e4d74bd438d28b78fa4c389734b7bf4728baf7c5755876c91cbc` |
| 68 | `theorem` | [xn_modEq_x2n_sub_lem](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-modeq-x2n-sub-lem.md) | 529 | `result-track:2b0d6d5a200c22af21ebe354e5e3796c2a19c10125d0a305aca6c90c29d0e62d` |
| 69 | `theorem` | [xn_modEq_x2n_sub](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-modeq-x2n-sub.md) | 544 | `result-track:86c265d69293711d44f65986424ce91c708a05e183bd33a7ef6c357cebc2284a` |
| 70 | `theorem` | [xn_modEq_x4n_add](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-modeq-x4n-add.md) | 551 | `result-track:08d9136449ac22d187888609f72487a6950ddb19a3eb7d60d7a7251c0b79625c` |
| 71 | `theorem` | [xn_modEq_x4n_sub](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xn-modeq-x4n-sub.md) | 557 | `result-track:8d89340b8e8470f62bd0950ca0a98ca8075254d50c32c07ef50599697d84fbf2` |
| 72 | `theorem` | [eq_of_xn_modEq_lem1](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-of-xn-modeq-lem1.md) | 564 | `result-track:52331d2d6995f427271702ffea2a4f265fce0f4e1e3c4d0f87928f0b7db7f5ff` |
| 73 | `theorem` | [eq_of_xn_modEq_lem2](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-of-xn-modeq-lem2.md) | 575 | `result-track:01f3e708427e04ac57c3c76a175fb7ab6aa4d80b13b0886d44e3c0f719e55ccd` |
| 74 | `theorem` | [eq_of_xn_modEq_lem3](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-of-xn-modeq-lem3.md) | 585 | `result-track:0b89646f6079b8d4d702ed24adeba1810772f23b0ef82e5f6b1297c732ec0d2e` |
| 75 | `theorem` | [eq_of_xn_modEq_le](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-of-xn-modeq-le.md) | 662 | `result-track:eba3a0bf51b0c4999f22ddee105be7ac9a9abc7190235ea01b13fdbb5933662c` |
| 76 | `theorem` | [eq_of_xn_modEq](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-of-xn-modeq-source-edition-2.md) | 684 | `result-track:af6ede3ffdf35624fedd5e4ae091ec67293c008e9df25331e1501448278b2910` |
| 77 | `theorem` | [eq_of_xn_modEq'](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-of-xn-modeq.md) | 692 | `result-track:1be1d410a928bc918fc44fae0e3d34f17398a9625381e3f6ee7b14a43a6b8540` |
| 78 | `theorem` | [modEq_of_xn_modEq](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/modeq-of-xn-modeq.md) | 709 | `result-track:f11407f052b73be41e62bc1c08cb5c4869b5080b31f23aa0075cf96e5ffb6e56` |
| 79 | `theorem` | [xy_modEq_of_modEq](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/xy-modeq-of-modeq.md) | 734 | `result-track:73c1a2a2759ae5ea58d662cbcb80bf195ce4bbcfada9f21ebcb748c05784bb04` |
| 80 | `theorem` | [matiyasevic](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/matiyasevic.md) | 746 | `result-track:bfdb4dc62e79be693ffd0f356a61528e1dfa3ea620e67f4b29dbd1e85729059d` |
| 81 | `theorem` | [eq_pow_of_pell_lem](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-pow-of-pell-lem.md) | 835 | `result-track:c7bccab9ae3382bfa9f2d327e88444dede1c34cef91d33c35b56a5cec5cadb00` |
| 82 | `theorem` | [eq_pow_of_pell](../../../../NumberTheory/PellMatiyasevicNamespaced.lean/declarations/eq-pow-of-pell.md) | 850 | `result-track:de242f8373f42953ba6127d05eee22459f5b1ac0384923d7e8480255e4b31f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733c1e9aaa734225cba0870b453007db68a2ec3d9303909e711f4e495f3f1ede -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean","GRWTSK/_verification/specifications/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
