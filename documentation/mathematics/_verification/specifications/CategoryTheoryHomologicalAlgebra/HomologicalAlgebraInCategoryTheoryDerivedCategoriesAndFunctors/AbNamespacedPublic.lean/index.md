# Verification target: Ab Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1aa5b29d99c64f1bc770feba804c2b3662fb250",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1aa5b29d99c64f1bc770feba804c2b3662fb250`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ab_zero_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ab-zero-apply.md) | 52 | `result-track:2a65d0ad7c206de3fe24e40cc43f5fe4fc3beaf2c840377b8cbc39743acd2d47` |
| 2 | `def` | [abToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/abtocycles.md) | 58 | `declaration-track:fb1cc20ea44305b574e522041dc5033d1bf1d3db24c971572b79883903e4e33a` |
| 3 | `def` | [abLeftHomologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ablefthomologydata.md) | 65 | `declaration-track:40c9add4527630805be66509dee3063dd3c9b00d0a027b304dd3122e5ca47017` |
| 4 | `lemma` | [abLeftHomologyData_f'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ablefthomologydata-f.md) | 82 | `result-track:301c1e83bb05664d798f9bb20c8ffa649b3cae673c4c75664d61b3a7d5ed274f` |
| 5 | `def` | [abCyclesIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/abcyclesiso.md) | 87 | `declaration-track:a4e76ca321ccb33510e219647ebc182a5b4308b82264394212483e84f5437d15` |
| 6 | `lemma` | [abCyclesIso_inv_apply_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/abcyclesiso-inv-apply-icycles.md) | 96 | `result-track:03670285ed34c2fcd832d20d9ecf945c708bbdcd3f7903ff98785e3dee03c850` |
| 7 | `def` | [abHomologyIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/abhomologyiso.md) | 106 | `declaration-track:0d4190a6f5638d705a318c09c3e43f5dcf6e7cf18c756ac4ffeb752665c5fddf` |
| 8 | `lemma` | [exact_iff_surjective_abToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/exact-iff-surjective-abtocycles.md) | 111 | `result-track:391f073fa873214f6972e8650cc5d2fc9306e047d468179a29ff55663fbde43b` |
| 9 | `lemma` | [ab_exact_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ab-exact-iff.md) | 117 | `result-track:e0d16c4037980421f3b2672a0ec9a293288e79440e42ef15c410cbe3c7b14726` |
| 10 | `lemma` | [ab_exact_iff_function_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ab-exact-iff-function-exact.md) | 128 | `result-track:44db18f40c8c7cb5e3151da72b35835e0e974c5a3c81e6b87976bab6e769b0cf` |
| 11 | `lemma` | [ab_exact_iff_ker_le_range](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ab-exact-iff-ker-le-range.md) | 142 | `result-track:bae389190cee028263155bb81495e69ee369856cc26fed678ebd90f84513cee9` |
| 12 | `lemma` | [ab_exact_iff_range_eq_ker](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/ab-exact-iff-range-eq-ker.md) | 144 | `result-track:1f1c217bac88487e464335e38ed57c9ddafdcfd27e3be5a880f5a0ca50b8ab00` |
| 13 | `lemma` | [Exact.ab_finite](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/exact-ab-finite.md) | 159 | `result-track:643f06cde910bea72f312028fccd749b620b8533d46a06a49d0573c8ca8e5d86` |
| 14 | `lemma` | [ShortExact.ab_injective_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/shortexact-ab-injective-f.md) | 167 | `result-track:7c5ee681b4cf0090c5d446045870c0945aed33ca2d5cac3efbd74370a53c5498` |
| 15 | `lemma` | [ShortExact.ab_surjective_g](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/shortexact-ab-surjective-g.md) | 171 | `result-track:a93b8705e260d30d0330f127a18a624593b6883383c8f66c954e3794addb4feb` |
| 16 | `lemma` | [ShortExact.ab_finite_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AbNamespacedPublic.lean/declarations/shortexact-ab-finite-iff.md) | 177 | `result-track:0829681df481185e7de4af9bd3246c9f76e16ba3b1e40c3a29e83702d80f1dae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a050263e4464714377d75724959412156f081a27332b23a72d0e06fe05ba3b92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
