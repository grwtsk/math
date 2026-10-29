# Verification target: Cubic01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44cd2c905e7b5772882dba179c46752b8f255df",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Cubic01.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Cubic01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44cd2c905e7b5772882dba179c46752b8f255df`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryTransform` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitivePoleMoment](../../../../MeasureAndIntegration/Cubic01.lean/declarations/primitivepolemoment.md) | 25 | `declaration-track:592776d322188db974a452ad7319a799e52c125d2f379ac42f539bd319328353` |
| 2 | `def` | [unnormalizedPrimitivePoleMoment](../../../../MeasureAndIntegration/Cubic01.lean/declarations/unnormalizedprimitivepolemoment.md) | 29 | `declaration-track:9fe18c2cd21f65c8659d5f0d586e92d7a975fd1c45379800b888ce1c6219a0d4` |
| 3 | `theorem` | [weighted_derivative](../../../../MeasureAndIntegration/Cubic01.lean/declarations/weighted-derivative.md) | 32 | `result-track:b6a95db394b0e036e1685a8485742d168fa153fafd5400d26ac69e000d4ebdae` |
| 4 | `theorem` | [first_weighted_derivative](../../../../MeasureAndIntegration/Cubic01.lean/declarations/first-weighted-derivative.md) | 52 | `result-track:797fcc7ee02e3805cf372894abe11cc069349de4a73f2e064663f83dc6d1e24d` |
| 5 | `theorem` | [actual_first_source_pole_moment](../../../../MeasureAndIntegration/Cubic01.lean/declarations/actual-first-source-pole-moment.md) | 81 | `result-track:b9524e75189b6c943cf3694f997963868a8083e0d794dad2bec14c412b01dc9d` |
| 6 | `theorem` | [second_convolution_moment](../../../../MeasureAndIntegration/Cubic01.lean/declarations/second-convolution-moment.md) | 114 | `result-track:b27faf2af01e64cb727eb8be0b8aa188db6061ced4eed2aebe68c33a01805003` |
| 7 | `theorem` | [actual_second_correlation_pole_moment](../../../../MeasureAndIntegration/Cubic01.lean/declarations/actual-second-correlation-pole-moment.md) | 161 | `result-track:63b9502956cdc1fa147de4cc38724f3d10ed60880f733677de3df1db43a000c8` |
| 8 | `theorem` | [reflected_cubic_derivative_integral](../../../../MeasureAndIntegration/Cubic01.lean/declarations/reflected-cubic-derivative-integral.md) | 193 | `result-track:940785b79086ac72e19cac9b2337acbafb11cf5dd033a5ffd4cc8cc3587c194c` |
| 9 | `theorem` | [boundary_cubic_moment](../../../../MeasureAndIntegration/Cubic01.lean/declarations/boundary-cubic-moment.md) | 228 | `result-track:6d0fb79db1d08f4f048ec212100c641018dea3b144c19eed2ad4905dff0da4c4` |
| 10 | `theorem` | [primitive_pole_normalization](../../../../MeasureAndIntegration/Cubic01.lean/declarations/primitive-pole-normalization.md) | 269 | `result-track:3adba37fc81bfb2b88c4f07a2a6fde68f28369c7231deede0bd9b428cd3609d1` |
| 11 | `theorem` | [boundary_cubic_moment_unnormalized](../../../../MeasureAndIntegration/Cubic01.lean/declarations/boundary-cubic-moment-unnormalized.md) | 276 | `result-track:426dc534b81b7abe745bcf57d2c96fffbb6cadc0348250d2007dd0c9fe8a083f` |
| 12 | `theorem` | [primitive_pole_moment_pos](../../../../MeasureAndIntegration/Cubic01.lean/declarations/primitive-pole-moment-pos.md) | 283 | `result-track:530eeae60481c2f98c6e7e6704c18d60375d81a30cbad6defb6823b58728f68e` |
| 13 | `theorem` | [boundary_cubic_moment_pos](../../../../MeasureAndIntegration/Cubic01.lean/declarations/boundary-cubic-moment-pos.md) | 305 | `result-track:225ecced620f48669a4cbc80e4909d022e761b21ed0ecfdf10ce4d09f35199ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15aa2c1c2b8fee56859772bb8bee434ffe1b326e602fb3641e492ce63dd9b2d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
