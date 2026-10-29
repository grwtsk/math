# Verification target: Complement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e3c5cb4e25e2d1bc1727ddc3a5870202e400836",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Complement/Variantc6eb8ca5b59201846d364b4d704ab06517ec9bbd939fa3c7e12027dd700ac596.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/ComplementNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/ComplementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e3c5cb4e25e2d1bc1727ddc3a5870202e400836`.

Source path: `GRWTSK/Algebra/Complement/Variantc6eb8ca5b59201846d364b4d704ab06517ec9bbd939fa3c7e12027dd700ac596.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Complement/Variantc6eb8ca5b59201846d364b4d704ab06517ec9bbd939fa3c7e12027dd700ac596.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Absorption` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complement_unique](../../../../AssociativeRingsAndAlgebras/ComplementNamespaced.lean/declarations/complement-unique.md) | 22 | `result-track:f08544d66e40ee2b8eeff50f10584e596fcd8f42966442ae8f6743618f449923` |
| 2 | `theorem` | [complement_involutive](../../../../AssociativeRingsAndAlgebras/ComplementNamespaced.lean/declarations/complement-involutive.md) | 28 | `result-track:48849c4cce06070d44bbef7a4d46895b4658d720c7fb4d817f5d5275b83d7be1` |
| 3 | `theorem` | [complement_join_eq_meet](../../../../AssociativeRingsAndAlgebras/ComplementNamespaced.lean/declarations/complement-join-eq-meet.md) | 31 | `result-track:3c736b8370bc87b27dfc3e7713e6c9cc3a94ba23615aa8670b3732f827448996` |
| 4 | `theorem` | [complement_meet_eq_join](../../../../AssociativeRingsAndAlgebras/ComplementNamespaced.lean/declarations/complement-meet-eq-join.md) | 35 | `result-track:5d27b1a287e35ed3ccec83d6290105e84c4488ced4168bad8e573eba11b8cf1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fa8a0e69b87ab54e8cb7e115cdb0ca4874a2733f81542d3310931f609eda6a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Complement/Variantc6eb8ca5b59201846d364b4d704ab06517ec9bbd939fa3c7e12027dd700ac596.lean","GRWTSK/_verification/specifications/Algebra/Complement/Variantc6eb8ca5b59201846d364b4d704ab06517ec9bbd939fa3c7e12027dd700ac596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
