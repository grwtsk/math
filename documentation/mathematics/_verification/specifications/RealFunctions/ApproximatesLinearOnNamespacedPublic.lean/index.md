# Verification target: Approximates Linear On Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb31e17cf426f33c74a6f72555a5a1dfa202e6a2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb31e17cf426f33c74a6f72555a5a1dfa202e6a2`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean.json)

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
| 1 | `def` | [ApproximatesLinearOn](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/approximateslinearon.md) | 80 | `declaration-track:c9daf07a218d686945fa6747f386c6d365ffad0119bcc3fa9bde95d7aee51eb0` |
| 2 | `theorem` | [approximatesLinearOn_empty](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/approximateslinearon-empty.md) | 84 | `result-track:e7e3c162b60440b44fbca365fb2f30760b4a60dea6c4e8bcc97ab5311caed351` |
| 3 | `theorem` | [mono_num](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/mono-num.md) | 99 | `result-track:7e1b1e419391d56afdf5cec3aa8957f8d2e3a10a10e185f56fda073cb4d5566a` |
| 4 | `theorem` | [mono_set](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/mono-set.md) | 103 | `result-track:434a6f32c235c86022ad51f8d44a1fde64dfb558fd3929ba8f62e39a696751e6` |
| 5 | `theorem` | [approximatesLinearOn_iff_lipschitzOnWith](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/approximateslinearon-iff-lipschitzonwith.md) | 106 | `result-track:2ddaf3b5f23d6aadddd6494b282bc76536c454d6afc4e4b4c25dd85ef1793a6d` |
| 6 | `theorem` | [lipschitz_sub](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/lipschitz-sub.md) | 115 | `result-track:52d04f60d946d69f8e88b631a57c211e42db9cb8645a4f015f5fbcee9ab4bd5e` |
| 7 | `theorem` | [lipschitz](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/lipschitz.md) | 119 | `result-track:23b16182ede209484863a220639dace3a097311754cebcddcef60e82bd9389bc` |
| 8 | `theorem` | [continuous](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/continuous.md) | 124 | `result-track:42cf0683726e23c7d8978e62d3e36c1bfdf8c27e455e8a6489d1857cbc281585` |
| 9 | `theorem` | [continuousOn](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/continuouson.md) | 127 | `result-track:e853bf86b858d3bdc1ddeae92556482575e4c7479680a805be1469afef704ec1` |
| 10 | `theorem` | [surjOn_closedBall_of_nonlinearRightInverse](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/surjon-closedball-of-nonlinearrightinverse.md) | 146 | `result-track:c29e157f443bf55b16c5850c5fe47b050a249cfdeebccd7a38731fca29840950` |
| 11 | `theorem` | [open_image](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/open-image.md) | 283 | `result-track:2e198b4e08c82790e508ab2ebd8f1ca6e6a00246361a8dda915224dc2b9fb08d` |
| 12 | `theorem` | [image_mem_nhds](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/image-mem-nhds.md) | 293 | `result-track:c4d3aa6c02429c1515c8ccd267980f8612251c10e04a1b71358951d8f7a84cc4` |
| 13 | `theorem` | [map_nhds_eq](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/map-nhds-eq.md) | 299 | `result-track:8c4dfed0cb4f4703c5287c11235cd25b152415e5f12e3fd6952e0e8bae521810` |
| 14 | `theorem` | [antilipschitz](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/antilipschitz.md) | 320 | `result-track:200d4fa37991b005fed725d65d26f0e1ece4356fb570fa2f201ceca1baa57512` |
| 15 | `theorem` | [injective](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/injective.md) | 327 | `result-track:0ea19d93e8542273eece4db6eb9e0601fa114af6ab04ec3b326b2f4bc4b30f39` |
| 16 | `theorem` | [injOn](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/injon.md) | 331 | `result-track:4ac605b9060145055d62c167acc01783688b43a9d0fa291f5093066c772db3b5` |
| 17 | `theorem` | [surjective](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/surjective.md) | 335 | `result-track:2a76dcb7825ec3ccfd7641a735df5464a0df29cdbba27165de2cfc60d445450f` |
| 18 | `def` | [toPartialEquiv](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/topartialequiv.md) | 356 | `declaration-track:a99714c37870a9483018a889dc894ed81a9ac8918650ff8738c16093145ff931` |
| 19 | `theorem` | [inverse_continuousOn](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/inverse-continuouson.md) | 362 | `result-track:6211292e7072f886ef0d8bcda52946a3a7c95ec8230a1aa176f319cd47fa144a` |
| 20 | `theorem` | [to_inv](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/to-inv.md) | 369 | `result-track:117f50b853d841850b4c244f695d6850995a46248d890b84e128336b6539e65b` |
| 21 | `def` | [toOpenPartialHomeomorph](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/toopenpartialhomeomorph.md) | 400 | `declaration-track:6937b5334a6fb7e22f346b62dd882d79ff2a99e5436ff9b615e9844e79061528` |
| 22 | `theorem` | [toOpenPartialHomeomorph_coe](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/toopenpartialhomeomorph-coe.md) | 410 | `result-track:d1ef0a6f119cf56654e6090bf3e8f23893215e2c1eeb94f3dc60e104b8ff4a3c` |
| 23 | `theorem` | [toOpenPartialHomeomorph_source](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/toopenpartialhomeomorph-source.md) | 416 | `result-track:ec1ebe6581eceb3354b272bc9f6dda0adf02030a8e2f8e11d751c14e98e12cc8` |
| 24 | `theorem` | [toOpenPartialHomeomorph_target](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/toopenpartialhomeomorph-target.md) | 422 | `result-track:911b857003e207d32c3f62e3656465e9213ebcefbbfc7524e4936a9ab2d4a747` |
| 25 | `def` | [toHomeomorph](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/tohomeomorph.md) | 428 | `declaration-track:361e9c4f00440925ede8b685dab1bf0ee867dd075fcf8d7c849cd6b224f44e1e` |
| 26 | `theorem` | [closedBall_subset_target](../../../../RealFunctions/ApproximatesLinearOnNamespacedPublic.lean/declarations/closedball-subset-target.md) | 437 | `result-track:26f68fd9d46dce60135d3ef90564831ad3756eb14364e816aa9b5606b97f95d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4ce4d0538c0c2ef8c7814cb9a18c24a29a471e53cf9b0e24ef7d3d1078c27b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
