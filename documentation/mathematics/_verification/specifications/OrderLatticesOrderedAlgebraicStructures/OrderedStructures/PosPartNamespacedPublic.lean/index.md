# Verification target: Pos Part Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "860c272ea57fd377d654c77c59686b41c440d69b",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `860c272ea57fd377d654c77c59686b41c440d69b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/instonelepart.md) | 63 | `declaration-track:56040f158d73832843f1e7229ee8a12880f3c5eb61c4a68607486d166d2b7719` |
| 2 | `instance` | [instLeOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/instleonepart.md) | 71 | `declaration-track:e3a75029304ec91354b156d786b2f05a9cddcb88d708678440d83660d07a11b1` |
| 3 | `lemma` | [leOnePart_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-def.md) | 74 | `result-track:307b3d3bafbbe132c847a5a40a099fb45d26d9dab0c876757c2f6e069ef0d9b0` |
| 4 | `lemma` | [oneLePart_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-def-source-edition-2.md) | 76 | `result-track:fbf997fa4e918ea10346ef57d48701124cfcc20ec3b185ac884d239de4edc79c` |
| 5 | `lemma` | [oneLePart_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-mono.md) | 78 | `result-track:8032337ffdfc2882bbf4b3f4e260e98ea09c3012bf1d34592daad2d5c060c6c6` |
| 6 | `lemma` | [oneLePart_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-one.md) | 81 | `result-track:d262afe7a097b75bf2f9b63fc771cbaf5d0b7c34b0ebbe6b209d62d36b77edb8` |
| 7 | `lemma` | [one_le_oneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/one-le-onelepart.md) | 84 | `result-track:82a1056ed5f11c8dc98e3431b9ed138c1d483b2b32e0dc5cac2a2b971e13ee55` |
| 8 | `lemma` | [one_le_leOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/one-le-leonepart.md) | 87 | `result-track:474c2f326a15d9d01c5fa3757691a72dfa1d85a8ab2f9a1f41301ce21d33fc55` |
| 9 | `lemma` | [le_oneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/le-onelepart.md) | 90 | `result-track:1853da7a4f61811aa541cebb3ad1050588090e46400f80f5cc472b3e88c431f9` |
| 10 | `lemma` | [inv_le_leOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/inv-le-leonepart.md) | 92 | `result-track:9e0107eb848cae08226979dba66b7fa0a7c0d1b4f595b4604747a9febc5e8931` |
| 11 | `lemma` | [oneLePart_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-eq-self.md) | 94 | `result-track:7f160ae683317fe5654beae44dca873d90b9a9c3aa966f3e21382a36aed6800f` |
| 12 | `lemma` | [oneLePart_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-eq-one.md) | 95 | `result-track:05c54afa4b3477eef26d3ca29f34e8fc91c429a0c0000e801d72ce16f43bd014` |
| 13 | `lemma` | [leOnePart_eq_inv'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-inv.md) | 102 | `result-track:20123b700d47acfdc7a500728599b6ff91aca69becfb03c34727978f54c3e0f6` |
| 14 | `lemma` | [leOnePart_eq_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-one.md) | 106 | `result-track:b75a43f2d9b37601d59ce90751d23dad54d951335800ca93df10ebb498c45c7e` |
| 15 | `lemma` | [oneLePart_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-le-one.md) | 108 | `result-track:0f4ebcf202f9559bbeacef41f7f4612d4ebd743aa4f0fdb6fdc5b9820fcd2864` |
| 16 | `lemma` | [leOnePart_le_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-le-one-source-edition-2.md) | 112 | `result-track:7305656fa12ed482b930751dd6252ba1d44c76cb1d6a73017f5754e672c3b562` |
| 17 | `lemma` | [one_lt_oneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/one-lt-onelepart.md) | 114 | `result-track:be3455eb5d8467a543132ef78c81971a095eff613e1de5621885814a8490f06a` |
| 18 | `lemma` | [oneLePart_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-inv.md) | 117 | `result-track:06adb7c3c055dd80b38f404de607929621f477272308bb7cef4912c7fcaea386` |
| 19 | `lemma` | [oneLePart_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-max.md) | 119 | `result-track:96507bca17dfe8343ff710e5064524d2ae43b779f32dd7a923340196c070eda0` |
| 20 | `lemma` | [leOnePart_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-one.md) | 127 | `result-track:9e21bb73359a461b6bf8998f12dde8ac7df7ef15484991ca3b11912cf5e28c2e` |
| 21 | `lemma` | [leOnePart_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-inv.md) | 129 | `result-track:3a383e7ad4baa673fd035dcf3b6d6e64498a712c30fad89ac006780e59e3d02b` |
| 22 | `lemma` | [leOnePart_eq_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-inv-source-edition-2.md) | 135 | `result-track:699a293280d92bcd18834134f0ecf54e8bf9f08746634f267d9b8e57c0fbe08f` |
| 23 | `lemma` | [leOnePart_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-one-source-edition-2.md) | 138 | `result-track:ce94d5aeb65d2fd8133a471fefe5225cd19ea48f78c286fe22fc34ad1c5d42c9` |
| 24 | `lemma` | [leOnePart_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-le-one.md) | 143 | `result-track:0b6d420040b5c1ef07e4e995f49c4a8d7732b5017baeab4be8187125a10f7b7f` |
| 25 | `lemma` | [one_lt_leOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/one-lt-leonepart.md) | 145 | `result-track:00911e9ebca9249405ec7ce1de4cfb56c3b27c814f5e9e493d27713b3cd2b02a` |
| 26 | `lemma` | [oneLePart_div_leOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-div-leonepart.md) | 149 | `result-track:40cefe132b671c80e7909e6e26af973531d77c957ff032730c8dc80cce524ecd` |
| 27 | `lemma` | [leOnePart_div_oneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-div-onelepart.md) | 153 | `result-track:3bba9980a79f6ee9ce604bcb4f76a37513e951a9bf8cecf4b29e6a16aeafa6ec` |
| 28 | `lemma` | [oneLePart_leOnePart_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-leonepart-injective.md) | 157 | `result-track:6a765d8bb05ddd2ff55fdb2180f485fe5b140b6b73efe688b490562bf1ab92b8` |
| 29 | `lemma` | [oneLePart_leOnePart_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-leonepart-inj.md) | 163 | `result-track:5afe112110f6d63fffba528f9890ac7379d471c2446f2c01598a115533d31601` |
| 30 | `lemma` | [leOnePart_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-anti.md) | 169 | `result-track:5c2f98f25d90da7a60463c017e85f9136ba5b9a062bc84e2983c417dcb0f0fa8` |
| 31 | `lemma` | [leOnePart_eq_inv_inf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-inv-inf-one.md) | 173 | `result-track:9bb5059a4043e170ae7f841ea4585107041361fdce0f950a40abb08f0c0a3c10` |
| 32 | `lemma` | [oneLePart_mul_leOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-mul-leonepart.md) | 177 | `result-track:ae87a2d8663b25e2f6c3ce5315181467f83eaa4b897865125c90dd6e9c934c7e` |
| 33 | `lemma` | [leOnePart_mul_oneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-mul-onelepart.md) | 182 | `result-track:73df9f15955e1a6c9c314f3d8e2eee9780c7d1e43dc2a77a8fd4fe9103a7c9e6` |
| 34 | `lemma` | [oneLePart_inf_leOnePart_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-inf-leonepart-eq-one.md) | 189 | `result-track:07c46e4ecdb48c10f6c8fbf5e957ace74f6af1762983c9d59a4c43e8aacdb0bc` |
| 35 | `lemma` | [leOnePart_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-min.md) | 193 | `result-track:18ccc69165aec4ce34c69889159e97dd83fecd2824619dc81257f574efc114fc` |
| 36 | `lemma` | [sup_eq_mul_oneLePart_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/sup-eq-mul-onelepart-div.md) | 206 | `result-track:22e72e99983a8900152a27bcaf95361a3872d48fbbfba1f0dd31b2d6f28767dd` |
| 37 | `lemma` | [inf_eq_div_oneLePart_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/inf-eq-div-onelepart-div.md) | 210 | `result-track:21744bf0eeacc0fd8198a8a7fc2e572c515c5ea6c2cd07b97073fd130586cf9e` |
| 38 | `lemma` | [le_iff_oneLePart_leOnePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/le-iff-onelepart-leonepart.md) | 214 | `result-track:198d0203ff374f57f232eee24be7e75da60fd6690abfd7b42da599350f9047f4` |
| 39 | `lemma` | [mabs_mul_eq_oneLePart_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/mabs-mul-eq-onelepart-sq.md) | 220 | `result-track:f704e5110f7fd342b912672bca423bb7a1d4d72c6768658e9773df786a1a1edb` |
| 40 | `lemma` | [mul_mabs_eq_oneLePart_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/mul-mabs-eq-onelepart-sq.md) | 224 | `result-track:93b7d8fc916298f7cfd9a378dc6d249731910662e08b911b7a3f6c40026b7518` |
| 41 | `lemma` | [mabs_div_eq_leOnePart_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/mabs-div-eq-leonepart-sq.md) | 228 | `result-track:c673cd4a805c04db554a92bc8ed157ed997e0e44229ce6466470912f054397ae` |
| 42 | `lemma` | [div_mabs_eq_inv_leOnePart_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/div-mabs-eq-inv-leonepart-sq.md) | 232 | `result-track:5737d3acdcc3264a24e2ef383ea90604464b8dd0ac596f81a9bd9e4454930da1` |
| 43 | `lemma` | [oneLePart_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-min.md) | 241 | `result-track:9be2c4ac30df6b49f3366d5fa02cc9766a21b4dcb591c46fd5539951e74956b3` |
| 44 | `lemma` | [leOnePart_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-max.md) | 246 | `result-track:2b548f8f7b07e83f842eeadbdfd0b525139613c1952c9b5e26dfa6b86bb075e7` |
| 45 | `lemma` | [oneLePart_eq_ite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-eq-ite.md) | 254 | `result-track:a66438d6d8acc28514162018974f7aa33a1eb0b470d15eac8ae61682b7a27013` |
| 46 | `lemma` | [oneLePart_eq_ite_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-eq-ite-lt.md) | 257 | `result-track:22071009a5511a313806a8ca9b08ffb91f13ecd92b62678a22ab73c1fbc01505` |
| 47 | `lemma` | [one_lt_oneLePart_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/one-lt-onelepart-iff.md) | 260 | `result-track:8aa15908dfe848716b173546e9c8f0b66358a8428948e1748cebe67b33bfd6ab` |
| 48 | `lemma` | [oneLePart_of_one_lt_oneLePart](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-of-one-lt-onelepart.md) | 264 | `result-track:a2f00dca0ac901761e334dd656a799689b84bb13599be6ed8ee5023fd16bbeac` |
| 49 | `lemma` | [oneLePart_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-lt.md) | 267 | `result-track:b4c98bd55b09259ab283da6d9c464933df59ef6685321c198d6535f30ebea6d7` |
| 50 | `lemma` | [leOnePart_eq_ite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-ite.md) | 272 | `result-track:abc94ac630fb8def949a1022728f9c5f6f2ab7735f04a70a4b540ed2aaa54510` |
| 51 | `lemma` | [leOnePart_eq_ite_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-eq-ite-lt.md) | 275 | `result-track:32af55729f935dc55e1c87fb77866f70c3b1ade469be6c05486898e52d1132f1` |
| 52 | `lemma` | [one_lt_leOnePart_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/one-lt-leonepart-iff.md) | 278 | `result-track:0ed7f3f9b76915007a8fd320b835f5ee6526f8a709e8bb09b6053c081b616ee4` |
| 53 | `lemma` | [leOnePart_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-lt.md) | 283 | `result-track:3112966f45abec1068b49723f8db96ea49ba24df4a7f50bc718aff3f7e6951fe` |
| 54 | `lemma` | [oneLePart_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-apply.md) | 292 | `result-track:9f9a961422ea7dfeb383c3d03a7211bc179cd49ed5a2cb49cb84a7d3c0907d40` |
| 55 | `lemma` | [leOnePart_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-apply.md) | 293 | `result-track:730d20d780d06e9b5c2edc3dd14b0d131a8b7643c5cfed96e7eb10d7003c729b` |
| 56 | `lemma` | [oneLePart_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/onelepart-def.md) | 295 | `result-track:0862a3a07daa465c88eb20e46e7af583b259120be61a1e221b0f46b808dda87c` |
| 57 | `lemma` | [leOnePart_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PosPartNamespacedPublic.lean/declarations/leonepart-def-source-edition-2.md) | 296 | `result-track:a7b87f8bcf3815d076fae5917294de917233cbd548ffbf0f071eda030be80cef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=015a28e9a35cbdc9432bde173565de9b472b8596e03466d66be7112c634b8fce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/PosPart/Variante544301b2675a6ee2d51cd2924751390ee6bd7c6e260df38365d75cc0ff3b42b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
