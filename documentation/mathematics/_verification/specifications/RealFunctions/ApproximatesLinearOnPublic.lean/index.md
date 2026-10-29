# Verification target: Approximates Linear On Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d75ddb3bbe6f531173385923a26047466281968",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variant9ca419fe2f23a280cd13e6273acd0d56b6f3a9c7b13b2897500e6cbb214318e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/index.md) · [Full source](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d75ddb3bbe6f531173385923a26047466281968`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variant9ca419fe2f23a280cd13e6273acd0d56b6f3a9c7b13b2897500e6cbb214318e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximatesLinearOn/Variant9ca419fe2f23a280cd13e6273acd0d56b6f3a9c7b13b2897500e6cbb214318e6.lean.json)

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
| 1 | `def` | [ApproximatesLinearOn](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/approximateslinearon.md) | 72 | `declaration-track:f0a5fa941e0cfcaaad2124761100dc78351c2e16a8136376094997458a1d6796` |
| 2 | `theorem` | [approximatesLinearOn_empty](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/approximateslinearon-empty.md) | 76 | `result-track:b2d74e418e41774d8a1fc776f8cdea72db22afa908db0b4aecd3a192e5b33bdf` |
| 3 | `theorem` | [mono_num](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/mono-num.md) | 91 | `result-track:14c6c834d636ea5b530a7326dc0886190b2535cd8bb66e6a6855f7611bb8f1dc` |
| 4 | `theorem` | [mono_set](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/mono-set.md) | 95 | `result-track:525415f0106bf84b4a634de474bf74e14861cf0b5d2de816ee54497d64b50ca2` |
| 5 | `theorem` | [approximatesLinearOn_iff_lipschitzOnWith](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/approximateslinearon-iff-lipschitzonwith.md) | 98 | `result-track:cac70030b19042ab0b7f9e90c7cabca97563ccebc7750eb80f6a7317c04a4c77` |
| 6 | `theorem` | [lipschitz_sub](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/lipschitz-sub.md) | 107 | `result-track:d15e0b9913e2620fd0b0476387df2afafeef791b57f0667eedb44274090a9e83` |
| 7 | `theorem` | [lipschitz](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/lipschitz.md) | 111 | `result-track:535827e7321143cb125fc17e1370d61013a06a4007050e19cf5ff9939e1e606b` |
| 8 | `theorem` | [continuous](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/continuous.md) | 116 | `result-track:a423f30300a4c5f7c165e7d420f88410b2efaddb67a1a45be6c6bbd58db5beb2` |
| 9 | `theorem` | [continuousOn](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/continuouson.md) | 119 | `result-track:301c402d4d8481c643dcd3fec031a35bc31f9b6a2d76242f1802daa8a94d7b4c` |
| 10 | `theorem` | [surjOn_closedBall_of_nonlinearRightInverse](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/surjon-closedball-of-nonlinearrightinverse.md) | 138 | `result-track:7099584be0078f72b9ab236a147a0ca6e81ed9ce65a17147ccad0ebf8cf19fbe` |
| 11 | `theorem` | [open_image](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/open-image.md) | 275 | `result-track:a8c19108ee51adbc25a915273c828fb8171547186c3808c3b576e452a06c4089` |
| 12 | `theorem` | [image_mem_nhds](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/image-mem-nhds.md) | 285 | `result-track:1cfececd97c3d23b356c61a3afb0fd82fd16d7defa877e7d21d73abf810550d9` |
| 13 | `theorem` | [map_nhds_eq](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/map-nhds-eq.md) | 291 | `result-track:aae8df2a2bcf942bee1169df07b24bfe21dd4a59ace04283d82af94062a97289` |
| 14 | `theorem` | [antilipschitz](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/antilipschitz.md) | 312 | `result-track:323be498d802f74c405a27c3752e5502c40dda982c680b8596ba4b0ab78b108e` |
| 15 | `theorem` | [injective](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/injective.md) | 319 | `result-track:0f8873293c7bfce20b78649a3af3b7f1e754dcaab68fa4297c236567fcb1f12c` |
| 16 | `theorem` | [injOn](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/injon.md) | 323 | `result-track:87f16bef4aa615c406fa290910ff9f8f33f11ce608e9ed101438fb8f15683ed8` |
| 17 | `theorem` | [surjective](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/surjective.md) | 327 | `result-track:f3729424dbfb4a24f507f88fa00f5cca797d2989d6bc317548ab62b1e510bd98` |
| 18 | `def` | [toPartialEquiv](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/topartialequiv.md) | 348 | `declaration-track:d7ead7701a990f878f409efa976be3331c56c2bbbf484ce4435b20fcedb43f6f` |
| 19 | `theorem` | [inverse_continuousOn](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/inverse-continuouson.md) | 354 | `result-track:9019e0a389de106cd6663c029ca6d13f2d5ba2d4a79f07a6cf19daadbf9f8b01` |
| 20 | `theorem` | [to_inv](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/to-inv.md) | 361 | `result-track:ef7705106cdb71328549ecab99d6474f2a4520cb204f2320824fe5548f5cc242` |
| 21 | `def` | [toOpenPartialHomeomorph](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/toopenpartialhomeomorph.md) | 392 | `declaration-track:ac54b3d3640239051afec6d61f0e4ae242d88ff2938ea93a1dc2a1f4d7e0cdfd` |
| 22 | `theorem` | [toOpenPartialHomeomorph_coe](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/toopenpartialhomeomorph-coe.md) | 402 | `result-track:49989cd56c61ddcbd1468dcb1b1f8315fc867d630f30679bdb64273c9c2f2e70` |
| 23 | `theorem` | [toOpenPartialHomeomorph_source](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/toopenpartialhomeomorph-source.md) | 408 | `result-track:2a03962c9fe83125089426b1233f08919f39f160388e5006c25d88c816ccb129` |
| 24 | `theorem` | [toOpenPartialHomeomorph_target](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/toopenpartialhomeomorph-target.md) | 414 | `result-track:896b4d93c06f7d6a993e8b2b32698b3fd257ddcf8cc6c07db0fa5e658234f59b` |
| 25 | `def` | [toHomeomorph](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/tohomeomorph.md) | 420 | `declaration-track:5d26327b5716874a1b4f84478f881a3ffbe46c211d53b985ac263ebdf487af4d` |
| 26 | `theorem` | [closedBall_subset_target](../../../../RealFunctions/ApproximatesLinearOnPublic.lean/declarations/closedball-subset-target.md) | 429 | `result-track:770331477e46f9569e46e4487b9a384707d89c900677f9d6486fd938717b6f2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5800cffbcdb3bd1ab23a2d39c4607e6486c0048dffbe72a3e9a27f080c08205c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variant9ca419fe2f23a280cd13e6273acd0d56b6f3a9c7b13b2897500e6cbb214318e6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ApproximatesLinearOn/Variant9ca419fe2f23a280cd13e6273acd0d56b6f3a9c7b13b2897500e6cbb214318e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
