# Verification target: Grp Colimits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd9ec92be411800742200d67562dc53230598cb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd9ec92be411800742200d67562dc53230598cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.BigOperators` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Small` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Relations](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/relations.md) | 49 | `declaration-track:87bf8c581fbd481c9c1fdb18d86d30a9dd6e8a7f302f799d82572671faafb240` |
| 2 | `def` | [Quot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-source-edition-2.md) | 58 | `declaration-track:552b06d9fed315b35d794183995c8a3d26a8e18dfbffdb724237ebd2ef371f9e` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/instance.md) | 61 | `declaration-track:6273ef88e3524b7fce8a49db8bd677cd7fdeb4cafe5ebb45d9184eecfecb28a6` |
| 4 | `def` | [Quot.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot.md) | 66 | `declaration-track:53d4498575732866aa15cb28d2d5bdd67520c6661c2e0b7a63bdea666942cca9` |
| 5 | `lemma` | [Quot.addMonoidHom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-addmonoidhom-ext.md) | 69 | `result-track:4cac550c546a6519cf4f4c761e2d078392861befd9ded873d4ff4030b93a868a` |
| 6 | `def` | [Quot.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-desc.md) | 77 | `declaration-track:61b9d10fbae0f25031403a401cd2f423baea1c8749c4f6165948c07c7ca9069e` |
| 7 | `lemma` | [Quot.ι_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-desc-source-edition-2.md) | 89 | `result-track:d7c4e5a27cfd5de0a5b1981ff54aa09077ed572d6e03bd9adc988548944e7544` |
| 8 | `lemma` | [Quot.map_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-map.md) | 96 | `result-track:4681187a8b1bd90a239985ea8640897737aad47cb341491db110afcb9ab747db` |
| 9 | `def` | [quotToQuotUlift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quottoquotulift.md) | 108 | `declaration-track:356ca93f188106478f2175c1dca90293e4304d54bc9688742a703cbeea5eb99a` |
| 10 | `lemma` | [quotToQuotUlift_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quottoquotulift-source-edition-2.md) | 121 | `result-track:e336e1d6215d5f3c6cd8f59fcf5be766794bdfeb427709eda409553bba809262` |
| 11 | `def` | [quotUliftToQuot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quotulifttoquot-source-edition-2.md) | 133 | `declaration-track:ac9f0f6ef4c7abb0d55526da8ef5faa1ad61a49b2bef3c860cfb03e2139e66f9` |
| 12 | `lemma` | [quotUliftToQuot_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quotulifttoquot.md) | 146 | `result-track:4fdf12d88aa014b4ad5e17e906cbe612908aa3835a8ee47c44bca783fd496dfd` |
| 13 | `def` | [quotQuotUliftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quotquotuliftaddequiv.md) | 159 | `declaration-track:aa2f59c56e236fcebe6933afd23e050faa008769bb3973f1265db2da55a68f95` |
| 14 | `lemma` | [Quot.desc_quotQuotUliftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-desc-quotquotuliftaddequiv.md) | 175 | `result-track:59dfce8cc1103dd654edba63facf39344802203d3d48c0bb8ff8a8efdd7f1609` |
| 15 | `def` | [toCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/tococone.md) | 190 | `declaration-track:ab4ad4e5389ebf05dee63c7d666de259edbe4bcc8a13daff502bb30f96ed4336` |
| 16 | `lemma` | [Quot.desc_toCocone_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-desc-tococone-desc.md) | 194 | `result-track:11c006d3a62ca2037fc31006ff2f31509cea8813ce7c7adf9421c454706f2cff` |
| 17 | `lemma` | [Quot.desc_toCocone_desc_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-desc-tococone-desc-app.md) | 202 | `result-track:9ba2c6e6ffe74c38af4b3f77fb5072e75e1f59bf549d5064f0fec1f2175ed755` |
| 18 | `def` | [isColimit_of_bijective_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/iscolimit-of-bijective-desc.md) | 211 | `declaration-track:9385840aa369d482aacb09735830418c8425e8b65662d8d8c942db2abe678c03` |
| 19 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/colimitcocone.md) | 234 | `declaration-track:7bfeeefdeb0596e277f22a86f542af884c173c3757ac6fe2719314445bcd8231` |
| 20 | `theorem` | [Quot.desc_colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/quot-desc-colimitcocone.md) | 246 | `result-track:cd2993076575ce58cef93169f554b9092f8ce58ae1b4655f15f37c7017e80bbe` |
| 21 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/colimitcoconeiscolimit.md) | 255 | `declaration-track:b8457a4e7bd85f70ea3040c509f7c2490f703a261e1a24ce2fc2b73d3ab99928` |
| 22 | `lemma` | [hasColimit_of_small_quot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/hascolimit-of-small-quot.md) | 265 | `result-track:eb007247913a2de0f85c92ef0b309db57dce6a2fb00cd590dd40b1e7cde90b44` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/instance-source-edition-2.md) | 268 | `declaration-track:dc911a3402cae2e0321a3afd68f13b863f084fa9a150582d798bba1d219df151` |
| 24 | `instance` | [hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/hascolimit.md) | 271 | `declaration-track:3dbb8fd79d483749532626658fb71da9e1bf932be70b500bce93a2ace8885955` |
| 25 | `instance` | [hasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/hascolimitsofshape.md) | 279 | `declaration-track:2aaaf34758eeba53c238288b3680fe7b0f0b03b80c5e07cbad5c181ca189e892` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/instance-source-edition-3.md) | 283 | `declaration-track:ee44efc95ee0468dc63b3d5f1d9729abdac18d827b07cc7f4a68a1b0ede0d977` |
| 27 | `def` | [cokernelIsoQuotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/declarations/cokernelisoquotient.md) | 295 | `declaration-track:7ac6a70223bf7cd43869deb83d7dbd990f625a9a671eb08888f1edfebc70293e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7aa011e106580be1a404cc66bde7485a50e789d44130ea693085b888c4991e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
