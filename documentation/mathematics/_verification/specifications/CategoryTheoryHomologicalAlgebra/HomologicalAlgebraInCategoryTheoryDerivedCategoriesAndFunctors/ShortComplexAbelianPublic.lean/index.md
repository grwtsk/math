# Verification target: Short Complex Abelian Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ad239a8c57101a49d0b14c3da9d4a03a9b1825a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ad239a8c57101a49d0b14c3da9d4a03a9b1825a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean.json)

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
| 1 | `def` | [abelianImageToKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/abelianimagetokernel.md) | 50 | `declaration-track:af358a87d546392b2e4c06b107f04ddb7a7ae8267ef66b1e47b4fe80fe029aab` |
| 2 | `lemma` | [abelianImageToKernel_comp_kernel_ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/abelianimagetokernel-comp-kernel.md) | 56 | `result-track:8962d28f4ce0f71132db57216107c0ecb146c4ca143898a997e1f8e5a914a8a4` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/instance-source-edition-4.md) | 60 | `declaration-track:f27976b74e2c134a2de34ae5b2c52d39ab69aaae27596136b81cd145106770aa` |
| 4 | `lemma` | [abelianImageToKernel_comp_kernel_ι_comp_cokernel_π](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/abelianimagetokernel-comp-kernel-comp-cokernel.md) | 64 | `result-track:3ffd8e3f63f85cdc97e338f5cd7be92086463aeff8ce27f229cba9b11fec2f43` |
| 5 | `def` | [abelianImageToKernelIsKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/abelianimagetokerneliskernel.md) | 69 | `declaration-track:410076be4e1bd0860d3df5b12808031a619bcb8bc2b7e678c69656d372b1037f` |
| 6 | `def` | [ofAbelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/ofabelian.md) | 84 | `declaration-track:b32288b3d3b07f84c6cf58dbc246cfad400b8869028df13402815aeec8a899da` |
| 7 | `def` | [cokernelToAbelianCoimage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/cokerneltoabeliancoimage.md) | 120 | `declaration-track:3ebf884d128b5b15f4b4405f84cfbf5de457ed3d45f28c8517d611757224f31d` |
| 8 | `lemma` | [cokernel_π_comp_cokernelToAbelianCoimage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/cokernel-comp-cokerneltoabeliancoimage.md) | 126 | `result-track:3745c27c94fe3bffa92c57864abe2ca9dc2f9f4b831362b2770e48d4ad128110` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/instance-source-edition-5.md) | 130 | `declaration-track:fc42932430572ab4ccbe6adfd813cce4e3fec8e902551bd10285591b88df2594` |
| 10 | `lemma` | [kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/kernel-comp-cokernel-comp-cokerneltoabeliancoimage.md) | 133 | `result-track:66c388572a712716fe4d9ec46247f28e3a1955df4978889e5298a37403d17bfb` |
| 11 | `def` | [cokernelToAbelianCoimageIsCokernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/cokerneltoabeliancoimageiscokernel.md) | 137 | `declaration-track:07abe96afcc18d97282060061fc80a2e49a0012267ce2a807f6a8562f45346d3` |
| 12 | `def` | [ofAbelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/ofabelian-source-edition-2.md) | 153 | `declaration-track:da9b2159501e5d9104083dbd804e3f51157cccd91fff1c4dfa9dc16482e488a1` |
| 13 | `def` | [HomologyData.ofAbelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/homologydata-ofabelian.md) | 187 | `declaration-track:1bbd75794ea3933d0537d83267f4480aaa30948dde354129943c105bda7010f7` |
| 14 | `instance` | [_root_.CategoryTheory.categoryWithHomology_of_abelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/root-categorytheory-categorywithhomology-of-abelian.md) | 192 | `declaration-track:3bd2485c6cc561f256a5da3147071b1a38dc42ce948426a6c8ec41bb4463f07b` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/instance-source-edition-2.md) | 196 | `declaration-track:a36d1b50ff7cc31b8b6a8d636299614542ff6d3d9eba107eef0285d1697afaf6` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/instance-source-edition-3.md) | 201 | `declaration-track:b8e57ec2ea7f4931a4c407368751fa9d3dc258fed88a5cb8445d74c31fd42dfa` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/instance.md) | 206 | `declaration-track:00e881234d4d65b5cb6130ad801184586ced048a90d1ff42dd3aea4eec970c8e` |
| 18 | `def` | [homologyIsoImageICyclesCompPOpcycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/homologyisoimageicyclescomppopcycles-source-edition-2.md) | 212 | `declaration-track:dd1cb449224bf81d1b7bfe94d62737e28517efef2abaa42232c7b72ebc6abc96` |
| 19 | `lemma` | [homologyIsoImageICyclesCompPOpcycles_ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/homologyisoimageicyclescomppopcycles.md) | 217 | `result-track:4e01cfe161243934e3de0599fe204c5d5b210590adc8094f3dc3c547a2ad3a0a` |
| 20 | `def` | [isoImage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/isoimage.md) | 236 | `declaration-track:1f8a42e3ae88d63db79feb84f67de05c7a57865db062491d895089b952002173` |
| 21 | `lemma` | [isoImage_ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/isoimage-source-edition-2.md) | 243 | `result-track:4e85da2ea68e072aa59a8fa53a60d36b3a209fcb4bae699e2df61b690ce8112c` |
| 22 | `def` | [isoHomology](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/isohomology.md) | 253 | `declaration-track:b0358512552dba6f63675affd2e8e488fa3f70ed4cc387858e4016e9adabb3f6` |
| 23 | `lemma` | [π_comp_isoHomology_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/comp-isohomology-hom.md) | 257 | `result-track:a1ed18eea852e39aa1e4da5e9294b2894dcb27036acc78779af099e223f55a14` |
| 24 | `lemma` | [isoHomology_hom_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/isohomology-hom-comp.md) | 265 | `result-track:3ef90d08c14670f6742a2aa77b759761f5df1ca87b9e5ca5a0d3522ec1655f63` |
| 25 | `lemma` | [f'_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/f-eq.md) | 270 | `result-track:5fbb79e0682de6f3d75464521713a4fc1d0c115ec2ff879f34e074e765e35720` |
| 26 | `lemma` | [g'_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/g-eq.md) | 276 | `result-track:3a1e154ec4590d829cf8bcd2d3789e65fe02bb311ec7e802e748dc86c8c9d184` |
| 27 | `lemma` | [homologyπ_isoHomology_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/homology-isohomology-inv.md) | 282 | `result-track:e0ad34f612b8a3429d6da5c32a4dd197920bcba896ec7f3a09451661e7d8c997` |
| 28 | `lemma` | [isoHomology_inv_homologyι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/isohomology-inv-homology.md) | 288 | `result-track:cfe72303e2cb7129f8dd8e540a0b674ad33fc031b79a98b0579e54714a32cebf` |
| 29 | `def` | [leftHomologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/lefthomologydata.md) | 301 | `declaration-track:ae3012df81bdf99da6d3fc0196eb2bfc831d383ef53192ff5aea15481db39b3a` |
| 30 | `def` | [rightHomologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/righthomologydata.md) | 326 | `declaration-track:faa66772246bf00d09a91060e18436c378ea418d8cc94e06f0b7722d9d6e11b5` |
| 31 | `def` | [ofEpiMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelianPublic.lean/declarations/ofepimonofactorisation.md) | 350 | `declaration-track:3c199b77199584fbbe8b3194f250271933a1b58a84800bd8cad064c8b30036db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3031260f31dc60ad17c0dd3cf98b2576c60459a1aa5d847363a54024a9609e62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
