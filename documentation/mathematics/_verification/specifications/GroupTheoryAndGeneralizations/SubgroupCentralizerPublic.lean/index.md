# Verification target: Subgroup Centralizer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4accdd83661a35c0cfefc908e6d8e510436fe83d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4accdd83661a35c0cfefc908e6d8e510436fe83d`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean.json)

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
| 1 | `def` | [centralizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer.md) | 30 | `declaration-track:155fd105e34ee1fa36d024193f1225844e59b00f42930a1b4affbc16988cf69e` |
| 2 | `theorem` | [mem_centralizer_iff](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/mem-centralizer-iff.md) | 35 | `result-track:b6becc4231f9c260a0613dd6ac7af18d5bbe54fdd182db35249cee0aa1a94791` |
| 3 | `theorem` | [mem_centralizer_iff_commutator_eq_one](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/mem-centralizer-iff-commutator-eq-one-source-edition-2.md) | 40 | `result-track:e3fc1279853f4f30e9264e97a9ac8cfa3d026977e430542f964548191acc3152` |
| 4 | `theorem` | [mem_centralizer_iff_commutator_eq_one'](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/mem-centralizer-iff-commutator-eq-one.md) | 46 | `result-track:a7bb117eee98758a11362f7c8b8b762be0b9d1ab7f7475fcab3134f0e1a685ba` |
| 5 | `lemma` | [mem_centralizer_singleton_iff](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/mem-centralizer-singleton-iff.md) | 52 | `result-track:d503173a585e867c12b179a4c3b67ba9c7ea5d3bc28bf1563b1703049aa19c7c` |
| 6 | `theorem` | [centralizer_univ](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-univ.md) | 58 | `result-track:dd1397db29fa125c7113fcbf09f35fa625f79cc839c5a62e50725cf68ab9397a` |
| 7 | `theorem` | [le_centralizer_iff](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/le-centralizer-iff.md) | 62 | `result-track:29a11ed8f7a2541e5a2ac385521582adabc867477b3efa2ada52c228cc616953` |
| 8 | `theorem` | [center_le_centralizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/center-le-centralizer.md) | 66 | `result-track:3ee586b2788d9593de1d863b78b8226d2d6d2cbbd152f3580cc17d2933742093` |
| 9 | `theorem` | [centralizer_le](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-le.md) | 70 | `result-track:d4f30a74ffd3dd8f49fc8eb111ad990f3ceffd1c55447a74ae182e917587b2a1` |
| 10 | `theorem` | [centralizer_eq_top_iff_subset](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 74 | `result-track:495d76376f1ac968f3e742ee7a621efd5ab0869de3568ff7fa29e14407273381` |
| 11 | `theorem` | [centralizer_center](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-center.md) | 78 | `result-track:2ba86d1ad2e3970aa3fcbc6a9da1d905bf34e0804070e2f6fdec04520055c2ea` |
| 12 | `theorem` | [map_centralizer_le_centralizer_image](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/map-centralizer-le-centralizer-image.md) | 82 | `result-track:3673e251e8eab6fa791e324f43ec4c765a707a2c291bd4733761eb5d2dad3b75` |
| 13 | `instance` | [normal_centralizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/normal-centralizer.md) | 88 | `declaration-track:9b34a81499c0e71bce4734e480b4838ddbbeb9fd08f54918db577854b830a710` |
| 14 | `instance` | [characteristic_centralizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/characteristic-centralizer.md) | 94 | `declaration-track:453b30b651f2140ac0d62608a8bf122cbc19f1d253fb7aed95e6c10eb11c1296` |
| 15 | `theorem` | [le_centralizer_iff_isMulCommutative](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/le-centralizer-iff-ismulcommutative.md) | 101 | `result-track:a8d0e6e44e61925d0117e91967a52bb8b53f69ca4e726f053b7fd642f0ce7897` |
| 16 | `theorem` | [le_centralizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/le-centralizer.md) | 108 | `result-track:a204a268650bdb139185d19bf88d93a5d91f3cce6523dc1ad4f0a32f896ffcf7` |
| 17 | `lemma` | [closure_le_centralizer_centralizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/closure-le-centralizer-centralizer.md) | 113 | `result-track:a403f0a6eb1e5edd09be6c9ff7cab5adcfde1963a30159f6b731845015695f31` |
| 18 | `theorem` | [centralizer_closure](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-closure.md) | 118 | `result-track:3122ba8dcfae7437c9103dd83aa9696a4352e6139d05960d51ca2bb3a5e18001` |
| 19 | `theorem` | [centralizer_eq_iInf](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-eq-iinf.md) | 123 | `result-track:eb4ad163eb6a290e6ef8a4bd54e6afc50e80090d7e8d8db3cf947e38042f2b1d` |
| 20 | `theorem` | [center_eq_iInf](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/center-eq-iinf.md) | 128 | `result-track:1fc72a25d5796b924c9825086760702689639c5daab98397a69971968acace01` |
| 21 | `theorem` | [center_eq_infi'](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/center-eq-infi.md) | 133 | `result-track:862a491c57fb005bef8c3d812b055e523612e2405a8d6888a785f4242c947938` |
| 22 | `theorem` | [isMulCommutative_closure](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/ismulcommutative-closure.md) | 140 | `result-track:17b8f5ac6faaed0d4c93721d9226c9eeaff8784f8686c2b8845df1545e40ee91` |
| 23 | `abbrev` | [closureCommGroupOfComm](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/closurecommgroupofcomm.md) | 150 | `declaration-track:5f38ff92d91fec119b09b0be4e3e162fd1a6455a4cd437bea7cd8727695d0f24` |
| 24 | `instance` | [instIsMulCommutative_closure](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/instismulcommutative-closure.md) | 156 | `declaration-track:59bcaf66a90b1fd8c9337b66dc7da4d8b11be8e3f2b5ffd48d7c23170e3d85f5` |
| 25 | `theorem` | [centralizer_le_normalizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/centralizer-le-normalizer.md) | 161 | `result-track:78ac78175bb658441b650b9ed4cf2b94cb7276ca582a0ec02cc4afafa166c86d` |
| 26 | `instance` | [normal_subgroupOf_centralizer_normalizer](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/normal-subgroupof-centralizer-normalizer.md) | 168 | `declaration-track:d5851b51ef37d49212ad915830389b3f0ff1ce66625f0b88d4fcc61cbe569920` |
| 27 | `theorem` | [normalizer_singleton](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/normalizer-singleton.md) | 176 | `result-track:f529fe9c0596910cfe68c03a452861ce478bb330110f9eface2b75c6bb241f91` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/instance.md) | 186 | `declaration-track:3a97f1b2fcbbb8dd19709cac5b726b68a9ad06b876bf695490ef3a4421c7215b` |
| 29 | `def` | [normalizerMonoidHom](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/normalizermonoidhom.md) | 195 | `declaration-track:e5d0a68563be4dab119dcd77c8e71219a9a37f9f9d98d768c3420a3bd37b25a0` |
| 30 | `theorem` | [normalizerMonoidHom_ker](../../../../GroupTheoryAndGeneralizations/SubgroupCentralizerPublic.lean/declarations/normalizermonoidhom-ker.md) | 198 | `result-track:dc1907ba3b4b1e94126b34f2e4847a78f2c4b412f92dcfe8d556aedfd3dafd0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a449259154f8068d700b0c89ae356baae40beeb5f8faa5cc1eac5bb560b27d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
