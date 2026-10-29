# Verification target: Odd Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e6e99819b8892527af7df76f1183ceb36a6f1f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Odd/Variant450a40a073238cdb3e52dd2fc17902e7f4c33d43958b2b311438de669a8c8ea5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OddNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OddNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e6e99819b8892527af7df76f1183ceb36a6f1f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Odd/Variant450a40a073238cdb3e52dd2fc17902e7f4c33d43958b2b311438de669a8c8ea5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Odd/Variant450a40a073238cdb3e52dd2fc17902e7f4c33d43958b2b311438de669a8c8ea5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Union` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictMono_of_odd_strictMonoOn_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OddNamespaced.lean/declarations/strictmono-of-odd-strictmonoon-nonneg.md) | 34 | `result-track:c0d1524380feb1aa7b7c50c4a94febfbafdeecf0a3ea3fc08a78dbffb1a07201` |
| 2 | `theorem` | [strictAnti_of_odd_strictAntiOn_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OddNamespaced.lean/declarations/strictanti-of-odd-strictantion-nonneg.md) | 42 | `result-track:ab2ebd146d01c76627f32223ab9c2d3054c71491badedd694efa01a6cee63074` |
| 3 | `theorem` | [monotone_of_odd_of_monotoneOn_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OddNamespaced.lean/declarations/monotone-of-odd-of-monotoneon-nonneg.md) | 48 | `result-track:6b0b08df5f9caa586b39d16f8943fdb5cbc3471762a203794ad9a5954075ad4d` |
| 4 | `theorem` | [antitone_of_odd_of_monotoneOn_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OddNamespaced.lean/declarations/antitone-of-odd-of-monotoneon-nonneg.md) | 56 | `result-track:1df376a476a3c8d28cf5c3dec88646658590ab83853bbe79ca1a9505991e5979` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db9f536762e63c2b5addd6738326ad7500e8f573fa4c4d1f56d242d169228d6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Odd/Variant450a40a073238cdb3e52dd2fc17902e7f4c33d43958b2b311438de669a8c8ea5.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Odd/Variant450a40a073238cdb3e52dd2fc17902e7f4c33d43958b2b311438de669a8c8ea5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
