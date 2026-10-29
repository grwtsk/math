# Verification target: Catalan Jacobi Test Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f11954b44199e72e7c5feb858cfede600332d08",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f11954b44199e72e7c5feb858cfede600332d08`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DyckWord` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Catalan` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [consEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/consembedding.md) | 17 | `declaration-track:8823e00b936999f951da2808c73e063b173ce9a4300bbd6054e6b934ed31ac83` |
| 2 | `lemma` | [consEmbedding_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/consembedding-apply.md) | 20 | `result-track:d5cd724f463676c5c5ff58183235d6c8b827ba511194ec0511e04727fd1f9fc7` |
| 3 | `def` | [paths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/paths.md) | 23 | `declaration-track:d3637149318b5d93ad9a99e0318123b2c04212eb95a0223d567e057c4ac3cdcf` |
| 4 | `def` | [Nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/nonnegative.md) | 29 | `declaration-track:aa5ad4838835384b86bee4e277734fdb8a1a75a5dbfffe216e1932ff2018ce4b` |
| 5 | `lemma` | [nonnegative_cons_U](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/nonnegative-cons-u.md) | 32 | `result-track:32c13e61b6a60640438f0d765b898dd465ef154ef347e2da4dc774ccc66ff183` |
| 6 | `lemma` | [nonnegative_cons_D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/nonnegative-cons-d.md) | 42 | `result-track:18bd685e515634321ad70647c7e3a76746cfcc781010b71d01d03b4accaf74ad` |
| 7 | `lemma` | [not_nonnegative_cons_D_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/not-nonnegative-cons-d-zero.md) | 54 | `result-track:4afa2f1be79eb80b8cd3c2c6f0bf8fc1a17c504fb2e4bbfe58b9072fd4cdeb15` |
| 8 | `lemma` | [mem_paths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/mem-paths.md) | 60 | `result-track:4cfbac79b3b03c15bfbffe0283d5d8f951d3f4569f9000d78862c385d39a0642` |
| 9 | `lemma` | [paths_union_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/paths-union-disjoint.md) | 87 | `result-track:df47b28bc35423cf525e521d644f53f63fb57ab92f419221992d788d35c2969f` |
| 10 | `lemma` | [card_paths_succ_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/card-paths-succ-zero.md) | 92 | `result-track:c5876369e46cceddafa4b3580f036c7888c3f02d79d10457f47753b20c00e351` |
| 11 | `lemma` | [card_paths_succ_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/card-paths-succ-succ.md) | 95 | `result-track:b7b891593fb5e7351694ed59cc85db44b1676c2e511f2b4dc7c396ef8b00c61f` |
| 12 | `lemma` | [length_eq_counts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/length-eq-counts.md) | 101 | `result-track:0e5b305978e62dc7d9923120b14fc578c3b0e22c309d949ccb1bd7b21a263c41` |
| 13 | `def` | [returningPathsEquivDyck](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/returningpathsequivdyck.md) | 108 | `declaration-track:fb5aa3ddfc060ae386c2e238f2c6738c632728b650ddf9c080e6391488e574ec` |
| 14 | `lemma` | [card_paths_even](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/card-paths-even.md) | 126 | `result-track:1f823c2b73615fb45eefbe78e343ce8bc5511921db721c6d45a1b713510a8b65` |
| 15 | `lemma` | [paths_odd_eq_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/paths-odd-eq-empty.md) | 130 | `result-track:dc98da748551481620c423813b3437b5fa972a27a1357a11b3a3c1f4b76bad99` |
| 16 | `lemma` | [paths_eq_empty_of_length_lt_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/paths-eq-empty-of-length-lt-height.md) | 138 | `result-track:986a0b54342b5cd092a205fe96e30581c0d51d9c8e8fba66cbed66ec5d39d4d2` |
| 17 | `def` | [Jfree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/jfree.md) | 149 | `declaration-track:7af6f54c26dfdfa8038d46031191674a358a1783871f3111671f10b0f02e8e23` |
| 18 | `lemma` | [Jfree_apply_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/jfree-apply-zero.md) | 153 | `result-track:003b73f4c02e6742e48cffa6b521c350dba858e3f9659ca2f35d68db3bc250e6` |
| 19 | `lemma` | [Jfree_apply_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/jfree-apply-succ.md) | 157 | `result-track:fa1dac5828004e877a0a4dc00ef2fd1266d296da8e901278a60dac9546990893` |
| 20 | `def` | [basisVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/basisvector.md) | 162 | `declaration-track:898775bffa97bffca124b46624388beca01949211840ded025d0319b1fde7bce` |
| 21 | `lemma` | [Jfree_basis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/jfree-basis-zero.md) | 164 | `result-track:8edf68ecedbcd78c61e58085d2feb223de763ac0fcaf791b56e2ceeea3e1d384` |
| 22 | `lemma` | [Jfree_basis_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/jfree-basis-succ.md) | 173 | `result-track:1490656480ab6344f61428e839cadbd27e58d91149e2491d7b26e4384d68a292` |
| 23 | `def` | [cyclicCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/cycliccoefficient.md) | 185 | `declaration-track:dcfd242b2d3b447179e5ed727b587ad2e4e904c12577342d9a55570a77db5ca9` |
| 24 | `lemma` | [power_basis_eq_card_paths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/power-basis-eq-card-paths.md) | 188 | `result-track:cc04df0bd4f16844fa581d6598ccee71426ce303e7761ec00abb305dcd3e3717` |
| 25 | `lemma` | [cyclicCoefficient_even](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/cycliccoefficient-even.md) | 200 | `result-track:c1f6c366a5e786acff89214cc6d9bce909964a9dc8f79cd5c356aa866f87267c` |
| 26 | `lemma` | [cyclicCoefficient_odd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/cycliccoefficient-odd.md) | 204 | `result-track:05b96a59bdd1f80bb877cb5a98d385a877600255e4163febddf27adaa95c702f` |
| 27 | `lemma` | [cyclicCoefficient_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/cycliccoefficient-one.md) | 208 | `result-track:96c2e7858c7b34ae9bcb0f8fb764ee4072749b9e8bcc96422d73c4e31282c606` |
| 28 | `lemma` | [power_basis_support_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/power-basis-support-bound.md) | 211 | `result-track:04713073ce6cd34ed229afba2d287abd49c6ba1a770e901f8c434919eba28f7c` |
| 29 | `def` | [pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/pairing.md) | 218 | `declaration-track:b20f4aa51b79f557f4a55f9160a869c346bd72365153aaaa4fa3e9a516b25af6` |
| 30 | `lemma` | [pairing_basis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/pairing-basis-zero.md) | 220 | `result-track:e2dae1518a8569080f02a653f18dc790f9b1f2bc73e4171c6dd50f8f1352332e` |
| 31 | `lemma` | [free_even_moment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/free-even-moment.md) | 223 | `result-track:c5afb58e850222b6f4f5415dc29faa5954e36a95856c98188dd9da4f6d082114` |
| 32 | `lemma` | [free_odd_moment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/free-odd-moment.md) | 228 | `result-track:f66ec3a4b59a41292a2de30847e7214bdcee1a89cb101fd44a87aab3055cac1e` |
| 33 | `def` | [evenMomentSeries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/evenmomentseries.md) | 237 | `declaration-track:07fe3d7d703cea9abd0152900937aff86067a7c5b17ccaef2a377eb2eacdec6e` |
| 34 | `lemma` | [evenMomentSeries_eq_catalanSeries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/evenmomentseries-eq-catalanseries.md) | 240 | `result-track:3b720753934c777ae3ac615a0daf8c53edb5c1ccc273ba86d87c901c1d1dedad` |
| 35 | `lemma` | [evenMomentSeries_fixed_point](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/evenmomentseries-fixed-point.md) | 244 | `result-track:399bd2c087c1884ce98fb5a557b57627f431e46bdf16c798d91a0a6938e0aa64` |
| 36 | `lemma` | [cyclicCoefficient_even_normalization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiTestNamespaced.lean/declarations/cycliccoefficient-even-normalization.md) | 249 | `result-track:04842f6086e851e6619c2ed038961c25e8a85054feed0e4bf21e9af6c8416f65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e103f858b82e2a82719e056315864ebc1d5b0be07751d7970be2ba37f1d251b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CatalanJacobiTest/Variantf48d0dfe6fb1ca7910cc13e682b25fba363df7fe2dedac799fba5838873d67bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
