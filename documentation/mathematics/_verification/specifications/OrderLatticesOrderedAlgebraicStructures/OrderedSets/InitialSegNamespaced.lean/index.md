# Verification target: Initial Seg Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43d3cf056a9478508f2847e854a8edce3e665034",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43d3cf056a9478508f2847e854a8edce3e665034`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/initialseg.md) | 61 | `declaration-track:5cd6b36876b90fab01e9c8fc85cce0d9093df0aa1b4b8a027a0b239f6e1b4b70` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:389f596fe53484200fc7de596c37eb11752be4839ffe6e70d5ec2b2d27c819c9` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-8.md) | 77 | `declaration-track:feea9e7b7ea70152bf773bad3eb5284f25d627849b70a379589c9418203c42b4` |
| 4 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ext.md) | 85 | `result-track:732e90776b59755e11aeb44e62a9a6f8ae10d7f2071f330bef60a8776f8de334` |
| 5 | `theorem` | [coe_coe_fn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/coe-coe-fn-source-edition-2.md) | 90 | `result-track:42e7f7259672873cf3a6843f0fda3288a3553f0c9b2cc8752f5c6480e49fedc7` |
| 6 | `theorem` | [init](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/init.md) | 94 | `result-track:4daad4b41669915479a80033c633772553e5f762257ce30663bed7814c636677` |
| 7 | `theorem` | [map_rel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/map-rel-iff.md) | 98 | `result-track:c7988773062a59b1d60d90070683ccaea97f9328638cf6e062764a0868ce3126` |
| 8 | `theorem` | [init_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/init-iff-source-edition-2.md) | 102 | `result-track:63ab596c851f33a2cdf84055febd229f5fa37cb19c94d59aa9b06ecc022c8f2d` |
| 9 | `def` | [ofIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofiso.md) | 110 | `declaration-track:369cfc9f8e3635c288633d96b7359309c402c7c78f454370a2ba31a60e30aef7` |
| 10 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/refl.md) | 116 | `declaration-track:219b7b924e787645db1e70dbf1bd277223fb9134a39f953abf49b2eaa3a676a3` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-7.md) | 120 | `declaration-track:f2e7cd8773fd567c23c21a8e811bd0bf0207e874b8183bf10b267c600629b8bd` |
| 12 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/trans-source-edition-2.md) | 125 | `declaration-track:c10d7aac97c127ecf342806d7552ad8831b6dff2d07ed15f8890087a4f111a87` |
| 13 | `theorem` | [refl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/refl-apply.md) | 133 | `result-track:99db4b3e3586feb8979bdb7ac78a79aeed872a11428175ecd221acf738ab13a8` |
| 14 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/trans-apply-source-edition-2.md) | 138 | `result-track:ba984ce45efc80e759a0a4d0e7ac9588c6b35f67d5c483430948d99451e56794` |
| 15 | `instance` | [subsingleton_of_trichotomous_of_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/subsingleton-of-trichotomous-of-irrefl.md) | 142 | `declaration-track:90e5460e60fa4c7dd04db372da383d86048abbbf57a072f999f92e1d74d28cf9` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-6.md) | 152 | `declaration-track:da5e758731903394294c9a43619a25cc978cbea2c5b6018793c5ed8419b3feed` |
| 17 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/eq.md) | 155 | `result-track:077bba8ae217c7a6780fd79aa490563621c9c0a7d356ca545d0fa6a6e22a5358` |
| 18 | `theorem` | [Antisymm.aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/antisymm-aux.md) | 159 | `result-track:75f3cadbb063a64e1e89867b46b9f7da58ba35fc2050115460ecafde21163f5b` |
| 19 | `def` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/antisymm.md) | 165 | `declaration-track:7f9824c4894a245f662bafa740cb7a96bc8fe8e19d430c8d069ef41726037846` |
| 20 | `theorem` | [antisymm_toFun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/antisymm-tofun.md) | 171 | `result-track:f3e72ddc2d99f9eb5c20a4fa2206ad0c725bd20b1cf5f39e9f1c4a7f87b7fdb9` |
| 21 | `theorem` | [antisymm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/antisymm-symm.md) | 176 | `result-track:01d78c230102946e443b93f115b1bf1625be2a05ba4b59473b2f3bba4f9a0be9` |
| 22 | `theorem` | [eq_or_principal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/eq-or-principal.md) | 181 | `result-track:4305025b9b3985afb3f73421dbd81783ecdd82d3bdedbe56af66b0902b041941` |
| 23 | `def` | [codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/codrestrict-source-edition-2.md) | 196 | `declaration-track:2a3ad8edaf698e2d6edc204a684dfa37c2d2fb3b5e2d91f7b4ea9af43d24fd24` |
| 24 | `theorem` | [codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/codrestrict-apply.md) | 203 | `result-track:5be5355a88a94eb3bd50e4fd605a52e2bc90b91b297aabb71dc1d8c1c94861c8` |
| 25 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofisempty-source-edition-2.md) | 208 | `declaration-track:a5e731ef0bec0c1288648c6ab13d421235d935f9252ed2ee124e03fd959ebbfa` |
| 26 | `def` | [leAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/leadd.md) | 213 | `declaration-track:826e39fa0835e1a17aac3b2c5a34f8a56a3d7fab4ea922ffd73ffa995872eb13` |
| 27 | `theorem` | [leAdd_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/leadd-apply.md) | 219 | `result-track:7f97939d833e42af1291909be177beb4ad11864e37768cae74d029f5db558729` |
| 28 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/acc.md) | 223 | `result-track:20e4c6a3f488fd9b3c27a9b3ad5978ac21a0044b01ae6110bfe7d9c74e7c4040` |
| 29 | `structure` | [PrincipalSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/principalseg.md) | 245 | `declaration-track:6f2b6dd6f7e393d15298b293754ee1c2dd573e576092cffb543de0a872650238` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-5.md) | 260 | `declaration-track:b8a4a1347a9d9035f8a89013f7a7f095e87ab055d262dc1fb6f776208cd2c846` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-4.md) | 263 | `declaration-track:a9f4f317d495a07a48f2de34642e171618485a0b10122c4d0f082d6175079397` |
| 32 | `theorem` | [coe_fn_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/coe-fn-mk.md) | 267 | `result-track:cdaac4599ae6306ec8e5e9f7ba17001843b2ee751808e9fe80cce994df5e3cae` |
| 33 | `theorem` | [down](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/down.md) | 271 | `result-track:aecaad0fea8a9d47ba1a20a730300a921795a20e423b8b6083fcd258ad14cb23` |
| 34 | `theorem` | [lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/lt-top.md) | 275 | `result-track:a9c1913eb59540a841db18262abf0c3db4ded4d5896e9a3f66177a5d230878ad` |
| 35 | `theorem` | [init](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/init-source-edition-2.md) | 279 | `result-track:67b104bee1a6966164bb55bde291532f493c8188764b891d602b15f3eb0419a3` |
| 36 | `instance` | [hasCoeInitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/hascoeinitialseg.md) | 284 | `declaration-track:2e0ab22034aa23a2c6fd0491106d01bde329ff60e55bcaab20262e0a07b37066` |
| 37 | `theorem` | [coe_coe_fn'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/coe-coe-fn.md) | 288 | `result-track:02976f799baeede05fd007fccee77e0dad1f0393c4a79abf5e869ee4063e6b31` |
| 38 | `theorem` | [init_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/init-iff.md) | 292 | `result-track:6278cac3aee4337f80514bd060c3c76cc919eb97f880fb39a410397f501ec65e` |
| 39 | `theorem` | [irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/irrefl.md) | 296 | `result-track:82c84caff728bb3204dc23cb231489aae551209903f24ae6ea1336c2d1cb2b24` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance-source-edition-3.md) | 302 | `declaration-track:73e54254368d9334b7a829acf315487be47db7a62298cb0387064adad00dd28e` |
| 41 | `def` | [ltLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ltle.md) | 306 | `declaration-track:deb9084997e2f6e962b84853f1a3aa78457bf6e1c47bdffc3c5720a76b9e3f7b` |
| 42 | `theorem` | [lt_le_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/lt-le-apply.md) | 313 | `result-track:3bfb9db5c0173f6ddb4aaa7dbbad80e22f842bc6dfb5eaca07d48561feeb6e07` |
| 43 | `theorem` | [lt_le_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/lt-le-top.md) | 318 | `result-track:042b71efe40dfb8ee490a9ebf1eb806ab13fb98a4c10dbba25f78e02a71000ee` |
| 44 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/trans.md) | 324 | `declaration-track:5363be2c3a147664a0234f52bce8eedcb6b09fd6fcf782f708753464908be3ca` |
| 45 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/trans-apply.md) | 329 | `result-track:830a6faf8cce11c8f9680dc8f8972c3891e98f25afa580de50c72d113f690469` |
| 46 | `theorem` | [trans_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/trans-top.md) | 334 | `result-track:5e5c4a3021e61f188b73f3db3b8e582507518974ae8d1805083b60f36ed39098` |
| 47 | `def` | [equivLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/equivlt.md) | 339 | `declaration-track:050372285cfb3a7a1e1eff9988b6b219ec0e3ab79372d82c3a64d7acebd4d36d` |
| 48 | `def` | [ltEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ltequiv.md) | 347 | `declaration-track:80c6282488fb25a026e2f1054047f6364e200208e3b2cbacac0d66abaf5fb497` |
| 49 | `theorem` | [equivLT_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/equivlt-apply.md) | 356 | `result-track:d89aa3062911c50e034ff5d9b5e390ed52d7a4372b1f724cf41193cb97f03d3a` |
| 50 | `theorem` | [equivLT_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/equivlt-top.md) | 361 | `result-track:d3e6b3d7f0749271709b58352f12d34f72110c8d25a70c1ee6d1c9ea99a2e801` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/instance.md) | 366 | `declaration-track:1477014ec943d608a5e7d78e912cfc86eff6f3b42b02b9de89763db343d83af5` |
| 52 | `theorem` | [top_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/top-eq.md) | 378 | `result-track:5bd4079efe3697c781dd5219d24a657a255377f9524befd950ef4d93c859ca99` |
| 53 | `theorem` | [topLTTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/toplttop.md) | 382 | `result-track:5f32a62c273591fcb9733885086cd9385129c70504ab1dd41b8c8e69d6b3fb38` |
| 54 | `def` | [ofElement](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofelement.md) | 389 | `declaration-track:7907921d508d7687ec4c6810c43be5347eee549ba180d92f8e81bf888c22ef5b` |
| 55 | `theorem` | [ofElement_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofelement-apply.md) | 394 | `result-track:246a1a0ae36376d6238489aad309cc8103356994c02d54d6d66bb43be92d22e1` |
| 56 | `theorem` | [ofElement_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofelement-top.md) | 399 | `result-track:ae87427f39f2c592fccf242c966eba1581aa4a60728a9953c74385ed40ae1f45` |
| 57 | `def` | [subrelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/subreliso.md) | 405 | `declaration-track:78cf37930a443fe106d3f9f1367d51af06b58093de9ed1320f4097bdfc699429` |
| 58 | `theorem` | [apply_subrelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/apply-subreliso.md) | 412 | `result-track:fe7640fc83c34b123fd27e2a690913efbe180840b8b851064ffe43f314742083` |
| 59 | `theorem` | [subrelIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/subreliso-apply.md) | 417 | `result-track:f63154ee7f4f19a20e901caa26492129c143d3f44b497826870d3a0ac069b6f8` |
| 60 | `def` | [codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/codrestrict.md) | 422 | `declaration-track:027debf4fd34c6ba4a84d4dc56db48bb43aa699f27cdb0ae2c89409b45436ce4` |
| 61 | `theorem` | [codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/codrestrict-apply-source-edition-2.md) | 429 | `result-track:954a7cd84a1334f3122659a6367b3f6374145ae5bf73d4a3030257e0e51ca311` |
| 62 | `theorem` | [codRestrict_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/codrestrict-top.md) | 434 | `result-track:b77d3f9b3d89509008e00907ea0079b94bfad988aef5410c847a6d565c36e6fe` |
| 63 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofisempty.md) | 439 | `declaration-track:43a229e76e68436d98c342535131f2fe854642d9fb116baa71715897c885ca21` |
| 64 | `theorem` | [ofIsEmpty_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/ofisempty-top.md) | 446 | `result-track:b82ca8abad9bb9abca99bf7432589e093d30ccf291f62938eb5e35ac612823c4` |
| 65 | `def` | [pemptyToPunit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/pemptytopunit.md) | 453 | `declaration-track:6505972c5be15953514740014e7953cbc211dfa558bf08474845a3b3e349a3f3` |
| 66 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/acc-source-edition-2.md) | 457 | `result-track:ee533a651bfdcf40bf1d4efe828056cc9085666bb0d52575a8f178290906521b` |
| 67 | `theorem` | [wellFounded_iff_wellFounded_subrel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/wellfounded-iff-wellfounded-subrel.md) | 468 | `result-track:d909954edd6ab65ac59db76f87ded8a999dc1866b1d19b220a20ec275e5f458d` |
| 68 | `theorem` | [wellFounded_iff_principalSeg.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/wellfounded-iff-principalseg.md) | 478 | `result-track:7289a37fbfa490ae974687d8d884c73b5372cf07eec263e8bfa5f8666c03ed17` |
| 69 | `def` | [InitialSeg.ltOrEq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/initialseg-ltoreq.md) | 490 | `declaration-track:6b8b2c60b282bea4d01ea4e999b43567621aaf59f65ac1e3461776a0039b6688` |
| 70 | `theorem` | [InitialSeg.ltOrEq_apply_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/initialseg-ltoreq-apply-left.md) | 497 | `result-track:135e09c24e9ae6f897adc9b8d4b418ec3b6bbaba7bf33359c346050307cec500` |
| 71 | `theorem` | [InitialSeg.ltOrEq_apply_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/initialseg-ltoreq-apply-right.md) | 502 | `result-track:84a9d9c5bc4e9856e9472b124fd8ac10463be17957997f28bfc25a8344e9cf7f` |
| 72 | `def` | [InitialSeg.leLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/initialseg-lelt.md) | 508 | `declaration-track:57484dc843868f64c0bf6d032efcc9b5f5d77054b4910c1199b07da6c4886e47` |
| 73 | `theorem` | [InitialSeg.leLT_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/initialseg-lelt-apply.md) | 516 | `result-track:6c4dfb64282f7b77be04971894dbcf7ac8ec5186d8feff51634a9aaac2c3fb06` |
| 74 | `def` | [collapseF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/collapsef.md) | 528 | `declaration-track:fc5862a3842f2817e7ed9e672d04ac88c7e3ea9bb2c665fddc84671242724a4a` |
| 75 | `theorem` | [collapseF.lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/collapsef-lt.md) | 539 | `result-track:b3172784eb56c9fc3dd5152a09eda887010c0f0f41fb00888fa4f7c39b98a4f9` |
| 76 | `theorem` | [collapseF.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/collapsef-not-lt.md) | 549 | `result-track:81fc993f20af3a892c3092f3534e5ecdcf0ae70424f7406a355b0bb9f14db54c` |
| 77 | `def` | [collapse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/collapse.md) | 559 | `declaration-track:b09ca1b075675c102cc0601d3d31b84e8e1c0662dae0b998f4b969868796754a` |
| 78 | `theorem` | [collapse_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/InitialSegNamespaced.lean/declarations/collapse-apply.md) | 573 | `result-track:1d92d492e5cba3e0d3925304586cb3343b17669c6b03c7f20fd33b038f437ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2432b19f976719dc3b6b4445d2094a33aebcc8b9f3721483c8f8259222ad2ec2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
