# Verification target: Ring Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "096c833b3b83030a8be81bf48a27e87f46264122",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant1cb3787869d6543d79cf35e9447a0f0a5ea5a20286141c518dbc5e032f500222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `096c833b3b83030a8be81bf48a27e87f46264122`.

Source path: `GRWTSK/Algebra/Prod/Variant1cb3787869d6543d79cf35e9447a0f0a5ea5a20286141c518dbc5e032f500222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant1cb3787869d6543d79cf35e9447a0f0a5ea5a20286141c518dbc5e032f500222.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CompTypeclasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistrib](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instdistrib.md) | 39 | `declaration-track:b57b3d9b4aeedcb76ff5b2704280b2e52d148eae33e482f660e0095cb53e459f` |
| 2 | `instance` | [instNonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonunitalnonassocsemiring.md) | 44 | `declaration-track:1fff09f807fef2ba124018a94c6c6618bc0dbb6722b49aea35f896141388c479` |
| 3 | `instance` | [instNonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonunitalsemiring.md) | 51 | `declaration-track:bccb27efccebe6d156b7c56f811810747ab3a739aeeb49034d6603b78a649161` |
| 4 | `instance` | [instNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonassocsemiring.md) | 57 | `declaration-track:5f3a08cb9c90401294ebbfc260cd938bf723dd3fe12a9b5bd46ff6c9ec72d116` |
| 5 | `instance` | [instSemiring](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instsemiring.md) | 64 | `declaration-track:546fba95db4c0543458d6c73bdb863c5e831e1cd4447ff36849095ff2f34c6e5` |
| 6 | `instance` | [instNonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonunitalcommsemiring.md) | 70 | `declaration-track:95d58d8e07e7665020d2d8870d71b715a70ba71b5bab6dcfba92bc86f4c8ec2d` |
| 7 | `instance` | [instCommSemiring](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instcommsemiring.md) | 75 | `declaration-track:66358e58865cab7a689e70111f15ae1a464c6f7e4359b16d02d0460cba704e85` |
| 8 | `instance` | [instNonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonunitalnonassocring.md) | 78 | `declaration-track:5b55de9af7fb0fb84479f18eeec5325ee819aee6b9d96d7c3413347ddfb91c84` |
| 9 | `instance` | [instNonUnitalRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonunitalring.md) | 83 | `declaration-track:1c192fbb8707be9612ae49bcfd0a67e1297acbaa17b41c27c381c4683975ed50` |
| 10 | `instance` | [instNonAssocRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonassocring.md) | 87 | `declaration-track:590d7526cb2a4d0d9e8216e0504ccc7d531cb854a7623da7e0aa7ddd9ad658af` |
| 11 | `instance` | [instRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instring.md) | 93 | `declaration-track:dd5a5cfcc66d5833bc03d202210529b97cd2367b8581f7400d800829c3cdf05c` |
| 12 | `instance` | [instNonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instnonunitalcommring.md) | 99 | `declaration-track:88c66cd2dfdeb1613b1bf77d92556479f3223aefe3d4c861795e395bc1c4f22b` |
| 13 | `instance` | [instCommRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instcommring.md) | 104 | `declaration-track:68afa303ee6d103078e4ec6cd29b92dd47a59b0ede5c34724471515bc290fa38` |
| 14 | `def` | [fst](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/fst-source-edition-2.md) | 114 | `declaration-track:ec959d4517f75727c44e30f3b17b5f3f5b7f70b2d9e264da39f6215fbf35ec80` |
| 15 | `def` | [snd](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/snd-source-edition-2.md) | 118 | `declaration-track:36626c13c9496ea40cea38be7ff87dc6173cb1a62de7c4b32c7dd3098c1fb051` |
| 16 | `theorem` | [coe_fst](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-fst.md) | 124 | `result-track:71f6c00a5fe9767eb9d886fc4a162c6390f4759b4148b90010479e28993dfdc7` |
| 17 | `theorem` | [coe_snd](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-snd.md) | 128 | `result-track:264fd0fbad05107639480f5d8e73eda35e32f694f60166ca6ac97c82a59580db` |
| 18 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-source-edition-2.md) | 137 | `declaration-track:c7c4b6bc7178bb1c55f3315d69c2eaebd74dc60d4fa4e184b4057b3dd26dc21c` |
| 19 | `theorem` | [prod_apply](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-apply.md) | 142 | `result-track:480777afb8248fb7c629fbfd8023c4c90fefd4dbc30a3f136edb6d58a0057b73` |
| 20 | `theorem` | [fst_comp_prod](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/fst-comp-prod-source-edition-2.md) | 146 | `result-track:4a1c99b8bab564667c0d4161c354b97c4ec932c50f3205249b1546f766009c56` |
| 21 | `theorem` | [snd_comp_prod](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/snd-comp-prod.md) | 150 | `result-track:4b399ac44a18adbcb31794c538e0f89922c22e1e4483d403daca2ada55d811a0` |
| 22 | `theorem` | [prod_unique](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-unique-source-edition-2.md) | 153 | `result-track:ec2475fbeb961b46689181ea2a58c185e30452da7897a4cdb6bc6d9c24e8a2bc` |
| 23 | `def` | [prodMap](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodmap-source-edition-2.md) | 164 | `declaration-track:d6dbfaa46fce131e23b3868a426c27d1703d554a3030a137a229791bcb91ab0b` |
| 24 | `theorem` | [prodMap_def](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodmap-def-source-edition-2.md) | 167 | `result-track:ff1761230c6ff2a33ee02ecad066de898a6e9899d8e4b3711fee89c37100aab0` |
| 25 | `theorem` | [coe_prodMap](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-prodmap-source-edition-2.md) | 171 | `result-track:7e5c94bf7f6bcfd5d886be4384aaddceb39b2901d36ea3dec8a7c120f2b95bb7` |
| 26 | `theorem` | [prod_comp_prodMap](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-comp-prodmap.md) | 174 | `result-track:9954fbfac4b06878b3fdb6ee4cc27b8046625bb1e10c78d464333f14f169ef03` |
| 27 | `def` | [fst](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/fst.md) | 187 | `declaration-track:dd4cf67221a3857b4a93b57de279ee8967a46f1a5949dfa88e655defb5ebb6d3` |
| 28 | `def` | [snd](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/snd.md) | 191 | `declaration-track:1c469792d57160dc43a045372306d0b5fb7fd3451cc409e096b7827001b7ae06` |
| 29 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instance-source-edition-2.md) | 194 | `declaration-track:8ff29c3aad1e2083ce45902cdb4dee4d9deb7e47d9c99c498e21c422228855ba` |
| 30 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/instance.md) | 195 | `declaration-track:0966b835e821b3e63dbf7a26de89749c5037c1ee40796dd7ff6bd1ac8296d0dc` |
| 31 | `theorem` | [coe_fst](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-fst-source-edition-2.md) | 200 | `result-track:84a13988f849859c12901d403a8708dd027eee406199cd11f9f44e332cbffaf6` |
| 32 | `theorem` | [coe_snd](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-snd-source-edition-2.md) | 204 | `result-track:f1461cbe2abd19b9f16c83c8726a403b57686c7d8da60b43408c0eeca3c3b880` |
| 33 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod.md) | 213 | `declaration-track:813ffa8f254cbf268c6aa0f1c79bb0c98404500ed2de91c47da4bdbf5c51d4f2` |
| 34 | `theorem` | [prod_apply](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-apply-source-edition-2.md) | 218 | `result-track:fbfdde000e5f0c54c18c7511d70e655d328d2e5ab71afe17f4bd667a190501dc` |
| 35 | `theorem` | [fst_comp_prod](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/fst-comp-prod.md) | 222 | `result-track:0059602e82a4d2c9aa88aa409c8dea8515a054af191d391d7ae35107237cd8fa` |
| 36 | `theorem` | [snd_comp_prod](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/snd-comp-prod-source-edition-2.md) | 226 | `result-track:8181e1d74d42ddf365d5cb43a5bb646e42942077e973b0edf7c008661d85139f` |
| 37 | `theorem` | [prod_unique](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-unique.md) | 229 | `result-track:92c2180f13c3aa40841965b44bfb253ec2ec690a50eedcd21681950375a9d6c2` |
| 38 | `def` | [prodMap](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodmap.md) | 240 | `declaration-track:0bf7eaeea289a78150d6d813b8342f95b1cc7f2b3ac39a04c8cc726d217a0dea` |
| 39 | `theorem` | [prodMap_def](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodmap-def.md) | 243 | `result-track:41e4dcc82a1f444d1003a3ae796204d8af1240714c6e454cd1a65558793489e7` |
| 40 | `theorem` | [coe_prodMap](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-prodmap.md) | 247 | `result-track:2757292254fa34c6767f561b95134ddb0ee0135ade85c4863e02ca462f70f7f3` |
| 41 | `theorem` | [prod_comp_prodMap](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prod-comp-prodmap-source-edition-2.md) | 250 | `result-track:caa908edfba45ba4477cd606e3d65ecd95001a99758dd11b7be1ff5721475f94` |
| 42 | `def` | [prodComm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodcomm.md) | 263 | `declaration-track:1cb9a8b23a21ea237142674c98207094a378d4cf2ff6657530ac606001385fe7` |
| 43 | `theorem` | [coe_prodComm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-prodcomm.md) | 267 | `result-track:dff585140e0a816137077a81d1bbc65f3ac1a24f10dc3110433c40675e7e8c32` |
| 44 | `theorem` | [coe_prodComm_symm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/coe-prodcomm-symm.md) | 271 | `result-track:38ab6c33a09313926262cd3d6f6d57ba696aaad5bc7f997ce6bd554dac5a636f` |
| 45 | `theorem` | [fst_comp_coe_prodComm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/fst-comp-coe-prodcomm.md) | 275 | `result-track:00716ceb1fb22f938cc1d75fd1cdf60a0dea4c5ac3479e1f778229d6777b9f28` |
| 46 | `theorem` | [snd_comp_coe_prodComm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/snd-comp-coe-prodcomm.md) | 280 | `result-track:e63c5e98b62c13183b2db01d5152b10978e5fb61ff6349240cdaa488bf278480` |
| 47 | `def` | [prodProdProdComm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodprodprodcomm.md) | 290 | `declaration-track:758a07de8b6a94778c63ee9106b201e20403f75efa70a03d1d34a8fa7fb95573` |
| 48 | `theorem` | [prodProdProdComm_symm](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodprodprodcomm-symm.md) | 296 | `result-track:45b44c239f8595d7bc9ab3b3007f7ca5df9e3840df6d3e8621eefb325b9e2f04` |
| 49 | `theorem` | [prodProdProdComm_toAddEquiv](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodprodprodcomm-toaddequiv.md) | 300 | `result-track:9eb7d758fb8943215fee944ca5d5dfcd980ab25b856e570f9a66084b3ae69cc1` |
| 50 | `theorem` | [prodProdProdComm_toMulEquiv](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodprodprodcomm-tomulequiv.md) | 305 | `result-track:f28ee0247f4ea5a6953916e9e18e7a66937f6c3e41b1a08dc6a576b475ee99ea` |
| 51 | `theorem` | [prodProdProdComm_toEquiv](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodprodprodcomm-toequiv.md) | 310 | `result-track:cc770fe3ca0459eab6bbc35bc549b11061e9cb0d8f142dae4e30060363ec8247` |
| 52 | `def` | [prodZeroRing](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/prodzeroring.md) | 320 | `declaration-track:65235f692c40f9963138c3091e56d9f4e838fe6a5559509e3b617ea4f9827cf1` |
| 53 | `def` | [zeroRingProd](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/zeroringprod.md) | 330 | `declaration-track:0e72127fd5ebd765f2e6d05d971c428594c8a86fb77f2419b253b4a83b369662` |
| 54 | `theorem` | [false_of_nontrivial_of_product_domain](../../../../AssociativeRingsAndAlgebras/RingProdNamespaced.lean/declarations/false-of-nontrivial-of-product-domain.md) | 341 | `result-track:dbebbe35d292c0d1f36adca2609773d2cf01b3c4542d7379a3e8c589c7998491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c9266419c85a515bcbb7b4d37535fd05c489987d8f55f0e156eaa5127ebc783 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Prod/Variant1cb3787869d6543d79cf35e9447a0f0a5ea5a20286141c518dbc5e032f500222.lean","GRWTSK/_verification/specifications/Algebra/Prod/Variant1cb3787869d6543d79cf35e9447a0f0a5ea5a20286141c518dbc5e032f500222.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
