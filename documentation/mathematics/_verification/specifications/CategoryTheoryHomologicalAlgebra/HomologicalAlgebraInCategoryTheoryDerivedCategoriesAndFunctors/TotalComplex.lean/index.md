# Verification target: Total Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b544cd987c7b0f89088ba4f2c38c71c841488297",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b544cd987c7b0f89088ba4f2c38c71c841488297`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ComplexShapeSigns` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalBicomplex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTotal](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/hastotal.md) | 41 | `declaration-track:a8b4df917f92f467a4b4ec72762b64ccfea99e7a2ecc8c6ce98b3289456acdd5` |
| 2 | `lemma` | [hasTotal_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/hastotal-of-iso.md) | 45 | `result-track:baccb406f01fb7f68aade20b050fd307f504b29ca6011cb9c2a7d3a3ef20f75f` |
| 3 | `def` | [d₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d.md) | 57 | `declaration-track:29702ac5ec44dfac0119f470db42abe3bf904685ce201fde01fbd5167cf63b41` |
| 4 | `def` | [d₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-source-edition-2.md) | 63 | `declaration-track:2e63de52be2b470540fb0dfc71ef291e62e8dfea041b6580b8056b5372235aa6` |
| 5 | `lemma` | [d₁_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-zero.md) | 68 | `result-track:16149c1f847cbd581213c80cbb00b1edbdb339e916fe7fc40122765a6558cb2b` |
| 6 | `lemma` | [d₂_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-zero-source-edition-2.md) | 73 | `result-track:51c10c90fa7917cf1a7cdecc5fa5bd6bee3bf1bb16619b4bda5c50dafeb4937b` |
| 7 | `lemma` | [d₁_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-5.md) | 87 | `result-track:86096f24947b36101e4d73f1d2269f8405669c045b7305c2e20ca8a70bc84bf8` |
| 8 | `lemma` | [d₁_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq.md) | 93 | `result-track:1b8dd462d3652905136321b1245e4535923180e3bd89c18cbeebfdf3aed028d2` |
| 9 | `lemma` | [d₂_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-8.md) | 99 | `result-track:ef7bcb951200d4941d7430e90f6e533b222dac8c78ec34183b0b9ea2749a82c4` |
| 10 | `lemma` | [d₂_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-2.md) | 105 | `result-track:2e3045dc3eaaaa6b205ce53e2318d26512f1e534308442fa34ecfd601bcf1b7d` |
| 11 | `lemma` | [d₁_eq_zero'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-zero-source-edition-4.md) | 113 | `result-track:e1e477fb36a2c06e19a6f0f10d3636c7de3120a94f3a5cdff717c6b0230dafae` |
| 12 | `lemma` | [d₂_eq_zero'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-zero-source-edition-3.md) | 119 | `result-track:d299a59e7ca5c4925ca9eadb1d737e88108d8e3d00831a959ff2267b7fc599c7` |
| 13 | `def` | [D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-source-edition-3.md) | 126 | `declaration-track:91496bdbb21e71772ff3d038afc099253671f5d24e9525d5698129f8bc1e89da` |
| 14 | `def` | [D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-source-edition-5.md) | 133 | `declaration-track:f7679040056cca870437a294725a2fce90a724b0ebf6b6bb281933a3ecf54218` |
| 15 | `lemma` | [ιMapObj_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/mapobj-d.md) | 142 | `result-track:3f381bd963391b78a44f664e01c9bbd1a52234dc247c8812d1257b8be1a37435` |
| 16 | `lemma` | [ιMapObj_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/mapobj-d-source-edition-2.md) | 148 | `result-track:539ef206cc2e375142cab67c704631315b2964319c9d6a59f9567310e39a0aad` |
| 17 | `lemma` | [D₁_shape](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-shape-source-edition-2.md) | 155 | `result-track:bc808cc71aa7dafd284897ea559f19a4c356028aef6775996bcc74632c60c852` |
| 18 | `lemma` | [D₂_shape](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-shape.md) | 164 | `result-track:58f85f31e0a1986e88660f67ba253e55f036811b7aefc4dda402e768a817aaa7` |
| 19 | `lemma` | [D₁_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-d.md) | 174 | `result-track:3da90a90fda287c5056e3566d97db2bcb4d311e86b74f8371b4a8464412633de` |
| 20 | `lemma` | [D₂_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-d-source-edition-3.md) | 194 | `result-track:8c3ecdd5b1968e889d62568c2fd3c4849906f7bfc73287fd4138d3723d5940e3` |
| 21 | `lemma` | [D₂_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-d-source-edition-2.md) | 214 | `result-track:4db0aa3c39d0f7aa1f99248a91af1b9bd220b373d256e07c94fae25780629fbe` |
| 22 | `lemma` | [D₁_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-d-source-edition-4.md) | 245 | `result-track:fcde1275429ea7d5fcea87295267b0f03932a6d3da1532192ab7b37399452c0c` |
| 23 | `def` | [total](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/total.md) | 250 | `declaration-track:1307abeec7dcc1c619fa47e7e0c37913b8126c3e4cea75cc63a4e900b365291e` |
| 24 | `def` | [ιTotal](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/total-source-edition-2.md) | 257 | `declaration-track:82bf8ee8a51cc3acb9da3f38cffe9d36dcb2bb920873a050a1b527a709a7eed4` |
| 25 | `lemma` | [XXIsoOfEq_hom_ιTotal](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/xxisoofeq-hom-total.md) | 263 | `result-track:557e1d484575ce8abbf6bca59cec5320538fa73ed68e6e940cb8e28bc6cc236c` |
| 26 | `lemma` | [XXIsoOfEq_inv_ιTotal](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/xxisoofeq-inv-total.md) | 271 | `result-track:298383afe592a29f7061b64fca57d119f139cc5e8c51442fa6929c9875d34d63` |
| 27 | `def` | [ιTotalOrZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totalorzero.md) | 279 | `declaration-track:bb8488ebe0ad5bc7d7e62e8b2c0fc4f1eae9bece7d3685889f4c96c816e28584` |
| 28 | `lemma` | [ιTotalOrZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totalorzero-eq.md) | 283 | `result-track:df447b5b148de06220fc52c93465496f251796df8345f2a35368546a80602bb6` |
| 29 | `lemma` | [ιTotalOrZero_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totalorzero-eq-zero.md) | 287 | `result-track:f93032c6350935e5cb310a114a845ddb88cd29bb34f96598289e788835a3ad43` |
| 30 | `lemma` | [ι_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-source-edition-4.md) | 292 | `result-track:f1013d3cbdd20c658d4b43d4e772079ee7098ff097d1da454cf7d49a2e6ae05f` |
| 31 | `lemma` | [ι_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-source-edition-6.md) | 298 | `result-track:f8960ce4013d08112599773d2d8a7f4d70301b75ea14d47ddee209b6766f7c11` |
| 32 | `lemma` | [d₁_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-6.md) | 304 | `result-track:cb64634f0c54b7dd111c8808b1d0c60e98476d01da4635b07a4b093b08e145b3` |
| 33 | `lemma` | [d₁_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-7.md) | 309 | `result-track:ea73fb6cb55575c0b3dbd2df316b50bc8ca5da162856fb4068f11f7d238613f3` |
| 34 | `lemma` | [d₂_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-4.md) | 315 | `result-track:5297c04544ccbd2c4e449802e4cf68a9e23946bb7320b0d7a4bb465663671b13` |
| 35 | `lemma` | [d₂_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-eq-source-edition-3.md) | 320 | `result-track:3b37da48eeeb45883a7756a21e2f28c62a67adc88b18c4e0048ea3713dc5f53a` |
| 36 | `def` | [totalDesc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totaldesc-source-edition-2.md) | 333 | `declaration-track:79510f0c3d1a21c4277a7e461483e1e601eda08d94baee654dfca40a95f9a32e` |
| 37 | `lemma` | [ι_totalDesc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totaldesc.md) | 337 | `result-track:1cb9f8dcf42b3e5c41ca109c6d8970752138a33899a8a47bae96516b373a409f` |
| 38 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/hom-ext.md) | 348 | `result-track:6a69891ea670c3269f6d76210c5218ce6c32233a9bc371e167c494c8215bd020` |
| 39 | `lemma` | [d₁_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-mapmap-source-edition-2.md) | 360 | `result-track:dee31c8d9eb72a134b694de423477b161b1518d494765c0bbed834dfb34f9e39` |
| 40 | `lemma` | [d₂_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/d-mapmap.md) | 368 | `result-track:a038f90148c1a0ba2ff4c012c2293277c1a6f6186afd2e5156152203b64c1714` |
| 41 | `lemma` | [mapMap_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/mapmap-d-source-edition-2.md) | 376 | `result-track:99a5cdac7d41d6c76a7afd143193f5ab1fba657aa12a8dc5d111de4672e9f357` |
| 42 | `lemma` | [mapMap_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/mapmap-d.md) | 382 | `result-track:0a6119985325da53d65d3e768e915defff34e598f99f904ca1e81939f94e090f` |
| 43 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/map.md) | 391 | `declaration-track:066f93a1f5e364fda778dff6f0108103a4ff97e1e760832da699fcf6c1344717` |
| 44 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/forget-map.md) | 398 | `result-track:a2cabeec1fe30747f72c155efd14b45b5e6159d4351ed084c3472cf72e2ec08e` |
| 45 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/map-id.md) | 404 | `result-track:070ac186c513b8d753aa0f66a1b2ba19b78ba869f9d1a15e51ae4a6162a4ab4b` |
| 46 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/map-comp.md) | 411 | `result-track:5f74019244790c4a80a243c8f649fb1773334de462b08031059e91249540fff1` |
| 47 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/mapiso.md) | 418 | `declaration-track:d475d01ce965302c87d4a4b2764600da74418241dded36582dba9e08bb83dcdc` |
| 48 | `lemma` | [ιTotal_map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/total-map.md) | 431 | `result-track:5e04225c0b89d9f902004b9825c40e1774e005bc00a75bd9aa71c2f9cd17fc57` |
| 49 | `lemma` | [ιTotalOrZero_map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totalorzero-map.md) | 437 | `result-track:97b9dc74d8802fb1b35bb2e9a8f5ff66097507f91d08fb08ccd5a3de8182c2f4` |
| 50 | `def` | [totalFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TotalComplex.lean/declarations/totalfunctor.md) | 449 | `declaration-track:a272bfd5e85fd6157a4ec8b40d3a25785d46c672c2d3689c9608c36e097f752e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca9202e3da5ca712bc3e3c1816b8c60e458b3633d62156747b37826d4331197d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
