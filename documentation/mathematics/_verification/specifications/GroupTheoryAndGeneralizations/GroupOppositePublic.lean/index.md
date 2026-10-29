# Verification target: Group Opposite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2b4195f2049e5020c80587f4ef11d93e1ac9802",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2b4195f2049e5020c80587f4ef11d93e1ac9802`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddsemigroup.md) | 30 | `declaration-track:f22ff7c9848f672482f1706e639f65af1e3baa557775245721b4238b68d909db` |
| 2 | `instance` | [instAddLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddleftcancelsemigroup.md) | 33 | `declaration-track:b50796f12a99ae3fea4b5aa8e2658f4945cf59d881f8ca1195d4b4af2fd484ba` |
| 3 | `instance` | [instAddRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddrightcancelsemigroup.md) | 36 | `declaration-track:fbaeccc3b9c1a64b1915b342d884c4de6daeb382ebec28c66a315b54b81f29da` |
| 4 | `instance` | [instAddCommMagma](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddcommmagma.md) | 39 | `declaration-track:bc471ee366444c36c835fc5ecae1b3d8d6c3ef2fe5236e2c90536ade17c0818d` |
| 5 | `instance` | [instAddCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddcommsemigroup.md) | 42 | `declaration-track:d79a6d1c8f172d062cc214c2da300ec6056db1ef3f008e76f0140900390072dc` |
| 6 | `instance` | [instAddZeroClass](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddzeroclass.md) | 45 | `declaration-track:79c71ed80889f43454df5cad00c13b51d93781d1dc62682af5ded05d93912f3b` |
| 7 | `instance` | [instAddMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddmonoid.md) | 48 | `declaration-track:689d53909d8e4d6a46ce2f6a9ee8fff2e5846d08f848d529edcfce856e93f94f` |
| 8 | `instance` | [instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddcommmonoid.md) | 51 | `declaration-track:3b826735ef208e43609050ff07b5490c732f3bf19ab4e5e29291a7f6e05b7ce1` |
| 9 | `instance` | [instSubNegMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instsubnegmonoid.md) | 54 | `declaration-track:bee9b00f0b5d50f60437c5c71d06b8963d2cf8c42ef7c567c1d6752aaf235f5f` |
| 10 | `instance` | [instAddGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddgroup.md) | 58 | `declaration-track:fdf7488d98dfa7b7a9e5cb85acbbeb6cb30ddec7e5923b98846ce9a607939155` |
| 11 | `instance` | [instAddCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instaddcommgroup.md) | 62 | `declaration-track:623ab07a5ed47a3961fc5f517ccf687ee9729e1cfb5417c341bd951fbfb737f9` |
| 12 | `instance` | [instIsRightCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instisrightcancelmul.md) | 73 | `declaration-track:e77b45ca2cdcfefa22dc5242325e05fc759fb9a3472bcd32d663fa1a197a491f` |
| 13 | `instance` | [instIsLeftCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instisleftcancelmul.md) | 77 | `declaration-track:8521ced50263f2afad3c5116969a39ba5829504a9cff51ebcf7628c916c33a61` |
| 14 | `instance` | [instIsCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instiscancelmul.md) | 80 | `declaration-track:4381dbbbec64179938826ef238810d9ae7dc7ed0a9028ad89d1d620a74b9b141` |
| 15 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instsemigroup.md) | 83 | `declaration-track:823c1ef456eba6c30b6635c828fb8ed381088d0a693219df1a6d92ae876ef211` |
| 16 | `instance` | [instLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instleftcancelsemigroup.md) | 87 | `declaration-track:1c75a07e5e94230247f8a7aaefe753cf2360d864bf49116f612cc69d17c8b7d8` |
| 17 | `instance` | [instRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instrightcancelsemigroup.md) | 91 | `declaration-track:307627b64f3b6fc798d7618198c35afe8829c7fb432f37b38ccb0a533bd27fbe` |
| 18 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcommsemigroup.md) | 95 | `declaration-track:0e27f2f0de5ac540ce6eeeb5e971bb4af9ea61af1e7f0cdf71eb41ad26f45401` |
| 19 | `instance` | [instMulOne](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instmulone.md) | 98 | `declaration-track:683d7d0c584d1ae8d69fde2a828e083cda9b81b11a80f003a97198ec3b931179` |
| 20 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instmuloneclass.md) | 101 | `declaration-track:21c6ba85bfc55be826d8c54efd1ecc13ec1cb4908d86a5ec724968a553178ee2` |
| 21 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instmonoid-source-edition-2.md) | 106 | `declaration-track:c8bcc4177240bb64abd29cb87d20b7a37692e6657fd85141c84495438829cf83` |
| 22 | `instance` | [instLeftCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instleftcancelmonoid.md) | 114 | `declaration-track:855b530b171743e30e60f12d6dc71ecabed18b7968cb8dc0c2a2b07ecb26071f` |
| 23 | `instance` | [instRightCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instrightcancelmonoid.md) | 119 | `declaration-track:f710101315a15fdee055094cf0732dff2e9e1458e1bb1b8dcc50baad0331e270` |
| 24 | `instance` | [instCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcancelmonoid.md) | 124 | `declaration-track:6c303152d7daa39834e500f42ed2702417a174b9e5c1ea67ec14e72090fd1fee` |
| 25 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcommmonoid-source-edition-2.md) | 129 | `declaration-track:dfd905f8a4363d856178231f81ee27bf041c47e31a0f1b0ad9a8bed6a942bb1a` |
| 26 | `instance` | [instCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcancelcommmonoid.md) | 134 | `declaration-track:a85d62519f29bda6f5e078788e86151a1b3db334ca959b126e81dcf49e3ee526` |
| 27 | `instance` | [instDivInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instdivinvmonoid-source-edition-2.md) | 139 | `declaration-track:df03e07647bcfcc741ec1f2b132acba0efc477a29ac16740babf2fd25300bbe2` |
| 28 | `instance` | [instDivisionMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instdivisionmonoid.md) | 150 | `declaration-track:62233f649ddfc5362b81390eb4293159b8aedb266a707b7414a4cc12a7b9e66d` |
| 29 | `instance` | [instDivisionCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instdivisioncommmonoid.md) | 157 | `declaration-track:2114c1f53138dae037fe09c0dcef7d027dfd1c3c5edc011999a9250cf4ae0f33` |
| 30 | `instance` | [instGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instgroup.md) | 162 | `declaration-track:48a8de9ccd5fb86d28069cf299d0dd542f1c2ca59930f0adc3823f6322a0e543` |
| 31 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcommgroup-source-edition-2.md) | 167 | `declaration-track:e0ff773685ef7d04dcd140d9f7c6fda8e21dfadfc87bcdcc4f60bb154f5eae6d` |
| 32 | `lemma` | [op_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/op-pow-source-edition-2.md) | 174 | `result-track:ed6b2645b34d487f382e000a3cdb6ab8d080c86d6dcf4799a736d33586dc601a` |
| 33 | `lemma` | [unop_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/unop-pow-source-edition-2.md) | 176 | `result-track:b2c64ee99f00556c73bf2d91ed8026e0dcd7918e285d04d002bf2cd2885f9637` |
| 34 | `lemma` | [op_zpow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/op-zpow.md) | 183 | `result-track:990ebf6bd73136a317f7ee9160df2b40b99cd40848eccbdee5f579e757995642` |
| 35 | `lemma` | [unop_zpow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/unop-zpow.md) | 185 | `result-track:975e3fe336cb7d19bada538465c58059997064e820d831706c94beac5162efd0` |
| 36 | `theorem` | [unop_div](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/unop-div.md) | 190 | `result-track:eb1d0b69a128e16f29f575c54a5b95c33922448280d0ddcc275b96b0be8012c5` |
| 37 | `theorem` | [op_div](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/op-div.md) | 194 | `result-track:91c3cfc0ab11173a333102ed6c82dc22a06e7dba045a8f642d3ae3078ddce3dc` |
| 38 | `theorem` | [semiconjBy_op](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/semiconjby-op.md) | 197 | `result-track:80968845eec482d5e30bc69275ce2ada9004a95ef4f8659213f6b07de429571f` |
| 39 | `theorem` | [semiconjBy_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/semiconjby-unop.md) | 201 | `result-track:8c1c02ce88b3af75c200f4c66787f1d62092c975ab56585688ad029ded47542f` |
| 40 | `theorem` | [_root_.SemiconjBy.op](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/root-semiconjby-op.md) | 208 | `result-track:dc48fbbef48b9c951cc65a5140b40759fcb3e50a011f7e09e24a7a2eb15f5e4b` |
| 41 | `theorem` | [_root_.SemiconjBy.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/root-semiconjby-unop.md) | 213 | `result-track:8672f12584190fe7af9d34d8f9086819e19b73e2d5be9c3176e0db95ac966460` |
| 42 | `theorem` | [_root_.Commute.op](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/root-commute-op.md) | 218 | `result-track:eed35dbd3a5a96c9f396d802d3f09c18fd96c007a162f680582dd19a14d7f21a` |
| 43 | `theorem` | [_root_.Commute.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/root-commute-unop.md) | 222 | `result-track:7e1bb9042ce0e4059a988546bb755577c19233c3567fef692cc8701ba7259ca0` |
| 44 | `theorem` | [commute_op](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/commute-op.md) | 227 | `result-track:370cdb2936a11237e7fe506ae017959a4a3cf87abd99917f53e0c576dad53e19` |
| 45 | `theorem` | [commute_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/commute-unop.md) | 231 | `result-track:58800bc243678359d02dd96a41ad069776a32c1103c6c422b6d549a35da0eadd` |
| 46 | `theorem` | [isDedekindFiniteMonoid_iff](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/isdedekindfinitemonoid-iff.md) | 236 | `result-track:312a1f23e0f24b8abc9db5088164a6501c84e0d2b5e19a1f88f651c2f3d349a5` |
| 47 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instance-source-edition-2.md) | 241 | `declaration-track:830403603971c86af7137299d7a6d848e92bd10ef1926d107873f02b41be167e` |
| 48 | `theorem` | [isMulCommutative_op_iff](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/ismulcommutative-op-iff.md) | 245 | `result-track:af3b5b841efc9a97ac78a2e56689be48b79b715d74fb95994f12bb9be7c3179a` |
| 49 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instance.md) | 249 | `declaration-track:7f269ad906618c7116e3ed66342ac0dea002b19025b3073e691cecfe08599d29` |
| 50 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instsemigroup-source-edition-2.md) | 261 | `declaration-track:9621aac5ceef5f7b5f441bd36532dc107b3e5e26f882a540ca56155f79e7bbf1` |
| 51 | `instance` | [instLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instleftcancelsemigroup-source-edition-2.md) | 263 | `declaration-track:cb200e28b60402162006e88b81548de459243645c9982f4933088ac1fa16470a` |
| 52 | `instance` | [instRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instrightcancelsemigroup-source-edition-2.md) | 266 | `declaration-track:8a84760ad718b9bcca70f63de36c178f7e479c81dcd0df19ab73a1688ac3458b` |
| 53 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcommsemigroup-source-edition-2.md) | 269 | `declaration-track:7e0fde79c4f13521a484d041618c0a42d087f89b5b83eb4397ae27120f396203` |
| 54 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instmuloneclass-source-edition-2.md) | 272 | `declaration-track:a58215d9e1403432be6a621d2f50cc692c463bc94c17e6e729aed6d69e2794be` |
| 55 | `instance` | [pow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/pow.md) | 275 | `declaration-track:8744703ccc300f929cf3c3441274ab3ea9fcef0755b55e73c9aecfa10bc21e83` |
| 56 | `theorem` | [op_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/op-pow.md) | 278 | `result-track:a55dcbcc20e32517b24189537f76473eed409a2a00324b6c4df259919825041f` |
| 57 | `theorem` | [unop_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/unop-pow.md) | 282 | `result-track:81a327268a6eb85ba910c3a877aa6627b9eaca49ac0f24d1d8de51b41b02e4fc` |
| 58 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instmonoid.md) | 285 | `declaration-track:6c3b7aba7715a8432f7ba931b5c2c681b65b9d0b33c113807133864136dce9fc` |
| 59 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcommmonoid.md) | 288 | `declaration-track:c7a0809680ad66f8fe165a8fb658f75697a9800bbac620e5ef560fee5d985204` |
| 60 | `instance` | [instDivInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instdivinvmonoid.md) | 291 | `declaration-track:3514e0f4869a20651543491b4be3e4391c3051472c89b17fa89bf58a2b98a228` |
| 61 | `instance` | [instGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instgroup-source-edition-2.md) | 295 | `declaration-track:f37c06f9b08d7c8e88142448d3896d3d5ddf7c2eb5f9422965c52e7a0bf047fc` |
| 62 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instcommgroup.md) | 299 | `declaration-track:45e212f266ba4b4885522a63983ec642b98ae57289d6f982a557c63394f4299a` |
| 63 | `instance` | [instMulTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupOppositePublic.lean/declarations/instmultorsionfree.md) | 304 | `declaration-track:1b754422b9f7d39eb6c072872b035f9d4c23a34729bffbbdca1d4fbdd31cd4b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04628a08ea1a2f0e2373a5b3b056f4adaba333ea3f70d7b747f4edb33d691419 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
