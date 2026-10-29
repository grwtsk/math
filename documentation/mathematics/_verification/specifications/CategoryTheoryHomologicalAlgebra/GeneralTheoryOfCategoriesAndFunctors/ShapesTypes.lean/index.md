# Verification target: Shapes Types

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ea3941e234eaa3cf1c67fb10e55976023ef5e76",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ea3941e234eaa3cf1c67fb10e55976023ef5e76`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/example-source-edition-2.md) | 48 | `declaration-track:53b29b601e42731292928acd5600f8ba465e6432c6353e21b12aea83d1a85f34` |
| 2 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/example-source-edition-3.md) | 49 | `declaration-track:8b73ed0e721ef8b927b11d2c15956ea0cd3f8ad47fdacc6a82cc83106cf3246d` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/instance.md) | 53 | `declaration-track:17709866051ace27b471e55ef220b4a8f7acc39c80e4bd6767e1cb6dd5aa7f42` |
| 4 | `theorem` | [pi_lift_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pi-lift-apply-source-edition-2.md) | 57 | `result-track:4f04f78f8f2e21a7ab6dd143559d31fae8687c2e9f39257ad36fca4efb2258fe` |
| 5 | `theorem` | [pi_lift_π_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pi-lift-apply.md) | 65 | `result-track:0fdd73bcf7b78b3f0ab258224fe7628ce2b52e1924d26a0948d0517e829fe9f4` |
| 6 | `theorem` | [pi_map_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pi-map-apply.md) | 73 | `result-track:1bce9530048154a49e43f52ecb2ce32f8ba196b79c4eadd1042860e8a19d2ee8` |
| 7 | `theorem` | [pi_map_π_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pi-map-apply-source-edition-2.md) | 81 | `result-track:854bc3d2da49a58e1fdf84c49be27a874326951991f4d74b2b50772dd7dce6c8` |
| 8 | `def` | [terminalLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/terminallimitcone.md) | 87 | `declaration-track:5e144ef6554c30d30982ad30b88dccbb6a4bac474d99991dc1fa96060b2690f0` |
| 9 | `def` | [terminalIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/terminaliso.md) | 101 | `declaration-track:eca9e5a4b096a3556860a5785efaeecb43540d65ef3c131c6f68b8bc47e5fda6` |
| 10 | `def` | [isTerminalPunit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/isterminalpunit.md) | 106 | `declaration-track:fd7727233a036c95ebe6da6a6b4ca06f961ca4542594226a308b964f31dfa795` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/instance-source-edition-6.md) | 112 | `declaration-track:d0f92d8c0dab3364b2b8b036d7d9437c49e585bdb76cad3d22cdec4c5225f36c` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/instance-source-edition-5.md) | 115 | `declaration-track:64b1fc5ed56ad8890e05b4d335ce4552905e5d3201d78e689442cd4ea44e4acf` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/instance-source-edition-4.md) | 119 | `declaration-track:57d0df87ae3497d16bff7330d55380bb454fca4bbf433256c91502a671b585c7` |
| 14 | `def` | [isTerminalEquivUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/isterminalequivunique.md) | 122 | `declaration-track:8ec8d13b8feda3f3a9f3c98faa02b7d5cbd0ca237fe407e12f6b7db400cfd2e2` |
| 15 | `def` | [isTerminalEquivIsoPUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/isterminalequivisopunit.md) | 128 | `declaration-track:e62d4ca0cb0f0b688b24cb0b09ed7c5261093ff1d7344b478e93aa6eeef1387c` |
| 16 | `def` | [initialColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/initialcolimitcocone.md) | 135 | `declaration-track:d8274bac5e387ed35127f0a9dc6a415c80a5c394dff4d108618d55aa7fbc9638` |
| 17 | `def` | [initialIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/initialiso.md) | 147 | `declaration-track:99f927d13eef6f4601a47822fde58af0fbf25c24eaf14ec536945d1af7e89634` |
| 18 | `def` | [isInitialPunit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/isinitialpunit.md) | 152 | `declaration-track:1f4417b3561b571b0fba1ba589cbb810205e3d23d0235a7c5c1ced5bc3e64a18` |
| 19 | `def` | [binaryProductCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductcone.md) | 162 | `declaration-track:e60c82b72261dcbb013b3f56b9b1b35bf0374ffa48b80b8e000e3a9aa32fa0c3` |
| 20 | `theorem` | [binaryProductCone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductcone-fst.md) | 167 | `result-track:d780c2e900a0912a00446a24d03b68d5c533034a3607748b0eee0888ba410d16` |
| 21 | `theorem` | [binaryProductCone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductcone-snd.md) | 172 | `result-track:4edd630f5d97405a793695efb8a7a61bd9fc204cee9dff7796ed1536abc684e8` |
| 22 | `def` | [binaryProductLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductlimit.md) | 178 | `declaration-track:a817c05a257cfd53773088569e892b66e6beb9ce6a68140b81f68875fa649342` |
| 23 | `def` | [binaryProductLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductlimitcone.md) | 188 | `declaration-track:5269d9680a9fa9a30c5d6a5db1655ae4a1215ad7540638295dee116c2d002b11` |
| 24 | `def` | [binaryProductIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductiso.md) | 193 | `declaration-track:d36647eec8382d7b44bd76d94d24900c8af9661ea7d9eab5f9727657079fc3cf` |
| 25 | `theorem` | [binaryProductIso_hom_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductiso-hom-comp-fst.md) | 198 | `result-track:6dddcf7599400297c5b161be69fbf3b641f2fefb6e8e4c405906d89b80c53b79` |
| 26 | `theorem` | [binaryProductIso_hom_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductiso-hom-comp-snd.md) | 204 | `result-track:c8a8566c907e5e87a927d2a5b1359d0128fc58d6c5f194fa6ab4672dae10c3ce` |
| 27 | `theorem` | [binaryProductIso_inv_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductiso-inv-comp-fst.md) | 210 | `result-track:0988e756680e31b2cb1771557c1074d5c7cd8f07526cd823e847c5d4c1d865ea` |
| 28 | `theorem` | [binaryProductIso_inv_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductiso-inv-comp-snd.md) | 216 | `result-track:0a71883cf4b07e6e18086500bc2d7c3fb4501fa3ae5d97fb3d1ae7d3778db25a` |
| 29 | `def` | [binaryProductFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductfunctor.md) | 226 | `declaration-track:3a20f39bab40eb7f8a1fc924631c5bb2c045e8aba41345429dfbf7371cb3a28d` |
| 30 | `def` | [binaryProductIsoProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binaryproductisoprod.md) | 239 | `declaration-track:60016af739f02b0c10e3c9fb9247d8125bc2b1e06277c1a88ed0860e6d2395ff` |
| 31 | `def` | [binaryCoproductCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductcocone.md) | 250 | `declaration-track:cfe68edf6ecb99a3de1ae8cb7227f81052d259b9b776d4a1b37d4a59d2ba92e0` |
| 32 | `def` | [binaryCoproductColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductcolimit.md) | 256 | `declaration-track:bd331051a60a92945d9bc77eeb8bcd7cdb5b6e77b4f329ceab09489273c15493` |
| 33 | `def` | [binaryCoproductColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductcolimitcocone.md) | 265 | `declaration-track:0727aec16b32266bc8fce7e6228296cc311bcf11f774c33ecabaf5a358de8741` |
| 34 | `def` | [binaryCoproductIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductiso.md) | 270 | `declaration-track:eefea445c931d83bee6b1250a9249a7770aac70650ca9cb9dd2701afe15d4539` |
| 35 | `theorem` | [binaryCoproductIso_inl_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductiso-inl-comp-hom.md) | 277 | `result-track:6dd8b2b8fc2a3e25107739ce2c447de1c4891dadf54c2656ce36e1b9f172f351` |
| 36 | `theorem` | [binaryCoproductIso_inr_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductiso-inr-comp-hom.md) | 283 | `result-track:fb7f54ae41a7e262eb38cd7a8e56808f008d4ca57e487cf4d7d6e2d1854ed8c2` |
| 37 | `theorem` | [binaryCoproductIso_inl_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductiso-inl-comp-inv.md) | 289 | `result-track:73bb6a7ab9a01a715fc831e6495639bdcc3d9e0c06e654dd28d5ee1e8b72d562` |
| 38 | `theorem` | [binaryCoproductIso_inr_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycoproductiso-inr-comp-inv.md) | 295 | `result-track:40b78fed2f9f46cbe9889a12b4d3a9a42507f3621d6bf1546a9c7d178306b0fb` |
| 39 | `theorem` | [binaryCofan_isColimit_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/binarycofan-iscolimit-iff.md) | 302 | `result-track:ae70069bfbf30a5c3b72f06898cb755d0fe81f981f03fe9da6393c61d272f39b` |
| 40 | `def` | [isCoprodOfMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/iscoprodofmono.md) | 351 | `declaration-track:cbe8bc22e88a226c3ff7ca75162a610bc939865bdb20dbba6356a939bb770124` |
| 41 | `def` | [productLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productlimitcone.md) | 364 | `declaration-track:10e4f408f9efcab37ea1c2d7cab7d8d29f0795b2f98518fb80a568294f65961a` |
| 42 | `def` | [productIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-source-edition-2.md) | 375 | `declaration-track:4042867da2d35c914e744400159b2dafd22f70b4d7b7cf92a36fab546acd6bce` |
| 43 | `theorem` | [productIso_hom_comp_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-hom-comp-eval-source-edition-2.md) | 382 | `result-track:32304b6cbc58e07d0bf25d864de2ae0170704c12ac380467ba4a22c24a7d4b07` |
| 44 | `theorem` | [productIso_hom_comp_eval_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-hom-comp-eval-apply.md) | 388 | `result-track:0a1c43cdea15c28bcaa5b558c03c8b8662bbaad0d9124a454f38d5d0099f814f` |
| 45 | `theorem` | [productIso_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-inv-comp-source-edition-2.md) | 394 | `result-track:08da16181477f90f4135a0e02c5147992250dc6f81818acc692d1a096c450831` |
| 46 | `def` | [productLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productlimitcone-source-edition-2.md) | 404 | `declaration-track:ac241b6cc6f0092fa28645f4cf373467199f635ecca275dbec28cbee27f5ea16` |
| 47 | `def` | [productIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso.md) | 416 | `declaration-track:2102a93c44de7027feedd97b2be7e792e1d345c0d69525113dbed54a3d3c60d2` |
| 48 | `theorem` | [productIso_hom_comp_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-hom-comp-eval.md) | 421 | `result-track:0c26c2f6ef0b647c8ca9da2a1b7dc698148a0c8b2ea61bb949ff8404914037cc` |
| 49 | `theorem` | [productIso_hom_comp_eval_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-hom-comp-eval-apply-source-edition-2.md) | 428 | `result-track:2c657aa99ffcdeea2a42773aa3f069b45f8eea23698567080a83d5cdf581649f` |
| 50 | `theorem` | [productIso_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/productiso-inv-comp.md) | 433 | `result-track:0249997cab9285253238e51273131d895809d067cf66a3b84277624bc996e4d4` |
| 51 | `def` | [coproductColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coproductcolimitcocone.md) | 441 | `declaration-track:c63b4a36d93fa1ea716203e3bf9dda7854099bc8fe062a5a7f97a8fca0a5b0cb` |
| 52 | `def` | [coproductIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coproductiso.md) | 454 | `declaration-track:121fb269793177aaf01421eecc9b248a4fa83f43fe2afd4e4c3ef03d0c8328d4` |
| 53 | `theorem` | [coproductIso_ι_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coproductiso-comp-hom.md) | 459 | `result-track:ccb8f88a96da10e6cafe5a68bfa9d029f808a3b65270b98989b5847255b298b3` |
| 54 | `theorem` | [coproductIso_mk_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coproductiso-mk-comp-inv.md) | 466 | `result-track:12458051e8a2713afc1f6202c41ff7f4183a28735d07af0465e7379f25bcb5b1` |
| 55 | `def` | [typeEqualizerOfUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/typeequalizerofunique.md) | 480 | `declaration-track:3f3fcb436b95490f06958a56530e8d3251317d2a5aa01ac058aa2c484c7f6e41` |
| 56 | `theorem` | [unique_of_type_equalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/unique-of-type-equalizer.md) | 494 | `result-track:2fa2004d32d1309647f68e5ca2030156dd51c77082e154a85cc689de199f887e` |
| 57 | `theorem` | [type_equalizer_iff_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/type-equalizer-iff-unique.md) | 507 | `result-track:d472dbb2363531b7cc23696d55b15086d27f3fe97070e10bd35c9e5be943f866` |
| 58 | `def` | [equalizerLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/equalizerlimit.md) | 514 | `declaration-track:387982898fa299dc2853e3042881df227ac434ae8c97ae0b51af1846747b882e` |
| 59 | `def` | [equalizerIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/equalizeriso.md) | 525 | `declaration-track:079d3b4d154643d50bf3dc567bfd29912be85afbd64572da7c78ede73270b05a` |
| 60 | `theorem` | [equalizerIso_hom_comp_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/equalizeriso-hom-comp-subtype.md) | 531 | `result-track:903500d029c636f340a3993a44f9b55d869819629af4a94e3ee1d6751c54c93b` |
| 61 | `theorem` | [equalizerIso_inv_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/equalizeriso-inv-comp.md) | 536 | `result-track:4c668c89536905d3aeaf5ad54a572d9bc3927e50cc4b309c26ecc54d54607119` |
| 62 | `inductive` | [CoequalizerRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coequalizerrel.md) | 547 | `declaration-track:edfcb7d1aea05fd7eeee069965cb3d5842ceef5caed2950344171ca496c360c5` |
| 63 | `def` | [coequalizerColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coequalizercolimit.md) | 554 | `declaration-track:98fb24ed55afd87f126847682ef68e40daa58566c402e98d9a474a51f8ae7077` |
| 64 | `theorem` | [coequalizer_preimage_image_eq_of_preimage_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coequalizer-preimage-image-eq-of-preimage-eq.md) | 570 | `result-track:862805897b794ca4687ecc5cdb089d6c67b00cfcdb408f26cc3ca00755b053da` |
| 65 | `def` | [coequalizerIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coequalizeriso.md) | 598 | `declaration-track:d93664d94a22853017ee30b241b0e22919f4f5193aec7e63d3fd2e8ebb675d50` |
| 66 | `theorem` | [coequalizerIso_π_comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coequalizeriso-comp-hom.md) | 603 | `result-track:8a1f0dde32ab538a7f69910b144095d4937cb066a504767fc7b4818d683e1a1f` |
| 67 | `theorem` | [coequalizerIso_quot_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/coequalizeriso-quot-comp-inv.md) | 610 | `result-track:3cd3077fea304400398b81374075c4a434a32b67982a44302547d64113dc3ab5` |
| 68 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/instance-source-edition-2.md) | 620 | `declaration-track:1e8460bfa5b1d7169d6dc4c9e0992a059a013600400f15a0f083f9e72caddf61` |
| 69 | `abbrev` | [PullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackobj.md) | 640 | `declaration-track:c5a2d6578808a23e44c389df29cbb85137703c7c936fc52fe8880f6988df41cb` |
| 70 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/example.md) | 645 | `declaration-track:1913e7fb7e77d1bbf70fe31ba8f176d33363bd20ef82f902ec7c701645cb31a9` |
| 71 | `abbrev` | [pullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackcone.md) | 651 | `declaration-track:03d2c99c32ec8f847076062a8dce957ba58304d64d3fc5116c1b651cf3281aa1` |
| 72 | `def` | [pullbackLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbacklimitcone.md) | 659 | `declaration-track:dc6b4fa1c9ae0f2bbc9512e4426ce85a8890f3c74e5ea49a2dc4291a3df736d8` |
| 73 | `def` | [pullbackConeIsoPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackconeisopullback.md) | 672 | `declaration-track:0c0be68bf0729a9ece2bccead1874edc52ace612383f62775c98dd9b6e923eff` |
| 74 | `def` | [pullbackIsoPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackisopullback.md) | 679 | `declaration-track:79030db959aa5f2a9b43a5deac54542762db3d5851ea5a1c40b683c37c2302c5` |
| 75 | `theorem` | [pullbackIsoPullback_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackisopullback-hom-fst.md) | 684 | `result-track:67c8e1f25ebbd898d4ec3fff6ec5ce20903bc88ad6ecfb23ddf11b4fcf6ae2ab` |
| 76 | `theorem` | [pullbackIsoPullback_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackisopullback-hom-snd.md) | 690 | `result-track:37e49ecd5d7e4e6868c0dab8f383c68d63fc5659457f5c8772005222ce8fcf08` |
| 77 | `theorem` | [pullbackIsoPullback_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackisopullback-inv-fst.md) | 696 | `result-track:958207da0a63c855ca0cb1ceafe7baee0466787e3c1a4b93557b2a41ef7163f1` |
| 78 | `theorem` | [pullbackIsoPullback_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/pullbackisopullback-inv-snd.md) | 702 | `result-track:48088b04ec57adb13678cfd38e8663d6e4b056dd8c37ccc42e6c901ec6825414` |
| 79 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesTypes.lean/declarations/instance-source-edition-3.md) | 712 | `declaration-track:45eb8d3d55ffca47afc00964340a19be205f6e2a15f48bd8911260786a76ac50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2df71e74a03a0d4765f09c86fb29a96070bdaecfef4f405632f59bd1790343a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
