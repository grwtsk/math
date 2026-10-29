# Verification target: Is Tensor Product Namespaced Is Base Change Tensor Product Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7423b539d1e0cd84d706380234a1f8a252cfb8aa",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7423b539d1e0cd84d706380234a1f8a252cfb8aa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTensorProduct](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct.md) | 61 | `declaration-track:45b68feab806b275d8448ad80d5660ae7591bb889c2791a7631e5e8783a98399` |
| 2 | `theorem` | [TensorProduct.isTensorProduct](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/tensorproduct-istensorproduct.md) | 66 | `result-track:0c67e310a1cbc667b896bc87d5d2d91f2608170a424dea2ce2a0299a56be13ab` |
| 3 | `def` | [IsTensorProduct.equiv](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-equiv.md) | 77 | `declaration-track:d6df1c8ab5b097977f902b697ae874ce301391440e7a07c0ddb5dd54d71368d4` |
| 4 | `theorem` | [IsTensorProduct.equiv_toLinearMap](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-equiv-tolinearmap.md) | 81 | `result-track:6349af5e4c882d081af248fb1e04ee8f2dd43be3d23c170e2febd9c822790ac7` |
| 5 | `theorem` | [IsTensorProduct.equiv_symm_apply](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-equiv-symm-apply.md) | 86 | `result-track:09a160437e113585b847b9975edd3d9aa310306963b8ef26f457c75c52756591` |
| 6 | `def` | [IsTensorProduct.lift](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-lift.md) | 94 | `declaration-track:7d9d31390c4caaaf6c9ab0bff59afe8f46f21e4a2325518533b6386ff49bfdd7` |
| 7 | `theorem` | [IsTensorProduct.lift_eq](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-lift-eq.md) | 98 | `result-track:93e7e4d09e58911f056a763c31940d9d3e6c03294ea8d897f37e2c8d8f96eb35` |
| 8 | `def` | [IsTensorProduct.map](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-map.md) | 104 | `declaration-track:7c11beb51754ae892bf43a8f5dade92d87159e4f31f75894fd489afa16c48e1f` |
| 9 | `theorem` | [IsTensorProduct.map_eq](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-map-eq.md) | 108 | `result-track:a1c9d1226d54824bc08f5a9d8189eaf74d223fa262f3e871faf136395cdccd1e` |
| 10 | `theorem` | [IsTensorProduct.inductionOn](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-inductionon.md) | 114 | `result-track:8b4bb31e7758bdc315e0f74ae9d6bf462b24c8b7418f47a2c28f526d4b165d97` |
| 11 | `lemma` | [IsTensorProduct.of_equiv](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/istensorproduct-of-equiv.md) | 129 | `result-track:34e0c99b3ae53a012ebfeeb6fab1dc63c25a60f97806e184008c68bb45bfa6ee` |
| 12 | `def` | [IsBaseChange](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange.md) | 148 | `declaration-track:604802292c943575b534f1c25e7a111b41dcf65005db1b2ca8bfd0d1cfd526b2` |
| 13 | `def` | [IsBaseChange.lift](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-lift.md) | 164 | `declaration-track:f62aa2cc7b13093052e2ba795dbe8e6fe45958a3ad9fcdfad9c601bf9868ac10` |
| 14 | `theorem` | [IsBaseChange.lift_eq](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-lift-eq.md) | 178 | `result-track:badc6a31685a90b35f2f02e9aa897afb6f1cabd8191cdc29154acbb3f191e198` |
| 15 | `theorem` | [IsBaseChange.lift_comp](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-lift-comp.md) | 182 | `result-track:ce86c1726e96b7998895229801ea90417901352f353b1857a049d38a18248ea9` |
| 16 | `theorem` | [IsBaseChange.inductionOn](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-inductionon.md) | 191 | `result-track:062ed2d25b4a98df80d6f01c243e8a917c9f010f3471e0f00b449eb5d08ca656` |
| 17 | `theorem` | [IsBaseChange.algHom_ext](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-alghom-ext-source-edition-2.md) | 196 | `result-track:6a66bad29d1822b77ab7bd1cfd8bc5597252184b9b18dfba1cbdbf551ce6b582` |
| 18 | `theorem` | [IsBaseChange.algHom_ext'](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-alghom-ext.md) | 206 | `result-track:413f482056dad5513be742f4b402bd56ca33b351368b1ab76d7bd6e94e5ba40e` |
| 19 | `theorem` | [TensorProduct.isBaseChange](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/tensorproduct-isbasechange.md) | 214 | `result-track:80798e66eb6731c8dd14461bf4c8c3d152ba96a8e27fccb1b7918299ccc3a85e` |
| 20 | `def` | [IsBaseChange.equiv](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-equiv.md) | 226 | `declaration-track:4e17319014a4fa44296bd505c11cd29e92b417d4323beb3319ab96e1eae99e5a` |
| 21 | `theorem` | [IsBaseChange.equiv_tmul](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-equiv-tmul.md) | 240 | `result-track:770a88ce0bce64c4d782021fbeb59a73360bd2abc36f8521bdaf5c31a69a4e85` |
| 22 | `theorem` | [IsBaseChange.equiv_symm_apply](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-equiv-symm-apply.md) | 243 | `result-track:a76840ff77d16893ad74e95b9526dbc574e3a77ef6547436a1fdbea5cb61b8d0` |
| 23 | `lemma` | [IsBaseChange.of_equiv](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-of-equiv.md) | 246 | `result-track:fb6c2e8b1724510e62fe097029fc1662310ad6ba26581b117fd710f8fd1136a2` |
| 24 | `lemma` | [isBaseChange_tensorProduct_map](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-tensorproduct-map.md) | 262 | `result-track:048c56e34579190e72d9cb914432f26682fbc15cd770813b08b24ed1d114f263` |
| 25 | `theorem` | [IsBaseChange.of_lift_unique](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-of-lift-unique.md) | 275 | `result-track:6b18bdb5a5a270733022b281a6b82f8fd3e2c35f2a610e961e7887870f8873bc` |
| 26 | `theorem` | [IsBaseChange.iff_lift_unique](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-iff-lift-unique.md) | 308 | `result-track:d5df3419bfab88b0effa17b61daefac83453e8ee204790437ee977d0413628d1` |
| 27 | `theorem` | [IsBaseChange.ofEquiv](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-ofequiv.md) | 319 | `result-track:d44e62c6e74c240dd2f7a6c0ed21f96a351d7b32a71693ffa6a164368441fce7` |
| 28 | `theorem` | [IsBaseChange.comp](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-comp.md) | 340 | `result-track:b3dd317954d4b012c367e72aab735c73cbad1aec63491fa046b7c89559ae1213` |
| 29 | `lemma` | [IsBaseChange.of_comp](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-of-comp.md) | 366 | `result-track:f3b1c54116ecb6a953381666d5fca9fb3dde22022f9a7a4ee999e4e1fcb10a0c` |
| 30 | `lemma` | [IsBaseChange.comp_iff](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/isbasechange-comp-iff.md) | 388 | `result-track:560a54f6528477b377236ff3fef8cb1289780eacb78dafde9f2d2b5bce6826a8` |
| 31 | `class` | [Algebra.IsPushout](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout.md) | 407 | `declaration-track:d9b7eebcecca86efb47dbb371c71f5d9819aaf76a6000ac121da41f77cac5df2` |
| 32 | `def` | [Algebra.IsPushout.equiv](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-equiv.md) | 412 | `declaration-track:5ed12e79d933d52cb97e3ffacad9c2972cd5e47b6d44cbb5679e7f0d22edca5f` |
| 33 | `lemma` | [Algebra.IsPushout.equiv_tmul](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-equiv-tmul.md) | 426 | `result-track:cb18eeaa7ca95a906c4c1b07b2d743e4c6e1dc541f788d604cbc2f35fca36f48` |
| 34 | `lemma` | [Algebra.IsPushout.equiv_symm_algebraMap_left](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-equiv-symm-algebramap-left.md) | 430 | `result-track:f352483bdf2f7aa4d9a9ddeea5b292c56691d4e4053a532ba218de93cd6de1a8` |
| 35 | `lemma` | [Algebra.IsPushout.equiv_symm_algebraMap_right](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-equiv-symm-algebramap-right.md) | 434 | `result-track:b0cf8366173726e8efc0083b62b33a0d94aa66cf13236b17962fc77336984c47` |
| 36 | `theorem` | [Algebra.IsPushout.symm](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-symm.md) | 441 | `result-track:040d9c12847b534b15eb9c71ddfb953a577daa0a35818dc75a491fc5afe694e6` |
| 37 | `theorem` | [Algebra.IsPushout.comm](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-comm.md) | 450 | `result-track:b36b3dcbc80fc627d9477e35bf7af98b0c8f72191d07cbe97fb64d47dd082863` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/instance.md) | 453 | `declaration-track:0282465ac2645f9bf6708d91ee4c921693345904960d3618b65ba84c9dd3c6a4` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/instance-source-edition-2.md) | 456 | `declaration-track:83e73b3993362966b1a492b27740b411cc52d8125d5e2659a9b157a9d8aae620` |
| 40 | `instance` | [TensorProduct.isPushout](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/tensorproduct-ispushout-source-edition-2.md) | 462 | `declaration-track:91c7e2dcf927a069d70e9105550521e82ba22ba35193bed39880ff8116e57d36` |
| 41 | `instance` | [TensorProduct.isPushout'](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/tensorproduct-ispushout.md) | 466 | `declaration-track:3c4b9237c258e15b93dd68ea459761264149c504abebab7f1b5fdd4030a485cc` |
| 42 | `def` | [Algebra.pushoutDesc](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-pushoutdesc.md) | 474 | `declaration-track:ade3c90d0cb2e20ff3c11d5cb199614ecabc1bd8c4e421b0dd065341a4b235a9` |
| 43 | `theorem` | [Algebra.pushoutDesc_left](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-pushoutdesc-left.md) | 481 | `result-track:3a01a86fcf43243bea824f812e376475bd474db4b221149cf21852f0d63d1fb6` |
| 44 | `theorem` | [Algebra.lift_algHom_comp_left](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-lift-alghom-comp-left.md) | 486 | `result-track:a06b1909827d21a15f0ad79299a2da2463aba4af8628506f1e17eb5e41ad4cad` |
| 45 | `theorem` | [Algebra.pushoutDesc_right](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-pushoutdesc-right.md) | 492 | `result-track:d63fcc805748640c3f9eece0788c6441841af9d46d55873da800e9cde408545f` |
| 46 | `theorem` | [Algebra.lift_algHom_comp_right](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-lift-alghom-comp-right.md) | 497 | `result-track:efea0b9d03fc94cabf210ed88569ff127c84e02bd659aec28f6f364b467211a3` |
| 47 | `theorem` | [Algebra.IsPushout.algHom_ext](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-alghom-ext.md) | 503 | `result-track:d4230000f081bf63f0df2480f293f3f2352a2c616889d6d63c7c326cc1673a86` |
| 48 | `lemma` | [Algebra.IsPushout.comp_iff](../../../../CommutativeAlgebra/IsTensorProductNamespacedIsBaseChangeTensorProductMap.lean/declarations/algebra-ispushout-comp-iff.md) | 531 | `result-track:3d4b2e4f6d7b082aa5131b95282045074c5b4b3626a5827ba45519bfcf19562e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46c300231f5dd28691e77d848060b2ec0fe31ca57dc349cdb313fa9b5ba7512f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
