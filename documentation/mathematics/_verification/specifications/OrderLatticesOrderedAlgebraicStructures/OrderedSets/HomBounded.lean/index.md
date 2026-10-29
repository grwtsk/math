# Verification target: Hom Bounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504a97edc5466a9b2d8f5a17f1fa259f209da3a8",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounded/Variant4dce0f6ceda189e8e2065a6fd76c8821f3b31a35344c82adc300a8bd744c6824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504a97edc5466a9b2d8f5a17f1fa259f209da3a8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounded/Variant4dce0f6ceda189e8e2065a6fd76c8821f3b31a35344c82adc300a8bd744c6824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounded/Variant4dce0f6ceda189e8e2065a6fd76c8821f3b31a35344c82adc300a8bd744c6824.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/tophom.md) | 35 | `declaration-track:0ab8192d068cd329984370fc0d677cc4033a765c1cea8d93c2cf53b98a3e813a` |
| 2 | `structure` | [BotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/bothom.md) | 42 | `declaration-track:ca99f7bdfdfe86d4654a6cb6544c82dc1a9b5fc03d548cfb01e0e246a134f286` |
| 3 | `structure` | [BoundedOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/boundedorderhom.md) | 49 | `declaration-track:4ecfe859c3d9e7a4e25c7d1b0bf3c409f081c0184b086db424f9799b58e55660` |
| 4 | `class` | [TopHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/tophomclass.md) | 61 | `declaration-track:6661c052171e731a088faa6aadc4fca474379b1cdfee4f487830082a14687ade` |
| 5 | `class` | [BotHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/bothomclass.md) | 69 | `declaration-track:6c615be7990628982732e0cf649819a04d5576f17852450611cf717ff7418258` |
| 6 | `class` | [BoundedOrderHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/boundedorderhomclass.md) | 77 | `declaration-track:849a4666b9471a3d415f9501e02521da3afc63e0cf05b2b3b1073c44a61cb1d4` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-9.md) | 98 | `declaration-track:45076a5058b86de5e48668afc827dcd7c29a7b86fedef29ce9aa0a7e053b846b` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-24.md) | 103 | `declaration-track:b715832a64ff5efbb4ff7abb82ef82b4c4a934a63aa453bb6a832d3e23c51413` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-21.md) | 114 | `declaration-track:9eb00532ee0c82121810bb3029372cb555314318f7207eb9ddc8a590a6788544` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-34.md) | 120 | `declaration-track:f63bc981fef1c4884b94597fdfc95fa1cc224bf5616c195e7fa2328749b98902` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-12.md) | 125 | `declaration-track:59c54ff97fbcb7e57e53f5d581b8332675dcbc3b34797e1a2ce1441851ac73b2` |
| 12 | `theorem` | [map_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/map-eq-top-iff.md) | 131 | `result-track:0223a6f548e99db42231dab8238bdf8b191b216d43091d0aba194acad8bfcc7c` |
| 13 | `theorem` | [map_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/map-eq-bot-iff.md) | 136 | `result-track:710769ece70e4e53a370acb62a5540c480cb8a7a70237b6ba6f34e8291adacf5` |
| 14 | `def` | [TopHomClass.toTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/tophomclass-totophom.md) | 147 | `declaration-track:db36182423675c811da91389127e2aef5c2b81aa56c45d0255bf8a01d076eafa` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-31.md) | 150 | `declaration-track:e26ec4ef1aab298ff6631687cc3a5b85971734b5ba50659f083bbc993519dfde` |
| 16 | `def` | [BotHomClass.toBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/bothomclass-tobothom.md) | 156 | `declaration-track:de44f1fbeca488cb748d54e9c22cd7c4c33b0b1e86fb7b474c31fcdb2ccbbfd2` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-13.md) | 159 | `declaration-track:5c30ecce78f2f2f02c58451773b77934a45c2513640a9bac7bcb005282e4c325` |
| 18 | `def` | [BoundedOrderHomClass.toBoundedOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/boundedorderhomclass-toboundedorderhom.md) | 165 | `declaration-track:65832ab9662923ce96e433d71b19eea394d176c4159e134e44e6358860e7c1c7` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-33.md) | 169 | `declaration-track:ede614d078642f6d0eafcefc48b6401bbda87a4193c55b57730a38bee56fdccb` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-28.md) | 184 | `declaration-track:c83a40849819e00b5044e532eb32b449f0243ec5c86be6f8d189afb61d85b711` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-25.md) | 188 | `declaration-track:bd19795fcad570050aa6f58e41b4f012054896693ca9a6af0fb9fd11a2726967` |
| 22 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/ext.md) | 195 | `result-track:6ca9dcac38194c98ad706cf830ab52e58dd98e45eba4c378a6e27b0c5ed29617` |
| 23 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/copy.md) | 200 | `declaration-track:3d51cc03c5cacb7bf5284cfa90aced7485b07afe37fffe1ac843e3f3e0e8ca5b` |
| 24 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-copy-source-edition-3.md) | 206 | `result-track:fac69d1e893b684993f106f1baa9a172ecd18f14f979116b82b8ddbfed65cbca` |
| 25 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/copy-eq.md) | 209 | `result-track:42e18ece4b1c83f0facf9c2834fb3b63cff74801a171ef57dace2865c64e31c1` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-15.md) | 212 | `declaration-track:72ea8fa80191b3547d6f30ca7904b8e2968cd83132f8f4ea7a2c39a46296d47c` |
| 27 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-source-edition-3.md) | 218 | `declaration-track:fe97de218d920492f7d9c26703ca7b5cdc752e471f57d4f914de6ebfcc30d114` |
| 28 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-id-source-edition-2.md) | 222 | `result-track:3308fe9e9a33923202654e01dc3c76a29f008fe45db517f4d32f1a7cfd0fecdd` |
| 29 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-apply-source-edition-2.md) | 228 | `result-track:9075b759c381a075a848abd95dfee611e6350e7d37ec32d8dcbf02492d23276a` |
| 30 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-source-edition-3.md) | 232 | `declaration-track:dc15fef11d72d3fd60a32f0fe77a94b9f21d46859b760efa5bace495a2fb9efd` |
| 31 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-comp-source-edition-2.md) | 238 | `result-track:62c34f2b26835a6d7cd57b6516d1a752210f61147dd62f3fa696c0e400a04de1` |
| 32 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-apply-source-edition-3.md) | 242 | `result-track:8cf1481d48653fe804c1eb17527c3b7f39d7ae8326a5183f2bc1e490bf9c7472` |
| 33 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-assoc-source-edition-3.md) | 246 | `result-track:f7c61c76ba2e5be4187bd9b37b6cb807a753733470432c6705770d6df2fec7d1` |
| 34 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-id-source-edition-2.md) | 251 | `result-track:95303a41a28dfd929bc01d7903258ff2242731a7efda1310868195babbaa531d` |
| 35 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-comp-source-edition-2.md) | 255 | `result-track:876ceebfc13ff94dc5ae840def3be7f01410b3eca21261084174e95378cc3e12` |
| 36 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/cancel-right.md) | 259 | `result-track:79e977ae77ed69da5b95b421fd8e146644b8867328cc0c6154cd3fc964bb61b6` |
| 37 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/cancel-left-source-edition-3.md) | 264 | `result-track:f8e3e741ac0969f9b5436fd1e267892042a06c648f384ffd382a5dd462f16b32` |
| 38 | `instance` | [instLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instle-source-edition-2.md) | 271 | `declaration-track:7457ae4bf9bf41051323a4592b2534e0edac4f969efa409ecfff3f13ac049bb4` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance.md) | 274 | `declaration-track:02f8711aa7a95801bce15c1d4feb6ee12572ae878ede47e2479b651f2d004f44` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-26.md) | 277 | `declaration-track:c3a2e6a5d931125a9bb01da9466408b86a5aae459dacac53742a5c7ff5371e97` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-17.md) | 284 | `declaration-track:8a94bbdcec43149c84a57963118f4f60fe9a571a4aea1d0208ab5f65173647f6` |
| 42 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-top.md) | 289 | `result-track:cccd9856ce88cd7fab540c9e43dca0ad7839157fb5502e1e5f5bd663f43c06f6` |
| 43 | `theorem` | [top_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/top-apply.md) | 293 | `result-track:84b11e7b15f9f28b03e473c95aeb381661b8e54fc598ca0360e2abf1737ec3f7` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-32.md) | 302 | `declaration-track:e953d79a4c279ae09678769317bf73fbe22289cd0e73c60d51dbc2ec5a29491f` |
| 45 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-7.md) | 305 | `declaration-track:3bb8b652351443bf57397736d794e9b65395fbd7bbb6ec0369d646601564b007` |
| 46 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-inf.md) | 309 | `result-track:4359dd20e1dc05efa7429a4fd28b1c15591637b1fa06f1ef391fafd968b8a906` |
| 47 | `theorem` | [inf_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/inf-apply.md) | 313 | `result-track:9df70877c2663a36d7ca803658f140ff5f579eb527bd572bca23f0fb9acebc2a` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-11.md) | 322 | `declaration-track:4ee050f6e9f80bcbbb14a6ac93a92e635d9d75a56b1a82a79fd8ec712c08feb1` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-2.md) | 325 | `declaration-track:0b7d696b81c3a02773176b3edbc0869219ea1ed609670ae008b188e95dd9fe7c` |
| 50 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-sup.md) | 329 | `result-track:1f3f19913aaf5643f3dce23c656eab4d076e3836f689f47b8d4439af525f3cb7` |
| 51 | `theorem` | [sup_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/sup-apply.md) | 333 | `result-track:1f0c12c6c37f069a60a719b4eb3d1a84503eb8bb469fb2af7dcf5b3026589167` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-29.md) | 338 | `declaration-track:cc974449a9724486a9a093e37c98f7d111c31889dee596f5d7a18febeb3c99e9` |
| 53 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-8.md) | 341 | `declaration-track:3ee99a79d308c77b4a8e4ea37ec32490893c75dc975cff63f678cbd7aa7903e1` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-35.md) | 357 | `declaration-track:f6a86eeb65d7f9530f7d7a824ba2fd603981c4902a3e2e913e7e93678232f95a` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-18.md) | 361 | `declaration-track:94d1f665488c666a48179ba788ef631f1900c3e4c0cc1d254e828d8d29aeb606` |
| 56 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/ext-source-edition-3.md) | 368 | `result-track:8eb34cb24f396a89d42b1b9efdc16d25046cafce171d10d40c05660909598f2d` |
| 57 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/copy-source-edition-2.md) | 373 | `declaration-track:81ea42c3b3d1435306c88ca8c824f84beddd70e5f0caff0a21e8ed170a50ec51` |
| 58 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-copy-source-edition-2.md) | 379 | `result-track:b911ce4c5e3e0d1182a90267ad123807d2d889ad849796aac9733177ff2171df` |
| 59 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/copy-eq-source-edition-2.md) | 382 | `result-track:6874d00e336815a1705453de95a4fab419551085fa5deb696e4d7bdf2234cd8a` |
| 60 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-5.md) | 385 | `declaration-track:1faccf1bcf7e82bd4f4c60c338ab1c50f25ef67f4355a38c1b754e1dad1f678b` |
| 61 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id.md) | 391 | `declaration-track:00457fd3016add34b9cc8169be0afe1f998070d5bef29f2dc1543e8eec440065` |
| 62 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-id-source-edition-3.md) | 395 | `result-track:c6746da0b9d164dcaedeeaa965ed03d2b794bed4162305e92b2b77a848edb44a` |
| 63 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-apply-source-edition-3.md) | 401 | `result-track:e4b2a370ae8f5c29d3ad2fa09f1664553816ca146b1b470f3d1ca88c604b18c8` |
| 64 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp.md) | 405 | `declaration-track:0e46cecbfef9c9da3454a71e92f135f413658fa236f0528f387ca1c0bc1cbad6` |
| 65 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-comp.md) | 411 | `result-track:226a87776bd618c5a50b721e40cda125ba1e74cd2cb38c7d86b171d4fb543ecd` |
| 66 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-apply.md) | 415 | `result-track:09623888350f64e12ec36832413482e829b2a7b3965123d133a52b87c0f2a46e` |
| 67 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-assoc.md) | 419 | `result-track:30caa693a6bbfd72c0d443c34a89bebe692b3af09494a7f3e2780a7863c15549` |
| 68 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-id.md) | 424 | `result-track:421358790b1047d55181ddf7e7ae6aac8dc04ef37e2d5278324d9f545ab4dc54` |
| 69 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-comp.md) | 428 | `result-track:33b1d851be992727b9198627e6d36aa8d7dc52848bcd635e99404dd3b418b6d1` |
| 70 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/cancel-right-source-edition-2.md) | 432 | `result-track:c08b513b7b8abb90091c3327e3cf71258f3ac7ee47421608b72366804b01dfe3` |
| 71 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/cancel-left-source-edition-2.md) | 437 | `result-track:615c2ca55519d5e4197b1fe6f7da65e8bf27805c1e0853f67dd9745428b4f0ce` |
| 72 | `instance` | [instLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instle.md) | 444 | `declaration-track:4367c741b937909ab9f75a3c19c59c3ae8e54c784137e4d51fd2a74311c40c74` |
| 73 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-14.md) | 447 | `declaration-track:64cce30df55116a9bb76d06ee6239bfc9aef9a3c0dffcd06d9ecd7c39097006e` |
| 74 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-27.md) | 450 | `declaration-track:c6f0e8eebe7463a141eff0f3a04de3323578df2ebbcdad364a910de12d902111` |
| 75 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-3.md) | 457 | `declaration-track:10876d3aa3828d601f319e8553aa9239b73c84044d02e51e00a7d946b49a7130` |
| 76 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-bot.md) | 462 | `result-track:f5d4e65f178893936740a9fc1223885f96724b0ae9c9ae5aaa13b901109c17b6` |
| 77 | `theorem` | [bot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/bot-apply.md) | 466 | `result-track:21f25b03f259b8d5274e9ce6623ee1bdc9affdcf43562a4648b10ce32d7f918b` |
| 78 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-4.md) | 475 | `declaration-track:1b8ea1a8b7d1cb54807b078ed10a306765d00f95001d1c3db587395f0337a0c4` |
| 79 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-19.md) | 478 | `declaration-track:972142a52552a64e324b18faccbccdb927f2eb76324fc11c2077c05465b1ca77` |
| 80 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-inf-source-edition-2.md) | 482 | `result-track:a35da0e6e2ec20e84a16e75e5c4a9c262af03f28d669e58eac18e1205470378f` |
| 81 | `theorem` | [inf_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/inf-apply-source-edition-2.md) | 486 | `result-track:ef6c017fa0479e3450ba201e489f98330e18d95466f5fa718e92a4e391196553` |
| 82 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-20.md) | 495 | `declaration-track:994beb23ce80e8a809add64fbb609e2f9fccbd7e1542aff8f9f5f3b7cf8b284e` |
| 83 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-22.md) | 498 | `declaration-track:a69e1c71dc9b76416e58c36cdf62fb5e893927bc729aa96db29efd630c8fc1a5` |
| 84 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-sup-source-edition-2.md) | 502 | `result-track:ad4f872b114c2531d2e3e591ae7d183b976e013c0abc470f5d332c87f7c1290f` |
| 85 | `theorem` | [sup_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/sup-apply-source-edition-2.md) | 506 | `result-track:3c0b34fbf0677aa20fbcf7df48f3269ccf6e72e0846ae14623f014ba430cac64` |
| 86 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-10.md) | 511 | `declaration-track:493f7a24425fd6acde77ff8fb50a0f54ede702c16c240cc796e6f52a0962c8c9` |
| 87 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-16.md) | 514 | `declaration-track:7b861425a8696d1d79b586322c4ba320605fc58ddfdef228daf9a1c7d0b9095f` |
| 88 | `def` | [toTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/totophom.md) | 530 | `declaration-track:a44570fb460c3054a6a6eb8e4899a803fd41913f85984a7f8f6f014b33629966` |
| 89 | `def` | [toBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/tobothom.md) | 534 | `declaration-track:10a4f5b8e05ddf923e6d200d496d651d3549474545586ac24cd719e566e5f7f7` |
| 90 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-30.md) | 537 | `declaration-track:d0f5f131209d1683724a2bb14bf71c458497eda60a1cddeda256fc3d0f62caa4` |
| 91 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-23.md) | 541 | `declaration-track:aa128c2af09a53199a7fcdb0491dbcd929fbf3a24646421bc049c9796c28a10d` |
| 92 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/ext-source-edition-2.md) | 547 | `result-track:6fea9d63fcf56b5dd3c366f1afeced901fe3e919ca7fb03c0777d85cfc376ce9` |
| 93 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/copy-source-edition-3.md) | 552 | `declaration-track:f8cc804388398a20698ef02dfa0ce3e64721837700ca32318da3a7735c264b94` |
| 94 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-copy.md) | 556 | `result-track:7f64a611e61339e8cf675d1233e05011a18a080f7f33bfe3fde82830638d6719` |
| 95 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/copy-eq-source-edition-3.md) | 559 | `result-track:cb0274248712b4ecfd54745d809ba197b6dc0728ec3e1be31b7b2219f5f41624` |
| 96 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-source-edition-2.md) | 565 | `declaration-track:ba36f7833fef69dd0025995196a9a66b65d2f12ba13c0de6a3b0245a55381493` |
| 97 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/instance-source-edition-6.md) | 568 | `declaration-track:26b8a8fbd1e6cb7f4f5b3580e16ec10430dbcd6a0863d95aa560041635954160` |
| 98 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-id.md) | 572 | `result-track:1ec65504bc669c300682cbe52bd9d1fd25d47e7292771aac7d88c34fa88eab56` |
| 99 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-apply.md) | 578 | `result-track:7a67c75f0118c5e891a32c5511debb446f19bd68f36cebaeb2f56ba2b417b94b` |
| 100 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-source-edition-2.md) | 582 | `declaration-track:aee7d82b5ba0f308c747f1896838d01195ff88cb41b1ab39ec75d37fd4678551` |
| 101 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-comp-source-edition-3.md) | 586 | `result-track:773fd09e717791562f16763edfb57f1d48e14ea0fe5cc51944eaa651a45aff18` |
| 102 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-apply-source-edition-2.md) | 590 | `result-track:1aeff3726c5196e15f2d640b8058d7d87b4f94886c894f1bc89385792c4a1faf` |
| 103 | `theorem` | [coe_comp_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-comp-orderhom.md) | 595 | `result-track:249f35a2023c068ee78c749b0fa76c4e9482802b46febc5e9461f4c8772efcd6` |
| 104 | `theorem` | [coe_comp_topHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-comp-tophom.md) | 600 | `result-track:0f002b6aeb6a51acb4d916148f494ddac0dd60b25e743a6248a05f937d8b73ed` |
| 105 | `theorem` | [coe_comp_botHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/coe-comp-bothom.md) | 605 | `result-track:e0d5b87d901559562d472d927e1922fc375a8ffdf43d9f0616fd03df0e18193c` |
| 106 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-assoc-source-edition-2.md) | 610 | `result-track:a9c3b0a125bbd89b7eaabd8b4b6ae6c387d69a68b73f7931855a5dd1f1cb3db2` |
| 107 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/comp-id-source-edition-3.md) | 615 | `result-track:c825fcaaa5a7b045c975f12d02ab9cc4d098dd46f8b52302b699916ba7183159` |
| 108 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/id-comp-source-edition-3.md) | 619 | `result-track:8ceba09344c3209b9d3a937c6d4ff22f5bb618f4a04a8d28d333dd843f2052d4` |
| 109 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/cancel-right-source-edition-3.md) | 623 | `result-track:c24c2b01edeb1ec2ccc47aa8db3a00309a9ac9a4800ce0a95b1ea1c70e89b699` |
| 110 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/cancel-left.md) | 629 | `result-track:5d362a6210637146d415ecb36483a75dd0a9f29d7aa58483747864cf89af78c0` |
| 111 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-source-edition-3.md) | 647 | `declaration-track:9ff6c3a8ab015968eb3e4264a9e7d14d299c2bdeeb0f301abf803947e14f15b5` |
| 112 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-id.md) | 655 | `result-track:359882cfcb4eedcbf86fc9ddadd85246f23bcde917dcd6afa8a6eae3a0349290` |
| 113 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-comp.md) | 659 | `result-track:4b7e84a4569bfd1778e04d0b11815697c64e46ea8989339616d8b22ff9714b05` |
| 114 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/symm-dual-id-source-edition-2.md) | 664 | `result-track:84c1673581612d4b583663ccd914dff01587ad02868b2160662f5c206dc93294` |
| 115 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/symm-dual-comp-source-edition-2.md) | 668 | `result-track:b6fd05cd554912aa5afdde6e26e39b886c105808373c03ac7a3aaaecfdf41732` |
| 116 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual.md) | 680 | `declaration-track:001d3ce0e4fa3c1f8bb7cd94da8c6008d24ae3638c19c7a25c8704aa6b10ace4` |
| 117 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-id-source-edition-2.md) | 688 | `result-track:c6ac9d6700e948c9c3679fd9e62782362f5d6c0591c938ebe56ef024bec9b76c` |
| 118 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-comp-source-edition-3.md) | 692 | `result-track:ced500054ec56c3cc52fc5a73e45fe01ebdf8e03081114c074722b356364fc6c` |
| 119 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/symm-dual-id-source-edition-3.md) | 697 | `result-track:8812b32f36466b6ee2bbeb1c69a7d018c1f450fc818e805e5c5acf73b8c48db2` |
| 120 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/symm-dual-comp-source-edition-3.md) | 701 | `result-track:cecce4fb646d4b33bf28cdf5a75d313caaf492c7eacf83ddf6dc87238951abbb` |
| 121 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-source-edition-2.md) | 714 | `declaration-track:62663ba6c67de186fd3342ccd81bb79e801754ecd55a8e959c09cdfe13497a7c` |
| 122 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-id-source-edition-3.md) | 724 | `result-track:df310038a7c431dfc15825bff7fba52efe1e1d45fa7a8813520ffe210139f3e9` |
| 123 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/dual-comp-source-edition-2.md) | 728 | `result-track:9ab8ba1c7bf62a8cd99198538aee3f60c1fc4cc3a3e3ea2f2822a4e8c88dd453` |
| 124 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/symm-dual-id.md) | 733 | `result-track:71647c79582a5ff20832b8b48cfb9088ff0b198563e55f8478a3155efa5532ab` |
| 125 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomBounded.lean/declarations/symm-dual-comp.md) | 737 | `result-track:1d9a642bd921addc0336329e6dcef406ff39a8f379922e829033d62569294920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0fc8e05437e66ecc793d2c969b08d5e159d3813d842c0ff4f04bc068dd801a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounded/Variant4dce0f6ceda189e8e2065a6fd76c8821f3b31a35344c82adc300a8bd744c6824.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounded/Variant4dce0f6ceda189e8e2065a6fd76c8821f3b31a35344c82adc300a8bd744c6824.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
