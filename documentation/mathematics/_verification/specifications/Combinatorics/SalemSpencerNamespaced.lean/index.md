# Verification target: Salem Spencer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a1992b5170adbb81fc9366a26d254779be038f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SalemSpencerNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/SalemSpencerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a1992b5170adbb81fc9366a26d254779be038f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Freiman` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulSalemSpencer](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer.md) | 70 | `declaration-track:3805003c75ea6cced9dfe6380af76ce767260b1041e61824ab7b94e058880296` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/instance.md) | 77 | `declaration-track:96d74f56976477bfc2bc49b5a484ff3439905f3db654e673d852090b4fa7357d` |
| 3 | `theorem` | [MulSalemSpencer.mono](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mono.md) | 85 | `result-track:1ec8602b029fd6fd67c3a0434b458b472c05c9d9c912650dbee29d5bdf11c865` |
| 4 | `theorem` | [mulSalemSpencer_empty](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-empty.md) | 91 | `result-track:41c7cd73c73683ff2161e9d47378fa9b4030f9f6fe2d224aa4c1ddd0d9e03c25` |
| 5 | `theorem` | [Set.Subsingleton.mulSalemSpencer](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/set-subsingleton-mulsalemspencer.md) | 96 | `result-track:962fad7569236424b1a18bc15d7a27e5bfe3725ab9ab5bfb1e60d9ce5fccf85f` |
| 6 | `theorem` | [mulSalemSpencer_singleton](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-singleton.md) | 102 | `result-track:1d0e4341d856f46cef16f47fba1c58614d3aa4a7b8c47ea2eccedee5480d4169` |
| 7 | `theorem` | [MulSalemSpencer.prod](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-prod.md) | 108 | `result-track:1af802e830c2def2ae05a51caee19814f707775bd66ddf612a0fe6ba43c8dd3d` |
| 8 | `theorem` | [mulSalemSpencer_pi](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-pi.md) | 115 | `result-track:31726e4733c4e9c25126760b0324fbca0ae178bdd6f78e6be136b919c931f1a6` |
| 9 | `theorem` | [MulSalemSpencer.of_image](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-of-image.md) | 129 | `result-track:1855a17317c13a2ded9ac054a5fda84b78be8888f938c56d70e5819dd8a0fba0` |
| 10 | `theorem` | [MulSalemSpencer.image](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-image.md) | 139 | `result-track:23da2e231b41f5990f9c671cc9545827768ceee248de63f94256312e9bb03b31` |
| 11 | `theorem` | [mulSalemSpencer_insert](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-insert.md) | 153 | `result-track:a4ccfd3adcbc28f545c939be0d6a06a11f49afbfca7c01d37ec2307d46c3db2d` |
| 12 | `theorem` | [mulSalemSpencer_pair](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-pair.md) | 174 | `result-track:bfb977d1562844ec4be48113633fb8cee6a6ca1733eeccae351c975a338ea188` |
| 13 | `theorem` | [MulSalemSpencer.mul_left](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-left.md) | 185 | `result-track:74ce0f6a949d382d4c1f57302c063d0c83777284eb291a62c8e24e20df88daf1` |
| 14 | `theorem` | [MulSalemSpencer.mul_right](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-right-source-edition-2.md) | 193 | `result-track:f70ce7153eec0dda094d0d4d2c3a64a2e32a538a7f1ea3d418784fb339ddc8da` |
| 15 | `theorem` | [mulSalemSpencer_mul_left_iff](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-left-iff-source-edition-2.md) | 201 | `result-track:a7be05382e7e7502faf0036068f627a2c7881c1308186a917179f1223fc06c84` |
| 16 | `theorem` | [mulSalemSpencer_mul_right_iff](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-right-iff.md) | 211 | `result-track:e75ea989ce006ff8639f40cb29a94115ae1eb86a7e3dac04d93428bf895d3a21` |
| 17 | `theorem` | [mulSalemSpencer_insert_of_lt](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-insert-of-lt.md) | 227 | `result-track:7cf338a2da64fb2a50ca344945c48708a7bd41454f343553b1776a93fcaa2556` |
| 18 | `theorem` | [MulSalemSpencer.mul_left₀](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-left-source-edition-2.md) | 242 | `result-track:e1c5ac930d7c075079fba38ebbdeb99c83040ac19b5ba9947ebcb5eb8e4e9e37` |
| 19 | `theorem` | [MulSalemSpencer.mul_right₀](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-right.md) | 249 | `result-track:5855642a75b6de4286351848113d22c9e4a2cbb8f17d29688ab0a4497cd88636` |
| 20 | `theorem` | [mulSalemSpencer_mul_left_iff₀](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-left-iff.md) | 256 | `result-track:8d7f6fc6e356ecea7a1857e3b665f26a1039d4ac811f84e0dc90c080d42f26a9` |
| 21 | `theorem` | [mulSalemSpencer_mul_right_iff₀](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-mul-right-iff-source-edition-2.md) | 265 | `result-track:f6ec8f7c1ee7e836750be5699f374534bda4c774b2359d3c2c5f349c7046a91e` |
| 22 | `theorem` | [addSalemSpencer_iff_eq_right](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/addsalemspencer-iff-eq-right.md) | 278 | `result-track:e1e966de774b4109733950a578429e32257b1a1265e79784a8194a906e1d4942` |
| 23 | `theorem` | [addSalemSpencer_frontier](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/addsalemspencer-frontier.md) | 293 | `result-track:38cf97c11d1f28bfd7936deff440b942ed38b613f0e944f92469564c53c0a032` |
| 24 | `theorem` | [addSalemSpencer_sphere](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/addsalemspencer-sphere.md) | 304 | `result-track:c76ee6377dedc21c2b9c5c7bbd98c84cec5109a8eae1a67289af11f5c3888fa4` |
| 25 | `def` | [mulRothNumber](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber.md) | 330 | `declaration-track:d9b4d9af12bd66a16053e7f179404baa391af05d2d40e1ef98369768667e72b1` |
| 26 | `theorem` | [mulRothNumber_le](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-le.md) | 342 | `result-track:84d3446932dd17009794d85eb2aed74631b4419b681e794900c4b6739c57bb02` |
| 27 | `theorem` | [mulRothNumber_spec](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-spec.md) | 347 | `result-track:b9dc390e1ec3e6a1a273b65439fcd562eb6cd42bce0962120ad88561d3e77d9f` |
| 28 | `theorem` | [MulSalemSpencer.le_mulRothNumber](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-le-mulrothnumber.md) | 358 | `result-track:14f4bb2dfdbb05accfe148a94629fd8520b3b65300d7d38b47002b6cdebf62bf` |
| 29 | `theorem` | [MulSalemSpencer.roth_number_eq](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulsalemspencer-roth-number-eq.md) | 365 | `result-track:b54d195401b6552ff81dd1d7d1b42c730a028237464a752f84b82896f3321a86` |
| 30 | `theorem` | [mulRothNumber_empty](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-empty.md) | 372 | `result-track:49a52b96372c4a842fb4fecf0267cd62f7be5aa30d00ab0dc42ddcea13703555` |
| 31 | `theorem` | [mulRothNumber_singleton](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-singleton.md) | 378 | `result-track:e4df1e53d1cdcf6e1b66c9e5dbb4146e569b62f41dfdb179bd02627e046f89c3` |
| 32 | `theorem` | [mulRothNumber_union_le](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-union-le.md) | 386 | `result-track:34c9aed81b8d91102dcdb5daa79fa1ff0082a95386d62646f54e435111babc7a` |
| 33 | `theorem` | [le_mulRothNumber_product](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/le-mulrothnumber-product.md) | 400 | `result-track:92d377ad0f2537c9b2a9a7855dde8d5fcb7a0ddc712c10080be2854c79b6de93` |
| 34 | `theorem` | [mulRothNumber_lt_of_forall_not_mulSalemSpencer](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-lt-of-forall-not-mulsalemspencer.md) | 412 | `result-track:6eacd1efc94e0703b0da21e50bad19c7f40aa38cae5ddb31810e0308ef6470f8` |
| 35 | `theorem` | [mulRothNumber_map_mul_left](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-map-mul-left.md) | 430 | `result-track:d6b909b25891fb66c5d78c4688b9da9c9753bde13d17d7ece181fefb0bef2897` |
| 36 | `theorem` | [mulRothNumber_map_mul_right](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/mulrothnumber-map-mul-right.md) | 449 | `result-track:f67b0172729d82f73dc8382993dae61a8b562fe1c0cad5b505186c01c79a2e82` |
| 37 | `def` | [rothNumberNat](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat.md) | 470 | `declaration-track:3b6fae18a229997805f804929868784b1c641293bf5707d351e6e1a3d4952cea` |
| 38 | `theorem` | [rothNumberNat_def](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-def.md) | 474 | `result-track:17f57df587f68738f3937f05ec5772d0a59b24f9a8f4947d20b892cfb68e578c` |
| 39 | `theorem` | [rothNumberNat_le](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-le.md) | 478 | `result-track:7ff7c1840073f059675e0fc7779c516be2de49132a7b9d4079f23fc6565604b7` |
| 40 | `theorem` | [rothNumberNat_spec](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-spec.md) | 482 | `result-track:4c456c030af0ecbabc9165434bd19e1bdd08f420ac5928713006272fe96e7cce` |
| 41 | `theorem` | [AddSalemSpencer.le_rothNumberNat](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/addsalemspencer-le-rothnumbernat.md) | 489 | `result-track:ea76abc4dc9a7de3b525bc15fc2db2b1f894009d8a974c06113944215eafa6aa` |
| 42 | `theorem` | [rothNumberNat_add_le](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-add-le.md) | 497 | `result-track:63a688b809f3630110d0a41f40784d2a0c946a1e65945d2219e2bbb5188c939b` |
| 43 | `theorem` | [rothNumberNat_zero](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-zero.md) | 505 | `result-track:453c11502d9401a04589219f7417b86a27ca871b1d056e284ae46052501dae59` |
| 44 | `theorem` | [addRothNumber_Ico](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/addrothnumber-ico.md) | 509 | `result-track:4fa5aed9afbdea7fed613b0e6769d4c50a667d1c38ee9513b0d292bbf1ae1d9e` |
| 45 | `theorem` | [rothNumberNat_isBigOWith_id](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-isbigowith-id.md) | 520 | `result-track:e1b2d21698078172a2335fc915a08915e7f8a218b73dde2ca91a0946ddd3285d` |
| 46 | `theorem` | [rothNumberNat_isBigO_id](../../../../Combinatorics/SalemSpencerNamespaced.lean/declarations/rothnumbernat-isbigo-id.md) | 527 | `result-track:c64c9ef997b4da99596c42a64ef500c0c8b4df1119217998c76ac1f518ea3801` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6eba8aed96180c4a47361b28c0b28efe566eac06e14e1223f33a855ddc64e1ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
