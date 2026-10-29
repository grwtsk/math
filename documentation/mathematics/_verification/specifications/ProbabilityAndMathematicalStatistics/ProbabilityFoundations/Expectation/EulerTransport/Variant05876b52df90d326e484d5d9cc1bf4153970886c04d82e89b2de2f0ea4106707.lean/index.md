# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.EulerTransport.Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67873c91d44c65bbbbfe00dea71ac856d6cb11a5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/index.md) · [Full source](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67873c91d44c65bbbbfe00dea71ac856d6cb11a5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.SectionComplex` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.EulerCharacteristic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SectionComplexTransport](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/declarations/sectioncomplextransport--07b433912544a9c251e3e106.md) | 25 | `declaration-track:07b433912544a9c251e3e106d1da4ded48da85344db0084d882a176f49b459b0` |
| 2 | `structure` | [EulerPreservingTransport](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/declarations/eulerpreservingtransport--1a145fc533762c573701b78e.md) | 40 | `declaration-track:1a145fc533762c573701b78e137b112a8305b9f3c7b381305ac37abf934b0822` |
| 3 | `theorem` | [euler_preserving_transport_value_eq](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/declarations/euler-preserving-transport-value-eq--4b3f4a207028fd026448bee6.md) | 48 | `result-track:4b3f4a207028fd026448bee69d6e66bace53863dc38eb7d9e2e5a4767e38266a` |
| 4 | `theorem` | [euler_preserving_transport_respects_differential](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/declarations/euler-preserving-transport-respects-differential--ec4295967fb7c8ffee07db74.md) | 54 | `result-track:ec4295967fb7c8ffee07db74c7d8496f201366a525064c0a62698f312936db83` |
| 5 | `theorem` | [euler_preserving_transport_quasi_iso_like](../../../../../../../ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean/declarations/euler-preserving-transport-quasi-iso-like--1ca8d3042d2d933cd688aaa0.md) | 60 | `result-track:1ca8d3042d2d933cd688aaa0344267681eb76c921f5651b44c77f7038c3ede6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71b0b4b5f68dc422ee32692347adec9d5876fdc5960f7cdd334ce75b3ff654c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
