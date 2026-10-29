# Verification target: Cylinders Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a31aec2a38595ba9c7c99b37c20c019d16a3d0f",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variantab1a14df6cdb3e6afff1eda45732ca8dd2ec356ed558796333f99b74df3c1fbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a31aec2a38595ba9c7c99b37c20c019d16a3d0f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Cylinders/Variantab1a14df6cdb3e6afff1eda45732ca8dd2ec356ed558796333f99b74df3c1fbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Cylinders/Variantab1a14df6cdb3e6afff1eda45732ca8dd2ec356ed558796333f99b74df3c1fbe.lean.json)

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
| 1 | `def` | [squareCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/squarecylinders.md) | 59 | `declaration-track:2bc676739e64d3c0033ae24a6d8d5f8868a62a0cf8b009bcad0bf8eb28682f44` |
| 2 | `theorem` | [squareCylinders_eq_iUnion_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/squarecylinders-eq-iunion-image.md) | 62 | `result-track:c43fb9e2bd41773b01df9fd34b86598b2ea4e82b417770075a84d88c03ae7237` |
| 3 | `theorem` | [isPiSystem_squareCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/ispisystem-squarecylinders.md) | 68 | `result-track:61121f0c721fc7643e8de8a409ecd26b843f281bb9f0188a88a508534f99d1c6` |
| 4 | `theorem` | [comap_eval_le_generateFrom_squareCylinders_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/comap-eval-le-generatefrom-squarecylinders-singleton.md) | 112 | `result-track:8dfb30157a30529819f8c75c51e029ced94848902e15c60fc995fc6a7ac95289` |
| 5 | `theorem` | [generateFrom_squareCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/generatefrom-squarecylinders.md) | 136 | `result-track:1f90978e81c1f1f8f975b056c848d021c4d9d29bb4ad88eae04411587c9c2343` |
| 6 | `def` | [cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinder.md) | 159 | `declaration-track:ee8691c18051f744a4733c4d8908bfe1fd8b0cf28e63e6f2083cac09e369acae` |
| 7 | `theorem` | [mem_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/mem-cylinder.md) | 163 | `result-track:ccdff41e5d5e2aed49a766b6a1659f2315b2ec7b7cac40c5cca4ce3abd19ffd7` |
| 8 | `theorem` | [cylinder_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinder-empty.md) | 168 | `result-track:b32ca9c7582e79a80c45a9b7e4d913d4ffaa6da8e345a4bf73cc1c6acc4425e9` |
| 9 | `theorem` | [cylinder_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinder-univ.md) | 172 | `result-track:eaf2453a635a4df624c927d0849514bb096b897b530260cbea6949f1eb6c9d21` |
| 10 | `theorem` | [cylinder_eq_empty_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinder-eq-empty-iff.md) | 176 | `result-track:a3a9b7ad3811317841ab602a25eb52dc2f950e28cbc662ddb7cf15462ee9d88f` |
| 11 | `theorem` | [inter_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/inter-cylinder.md) | 192 | `result-track:f762a0240625d78c5542712a2b83f5a2c184877afab3532f7450d8b72a6ea717` |
| 12 | `theorem` | [inter_cylinder_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/inter-cylinder-same.md) | 199 | `result-track:17aa5456fe0623d9daf7b311cf3466ac43c1f612bf6f1faca66a5a8d7f6f3a00` |
| 13 | `theorem` | [union_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/union-cylinder.md) | 202 | `result-track:c8b498f40973c0a46bcc212dd722acda47b6e62d5d617ebaff42fc9bb3cfb78e` |
| 14 | `theorem` | [union_cylinder_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/union-cylinder-same.md) | 209 | `result-track:c540971a8b3bdcbcbd01594e3d8734795d224ab243c726bb5679424950785024` |
| 15 | `theorem` | [compl_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/compl-cylinder.md) | 212 | `result-track:5c97078aca44c448ea820ee21034454042e7dbc4b60572e0df067fbeca70d331` |
| 16 | `theorem` | [sdiff_cylinder_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/sdiff-cylinder-same.md) | 216 | `result-track:31c7afd0ea806db52b46e6e3963303e71589cbf52186cb7e29b84c72db8591a2` |
| 17 | `theorem` | [eq_of_cylinder_eq_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/eq-of-cylinder-eq-of-subset.md) | 222 | `result-track:9217f8cf1a1635a06ceb66b9ba37ec45dceed8b834cf5cb6b001efca6e2cb7b9` |
| 18 | `theorem` | [cylinder_eq_cylinder_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinder-eq-cylinder-union.md) | 235 | `result-track:1bea036e23304c49d45771eab870557af73c1dd9bddce61fa8c885a755c1c80a` |
| 19 | `theorem` | [disjoint_cylinder_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/disjoint-cylinder-iff.md) | 241 | `result-track:63a5f19ed297336a726e098bc2225019e7207b3b4888d42dd1885eb5aba9a9cc` |
| 20 | `theorem` | [IsClosed.cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/isclosed-cylinder.md) | 249 | `result-track:7c2c2a2340d1815a9e313bb78d54cbb9317d706a38a6b9c6ad8c3aef98915907` |
| 21 | `theorem` | [_root_.MeasurableSet.cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/root-measurableset-cylinder.md) | 253 | `result-track:1895f16a6379677ebb91bacd5ca723704417362166bd8ab718d830e3d702bcd1` |
| 22 | `theorem` | [dependsOn_cylinder_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/dependson-cylinder-indicator-const.md) | 259 | `result-track:192241f81c225a52fdc81e67fc64152e05a33fe819279749957bff189c361081` |
| 23 | `def` | [measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurablecylinders.md) | 271 | `declaration-track:51a484225a1bb01e8a787083581bcb2fff1b36f03e5f2e74c67b576565f26895` |
| 24 | `theorem` | [empty_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/empty-mem-measurablecylinders.md) | 274 | `result-track:5eb82b3102cc8329627b23d332a96f2a7c2a269836fb07fb019a0dadfe28a16f` |
| 25 | `theorem` | [mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/mem-measurablecylinders.md) | 282 | `result-track:edbf72e7ef114f697b05eadba2eda7d6ab202b87156e3f3d70e12ae2e5f766b9` |
| 26 | `theorem` | [_root_.MeasurableSet.of_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/root-measurableset-of-mem-measurablecylinders.md) | 287 | `result-track:a0c6a27b5367666ab445eceeee2c38edd5f5a6fc2ea6fad014cce6191a2fe373` |
| 27 | `def` | [measurableCylinders.finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurablecylinders-finset.md) | 293 | `declaration-track:363910130b9df538ac405752bac24b69fe040938dded8874bb437e6c43e79c84` |
| 28 | `def` | [measurableCylinders.set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurablecylinders-set.md) | 299 | `declaration-track:f76250b10e92a28bf343fe6e597cb0428ff89ec3417745d71568bfa17388e845` |
| 29 | `theorem` | [measurableCylinders.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurablecylinders-measurableset.md) | 303 | `result-track:702acf340d8aab99746d9cbc4ff629394ebe1a809d923b6c97e59d92eae2bd74` |
| 30 | `theorem` | [measurableCylinders.eq_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurablecylinders-eq-cylinder.md) | 307 | `result-track:f4eb99b125deae82c9cd7c22f259d6bedc9b14255ecd280212af46786aab8feb` |
| 31 | `theorem` | [cylinder_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinder-mem-measurablecylinders.md) | 311 | `result-track:2d6cc51bdd1b6777756d4991531ec4b8693b62847d96cb3e1c66730dc8e069a8` |
| 32 | `theorem` | [inter_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/inter-mem-measurablecylinders.md) | 316 | `result-track:61f4646e0e9301cbc472034d560acc3a82cb31068e1abefd56f1fb39056990bf` |
| 33 | `theorem` | [isPiSystem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/ispisystem-measurablecylinders.md) | 331 | `result-track:dcd99afdaf268ac2e11136480df832519881affa392dcc7711702695386ee1ba` |
| 34 | `theorem` | [compl_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/compl-mem-measurablecylinders.md) | 334 | `result-track:297c3ee425c0fd711ec51220194d7047be3d86b593e2fa0966a98cedaff91642` |
| 35 | `theorem` | [univ_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/univ-mem-measurablecylinders.md) | 341 | `result-track:278fcd15b340f317dd6b3e76bfc6dec96d0e3e59a3e24162359250ad239e73a0` |
| 36 | `theorem` | [union_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/union-mem-measurablecylinders.md) | 345 | `result-track:dc809b613a77b9cd2f8e6124b6462f194c7d948998796ac1a5f42aa89970c712` |
| 37 | `theorem` | [sdiff_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/sdiff-mem-measurablecylinders.md) | 352 | `result-track:334e1ace10c80ea8ef883fca10c96ffa462e70e7be74178cc147948f7f483f46` |
| 38 | `theorem` | [generateFrom_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/generatefrom-measurablecylinders.md) | 362 | `result-track:9eecdcf18975917b542803433e66f758c4392100434f77a13691f55418c219e1` |
| 39 | `theorem` | [measurableCylinders_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurablecylinders-nat.md) | 380 | `result-track:9d9b89966d8029d34dfc8414ca371d168bc0f0e3e77cf359bc023fcb12ebd173` |
| 40 | `def` | [cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinderevents.md) | 404 | `declaration-track:4645ebbd2612f1e2421337e99285da56cf2e8f548c1b54c9cdf22d97c43828b1` |
| 41 | `lemma` | [cylinderEvents_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinderevents-univ.md) | 406 | `result-track:cc41c1ab2d4ab5efdaca02bce722650907a67539a010f5e9507154fb65c00ff8` |
| 42 | `lemma` | [cylinderEvents_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinderevents-mono.md) | 410 | `result-track:5ca11b78ad8f37c5b3a2e31a5860488f6e4ad0ec5c7844d084ed148269ff33c6` |
| 43 | `lemma` | [cylinderEvents_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/cylinderevents-le-pi.md) | 413 | `result-track:b64063417418757b7450eb7ad38ff802d49b725207c42a47cffb41e692a2f203` |
| 44 | `lemma` | [measurable_cylinderEvents_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-cylinderevents-iff.md) | 416 | `result-track:d0ab082877da85ed37a002ef68742861dc098d6e5cf50d3f129d5275a1a416e9` |
| 45 | `lemma` | [measurable_cylinderEvent_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-cylinderevent-apply.md) | 422 | `result-track:943988b90bb0c8a6233bede124867c7bc19a743455d7c11bbe549a26bcb73c53` |
| 46 | `lemma` | [Measurable.eval_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-eval-cylinderevents.md) | 426 | `result-track:2401b2f149ca854be55ca03aa959b02e8b225005969bd3b5d7c62ce5fece72f4` |
| 47 | `lemma` | [measurable_cylinderEvents_lambda](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-cylinderevents-lambda.md) | 431 | `result-track:25817e4d1ecd73a87dd6aac8b736e52c684b4981f568f0878fd7537813386b7c` |
| 48 | `lemma` | [measurable_update_cylinderEvents'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-update-cylinderevents-source-edition-2.md) | 436 | `result-track:b4c0d26efede13039dbdd6d30c1465c17d88b4810bbf4fdbb7a66aa9e9d0c4cd` |
| 49 | `lemma` | [measurable_uniqueElim_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-uniqueelim-cylinderevents.md) | 448 | `result-track:b4a5793173ec81f0ec2a120ae65bc00e81881304f0ea710a8e0f8d1d4f2bb161` |
| 50 | `lemma` | [measurable_update_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-update-cylinderevents.md) | 456 | `result-track:41c9f421a76d3bcacdcda0d4116b9355bd03f9d8d59d0eb5647c2a3ae985d548` |
| 51 | `lemma` | [measurable_update_cylinderEvents_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-update-cylinderevents-left.md) | 460 | `result-track:f30ba19e7e47b85dc39460774fc489acb201b80bca36f8a336ba2d475f910381` |
| 52 | `lemma` | [measurable_restrict_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurable-restrict-cylinderevents.md) | 464 | `result-track:308024b60fc0804911868d6da5cafaca46cd3cfc7e07f840f3aa8ec17bf38387` |
| 53 | `lemma` | [MeasurableSet.eq_preimage_restrict_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersPublic.lean/declarations/measurableset-eq-preimage-restrict-countable.md) | 471 | `result-track:37f87b1453a0674a3c9551b1f2e69c1f4f983ed9d70160fc45ce2479bd65673c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64bfaf4ffb3dfdeb939c1f3030dad7c3dac6c7ffc41bc4ccf309ef59ff5c9d6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Cylinders/Variantab1a14df6cdb3e6afff1eda45732ca8dd2ec356ed558796333f99b74df3c1fbe.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Cylinders/Variantab1a14df6cdb3e6afff1eda45732ca8dd2ec356ed558796333f99b74df3c1fbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
