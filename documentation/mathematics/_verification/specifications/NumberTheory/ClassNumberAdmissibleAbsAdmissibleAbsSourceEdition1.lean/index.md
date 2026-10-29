# Verification target: Class Number Admissible Abs Admissible Abs Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34806758f26aacb0456a718e28988169ef480c0d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ClassNumberAdmissibleAbsAdmissibleAbsSourceEdition1.lean/index.md) · [Full source](../../../../NumberTheory/ClassNumberAdmissibleAbsAdmissibleAbsSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34806758f26aacb0456a718e28988169ef480c0d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_partition_int](../../../../NumberTheory/ClassNumberAdmissibleAbsAdmissibleAbsSourceEdition1.lean/declarations/exists-partition-int.md) | 29 | `result-track:014a8c83a9f58fdc5b9e301f8ae8b2bec71ffb40288744811272b6f91a15033b` |
| 2 | `def` | [absIsAdmissible](../../../../NumberTheory/ClassNumberAdmissibleAbsAdmissibleAbsSourceEdition1.lean/declarations/absisadmissible.md) | 53 | `declaration-track:d1ef2a2df8642352781b6db6cd2abb0a7d13b96d5d78230c017ee80b12c1e53c` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/ClassNumberAdmissibleAbsAdmissibleAbsSourceEdition1.lean/declarations/instance.md) | 58 | `declaration-track:0eff5ddb2df696476ecc14d24bd3fa2edb57a3a4350358a826d4334c3185217c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f12ee747539c5b1f54654e054ecf5db0764d4a4e5e08c48b8f42bf72a7037b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
