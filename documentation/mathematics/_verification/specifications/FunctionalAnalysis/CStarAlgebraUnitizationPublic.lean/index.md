# Verification target: CStar Algebra Unitization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e1ef0b0d4f8cab720253e7bb40439d2cc6d7663",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e1ef0b0d4f8cab720253e7bb40439d2cc6d7663`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean.json)

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
| 1 | `lemma` | [opNorm_mul_flip_apply](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/opnorm-mul-flip-apply.md) | 34 | `result-track:7056329386f0f71fa15b64cf83ae3686218144198202e5f7532d526754356dd0` |
| 2 | `lemma` | [opNNNorm_mul_flip_apply](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/opnnnorm-mul-flip-apply.md) | 45 | `result-track:f5b4690ec22fdb8d52ff7583de9370aaa25c44961827cb4b64658db35012cc19` |
| 3 | `lemma` | [isometry_mul_flip](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/isometry-mul-flip.md) | 50 | `result-track:99f1e061314bf6d46d7511167f71687dad3ab8433ed733f391ec18905eff6f84` |
| 4 | `instance` | [CStarRing.instRegularNormedAlgebra](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/cstarring-instregularnormedalgebra.md) | 60 | `declaration-track:fea5bf91e39bfe5f84aa8978c740e4c2b65b46615dec4100b692c2a01f2a1b96` |
| 5 | `theorem` | [Unitization.norm_splitMul_snd_sq](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/unitization-norm-splitmul-snd-sq.md) | 88 | `result-track:ad33740ef0e8ef3978f3f4b08a341364cbe0dbef64007738a7055b84aefe767a` |
| 6 | `instance` | [Unitization.instCStarRing](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/unitization-instcstarring.md) | 131 | `declaration-track:2f2aa2dac21cb28aa6a6bd41116fe64d8f6d9d40bb2a13bbed5bcbef63323f9b` |
| 7 | `instance` | [Unitization.instCStarAlgebra](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/unitization-instcstaralgebra.md) | 181 | `declaration-track:44c864f4530d22b4211dda80f015e3799798a42c64042e184d631414e0b7ebc5` |
| 8 | `instance` | [Unitization.instCommCStarAlgebra](../../../../FunctionalAnalysis/CStarAlgebraUnitizationPublic.lean/declarations/unitization-instcommcstaralgebra.md) | 184 | `declaration-track:b657d3a7b0d8578424e92aa0545f0f6364519aad115154fccfe1e002233a6a48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=986e31f8eaa9d3d174e7a691747ac7bcc0dcff709c83da04211b482e173198a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
