# Verification target: Star Ordered

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdfa41b3958e4519c3b98fbbb99a1c8af1a93bb3",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/StarOrdered/Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/StarOrdered.lean/index.md) · [Full source](../../../../RealFunctions/StarOrdered.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdfa41b3958e4519c3b98fbbb99a1c8af1a93bb3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/StarOrdered/Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/StarOrdered/Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Real.instStarOrderedRing](../../../../RealFunctions/StarOrdered.lean/declarations/real-inststarorderedring.md) | 20 | `declaration-track:9c25c27205a60f024d95b2a64055fe66eb5f4575f894aabbb1692f6215a0f269` |
| 2 | `instance` | [NNReal.instStarOrderedRing](../../../../RealFunctions/StarOrdered.lean/declarations/nnreal-inststarorderedring.md) | 26 | `declaration-track:4debb2cafc8ec5291753647c411eddb4feab05e690918d1adc7ade990d42e8a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7847f09922f6fe6ac198c11bd3ff299e97cbee8915459d0689295e8fede6905a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/StarOrdered/Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/StarOrdered/Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
