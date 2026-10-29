# Verification target: Ring Theory Frobenius Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bb04111113b37a40f991b981a834305d3e1e25f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bb04111113b37a40f991b981a834305d3e1e25f`.

Source path: `GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Invariant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Locus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgHom.IsArithFrobAt](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/alghom-isarithfrobat.md) | 58 | `declaration-track:2bb61be20d7c687f659931ccfccdb3a0e46d6935223dc0a8d41aa30ae9af48ec` |
| 2 | `lemma` | [mk_apply](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/mk-apply.md) | 67 | `result-track:bd5e754c85da5106bf8fd54fe9a8a0f9ae39a41914f0f12cbf811d0e060cd59f` |
| 3 | `lemma` | [finite_quotient](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/finite-quotient.md) | 71 | `result-track:8763b25b1c46273178d96c07850dc58fd66a1cc305e22fb02748df986004630c` |
| 4 | `lemma` | [card_pos](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/card-pos.md) | 78 | `result-track:20390516832fd6a8616d1fa0c36ef218dcbc07c77afc51bbae7a72faba246763` |
| 5 | `lemma` | [le_comap](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/le-comap.md) | 82 | `result-track:cd81ce0dc533a6899f4aeacfae6cefa80af8357021d34c6f1de070a67fb59a93` |
| 6 | `def` | [restrict](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/restrict.md) | 88 | `declaration-track:8759e4a5ebdf888ad14aefe2c84fca2158b782dade9e359a103d456cfb82fca6` |
| 7 | `lemma` | [restrict_apply](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/restrict-apply.md) | 94 | `result-track:ebd976c43d97bab52e07395a2188ba20c23716cda57a1e29807f969b68db485d` |
| 8 | `lemma` | [restrict_mk](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/restrict-mk.md) | 99 | `result-track:8d74cc5b054c3a5d01c938a69ade8ed2796ddc86af73c85c9e2c234b0115516d` |
| 9 | `lemma` | [restrict_injective](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/restrict-injective.md) | 101 | `result-track:132368c3238caf43fd688ff557f984a6fa8cfb03191ffdfdd608d6ce264a387a` |
| 10 | `lemma` | [comap_eq](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/comap-eq.md) | 107 | `result-track:2686dcfeb51fcab62a3c621cf2d972b13e1ae2bd13cbae33bd58386cb39f4941` |
| 11 | `lemma` | [apply_of_pow_eq_one](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/apply-of-pow-eq-one.md) | 114 | `result-track:baff9a603e2873189b568720db90ac1bdc1694ab6ef0b006c022c4fe85ba50ef` |
| 12 | `def` | [localize](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/localize.md) | 138 | `declaration-track:cb80c0c53587bc93acdf94614831f630070f2fa6c5c9f32a3908302fc0b1026f` |
| 13 | `lemma` | [localize_algebraMap](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/localize-algebramap.md) | 145 | `result-track:d5fa2ca7d931d360dfb658f39f157832dc796a3e2fddc3b21f5cda32431df86d` |
| 14 | `lemma` | [isArithFrobAt_localize](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/isarithfrobat-localize.md) | 151 | `result-track:ca19e37968ae89528d0bc5e204a9e0abbae4304c47907a8cb428b97bb1f7a5cd` |
| 15 | `lemma` | [eq_of_isUnramifiedAt](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/eq-of-isunramifiedat.md) | 168 | `result-track:f981dfa2cfb6cb55624bcff3c5146838b704d28db8ec17d9c351b3fbef67b50b` |
| 16 | `abbrev` | [IsArithFrobAt](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/isarithfrobat.md) | 189 | `declaration-track:d8542836ca511dc93d60c74970dc1433580289acbc23e1a13c90e5422552e1ce` |
| 17 | `lemma` | [mul_inv_mem_inertia](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/mul-inv-mem-inertia.md) | 200 | `result-track:ad51372777b734953168cb283c93d1c168ef837913aa48e908d25eb03fc8713c` |
| 18 | `lemma` | [conj](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/conj.md) | 205 | `result-track:03a4b5e1042c23a4cea056a7c9b520d9e9b044c60fbe305c54bd510939512b6c` |
| 19 | `lemma` | [exists_of_isInvariant](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/exists-of-isinvariant.md) | 221 | `result-track:5eb7d2d0636815632c8f392fd1f7003faee10141c36b4536912f1ba813801bbb` |
| 20 | `lemma` | [exists_primesOver_isConj](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/exists-primesover-isconj.md) | 243 | `result-track:8a31f5182d7ff0013c2e6a788bea5720afc61debf722736ba13237ba02f2bcf9` |
| 21 | `def` | [Ring Theory Frobenius Namespaced](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/arithfrobat-source-line-261-occurrence-2.md) | 261 | `declaration-track:1846e27ae33ebf6e150d2285fd4a7dd915b9d72b9b8cb2b8450ff3a4dbacf5d2` |
| 22 | `lemma` | [arithFrobAt](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/arithfrobat.md) | 265 | `result-track:05fa2f77d58413b20aa22b80a7ce52aa59e3ed13b469bd596335ee53fd547c69` |
| 23 | `lemma` | [Ring Theory Frobenius Namespaced](../../../../CommutativeAlgebra/RingTheoryFrobeniusNamespaced.lean/declarations/isconj-arithfrobat.md) | 269 | `result-track:10aae1814de7b7023078d387b0c0ec2992d906531f1e995da78316e84f3ba788` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fd0f80b05c0333e971a1a5a8d175b38099c9c6021d61fb0568fcfe6a64ffaaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean","GRWTSK/_verification/specifications/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
