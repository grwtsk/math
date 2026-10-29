# Verification target: Hom Monoid With Zero Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b4756e799fef1101bb14ff46e6488c76aa19e05",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b4756e799fef1101bb14ff46e6488c76aa19e05`.

Source path: `GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean.json)

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
| 1 | `structure` | [OrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ordermonoidwithzerohom.md) | 60 | `declaration-track:5d5fc10aa6f44a5cdeb1849083d1c319d3a6df0afdbafe0b141d3a69d4db66a5` |
| 2 | `def` | [OrderMonoidWithZeroHomClass.toOrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ordermonoidwithzerohomclass-toordermonoidwithzerohom.md) | 81 | `declaration-track:ed822a517a0c470a6a2fe0022b56426fa737180ada44239053d204821b363de7` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:acef923259d3bb63f9854e3a5cc57eebb530f95f8082cda32963388e7b2b5438` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 102 | `declaration-track:f9f383984b63dc8bd3b7a3a63b065b308611967831d879939fcce6f66f4a0890` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 111 | `declaration-track:b294200b4bf6f0f39988619f651ebc369f250993b97b497799806237dcf9ec03` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/instance.md) | 116 | `declaration-track:80bf81018035727135d870d6b45062f544c71b99356ae5734bd83b58f9483279` |
| 7 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ext.md) | 121 | `result-track:d27a37c7697c02d692ce4e859ca792928cce1cc82f34f555215f79c676c5c17c` |
| 8 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 124 | `result-track:e8b46f299cb4c0ec103728189095088a2861a61c174ea13e1e18009f5a3e7de7` |
| 9 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-mk.md) | 128 | `result-track:9f422b525aaad53d17d9c27732ee1c685112e24d156b3434ea8917edbc2b4f66` |
| 10 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/mk-coe.md) | 132 | `result-track:9b282665e0e0c45e1e3db6db948de0f7477bac74dd1db68cd4ef29f43cbfe19a` |
| 11 | `def` | [toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/toordermonoidhom.md) | 135 | `declaration-track:03f89d145cafe19366d5e388aa552780092fe46b12bd9b31d4c38a6197942975` |
| 12 | `theorem` | [coe_monoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-monoidwithzerohom.md) | 139 | `result-track:82e57fb8efe2bce421d2468ec768818528144f8c6bffc821b8773ec884c270e5` |
| 13 | `theorem` | [coe_orderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-ordermonoidhom.md) | 143 | `result-track:60ec1afe9b9291c0174170195af28b1cb9ee46aa13283aefd197f065b1bedc3c` |
| 14 | `theorem` | [toOrderMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/toordermonoidhom-injective.md) | 146 | `result-track:d208762a91b97de6cf9ad1770987b224dd610055b4a4808b86c735cb98a8f2fa` |
| 15 | `theorem` | [toMonoidWithZeroHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/tomonoidwithzerohom-injective.md) | 149 | `result-track:86ca013f2c2e8e28a4c880cfa144a9fd322dee2a2e6a5f379967f2426363b4e1` |
| 16 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/copy.md) | 154 | `declaration-track:c4b21bd606667b56e5a3c47023d7628f0cf01804c66ce243960c514870980741` |
| 17 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-copy.md) | 158 | `result-track:1d215bf4995f2fe63d4981dcd7bda09e5c27ed80ded551d40536545dc268dc68` |
| 18 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/copy-eq.md) | 161 | `result-track:305625b3bd50b7408abe1e4bb89ef8988012c6a6a53bb206122390542cc0535e` |
| 19 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/id.md) | 167 | `declaration-track:a5aae845a72fef51146a064e2966f9225cf1bcdb755f69de55959faa3c816100` |
| 20 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-id.md) | 171 | `result-track:40eee950a1ecbcd5d7426e82ab433ec7b6a64354674bdebd0616c79bbd66d80d` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 174 | `declaration-track:aeefcf7126b37a81264c81441bd5249d3f89d30af614036aa7fcccc12882c85e` |
| 22 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/comp.md) | 180 | `declaration-track:d9c3858cb13d2ae2c65a256237a8cf85fa622e1fe92d65ac3371f2ba79194441` |
| 23 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-comp.md) | 184 | `result-track:8ffbec23751e434e7df185b416e2613df5e007a9ceda66eb27bfb02b369dff9c` |
| 24 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/comp-apply.md) | 188 | `result-track:8c41dd9e4af5c854daf2ab402ccf8cd0d257b23a4e68d5339da55271cc9f960b` |
| 25 | `theorem` | [ofClass_comp_monoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ofclass-comp-monoidwithzerohom.md) | 191 | `result-track:c7b6b0ac5f003b2e7aec36a1f43ae797b204eacf7cdd00e150fb632a3310054c` |
| 26 | `theorem` | [coe_comp_orderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-comp-ordermonoidhom.md) | 195 | `result-track:7816cd472337973a160a1d93e403f9681334dd8b3243d75a5fa55531cc48dea3` |
| 27 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/comp-assoc.md) | 200 | `result-track:c932b85cdf73bf558c79d321fd932566f6ffa0edfa196de43c340148d295424f` |
| 28 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/comp-id.md) | 205 | `result-track:22a45ca809f3f1a3e71abe59d8e9dc8c125d8ac1736d23b3d01dc2cbb337aa41` |
| 29 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/id-comp.md) | 208 | `result-track:f7d00b420e9d0e9837646b1679bb5b391f3ec467a0be736370d6b224598d1f75` |
| 30 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/cancel-right.md) | 211 | `result-track:68b6d5b7be0f406cb12ccd26b405c2fbbd9fc68f5650c44f659618815769a21f` |
| 31 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/cancel-left.md) | 216 | `result-track:ddd5a46169cf99c67a2f9b8c4ec358d9d3b6d7770449ccfead6c2415b04522a0` |
| 32 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:8d8c4ca1d1a8e002bb5b35b1bad34f9227f2d9cb4496098fc142c9ccefe4dfae` |
| 33 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/coe-mul.md) | 234 | `result-track:de972c8bb5dd8d662f8a9ea81999857a4916ae116995c6b113c69c906f1bcb7b` |
| 34 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/mul-apply.md) | 238 | `result-track:08c1311e3fb4ee8e026fbd496bd2a23bf97d9ed227e078e4fc06eb3a38880a54` |
| 35 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/mul-comp.md) | 241 | `result-track:23fe99b9b2b9e8982be397fd456f79faf2d2225947aa5526b047a905f7dc963d` |
| 36 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/comp-mul.md) | 244 | `result-track:2151b969d56262928e10759e5fbf53a15ae77b6d7791e3355632508f4a96de4e` |
| 37 | `theorem` | [toMonoidWithZeroHom_eq_ofClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/tomonoidwithzerohom-eq-ofclass.md) | 255 | `result-track:2f24c0c024d855657e064d7a57f3cac12f104bccca57003678983af87e2ce379` |
| 38 | `theorem` | [ofClass_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ofclass-mk.md) | 259 | `result-track:e8d3bc18d41affb5197c0eb323f0079920910b7ff1567ec45bba11cb632edf57` |
| 39 | `lemma` | [ofClass_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ofclass-comp.md) | 264 | `result-track:392cc73d5a24871588876155e71ac14d85c9b87f7659e5bd957a2882cdcd4284` |
| 40 | `theorem` | [toOrderMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/toordermonoidhom-eq-coe.md) | 269 | `result-track:fe28dec4aa67b0a452444fbd1a8a452fa061b575113c7a1349e04e0812b92d0d` |
| 41 | `lemma` | [toOrderMonoidHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/toordermonoidhom-comp.md) | 273 | `result-track:27db051e5b01b2a5f5d9cceb82769771322d2b0518f3ed59e1b8f67ccf4d22ce` |
| 42 | `def` | [OrderMonoidIso.unitsWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ordermonoidiso-unitswithzero.md) | 283 | `declaration-track:570e5279c1ba80ac8971c6ba4a9f6a9e24711b3a3c3bba0849dab928fdc7af76` |
| 43 | `def` | [OrderMonoidIso.withZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ordermonoidiso-withzero.md) | 289 | `declaration-track:3f5ba12d378025830205a415596fb53bd65ccd90388818c55de6259aa5d47a33` |
| 44 | `def` | [OrderMonoidIso.withZeroUnits](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidWithZeroNamespacedPublic.lean/declarations/ordermonoidiso-withzerounits.md) | 299 | `declaration-track:c38fba4b3af5ada136d7624ef4b910b9151908940b58336f24372ed5e3f88ec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=519ed6edcafbf6ddc260c25cfdbf2d3d3059eb23aec6f549217e3855c092b301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
