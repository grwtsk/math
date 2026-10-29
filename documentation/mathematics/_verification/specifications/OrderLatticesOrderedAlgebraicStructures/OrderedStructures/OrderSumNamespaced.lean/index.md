# Verification target: Order Sum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55a4f21a7dfdb679e25194b754a8ac6376d58cf1",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Sum/Variant0d47ebd4fa9a791b2394608ee3bd381e89e747c1caee0dd1f6f3b3edfe9a33d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderSumNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderSumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55a4f21a7dfdb679e25194b754a8ac6376d58cf1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Sum/Variant0d47ebd4fa9a791b2394608ee3bd381e89e747c1caee0dd1f6f3b3edfe9a33d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Sum/Variant0d47ebd4fa9a791b2394608ee3bd381e89e747c1caee0dd1f6f3b3edfe9a33d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_elim_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderSumNamespaced.lean/declarations/one-le-elim-iff.md) | 28 | `result-track:bddc162337b2f9c20ce0e27d7c40eed8ac2a64b29b47b9e6d61e6d53d52e1ffb` |
| 2 | `lemma` | [elim_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderSumNamespaced.lean/declarations/elim-le-one-iff.md) | 32 | `result-track:d067c82c2ff162a51acc729f790766f49935878c18543a62dc7b771bd68cda19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=712bba78a2a3afa36e33fd7fb28d4da938380ca9719a3a5bd4ba8a4f8e3c5f74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Sum/Variant0d47ebd4fa9a791b2394608ee3bd381e89e747c1caee0dd1f6f3b3edfe9a33d3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Sum/Variant0d47ebd4fa9a791b2394608ee3bd381e89e747c1caee0dd1f6f3b3edfe9a33d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
