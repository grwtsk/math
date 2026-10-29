# Verification target: Eval Coeff Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d4016418f957af6f9cb80f36069fbd333183fd4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant615908481d1050ab457a4a96ecaaf9e2b4aec639035ead4d34f57d33fd0ffb3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d4016418f957af6f9cb80f36069fbd333183fd4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant615908481d1050ab457a4a96ecaaf9e2b4aec639035ead4d34f57d33fd0ffb3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant615908481d1050ab457a4a96ecaaf9e2b4aec639035ead4d34f57d33fd0ffb3d.lean.json)

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
| 1 | `theorem` | [eval₂_at_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-at-zero.md) | 42 | `result-track:0e7f5730017b78b35c30a6535ee9e0e3415ea06ab8318c86f1c7dd93440df628` |
| 2 | `theorem` | [eval₂_C_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-c-x.md) | 48 | `result-track:10121eea2f26820f78da4d269acaaf01b2860ef6b9a565b624f85cc4834a2157` |
| 3 | `theorem` | [coeff_zero_eq_eval_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/coeff-zero-eq-eval-zero.md) | 56 | `result-track:9fa50973f4cb732509c558c249aa94139507aa6d00293a6e4e2cc171e9f7b9bb` |
| 4 | `theorem` | [zero_isRoot_iff_coeff_zero_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/zero-isroot-iff-coeff-zero-eq-zero.md) | 64 | `result-track:9d6ec4e7d98aab14c69a3ab1de44a42362e9ba243df52d5084c756105b23ac5b` |
| 5 | `theorem` | [coeff_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/coeff-map.md) | 78 | `result-track:fafdda7730a7c38bcc8c6c8eae929e836330319d96f1efd2c93d2af9b19a9779` |
| 6 | `lemma` | [coeff_map_eq_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/coeff-map-eq-comp.md) | 82 | `result-track:9ee9c43164735dfb20687a2a0bfc8bd5ecf64a17f32f7ba54fc44f2ad77b4451` |
| 7 | `theorem` | [map_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-map.md) | 85 | `result-track:2dd887cc6d39553abf938e1f33c42b0a45aee7766bdd70be04abf1cb5cd50832` |
| 8 | `theorem` | [map_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-id.md) | 89 | `result-track:0ae105d71ac0ca0a664c81dffbde058dedecc09121b74130233c79a0a6577584` |
| 9 | `def` | [piEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/piequiv.md) | 93 | `declaration-track:f3effe89857865ec4925089a690947caae989900ca91833bfc4876b91263c724` |
| 10 | `theorem` | [map_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-injective.md) | 102 | `result-track:b18c842d212969b821a3170d700b587c28b48bd70f5deb3989aaa4a8b5788ac2` |
| 11 | `theorem` | [map_injective_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-injective-iff.md) | 105 | `result-track:531cd4934930d6092b986e5ebe7fa8a195943c9f5fafd11fe9f71ee7305e9dea` |
| 12 | `theorem` | [map_surjective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-surjective.md) | 108 | `result-track:3b1294d89aaea780470c0e43d62b12b87095ec42e8d7b80e3af89f441c3850e6` |
| 13 | `theorem` | [map_surjective_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-surjective-iff.md) | 115 | `result-track:f40c70d6033d944e2d2274809a24c190759d4d7e2299272fd4b84bda4e716fe9` |
| 14 | `theorem` | [map_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-eq-zero-iff.md) | 120 | `result-track:984dd72d3f469971c7e8c044dc91f3fbd9cf28efb7d296a10b599296fb14bb22` |
| 15 | `theorem` | [map_ne_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/map-ne-zero-iff.md) | 123 | `result-track:bf692be37c7c65cd7a70516a28fe63f21bb7e4a635a74e4e8b88b707231d1be6` |
| 16 | `theorem` | [mapRingHom_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/mapringhom-id.md) | 129 | `result-track:56ee5549bc83ebc683154719445cbe926d699ab8ed1b2be22d11f12b002a2036` |
| 17 | `theorem` | [mapRingHom_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/mapringhom-comp.md) | 133 | `result-track:94a8eda33ab61e706f0cfbd6b4ff48f479f1fe68686067c9a3c48b868798edff` |
| 18 | `theorem` | [eval₂_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-map.md) | 137 | `result-track:3a7ddc031ec9222118d393eabb53106da9cb35bef3d55c15498c183870ee5df7` |
| 19 | `theorem` | [eval_zero_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-zero-map.md) | 142 | `result-track:560f7ae3ccbcbb5781ee71d9accb5660a573dfc1408b4b7b45b7397b5fab1a12` |
| 20 | `theorem` | [eval_one_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-one-map.md) | 146 | `result-track:b388c1dfea31e9e2ba0a723eee72d60d4a7f2f70226a325ca190a7fd4661606d` |
| 21 | `theorem` | [eval_natCast_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-natcast-map.md) | 152 | `result-track:d8b1cd35082d41243d37a0a4cfc96b48b9f4b457ca498dc062bea20f7a744935` |
| 22 | `theorem` | [eval_intCast_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-intcast-map.md) | 159 | `result-track:fcce1c8f57f87527249811a408c9bbd77d42a8c8bad870e1688a9c8b9dd09c75` |
| 23 | `theorem` | [hom_eval₂](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/hom-eval.md) | 171 | `result-track:821f36542f7607eab735bb5dfbef0fe4223b6a0f0f07e9d06e14a9f8b07da209` |
| 24 | `theorem` | [eval₂_hom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/eval-hom.md) | 186 | `result-track:6e210f5e93a9f785a803d5c37735140ed747f888d05f3f0456b93249bee3c1e9` |
| 25 | `theorem` | [evalRingHom_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/evalringhom-zero.md) | 195 | `result-track:2060baff7ff82448b3d6d892bc69b44c811e583e7a4a98d7928d9d37e0ce4346` |
| 26 | `theorem` | [support_map_subset](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/support-map-subset.md) | 204 | `result-track:7d1e508a48e6e25ff1bdd19ed3c8763a8db044862ec1b276ec9b89cdf503f339` |
| 27 | `theorem` | [support_map_of_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/support-map-of-injective.md) | 210 | `result-track:d38a539d0582789b2efda9f4b426a2bb891e853d86b61e6081e44206532fce45` |
| 28 | `theorem` | [IsRoot.map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/isroot-map.md) | 217 | `result-track:aa32b222de36022ce150352b583a4d6ef8bcd08f5b021a66dfc404fffbd7b630` |
| 29 | `theorem` | [IsRoot.of_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/isroot-of-map.md) | 220 | `result-track:a533c8df5982de19039e8913ba0d7aef984c0fca8f4139d1281ce2e29acca3c4` |
| 30 | `theorem` | [isRoot_map_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/EvalCoeffPublic.lean/declarations/isroot-map-iff.md) | 224 | `result-track:7a426fdc4a6a1b8971ffedaf96f5bbe2086a9f80b7920f4564de34580d85efc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=addb9a132c1dc7da20174b8ac27f439932f475f6e2dc926312cafbc7c84458f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant615908481d1050ab457a4a96ecaaf9e2b4aec639035ead4d34f57d33fd0ffb3d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Variant615908481d1050ab457a4a96ecaaf9e2b4aec639035ead4d34f57d33fd0ffb3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
