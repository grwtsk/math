# Verification target: Mul P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af44a910933a4471bda4783953472564dff46a6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MulP.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MulP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af44a910933a4471bda4783953472564dff46a6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.IsPoly` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittMulN](../../../../CommutativeAlgebra/MulP.lean/declarations/wittmuln.md) | 40 | `declaration-track:d9b4568cbf0427581019671ad0bafaeab59edcf7bf8392966eb68fc9bf91e9b7` |
| 2 | `theorem` | [mulN_coeff](../../../../CommutativeAlgebra/MulP.lean/declarations/muln-coeff.md) | 44 | `result-track:28b56c140c456eadcb31700ff6767be535bc67342b4469389d197724d22d9586` |
| 3 | `theorem` | [mulN_isPoly](../../../../CommutativeAlgebra/MulP.lean/declarations/muln-ispoly.md) | 59 | `result-track:29cfb95619d883caaf41d669a3cd13118f751b2b71a788aab7aced55bebaaad4` |
| 4 | `theorem` | [bind₁_wittMulN_wittPolynomial](../../../../CommutativeAlgebra/MulP.lean/declarations/bind-wittmuln-wittpolynomial.md) | 63 | `result-track:5fc9d8d3fbaaa61893ea1748d19969437375c5b2cacb97cee90ac81a1873a4cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d9806ee554d90bf0b376d5c9e012204dfbcbd10fd6c65ed724f783dbe8efe3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
