# Verification target: GRWTSK.Topology.Presheaf.Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bca0e24738d78f3daabbdb9fb7e66be26ced0ade",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md) · [Full source](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bca0e24738d78f3daabbdb9fb7e66be26ced0ade`.

Source path: `GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Opens` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Unique` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Init` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Presheaf](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/presheaf--6c6a6141bd5ec2717f1887f9.md) | 41 | `declaration-track:6c6a6141bd5ec2717f1887f9f62833a29c29323dfbac046b79c2d11291ee980c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/instance--c1db0b64d892a859cae1193b.md) | 44 | `declaration-track:c1db0b64d892a859cae1193b05a6c4318d8b15ed1309f9e368779cdc7e1003b0` |
| 3 | `theorem` | [comp_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/comp-app--62d9cce5572b233f178b86a8.md) | 51 | `result-track:62d9cce5572b233f178b86a80042e188331a5d91ea7330b57184c1872f7571cb` |
| 4 | `lemma` | [ext](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/ext--fb138f28d052026f8a9ec2c1.md) | 56 | `result-track:fb138f28d052026f8a9ec2c1092ab9a806af0b117f66223d0eaf1985ccd085fc` |
| 5 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/macro--2eee658aeb3c685eebddf449.md) | 65 | `declaration-track:2eee658aeb3c685eebddf449e6f3aae62ad5ef920e741570bf0805449ede0b08` |
| 6 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/macro--3f04c2e886f36889b539cc1e.md) | 72 | `declaration-track:3f04c2e886f36889b539cc1e67556c8660d1b93310a1cdaf4820fb3f089d7a15` |
| 7 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/macro--233c6c44f90ffed14f98ec47.md) | 81 | `declaration-track:233c6c44f90ffed14f98ec479254ffcdf621ab82e5cb302d1cc5c96961d22166` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/example--2d74fbf075e4eb330c835f0a.md) | 94 | `declaration-track:2d74fbf075e4eb330c835f0a912df48ba02f4630c3c6c29d4f131585184480c4` |
| 9 | `def` | [restrict](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/restrict--4b7d1a36c32d859f9c02d857.md) | 105 | `declaration-track:4b7d1a36c32d859f9c02d857e085c667800fa1ad3fb74b1beb8ce0166ae61f03` |
| 10 | `abbrev` | [restrictOpen](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/restrictopen--999cd38c6be69ee90f2ce0cd.md) | 120 | `declaration-track:999cd38c6be69ee90f2ce0cdef7ea0394029b77b196729dd5454ae6dcde5efc6` |
| 11 | `theorem` | [restrict_restrict](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/restrict-restrict--51aba7599a87cda91315e5d0.md) | 129 | `result-track:51aba7599a87cda91315e5d02ee5fafdd040de76a3793c519cb6b495276bf00f` |
| 12 | `theorem` | [map_restrict](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/map-restrict--b7f8b373a42a19e467dd2da8.md) | 136 | `result-track:b7f8b373a42a19e467dd2da81dc80747879778ffae9e731999ee891391d68f6f` |
| 13 | `def` | [pushforward](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforward--475b4e26e0a952e7fd3b79de.md) | 148 | `declaration-track:475b4e26e0a952e7fd3b79defd07c52f4b3c84f32d9d1c0660d90be5bc7ec7b4` |
| 14 | `theorem` | [pushforward_map_app'](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforward-map-app--4b2c2d6c7d414a77b482d1af.md) | 156 | `result-track:4b2c2d6c7d414a77b482d1af8cbe9f83e698cf762105cf23c30bb1705aba1449` |
| 15 | `lemma` | [id_pushforward](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/id-pushforward--1e39ef6bb0602090d42c19aa.md) | 160 | `result-track:1e39ef6bb0602090d42c19aa1472ffa523b47cd842bf0339d49456d5f4cfda07` |
| 16 | `def` | [id](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/id--0b9ae15a61871305f4f9db88.md) | 168 | `declaration-track:0b9ae15a61871305f4f9db88243090be9bd166ba069a26ec6dbade0cdb87c471` |
| 17 | `theorem` | [id_hom_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/id-hom-app--d9ea1e8c7aaeaa3c29560611.md) | 171 | `result-track:d9ea1e8c7aaeaa3c29560611c95d7c20d277e937f8cde58baa900f56c32f3936` |
| 18 | `theorem` | [id_inv_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/id-inv-app--79f2423369163f159dc4f204.md) | 174 | `result-track:79f2423369163f159dc4f2041ead21b3d6d93f7808dce7dbb7343f80ea4fa577` |
| 19 | `theorem` | [id_eq](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/id-eq--51722ddf839d6827ab0f7afe.md) | 177 | `result-track:51722ddf839d6827ab0f7afea7665d05f4800a67aac4441923d7c14d796f96de` |
| 20 | `def` | [comp](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/comp--8da3e8889554e488f0bda50d.md) | 182 | `declaration-track:8da3e8889554e488f0bda50d4a98130ec4b06dd420a0e9719fc807c4ce35e731` |
| 21 | `theorem` | [comp_eq](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/comp-eq--ff35d119a5a7c1e8e67d5751.md) | 185 | `result-track:ff35d119a5a7c1e8e67d57517367a89f7727384ed34ea4570016cda2962d6e41` |
| 22 | `theorem` | [comp_hom_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/comp-hom-app--2803c171b2900089930f6bc4.md) | 190 | `result-track:2803c171b2900089930f6bc443db2db14c76e76e17b4b5b3de07955b82ee1ca7` |
| 23 | `theorem` | [comp_inv_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/comp-inv-app--e88c49ee83cfa03f636e93d2.md) | 194 | `result-track:e88c49ee83cfa03f636e93d2a1c756de98e0a9c3511be9f438d23a765d554712` |
| 24 | `def` | [pushforwardEq](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforwardeq--ddaaa1fefc797d264ec086f3.md) | 203 | `declaration-track:ddaaa1fefc797d264ec086f32d6232215ada73a0e7e3465517f2acae6f5147e7` |
| 25 | `theorem` | [pushforward_eq'](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforward-eq--e1b048bbda61079b3fa5014e.md) | 207 | `result-track:e1b048bbda61079b3fa5014ee0878302fbc8679b91d203f3822b86ce8fa13d2a` |
| 26 | `theorem` | [pushforwardEq_hom_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforwardeq-hom-app--b0a7f7d62c67420dbdb3191c.md) | 211 | `result-track:b0a7f7d62c67420dbdb3191cee9fa656be5ec834bab86f5c370ba87314d6a5e7` |
| 27 | `def` | [presheafEquivOfIso](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/presheafequivofiso--7afccef5e1c1685fe8b83947.md) | 222 | `declaration-track:7afccef5e1c1685fe8b839472e654c43bcf522a2fc38cd28314f5e09ee0c8b3c` |
| 28 | `def` | [toPushforwardOfIso](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/topushforwardofiso--d76d2a4b75f178b3345cb679.md) | 230 | `declaration-track:d76d2a4b75f178b3345cb67933ec0bed59a096fbcd1ac394eb7fd32e143a998d` |
| 29 | `theorem` | [toPushforwardOfIso_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/topushforwardofiso-app--bcb2ab93a9bd1425827eac62.md) | 235 | `result-track:bcb2ab93a9bd1425827eac62d318ed4e3f560013913f7f216971faf3bd49bf9a` |
| 30 | `def` | [pushforwardToOfIso](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforwardtoofiso--08aaf60f403ee8ab7504f848.md) | 245 | `declaration-track:08aaf60f403ee8ab7504f84845a3310e6da274f4f3f45c6b20f173d6031b8461` |
| 31 | `theorem` | [pushforwardToOfIso_app](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforwardtoofiso-app--eb3254a373b74671fa2dde7a.md) | 250 | `result-track:eb3254a373b74671fa2dde7aad99ca059530097f04e8cfe18523affa9e5bb4e1` |
| 32 | `def` | [pullback](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pullback--5c2657c8f3c13a3d1b11a365.md) | 265 | `declaration-track:5c2657c8f3c13a3d1b11a365244b99edd2d467d6c8bb2d8a6f7da57a3c36ab4a` |
| 33 | `def` | [pushforwardPullbackAdjunction](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pushforwardpullbackadjunction--708199ef38959bd7e999668c.md) | 269 | `declaration-track:708199ef38959bd7e999668ca7c779d735e23218fee4fb342c1bd6070578adf5` |
| 34 | `def` | [pullbackHomIsoPushforwardInv](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pullbackhomisopushforwardinv--767477da6acb39832dfea744.md) | 274 | `declaration-track:767477da6acb39832dfea744a1dff589289c010d03b3e0aebce0a9c93e0db8da` |
| 35 | `def` | [pullbackInvIsoPushforwardHom](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pullbackinvisopushforwardhom--9e1326d84a620f3cd376ddf8.md) | 280 | `declaration-track:9e1326d84a620f3cd376ddf8df6b56415db4cb20ebe0f49eafaa43b78a4393ca` |
| 36 | `def` | [pullbackObjObjOfImageOpen](../../../../mathematics/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/declarations/pullbackobjobjofimageopen--5e07fc3a3e9f22848409c0c8.md) | 288 | `declaration-track:5e07fc3a3e9f22848409c0c8285e679c4e8ff07b1e5a739bdcb1728a8d2de9fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
