# Verification target: Carrier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ba86b11061c9f107cc3bece95e3c266fd0917c4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Carrier/Variant8253cbba66e50bbf79c7b08fbdf65733daea8bf7136442256a07388e35d21e85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ba86b11061c9f107cc3bece95e3c266fd0917c4`.

Source path: `GRWTSK/Algebra/Carrier/Variant8253cbba66e50bbf79c7b08fbdf65733daea8bf7136442256a07388e35d21e85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Carrier/Variant8253cbba66e50bbf79c7b08fbdf65733daea8bf7136442256a07388e35d21e85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Algebra](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/declarations/algebra.md) | 22 | `declaration-track:bb5e1b9f22cc988455512294c7da8f600c7753ca304498f6bb2b4e0090fefbfd` |
| 2 | `abbrev` | [boolAlgebra](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/declarations/boolalgebra.md) | 25 | `declaration-track:cfd6fe07b668c974dd569a00793485b4888b8131bf7e7e1de63310268449be75` |
| 3 | `theorem` | [bool_join](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/declarations/bool-join.md) | 27 | `result-track:d3093bd4b97309266b7d8f24bccd1a0ee16b24d1a262d56fc922b701ca0b1d29` |
| 4 | `theorem` | [bool_meet](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/declarations/bool-meet.md) | 31 | `result-track:a06e63f07de5bd95dc32461fbea292848fb69c186a2907b0febeb87991e5cecd` |
| 5 | `theorem` | [bool_complement](../../../../AssociativeRingsAndAlgebras/CarrierNamespaced.lean/declarations/bool-complement.md) | 35 | `result-track:f91eb800edd33771673868b1f5d9908d2cdb5362b4869198f4fc9cbb54f0e5bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30e97b47c4b9de02eb00006c0bace4bd741d2557b3315d577f019df50041521d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Carrier/Variant8253cbba66e50bbf79c7b08fbdf65733daea8bf7136442256a07388e35d21e85.lean","GRWTSK/_verification/specifications/Algebra/Carrier/Variant8253cbba66e50bbf79c7b08fbdf65733daea8bf7136442256a07388e35d21e85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
