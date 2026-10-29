# Verification target: Cylinders Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f94d2f3a0ff3d5830d0500dc701143cb84e1896",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f94d2f3a0ff3d5830d0500dc701143cb84e1896`.

Source path: `GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean.json)

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
| 1 | `def` | [squareCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/squarecylinders.md) | 67 | `declaration-track:e0fa12eb60db03e78cd97f25c27219158c5fd4310ae698ea3298ab5f3f0f5f63` |
| 2 | `theorem` | [squareCylinders_eq_iUnion_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/squarecylinders-eq-iunion-image.md) | 70 | `result-track:84ea710a427b9000b13443c3ddb4c4e0215d8db85ffe733cd8d45dda6eb63cb0` |
| 3 | `theorem` | [isPiSystem_squareCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/ispisystem-squarecylinders.md) | 76 | `result-track:268cc7b11b186271e1306035e3584badd12b932af8140a359dc6009692d8a25b` |
| 4 | `theorem` | [comap_eval_le_generateFrom_squareCylinders_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/comap-eval-le-generatefrom-squarecylinders-singleton.md) | 120 | `result-track:4008e1218ecb9601ed3f473aa86ca24c10806a6736e25af6dd361bbcd8681562` |
| 5 | `theorem` | [generateFrom_squareCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/generatefrom-squarecylinders.md) | 144 | `result-track:2de32144e22cdadda4e107f861f029aa6caa07f283326963146f203f7d879c17` |
| 6 | `def` | [cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder.md) | 167 | `declaration-track:b6d7f23048a142b0d01a1b55d0db38154b84b8132288f36053f8db0a52fe6f24` |
| 7 | `theorem` | [mem_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/mem-cylinder.md) | 171 | `result-track:43b9cd376e10751328670a132b23279e044a204d94e83e49068ded41dffcd629` |
| 8 | `theorem` | [cylinder_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder-empty.md) | 176 | `result-track:d714fde66e07f7b5647e0db6da6d180744a940bec43fd770521011e17fc6bddf` |
| 9 | `theorem` | [cylinder_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder-univ.md) | 180 | `result-track:3e0ef327eb5f4d397ae4118fbba29662d9c3772ac349abd2a19dca6375bd4d38` |
| 10 | `theorem` | [cylinder_eq_empty_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder-eq-empty-iff.md) | 184 | `result-track:361d5064f61a7f324b7b7567550a609bd8a4a1686224337d8d64969355f069b5` |
| 11 | `theorem` | [inter_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/inter-cylinder.md) | 200 | `result-track:ae0a3ed9fcadf4f3497d4ec2e007fd42490d430e2f70984f9bfe0830a9875d09` |
| 12 | `theorem` | [inter_cylinder_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/inter-cylinder-same.md) | 207 | `result-track:83e3d7623041107dd1ade6705ae9b40c8a5bcbd992c60d8ddff8e08b11822744` |
| 13 | `theorem` | [union_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/union-cylinder.md) | 210 | `result-track:0278de28ad8215cc72cc23266f25601949e9dee48bbc9969f7906098ae5707cf` |
| 14 | `theorem` | [union_cylinder_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/union-cylinder-same.md) | 217 | `result-track:15ee7d38e6513744cbeb66835c4f058aea985786efe14a79130954bcbbf58a52` |
| 15 | `theorem` | [compl_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/compl-cylinder.md) | 220 | `result-track:16b8d9f2d9312ee87c5ec30de65cefaa105585f14d93b1a5cd805d0c8af90f4c` |
| 16 | `theorem` | [sdiff_cylinder_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/sdiff-cylinder-same.md) | 224 | `result-track:fb4d6854658ea77be12df30af9885138607a05a20e51a6b5959bf009bde85aa5` |
| 17 | `theorem` | [eq_of_cylinder_eq_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/eq-of-cylinder-eq-of-subset.md) | 230 | `result-track:c06d3fc8ef3ab1d06174551c15af92446ddc35af40c00bdd30ae0aba5f680203` |
| 18 | `theorem` | [cylinder_eq_cylinder_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder-eq-cylinder-union.md) | 243 | `result-track:8c4359fd9e32963574c522ccca6769e9302409471ac986c4b45be6cd61715691` |
| 19 | `theorem` | [disjoint_cylinder_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/disjoint-cylinder-iff.md) | 249 | `result-track:c58af7770e870097ba7d08a00828b10ea2cb69531c4df96a5e20eb3178e48c57` |
| 20 | `theorem` | [IsClosed.cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/isclosed-cylinder.md) | 257 | `result-track:a6db29086ee03d3e4c5b22943d7fb050ae2117815c110bfee8ece4ce440c5948` |
| 21 | `theorem` | [Cylinders Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder-source-line-261-occurrence-2.md) | 261 | `result-track:5c4d8e3a79bd06e34fb6841f80f96ae3fcaed8cd0f0e6916ea572a173d4219c8` |
| 22 | `theorem` | [dependsOn_cylinder_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/dependson-cylinder-indicator-const.md) | 267 | `result-track:b657bc40c296694551d5049fb9390e96aa4aa1b3dc7a288ba6e2cb91880e7360` |
| 23 | `def` | [measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurablecylinders.md) | 279 | `declaration-track:b0751ba4e4e30288f505ed44cae61de049016e008d4e0e68fd54519ac06b9243` |
| 24 | `theorem` | [empty_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/empty-mem-measurablecylinders.md) | 282 | `result-track:21e709058d5239c842156deef6c7c971092f85dc3b0549deea2f75c254247fbe` |
| 25 | `theorem` | [mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/mem-measurablecylinders.md) | 290 | `result-track:40a771cd5db2cddc4beffec56024930783b22c70d328c32edf58da37ae9f7b4e` |
| 26 | `theorem` | [Cylinders Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/of-mem-measurablecylinders.md) | 295 | `result-track:bbfbfdb1a0340cd807e0efdb9e6ea04e8b66575e3737cd6438ce194c8fd41e82` |
| 27 | `def` | [measurableCylinders.finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurablecylinders-finset.md) | 301 | `declaration-track:081814567aaeefd04eb935b6e431c62545b17f355d812e610e36e71a1a858df8` |
| 28 | `def` | [measurableCylinders.set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurablecylinders-set.md) | 307 | `declaration-track:fb07a3c458f6401eee03f4a9937b3eeb8967c963c97ba5ff9d1a674620bec089` |
| 29 | `theorem` | [measurableCylinders.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurablecylinders-measurableset.md) | 311 | `result-track:e50c62df45ccc42a40a21e52ec16a591dd96c9251f67a632597d66764d86c97f` |
| 30 | `theorem` | [measurableCylinders.eq_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurablecylinders-eq-cylinder.md) | 315 | `result-track:3301e96607107fd94a9138a993347a9ef5c2451cd942d26c0d4b44f659b70cda` |
| 31 | `theorem` | [cylinder_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinder-mem-measurablecylinders.md) | 319 | `result-track:9afe1e9c871ce18e0fc27654807fa5b1067ef56810ef40965dd76c86a5e8becb` |
| 32 | `theorem` | [inter_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/inter-mem-measurablecylinders.md) | 324 | `result-track:425084b5a303ee8cf62b19f9de0b039e7858cdb6320f2080b3588d23af367482` |
| 33 | `theorem` | [isPiSystem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/ispisystem-measurablecylinders.md) | 339 | `result-track:585b8dfd36608fcd54f9f345e07314af2502f929ec5d39766973e88b9981de38` |
| 34 | `theorem` | [compl_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/compl-mem-measurablecylinders.md) | 342 | `result-track:5d09daf3c8b1398f6751b2b68d468433273b172a8b245c33b5106635c9131b40` |
| 35 | `theorem` | [univ_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/univ-mem-measurablecylinders.md) | 349 | `result-track:446c6923fd0706e86eaae901af82fa367053a48015a34c0d8156eed784b96f13` |
| 36 | `theorem` | [union_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/union-mem-measurablecylinders.md) | 353 | `result-track:cb7a0f832f179b91cd529db92e628fc2feba12de5ab9bf33b76d8348c636cf62` |
| 37 | `theorem` | [sdiff_mem_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/sdiff-mem-measurablecylinders.md) | 360 | `result-track:65b5e6cc426f722e80c75b2c3c3e3f83f58d683ffc2b4c4531604346474be8de` |
| 38 | `theorem` | [generateFrom_measurableCylinders](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/generatefrom-measurablecylinders.md) | 370 | `result-track:31740d8470a865bb340a1b809f6b60d61215a677d78900bc4ff26c2830e84db9` |
| 39 | `theorem` | [measurableCylinders_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurablecylinders-nat.md) | 388 | `result-track:37f4a214f295de5b474d7b37522fac048046a756cf0a3518b55393696a9b4a02` |
| 40 | `def` | [cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinderevents.md) | 412 | `declaration-track:77f9b4764f3bb985cef0ef2e3daf9a9eb4ba64cbe3f6c9b8b9dbe0b30d3d3d8f` |
| 41 | `lemma` | [cylinderEvents_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinderevents-univ.md) | 414 | `result-track:e0856b3b9855d47351a98a318ead6d6189c61a2b0030206a2a96e2b4dbdfd52c` |
| 42 | `lemma` | [cylinderEvents_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinderevents-mono.md) | 418 | `result-track:a1f56a548b9f27da152734ff44c2019d165f6d65f719d592f9c3da3188a4ad23` |
| 43 | `lemma` | [cylinderEvents_le_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/cylinderevents-le-pi.md) | 421 | `result-track:6f004915204a19d7c9deb33333065cc8adefecc1ea7f8135d2648c14370a3b94` |
| 44 | `lemma` | [measurable_cylinderEvents_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-cylinderevents-iff.md) | 424 | `result-track:821f72b8aa22b0ba91ff86393824c3c1f897896c8e0c5f39f7246f0ece39879d` |
| 45 | `lemma` | [measurable_cylinderEvent_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-cylinderevent-apply.md) | 430 | `result-track:f42946e4c2e6a11d4ba6f4c80f45c1971a934a9a9143443b33b6c769f6dfb7b1` |
| 46 | `lemma` | [Measurable.eval_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-eval-cylinderevents.md) | 434 | `result-track:baccbb48853d38a1254d7c16b1798bd78a9f5c4729a451ee892574cb4cfacbe7` |
| 47 | `lemma` | [measurable_cylinderEvents_lambda](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-cylinderevents-lambda.md) | 439 | `result-track:0a93fc9dd709e9825b6733347475b868574bea8e6dc1105a4e75ade64a5592d3` |
| 48 | `lemma` | [measurable_update_cylinderEvents'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-update-cylinderevents.md) | 444 | `result-track:7d7c0a61f147eced24ca98f449ead3272d895a18e43a0ee8064be7edd040c87c` |
| 49 | `lemma` | [measurable_uniqueElim_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-uniqueelim-cylinderevents.md) | 456 | `result-track:9aeb9c3e13e6bd0361c3a6bbd33882e9fd198e469029e8a43a4a90b138208f31` |
| 50 | `lemma` | [measurable_update_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-update-cylinderevents-source-edition-2.md) | 464 | `result-track:e5ceb4db317cdd2b3f6cec1ae3fc90fbd37ed9166146280d1366eb5652580900` |
| 51 | `lemma` | [measurable_update_cylinderEvents_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-update-cylinderevents-left.md) | 468 | `result-track:740b04707257a7f677e0fc796ba877496ec1653642e49f609ca6c6e8073b508e` |
| 52 | `lemma` | [measurable_restrict_cylinderEvents](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurable-restrict-cylinderevents.md) | 472 | `result-track:245fd86e726bcde3a833bd579bb79b31ed364393b22f38c76dcf7c448e434bef` |
| 53 | `lemma` | [MeasurableSet.eq_preimage_restrict_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CylindersNamespacedPublic.lean/declarations/measurableset-eq-preimage-restrict-countable.md) | 479 | `result-track:2d2aa34eab4d2fca0a243fb994318c7ee7a05cd66e9a8e2e50eae08a3fe29ced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a657dd112361653e88896d67f3347d9ed6098f5f0576fb8744f1d6414534f10a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
