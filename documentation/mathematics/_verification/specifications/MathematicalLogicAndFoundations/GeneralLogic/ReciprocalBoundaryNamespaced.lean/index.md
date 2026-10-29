# Verification target: Reciprocal Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "143c4a73d9083b58600eccba2d725ac526141748",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variantd3e53b2eed2a405dd878cfea36bf5465ff0dcba895c2950f9db35ea70eec9aa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `143c4a73d9083b58600eccba2d725ac526141748`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variantd3e53b2eed2a405dd878cfea36bf5465ff0dcba895c2950f9db35ea70eec9aa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variantd3e53b2eed2a405dd878cfea36bf5465ff0dcba895c2950f9db35ea70eec9aa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReciprocalBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/reciprocalboundary.md) | 30 | `declaration-track:a1c3b7e99d87c03713b03d2d957fc80055843e31633c5567541a2da88cff9cef` |
| 2 | `theorem` | [zero_iff_pole_reciprocal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/zero-iff-pole-reciprocal.md) | 40 | `result-track:0692667d3392ae9c41c3c45aed974a2a266b7b2919103a36b78ba4a7dcc52363` |
| 3 | `theorem` | [pole_iff_zero_reciprocal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/pole-iff-zero-reciprocal.md) | 48 | `result-track:b34ab194ca9652ca26ac2e6fdc970f8b0a7b546f6bfc2da9447cd90c3720d70d` |
| 4 | `theorem` | [pole_implies_reciprocal_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/pole-implies-reciprocal-zero.md) | 56 | `result-track:c7b035fd3b02083a800fe3c06a295221854fa42692578096f029f18de5b0e8f1` |
| 5 | `theorem` | [zero_implies_reciprocal_pole](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/zero-implies-reciprocal-pole.md) | 65 | `result-track:1d633ea49a3ee2c40411f9e9d6418937f34d8cd47242affeb82bf9b17501b7b2` |
| 6 | `structure` | [ZetaReciprocalBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/zetareciprocalboundary.md) | 74 | `declaration-track:2722ebd0fdd5f4edeefdc06076c70bd9973fef00611317d0bc9ab2f4cd718864` |
| 7 | `theorem` | [zeta_pole_at_one_implies_reciprocal_zero_at_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundaryNamespaced.lean/declarations/zeta-pole-at-one-implies-reciprocal-zero-at-one.md) | 82 | `result-track:fee93ad24345ce326f1dd7def15cf7f1ab8ad278628a5f486188a2fff27c826c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62991ac4343e0ad3a1da9009b7f5ffe611e7a2fe3ec6ee2ca3b1e39ed1c5208b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variantd3e53b2eed2a405dd878cfea36bf5465ff0dcba895c2950f9db35ea70eec9aa1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variantd3e53b2eed2a405dd878cfea36bf5465ff0dcba895c2950f9db35ea70eec9aa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
