# Verification target: Hypercover Homotopy Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3a1a1458883e1e8722ecefcbda6610a65933dcc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3a1a1458883e1e8722ecefcbda6610a65933dcc`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean.json)

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
| 1 | `structure` | [Homotopy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/homotopy.md) | 47 | `declaration-track:39fb4e5b350d3668ebf1d9a51daa995fd0eb7f6229f9c10fb4193febbb80374e` |
| 2 | `lemma` | [Homotopy.mapMultiforkOfIsLimit_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/homotopy-mapmultiforkofislimit-eq.md) | 64 | `result-track:ac04072a586f6d4157031907df2baa4ad191cd73b3751ddf1a26c3b210ead018` |
| 3 | `def` | [Homotopy.isLimitMultifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/homotopy-islimitmultifork.md) | 80 | `declaration-track:2b143c183aef12706ff35ee9ee665d8984d0992a673506d4887fa9de7caa69a8` |
| 4 | `def` | [Homotopy.isLimitMultiforkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/homotopy-islimitmultiforkequiv.md) | 108 | `declaration-track:a3fa6deb40856c6365132578dc2847cc12f4840a9b87dd72c840201389e9f7e3` |
| 5 | `abbrev` | [cylinderX](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/cylinderx.md) | 122 | `declaration-track:7b39b0c937854c30f08b4ced609fc322251c96201679837716ab0c167fc21ca7` |
| 6 | `abbrev` | [cylinderf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/cylinderf.md) | 127 | `declaration-track:c9c511afc759966cb3a07f513495fd92e6d606c73bd0b0aa5ab41243396fffa8` |
| 7 | `def` | [cylinder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/cylinder-source-edition-2.md) | 135 | `declaration-track:aef8326c8ecfd54e1c7502cbf753e83099957f13a316ddeb5e3fa31607a64985` |
| 8 | `lemma` | [toPullback_cylinder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/topullback-cylinder.md) | 152 | `result-track:55b710104d7cace0a1da238b1fff9c32ff4c689696f5ea11725e1bb39612a864` |
| 9 | `lemma` | [sieve₀_cylinder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/sieve-cylinder-source-edition-2.md) | 157 | `result-track:e467223d449ee4377a6f413fdb2aa790fdcca3bae2a945c889aca41e07b8bd2b` |
| 10 | `lemma` | [sieve₁'_cylinder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/sieve-cylinder.md) | 176 | `result-track:7d54ffcd916b349cf683c88924919919bbf45698e32b7c23bd86c4b811320bed` |
| 11 | `def` | [cylinderHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/cylinderhom.md) | 197 | `declaration-track:005af8ad5083e2e62bd35fc6fa239b51bf8ea20d89d3a2cde460460c99888806` |
| 12 | `def` | [cylinderHomotopy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/cylinderhomotopy.md) | 217 | `declaration-track:da194fd88b99fc4511619d02d4c23106c09f117eb8fcd24f3b83f5bdaae898a3` |
| 13 | `lemma` | [exists_nonempty_homotopy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/exists-nonempty-homotopy.md) | 236 | `result-track:088fcf369a1bfffb5fc12944c6c60c59334e4e2a085c36824005ed1b88242ff8` |
| 14 | `def` | [cylinder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/cylinder.md) | 259 | `declaration-track:a3229c2a15c3bdec142ffec92f860f6b416a4ddced286029f4274c1657f5f696` |
| 15 | `lemma` | [exists_nonempty_homotopy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/exists-nonempty-homotopy-source-edition-2.md) | 271 | `result-track:277bda528f254708078ed7aadc1976d8af5ccaed0cb7218ab9f00c17a0fcef5d` |
| 16 | `def` | [OneHypercover.homotopicRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/onehypercover-homotopicrel.md) | 285 | `declaration-track:e5445796eeccc8b0b697393db30f1c4805b65dbbc1f07fc910179f40e4cdabae` |
| 17 | `abbrev` | [HOneHypercover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/honehypercover.md) | 289 | `declaration-track:af021ce12bee4d334be439e3d26704d61248e2f97956dfc492f8677fb34e3d46` |
| 18 | `abbrev` | [OneHypercover.toHOneHypercover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/onehypercover-tohonehypercover.md) | 292 | `declaration-track:b278d304974d6ebb545965f5568c72736e24d8321e68bbb5dfdb1b77f62ddb5a` |
| 19 | `lemma` | [_root_.CategoryTheory.PreOneHypercover.Homotopy.map_eq_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/root-categorytheory-preonehypercover-homotopy-map-eq-map.md) | 295 | `result-track:aa4b06643ffa79900cc577e28037f4957d52c07878788fd8ad23417039a3ebd6` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/instance.md) | 304 | `declaration-track:1cd8eb79952546f87ca71a54f29cf4849886d7444c6bfddcbe09ff9e8dc5e9ad` |
| 21 | `instance` | [isCofiltered_of_hasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HypercoverHomotopyPublic.lean/declarations/iscofiltered-of-haspullbacks.md) | 307 | `declaration-track:a4b77461d52f68b923fb917f2f7de812dce717e4099f622abb870969bfaab5c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1361a7233193d74c0077e484ecae1a31c820e9fe7a652c8e9d4dd0bba93ae429 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
