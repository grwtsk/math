# Verification target: GRWTSK.Algebra.QuarticCubicDiscriminantReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6b21f488c7766d0b9d4f0f8fdb3c3592840f208",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticCubicDiscriminantReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/QuarticCubicDiscriminantReduction.lean/index.md) · [Full source](../../../../CommutativeAlgebra/QuarticCubicDiscriminantReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6b21f488c7766d0b9d4f0f8fdb3c3592840f208`.

Source path: `GRWTSK/Algebra/QuarticCubicDiscriminantReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticCubicDiscriminantReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticCubicPolynomialComparison`](../../../../CommutativeAlgebra/QuarticCubicPolynomialComparison.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cubic_discr_map](../../../../CommutativeAlgebra/QuarticCubicDiscriminantReduction.lean/declarations/cubic-discr-map.md) | 28 | `result-track:25e506365018cf9890ed82eb34a6ed3c7b1d299720f0f177fb7aacc1f59c5c32` |
| 2 | `theorem` | [adjacencyCubic_discr_map](../../../../CommutativeAlgebra/QuarticCubicDiscriminantReduction.lean/declarations/adjacencycubic-discr-map.md) | 37 | `result-track:d2f8b9386f93d82a82858dd706144a3a8f6fc158a032387adb96a6c211b5281b` |
| 3 | `theorem` | [adjacencyCubic_discr_map_ne_zero_iff](../../../../CommutativeAlgebra/QuarticCubicDiscriminantReduction.lean/declarations/adjacencycubic-discr-map-ne-zero-iff.md) | 48 | `result-track:45f14bef23d4e4ac41ecc9d4f91f36e328092c4a4660ddbbb9d3606e5c3d2b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1b9b10c2e8c111efa0222acae8f9edf7684ed32723e2b507850d3ffc42789b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticCubicDiscriminantReduction.lean","GRWTSK/_verification/specifications/Algebra/QuarticCubicDiscriminantReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
