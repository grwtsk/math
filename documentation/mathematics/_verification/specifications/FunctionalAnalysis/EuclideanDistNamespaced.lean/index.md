# Verification target: Euclidean Dist Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b557e51a4d28deb5ce1d840df092d602fb258d92",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant590443136a6d2c313c353fc0705639ed6654f05cf215010135b1136641446ff3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b557e51a4d28deb5ce1d840df092d602fb258d92`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant590443136a6d2c313c353fc0705639ed6654f05cf215010135b1136641446ff3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EuclideanDist/Variant590443136a6d2c313c353fc0705639ed6654f05cf215010135b1136641446ff3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toEuclidean](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/toeuclidean.md) | 44 | `declaration-track:2ef98d5e83cd32923166a0125a20dbb23fa254a6e3a88abc15a824791e1cd253` |
| 2 | `def` | [dist](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/dist.md) | 52 | `declaration-track:effae765cefea4e1182a52cc83556fcc439fe1e1a9323f926108bfcacb8a6c31` |
| 3 | `def` | [closedBall](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/closedball.md) | 56 | `declaration-track:ef2e6180351d94524091dfaccbdbc8c9e269cefe5aec0f48c661f1ac6c9d3264` |
| 4 | `def` | [ball](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/ball.md) | 60 | `declaration-track:090c915abf43d9880ac25780f473f3c777bdfc74b19feabfec74e105e1730d2f` |
| 5 | `theorem` | [ball_eq_preimage](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/ball-eq-preimage.md) | 63 | `result-track:9a0be081460880e280438f8bb0fca1ba3a35d1387fc894aed92856346e0b1708` |
| 6 | `theorem` | [closedBall_eq_preimage](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/closedball-eq-preimage.md) | 67 | `result-track:cd0e5eff5588c1d86fc2a7fe1bd3a9cbd12e0cf3f4144a772dbdce08da8548d4` |
| 7 | `theorem` | [ball_subset_closedBall](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/ball-subset-closedball.md) | 71 | `result-track:ede2820c5c5b1497adef74f06392b78e6a676d3cd3a5fe30518996aa3daa4016` |
| 8 | `theorem` | [isOpen_ball](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/isopen-ball.md) | 74 | `result-track:22650b601f03856807d7e786eb53da54cb9a4fc335896f5efbac4714b083e2c6` |
| 9 | `theorem` | [mem_ball_self](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/mem-ball-self.md) | 77 | `result-track:3751f86ac422897f0ff9e6dd56a3bc85d418b2cd8c50398fdad491b4fc40f1cb` |
| 10 | `theorem` | [closedBall_eq_image](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/closedball-eq-image.md) | 80 | `result-track:b414fc307131240d7dc7b58ed10e62ee12ff7bbc8cff1a3b66fd4afe28706ffb` |
| 11 | `theorem` | [isCompact_closedBall](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/iscompact-closedball.md) | 84 | `result-track:db8743bf88d61d11d5dfd25066a427c8b42539372532692b4f8e67beec06e538` |
| 12 | `theorem` | [isClosed_closedBall](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/isclosed-closedball.md) | 88 | `result-track:d1cfa689797c5099e6c0d5b12aabd44cb970459c83bbbfb7a1dd064059c8a569` |
| 13 | `theorem` | [closure_ball](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/closure-ball.md) | 91 | `result-track:ca06f621e78b7f3686701c0c56ac8fb3be95b1fa02b7d2d0ad26554153ac3996` |
| 14 | `theorem` | [exists_pos_lt_subset_ball](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/exists-pos-lt-subset-ball.md) | 95 | `result-track:f07f3f4e34e8dae077ad6d9acc6894127981503939e61394699aba302e3bc955` |
| 15 | `theorem` | [nhds_basis_closedBall](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/nhds-basis-closedball.md) | 101 | `result-track:4d67a7fdd003c4cbe926a6e6a3f0eab9f051454362f9ad4b7b97784b80fdd1e5` |
| 16 | `theorem` | [closedBall_mem_nhds](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/closedball-mem-nhds.md) | 105 | `result-track:0ad8c57583b18947f56c9f17c8fa1dc5857647da8446cb8a9f9b08822a309460` |
| 17 | `theorem` | [nhds_basis_ball](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/nhds-basis-ball.md) | 108 | `result-track:6008fe7e4fbdecb15eeff6a94af9059fe42a38dfef3efcab1e825f263f08806d` |
| 18 | `theorem` | [ball_mem_nhds](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/ball-mem-nhds.md) | 112 | `result-track:7f4075bde711de9a66e611f4dce20287a7d19a30cb55a380e5afb7e99b65137c` |
| 19 | `theorem` | [ContDiff.euclidean_dist](../../../../FunctionalAnalysis/EuclideanDistNamespaced.lean/declarations/contdiff-euclidean-dist.md) | 120 | `result-track:e5c3d3ec287c0721ddf2a15f30af14cd37a2b81619ab424972ee65415984a18f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c601a985ca24179672fa68fdd16a96e01afe7031c679292c33a18302da0010ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant590443136a6d2c313c353fc0705639ed6654f05cf215010135b1136641446ff3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/EuclideanDist/Variant590443136a6d2c313c353fc0705639ed6654f05cf215010135b1136641446ff3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
