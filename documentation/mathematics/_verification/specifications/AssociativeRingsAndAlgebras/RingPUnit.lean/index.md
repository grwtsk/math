# Verification target: Ring PUnit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18dc75b92b2b24ee000c7bda32e3a6b0b0312a6d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PUnit/Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingPUnit.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingPUnit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18dc75b92b2b24ee000c7bda32e3a6b0b0312a6d`.

Source path: `GRWTSK/Algebra/PUnit/Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PUnit/Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.PUnit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commRing](../../../../AssociativeRingsAndAlgebras/RingPUnit.lean/declarations/commring.md) | 20 | `declaration-track:679e1f878130e871419194cd8d2cf6e5ae2c5ac7f96139ed3f3fe2bcb5b8217c` |
| 2 | `instance` | [cancelCommMonoidWithZero](../../../../AssociativeRingsAndAlgebras/RingPUnit.lean/declarations/cancelcommmonoidwithzero.md) | 29 | `declaration-track:bd1d7ef350fcafdc1ae5b38af7878fcf926a49027fc1a4eb5a00eef3e5b800e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18ae88c85c3495b555887f428e49b8c15d972748d7641335bb7ec74a1a8e1856 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PUnit/Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c.lean","GRWTSK/_verification/specifications/Algebra/PUnit/Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
