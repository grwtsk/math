# Verification target: Absolutely Monotone Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8455c05544334897a8f2c6dea3702dec49be1f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/index.md) · [Full source](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8455c05544334897a8f2c6dea3702dec49be1f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean.json)

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
| 1 | `def` | [AbsolutelyMonotoneOn](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/absolutelymonotoneon.md) | 57 | `declaration-track:b4066c52dafdc9364597219ac7f4dbd75381cdb0e85737364ec54e601e30eee4` |
| 2 | `theorem` | [contDiffOn](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/contdiffon.md) | 67 | `result-track:508d5b3c95eab01bdeb18f3e7250e88cf5b3903195f1f6a1481849cff0dc2640` |
| 3 | `theorem` | [of_contDiff](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/of-contdiff.md) | 73 | `result-track:f7ec2b2e3d5f275a99a13b6009318c59f522c84d1a18faf9b112266ec968a45f` |
| 4 | `theorem` | [iteratedDerivWithin_nonneg](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/iteratedderivwithin-nonneg.md) | 80 | `result-track:875860883715eabf4ad3ab8f3a27e9f10cbb2c413adf48c3b172672bbacc184d` |
| 5 | `theorem` | [iff_iteratedDerivWithin_nonneg](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/iff-iteratedderivwithin-nonneg.md) | 90 | `result-track:003754ac9bd2159e81f7c09f22dd419e870da7be8b6ad35a6afd4e0a367841d3` |
| 6 | `theorem` | [add](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/add.md) | 101 | `result-track:a3ce148034a7edc8d3de74534262c4e3ca11248691e3118b75356457472eb644` |
| 7 | `theorem` | [smul](../../../../RealFunctions/AbsolutelyMonotonePublic.lean/declarations/smul.md) | 110 | `result-track:0acdb5f3f8dcb906b20bed5532beae6acf19e84f3e81d0405921722103004b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19791c23154e29f76bb6018d61ae8f336160ce1c0adc4607ce459c0de8e022d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
