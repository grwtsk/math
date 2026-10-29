# Verification target: Roots Of Unity Minpoly Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "608a155b2a0003e5932d854f728f831993ade86d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `608a155b2a0003e5932d854f728f831993ade86d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/isintegral.md) | 46 | `result-track:ee3dd4fa6ce1f9f8ab85039b804dd9f735374fc18a5d6072facf04b114dea40f` |
| 2 | `theorem` | [minpoly_dvd_x_pow_sub_one](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/minpoly-dvd-x-pow-sub-one.md) | 59 | `result-track:4ec78aef71fca74e7e091c958cc5c9d0707127ba83b34809e675863be3a6df06` |
| 3 | `theorem` | [separable_minpoly_mod](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/separable-minpoly-mod.md) | 69 | `result-track:40b28738a48ffe021fbae41d87906b936457228b591f63a62fffaa9cff54a436` |
| 4 | `theorem` | [squarefree_minpoly_mod](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/squarefree-minpoly-mod.md) | 81 | `result-track:16f26d3f308d384beecfadff57f9ae43e4552455151e240bfb894404b04b3f3f` |
| 5 | `theorem` | [minpoly_dvd_expand](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/minpoly-dvd-expand.md) | 88 | `result-track:0c645373db0785e1190752f64fd66089e304f9678edb7c887c03acc9b87a9a62` |
| 6 | `theorem` | [minpoly_dvd_pow_mod](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/minpoly-dvd-pow-mod.md) | 101 | `result-track:096ada55ce47fa56d104f15447f25058d804dc36a663d7ad32304bdbe978be51` |
| 7 | `theorem` | [minpoly_dvd_mod_p](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/minpoly-dvd-mod-p.md) | 115 | `result-track:301b04ce404a6e6c5cd9ea7f5eeff0557c8e3c011493a668f2ad964f5e7741db` |
| 8 | `theorem` | [minpoly_eq_pow](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/minpoly-eq-pow.md) | 126 | `result-track:2cc1ebfb6fc3c1b0896be32f801b07853f5f0aa32dccd71193b41c082f1e266b` |
| 9 | `theorem` | [minpoly_eq_pow_coprime](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/minpoly-eq-pow-coprime.md) | 183 | `result-track:7f67d89e3eb688d172babb646a2ce7585c5e7b59a0477198a98bba88095100b5` |
| 10 | `theorem` | [pow_isRoot_minpoly](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/pow-isroot-minpoly.md) | 207 | `result-track:a97fecce4863a841597538047396341fd8138d1f09463968410ef5e39b336b94` |
| 11 | `theorem` | [is_roots_of_minpoly](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/is-roots-of-minpoly.md) | 215 | `result-track:19382fdb6a3320ac604e2c59c677daa832072565322d844c30a652b03fc84e64` |
| 12 | `theorem` | [totient_le_degree_minpoly](../../../../CommutativeAlgebra/RootsOfUnityMinpolyNamespacedAligned.lean/declarations/totient-le-degree-minpoly.md) | 228 | `result-track:4936af1b46375ec20d90122425a3c22df36111e7d7d48d09016bfd7f03a9cc28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57d81f6ba7719f8d427661c8eafcad9b7cef4755d1beeeaedfb121b40ed3c49e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
