# Verification target: Finiteness Cardinality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6215ea4a202d7311b6fcedb5836ddd3982e17043",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitenessCardinality.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitenessCardinality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6215ea4a202d7311b6fcedb5836ddd3982e17043`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_fin'](../../../../CommutativeAlgebra/FinitenessCardinality.lean/declarations/exists-fin.md) | 35 | `result-track:571e568ef9898a70f2708b566afb33a4e1f231462f31fe18c8921c2ed7c1d269` |
| 2 | `lemma` | [_root_.Module.finite_of_finite](../../../../CommutativeAlgebra/FinitenessCardinality.lean/declarations/root-module-finite-of-finite.md) | 42 | `result-track:76298bdfca2fc625f57298d3ab59d58deea121e4c99027705cc77f58e8ff8a36` |
| 3 | `lemma` | [_root_.Module.finite_iff_finite](../../../../CommutativeAlgebra/FinitenessCardinality.lean/declarations/root-module-finite-iff-finite.md) | 52 | `result-track:1d2e3aeafc453166a65a9fb1921b05aa8f15dad64c94eb3e25ccbb73aca51540` |
| 4 | `lemma` | [_root_.Set.Finite.submoduleSpan](../../../../CommutativeAlgebra/FinitenessCardinality.lean/declarations/root-set-finite-submodulespan.md) | 56 | `result-track:22ed06f0a7ba323ddaeb954baf814d4a479316b450b45ce47750d41d5760f14a` |
| 5 | `lemma` | [finite_basis](../../../../CommutativeAlgebra/FinitenessCardinality.lean/declarations/finite-basis.md) | 64 | `result-track:6b101d54d0c7008f075f92e9a81a5bbf2eeeb36555cfc10471006af2e2c49a8e` |
| 6 | `lemma` | [not_finite_of_infinite_basis](../../../../CommutativeAlgebra/FinitenessCardinality.lean/declarations/not-finite-of-infinite-basis.md) | 73 | `result-track:c570f7dddb664130ad26d0048535d6594839e902bc2af749e1ba569f9712c2dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2e7006b5e6756776234e28d86303f90adcdeeee03e80ad623ef18a114ad623b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
