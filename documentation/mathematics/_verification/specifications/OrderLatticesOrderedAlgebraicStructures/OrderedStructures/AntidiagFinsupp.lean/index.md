# Verification target: Antidiag Finsupp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c11073b9ef89180ab56a15b4627893237fe30537",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c11073b9ef89180ab56a15b4627893237fe30537`.

Source path: `GRWTSK/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/finsuppantidiag.md) | 39 | `declaration-track:29a65d15c3b8f3203755a6728f219ae8d31ea19521ae3f012b8edd0f534b68d5` |
| 2 | `lemma` | [mem_finsuppAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/mem-finsuppantidiag.md) | 43 | `result-track:3d79092e6beb308f5d4c4195ff7e7b52624e018468d8df9b7f893e0311de80d2` |
| 3 | `lemma` | [mem_finsuppAntidiag'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/mem-finsuppantidiag-source-edition-2.md) | 46 | `result-track:91cdbd13fced124cc93f01b095acf84b04d569c479f6fd30de715bb3b6250c4b` |
| 4 | `lemma` | [finsuppAntidiag_empty_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/finsuppantidiag-empty-zero.md) | 52 | `result-track:d6cc96e2ce7548ef9de30d4e61cbd2caa230760a2cad2432371d2c6938b09313` |
| 5 | `lemma` | [finsuppAntidiag_empty_of_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/finsuppantidiag-empty-of-ne-zero.md) | 55 | `result-track:abf852b35fd67fac96dcd88254d1d7a27ee6acbb7abddb8d98c4e4285e0030ce` |
| 6 | `lemma` | [finsuppAntidiag_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/finsuppantidiag-empty.md) | 59 | `result-track:090b3cfe2307ed7b256f85e41356c5c109a2dfc85d5ab9b2fda09bbd924d6751` |
| 7 | `theorem` | [mem_finsuppAntidiag_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/mem-finsuppantidiag-insert.md) | 62 | `result-track:3d35877f8e4865291c5eef0fee16485fdfb3e5759e9e50ced067f3b4f40fbbd8` |
| 8 | `theorem` | [finsuppAntidiag_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/finsuppantidiag-insert.md) | 85 | `result-track:47bc8dcbf0189717b1cdb4727984041f6fcac7e17e610acda046d7f6042e0d52` |
| 9 | `lemma` | [mapRange_finsuppAntidiag_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/maprange-finsuppantidiag-subset.md) | 108 | `result-track:07c78192abd15be470206951d806c8e793669964539c772f00bd30ccb544c214` |
| 10 | `lemma` | [mapRange_finsuppAntidiag_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/maprange-finsuppantidiag-eq.md) | 119 | `result-track:844caa609451ade56111df8d5f73aae14922bc92b8420716a8ba8f7ff3236117` |
| 11 | `lemma` | [finsuppAntidiag_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagFinsupp.lean/declarations/finsuppantidiag-zero.md) | 141 | `result-track:1b7608396022838d71e597152c57ad920e029afbe163bf0cb9242b40a1198d29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=783940a5237ea2ac563fdacde7df759358c34a043a8f0901ecba0dfc02c045d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean","GRWTSK/_verification/specifications/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
