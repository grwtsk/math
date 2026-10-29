# Verification target: Category Theory Yoneda Representable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "005ef7fe4cea05037786fab6a450f0567aa0e5d3",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `005ef7fe4cea05037786fab6a450f0567aa0e5d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [yoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yoneda.md) | 41 | `declaration-track:7dea07d928248ab25b7b6f472ca9b67395117b76d5107d37c1fa0a8fcc5a97d7` |
| 2 | `def` | [coyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coyoneda.md) | 52 | `declaration-track:1639a6496e981627afe5a2965d309afeeff3d6ed64e5e881f44db67d45042e74` |
| 3 | `theorem` | [obj_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/obj-map-id.md) | 62 | `result-track:60ad26516ec7d603d549f7dcf0c10376a4dcf7cb8d008aa8759d213fff811ece` |
| 4 | `theorem` | [naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/naturality-source-edition-2.md) | 69 | `result-track:8fc84a2f5386e805c6542fd738df7cfd354f3080372ccb36fc653284461f108d` |
| 5 | `instance` | [yonedaFull](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedafull.md) | 78 | `declaration-track:ed2ca27f83e196b599bbc628b29867dc022dec51d7657438ee2de94572052aeb` |
| 6 | `instance` | [yoneda_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yoneda-faithful.md) | 86 | `declaration-track:14371cf073aaec902bfeef81406ecfb30eaf4ab80d9afdcbd9ace4d36d1ce622` |
| 7 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/ext.md) | 99 | `declaration-track:472dcf0f44feeeb25229a31567fb0435cf682a36d5063ca3cb314dc5ad6ea551` |
| 8 | `theorem` | [isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/isiso.md) | 110 | `result-track:345172e1d7d9aff4d15b4f6b724c17ab64cc3f1aaaf49c757da59c3a279b9b39` |
| 9 | `theorem` | [naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/naturality.md) | 119 | `result-track:55e290b5416d4036b57eafc60476833001abeb4241cb3b58c60d87ce69cea69b` |
| 10 | `instance` | [coyonedaFull](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coyonedafull.md) | 124 | `declaration-track:ed52fa1dc6a515f1c2679cec705dc6be86acdb199e8ce1519f25d7e6676c0541` |
| 11 | `instance` | [coyoneda_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coyoneda-faithful.md) | 129 | `declaration-track:0ce265c17a233bac666e98322bed986c6fa5198d5eaa5a3a7a65de1ac33084f5` |
| 12 | `theorem` | [isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/isiso-source-edition-2.md) | 137 | `result-track:5d0ec15ff59c4d7075ad2f7bbebb10a7eadc424dc79c059743f08be7e9f38624` |
| 13 | `def` | [punitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/punitiso.md) | 142 | `declaration-track:1a38fdfba90c1daa21180973262af5d550133f7e5fc12f4625552e43e731d2e0` |
| 14 | `def` | [objOpOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/objopop.md) | 150 | `declaration-track:f49870fe85e3aeb46d340b529f61081d448a11ad9ee6e53bf2fe36d8bbdf24a5` |
| 15 | `class` | [Representable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/representable.md) | 162 | `declaration-track:f3ec5a5a8138105824934d395bf451efef9ebfeea3ac5703ec669432d7366b54` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/instance-source-edition-2.md) | 167 | `declaration-track:7293e69499289cc851d21d28993d8ae8885cc2023d7d44f58fba02d8397e34b5` |
| 17 | `class` | [Corepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/corepresentable.md) | 173 | `declaration-track:965171d526400515143752c2adba92c757e5dc483a69ec72334f5b6498d1e070` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/instance-source-edition-3.md) | 178 | `declaration-track:77a9f98f7902d85e18c2f32e8f56bb0dc3ea84ebeded5dcac6dcd3f241b5e5b1` |
| 19 | `def` | [reprX](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/reprx.md) | 190 | `declaration-track:ababa65b95aca613bbe211163e5843b4a3d7a2687f34972216d3ff958de24ee1` |
| 20 | `def` | [reprF](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/reprf.md) | 196 | `declaration-track:48381498064d7d0687e97d167b490e6519bd7209021c3e8cd718f7d83e16c92f` |
| 21 | `def` | [reprx](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/reprx-source-edition-2.md) | 203 | `declaration-track:bc83ddcf87f4f3a075ba0ce3dcfd433ac596469bd1a1c996853c4a23ee7e1b1c` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/instance-source-edition-4.md) | 207 | `declaration-track:cef165b21ac86b63aa88ea6aa80d6516ac168e197430817a9fe1837a7808f9c0` |
| 23 | `def` | [reprW](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/reprw.md) | 213 | `declaration-track:3ea215f3f9d1d43e8e0e8d2be61aa63046680b1fe2907c46760cadae022d0ed3` |
| 24 | `theorem` | [reprW_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/reprw-hom.md) | 218 | `result-track:f58371d8d1742fafd0045be3e29f411f2f91d973b36c20ab68371acc1a8342d6` |
| 25 | `theorem` | [reprW_app_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/reprw-app-hom.md) | 222 | `result-track:7cec2ad409b1f57e56adc6669d9f71469e41301f6727bef806eff6968f105a65` |
| 26 | `def` | [coreprX](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coreprx.md) | 239 | `declaration-track:06e50841100c8dea792b8206c842f803fc8491735b37c48236bb5744f33a2a17` |
| 27 | `def` | [coreprF](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coreprf.md) | 245 | `declaration-track:b10168ed204023ba2854ae6092c9fb98abcf58d412ce68a8b9c041662db83b73` |
| 28 | `def` | [coreprx](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coreprx-source-edition-2.md) | 252 | `declaration-track:ada381cd38f4bbbff766dcdd328a06c009e6058023c0c2c927187a2266091e44` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/instance.md) | 256 | `declaration-track:2a372e36014c740fef81a7eab60128d6ead956900d17bbf60d3572ea6180ade0` |
| 30 | `def` | [coreprW](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coreprw.md) | 262 | `declaration-track:4316b8987dc6d165c612c8ba7c8993b90ee29ec15c7e4d1494a3223df4436000` |
| 31 | `theorem` | [coreprW_app_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/coreprw-app-hom.md) | 266 | `result-track:5d618f7aa68e47adeeea77b0bd173b32da0bd27168ac7004a1bb7c4455f71c73` |
| 32 | `theorem` | [representable_of_nat_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/representable-of-nat-iso.md) | 278 | `result-track:2eadc42c0ebde8485122e1d04626eb48734bd07d3e12b65f878552fe64fab770` |
| 33 | `theorem` | [corepresentable_of_nat_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/corepresentable-of-nat-iso.md) | 283 | `result-track:0da4e9197f0674f1acb2398993371006cf5a08aee44be3c977bdd61bd370864f` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/instance-source-edition-5.md) | 288 | `declaration-track:e03223bdd851de1b060d24782505c90302846288cb7b5981dabef9a40b4cc8df` |
| 35 | `instance` | [prodCategoryInstance1](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/prodcategoryinstance1.md) | 296 | `declaration-track:f0deeceddc668a09060b0cf7f5dedeb2831c0f59ed83d9465bfcee1d3b475987` |
| 36 | `instance` | [prodCategoryInstance2](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/prodcategoryinstance2.md) | 300 | `declaration-track:854bcf33a5b349f5670f98e912c46d30dfd8d5a5430fa6e2ef8853b9c0f67a80` |
| 37 | `def` | [yonedaEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaevaluation.md) | 309 | `declaration-track:cf10b6afa00dafc6e8911c2caf7ef4c424d413e350e671248dd5b35940336bef` |
| 38 | `theorem` | [yonedaEvaluation_map_down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaevaluation-map-down.md) | 314 | `result-track:2fa772425029a3cd7b19dc2e7fd4aa2ad33d083d75bb634286a0402ceb0e03e7` |
| 39 | `def` | [yonedaPairing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedapairing.md) | 323 | `declaration-track:e821ec5f46907b7a34bedab5f67e8cc8fb7b2563f3709402043560c906bb2988` |
| 40 | `lemma` | [yonedaPairingExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedapairingext.md) | 331 | `result-track:a3f74d2ce750e56c5ff1785649c1eeeb06e5072feb054df08664530ca0b7780d` |
| 41 | `theorem` | [yonedaPairing_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedapairing-map.md) | 335 | `result-track:0079aeb6b61924b050f3ddf382ff89c8bf574d45de2b7ffdc9a5bfe2c78675e2` |
| 42 | `def` | [yonedaLemma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedalemma.md) | 346 | `declaration-track:047d5a4afbad850b8d72efbb36335f6829f8d233af24a725c67cf422a2d5c30f` |
| 43 | `def` | [yonedaSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedasections.md) | 389 | `declaration-track:76e8e844385e1cc4dcf685a92a86750ad80aadcb2155d93f7b29cf2dfcf72994` |
| 44 | `def` | [yonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv.md) | 396 | `declaration-track:7bb9f1a99db9a33d2e95beffabb91a36bba97dc9c2db91e3b6abcf4b914b4896` |
| 45 | `theorem` | [yonedaEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-apply.md) | 401 | `result-track:c466fe920cac70b5374e5b0ece40100496b96595f93df292729091a97767e491` |
| 46 | `theorem` | [yonedaEquiv_symm_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-symm-app-apply.md) | 407 | `result-track:11af01459185582fd2850b6c30f89bcad8332958d39e0155f0611d21c7cc271a` |
| 47 | `theorem` | [yonedaEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-naturality-source-edition-2.md) | 412 | `result-track:cc132c21f962c5b1d808074908bd5610d99c20ae335087c8112d529934e2a33b` |
| 48 | `lemma` | [yonedaEquiv_naturality'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-naturality.md) | 420 | `result-track:ac689731c6d460698b71ed5c2b2591828f764320970ff83acc3fcc764bf8f6ac` |
| 49 | `lemma` | [yonedaEquiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-comp.md) | 424 | `result-track:7c293eeb416e762a961b4ae69c01354f37fc5727f7fe15684ab05970541724ba` |
| 50 | `lemma` | [yonedaEquiv_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-comp-source-edition-2.md) | 428 | `result-track:dd7a19b7b61b633a49cb7cb356212af944eefe63acd03218ecf9b98e14400b86` |
| 51 | `lemma` | [yonedaEquiv_yoneda_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-yoneda-map.md) | 433 | `result-track:f0bae3bb495397e158fda2319a57057708cede5f01b865331cc4a50e05690f64` |
| 52 | `lemma` | [yonedaEquiv_symm_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedaequiv-symm-map.md) | 437 | `result-track:1bba10314fcab00defe87fbe717e11cf5798cad4de3ec6778ba806f4a7c414e2` |
| 53 | `def` | [yonedaSectionsSmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedasectionssmall.md) | 445 | `declaration-track:dc9998422a1ea95d29bce99b1decd64250354ddc9fe5c07e7444c38493b49783` |
| 54 | `theorem` | [yonedaSectionsSmall_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedasectionssmall-hom.md) | 451 | `result-track:4fedc26ed9a334cb8f05cf43ae4102bce5417d08a4ff7db5323be647bc414c7e` |
| 55 | `theorem` | [yonedaSectionsSmall_inv_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/yonedasectionssmall-inv-app-apply.md) | 457 | `result-track:29ea5f06bbff1875223cc8c520bc09718bc6bbef7bc6bc17a37ca554bc9a52ef` |
| 56 | `def` | [curriedYonedaLemma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/curriedyonedalemma-source-edition-2.md) | 467 | `declaration-track:87d35e4fa5ce2ce2d3a33ea76374e9347c16f64d0e66c8bd82544b5de059ef71` |
| 57 | `def` | [curriedYonedaLemma'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryYonedaRepresentable.lean/declarations/curriedyonedalemma.md) | 487 | `declaration-track:78a3007f091e221dbd66c512286f4b5db6bad3d1363bcb633af795957f2efa47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad515c39414a96d34b864230950ba045aa30c83d625418c61b936941bfe6c9d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
