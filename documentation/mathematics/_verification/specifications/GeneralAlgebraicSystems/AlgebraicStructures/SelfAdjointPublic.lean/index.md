# Verification target: Self Adjoint Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean.json)

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
| 1 | `def` | [IsSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isselfadjoint-source-edition-3.md) | 50 | `declaration-track:e52a9d338e15788a504c5a8ca27b4b30830bfa16cba7581e35d77e63b1272656` |
| 2 | `class` | [IsStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isstarnormal.md) | 55 | `declaration-track:7f729fb41fd55c270a038c544e3f6775e6a7474d5527914ad9d30cd63e15c47e` |
| 3 | `theorem` | [star_comm_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-comm-self.md) | 63 | `result-track:38529c892f97389bad49f31af9784d6abef1c794e0b2928a8088b120a48b0e73` |
| 4 | `theorem` | [all](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/all.md) | 70 | `result-track:c22f578f2d8ebcb1a410f96151607e9a0fe1033d2cc8f648abb8b5e635d1c8ac` |
| 5 | `theorem` | [star_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-eq.md) | 73 | `result-track:10be3613af24865d241efe67617d4f5c730268eaadd1e9410f58e66d45575f77` |
| 6 | `theorem` | [_root_.isSelfAdjoint_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-isselfadjoint-iff.md) | 78 | `result-track:16dd0f88e7c710df6f3b5bfe7d096bdc023cf754b9ffd78c3aa3227bff87930a` |
| 7 | `lemma` | [_root_.Subtype.isSelfAdjoint_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-subtype-isselfadjoint-iff.md) | 82 | `result-track:9630eb0aa30cd51c782ae6a340c54480f4a9b6db2890e6ebad2a4d3b122579e0` |
| 8 | `lemma` | [_root_.Subtype.isSelfAdjoint_mk_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-subtype-isselfadjoint-mk-iff.md) | 90 | `result-track:1ccc1647c2086bfdc495fe64dd4a2e490146c52963083e4d832db400917760e1` |
| 9 | `theorem` | [star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-iff.md) | 98 | `result-track:d82bd53d6e5a24d3a852ca2fb0fe520ce4b8f5b3942838eb02153edb0ce859ca` |
| 10 | `theorem` | [star_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-mul-self.md) | 102 | `result-track:33329857f434f3c7d69d57234671ef44d3f6bbbd2585e589cbfb6fac04dd05ff` |
| 11 | `theorem` | [mul_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/mul-star-self.md) | 106 | `result-track:15b2055b051319b9bac740dede2c1588038c11205528868a7194f69b1d636b1e` |
| 12 | `lemma` | [commute_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/commute-iff.md) | 110 | `result-track:c47ee7fa6dd87553ff8ce3e2b596af27e789677b3f7f6c8961e53d50f10e9a09` |
| 13 | `lemma` | [commute_of_mul_eq_isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/commute-of-mul-eq-isselfadjoint.md) | 116 | `result-track:4980cf69eafc67c269acd60f3c35c85646bf9552dba5220fa13219a40a401249` |
| 14 | `theorem` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/map.md) | 123 | `result-track:9680ab297c8d64dab22a75da8170aa5b6b0be80a8d567e3708e8ad183d33ea50` |
| 15 | `lemma` | [of_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/of-map.md) | 127 | `result-track:4336274b9964d469fe20dece2fb2c698562d8c2bd42e920670d2d68b3c033d3b` |
| 16 | `lemma` | [_root_.Function.Injective.isSelfAdjoint_apply_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-function-injective-isselfadjoint-apply-iff.md) | 133 | `result-track:7f6a0f729b9327b22846d120e9a96abadea8f332bf0443cc63cc3d24c3566b74` |
| 17 | `theorem` | [_root_.isSelfAdjoint_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-isselfadjoint-map.md) | 141 | `result-track:b46427328c697249c1082b7e9fec8a7f841db280a777c9c90b393a8d1fad7563` |
| 18 | `theorem` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isstarnormal-source-edition-2.md) | 146 | `result-track:ecf719667727e108bb573bd1e46a730ac24ff531b5e366a1753f21bd3e4f111a` |
| 19 | `theorem` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/zero-source-edition-2.md) | 154 | `result-track:83404d6ae1cb9e87d6b1f64731a2188de8993db4ad93b18e668248e1576fe7e7` |
| 20 | `theorem` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/add.md) | 157 | `result-track:9afccb07ffe33df6ddca0b5e539c9e0f6dda7dcd13ce236bfcd2d159b3bfa1e9` |
| 21 | `theorem` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/neg-source-edition-2.md) | 167 | `result-track:a9b038fb1133fd9ee0c64d60ed8b19bffdc30b0a9fbff239f24d24d5eef65ee4` |
| 22 | `theorem` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/sub.md) | 171 | `result-track:552cd6c1c4d0c7bce5e172461119d8b4dbf28860351eca8ba1fc0827487cf481` |
| 23 | `theorem` | [add_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/add-star-self.md) | 181 | `result-track:a129a7d0d055fd9f08831f7b938df006e6f9c605c526da591f3cc4c62c96c62d` |
| 24 | `theorem` | [star_add_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-add-self.md) | 185 | `result-track:faf780b152414bd96f833b2cd7edd4a6b57ff43416d23cb1099a4df6870bc29a` |
| 25 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/conjugate-source-edition-4.md) | 195 | `result-track:f7e998d9de62b46167879f7312d6b9f96d48b50facdd68bfc7218fdf111d61e5` |
| 26 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/conjugate-source-edition-2.md) | 199 | `result-track:7c3983bc7ab3f5366e9cb6fe13ae72253edd7ee9e5fe28725e53a2de62d8f103` |
| 27 | `theorem` | [conjugate_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/conjugate-self.md) | 203 | `result-track:62bceeb118e96d1f2cd8788516bffd7c25aa39ebfdda64057e44054c151e8ada` |
| 28 | `theorem` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/one.md) | 213 | `result-track:9af9825af194d73c6081940705226ded67416313d5acc23f3c914409ee51ba60` |
| 29 | `theorem` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/pow-source-edition-2.md) | 223 | `result-track:aa635c34929f8375a7eb177333ee03045f1c91a07776240e5f00b3f58cdb4d0e` |
| 30 | `theorem` | [invOf_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/invof-iff.md) | 227 | `result-track:ae0334c8e96d1a08b4de2eac0f48cd81ac71eb6ffcb83d2e9b21e615ff90171f` |
| 31 | `lemma` | [_root_.IsUnit.isSelfAdjoint_conjugate_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-isunit-isselfadjoint-conjugate-iff.md) | 233 | `result-track:7bf5a0acb417e47e50891692fb55435dd20576a8de47c6d7625925bb55909c0e` |
| 32 | `lemma` | [_root_.IsUnit.isSelfAdjoint_conjugate_iff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-isunit-isselfadjoint-conjugate-iff-source-edition-2.md) | 238 | `result-track:9a9d0932977295b47b4f1715f38825348ac2230232f0b7eeab8fc6f2d1693cd4` |
| 33 | `theorem` | [natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/natcast.md) | 251 | `result-track:b876a2597a162b9985434d803c6668cca9c7095c873fff6ca1cf119563002c46` |
| 34 | `theorem` | [ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/ofnat.md) | 255 | `result-track:1f4319671f135b823af9a82dc6d81a070d894c2f27eb50b4d9f0089a70001fce` |
| 35 | `theorem` | [ringInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/ringinverse.md) | 259 | `result-track:20b36166103b999b845e79c82d162cf81512c6fe711ab41556b1e2b55f3adcae` |
| 36 | `theorem` | [_root_.isSelfAdjoint_ringInverse_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/root-isselfadjoint-ringinverse-iff.md) | 263 | `result-track:223f6d1bafac8652d2a81cad48f66bef0b10e8c2cab5758c1194a3ee27964890` |
| 37 | `theorem` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/mul.md) | 273 | `result-track:c56daed701765218befe1e1d3c91e1eb0ef47dfcb09d1359b8342abefeeb88bf` |
| 38 | `lemma` | [conj_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/conj-eq.md) | 283 | `result-track:0f6f452b8920ff586f55a0db5b9858f30a1d880f89384903ad79bd8f5f432bf8` |
| 39 | `theorem` | [intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/intcast.md) | 292 | `result-track:62758903c5c55633fcb188b8fe7e24e987b53e2408e857a999d7eb5fbaec5ec5` |
| 40 | `theorem` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/inv.md) | 302 | `result-track:3de3bac5327fd293ac750c44845c9ea07f78e269aee5c2405d9b8ab5e1b4ec33` |
| 41 | `theorem` | [inv_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/inv-iff.md) | 306 | `result-track:78c926ef21afaf88ef66d7c6246dc3428ca84bdbe80942947b40ed223bd28042` |
| 42 | `theorem` | [zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/zpow-source-edition-2.md) | 310 | `result-track:bc08e842e8b502e4326fc3507a52d0d6fde2909cfb7eec95d41d4dcbbca9d6d6` |
| 43 | `theorem` | [inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/inv-source-edition-2.md) | 320 | `result-track:8372f11b68cc8bbb9096153ef6503595795b11b3422ee9c4214bad47ec03493f` |
| 44 | `theorem` | [inv₀_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/inv-iff-source-edition-2.md) | 324 | `result-track:d090090337616c9a2474262102ae1180d8180da21bb714ba0e9e434095677966` |
| 45 | `theorem` | [zpow₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/zpow-source-edition-3.md) | 328 | `result-track:d8546d65a0a757d59589cab9b761c18cacbeb13fc42d775785c4faa3978f8ecd` |
| 46 | `lemma` | [nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/nnratcast.md) | 334 | `result-track:b3904fdfebacbdaa8000f6dd8542186722b7bef06b8404e8916233322e075c84` |
| 47 | `theorem` | [ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/ratcast.md) | 343 | `result-track:4af99863a04bb1c51a1283e341ec0505ab0fc90a12d4695e04fc53179013dcb6` |
| 48 | `theorem` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/div.md) | 352 | `result-track:3a3381f0b189518793e2c181ce6c8976e34df92e1333507a3b903f2b67013ca0` |
| 49 | `theorem` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/smul.md) | 360 | `result-track:47a7d1743a12b4b35ac527dacca9e662a6e03eda788fc6207996f4f09025e486` |
| 50 | `theorem` | [smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/smul-iff.md) | 365 | `result-track:4be45c1d481d2e760d59b1aa79796dc1a876b25987b49421ea7abce4c1bf2e77` |
| 51 | `def` | [selfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/selfadjoint.md) | 381 | `declaration-track:4069a0568f43a14ea089932724ce1f4030a88ff3d2159f41b50329983dfabc66` |
| 52 | `def` | [skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/skewadjoint.md) | 388 | `declaration-track:d3b3c00086818d5ce797c40cceef227ed37b049bb5a8e65f8bdca6c6b9f7dd0c` |
| 53 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/mem-iff-source-edition-2.md) | 403 | `result-track:ca8606ae29be0c9912fbe49aef032ccbd8d70c6e1b18fffff765fdf5b1d02b52` |
| 54 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-val-eq-source-edition-2.md) | 408 | `result-track:cdceea132dbe854e9774aba20f8a4802feed23896d55b039f8a0b46adcd18752` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-19.md) | 411 | `declaration-track:d21f1ea6cdeca531104ed9fba0507a8da12dc65b2840871dd2022f421a582267` |
| 56 | `lemma` | [isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isselfadjoint.md) | 415 | `result-track:4dec58fd79e6069a0b4597aa6b35dfbda8887295f335a612f963c4ff885b224b` |
| 57 | `instance` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isstarnormal-source-edition-3.md) | 419 | `declaration-track:fbe27c500816dcd03ba1766ab9568344ab67300feda6f055356ae2b6dee4ff17` |
| 58 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-18.md) | 427 | `declaration-track:c6220140c81b56e567e0c619f49729a7284a0d38bdc39a11c7926fb6c487fdde` |
| 59 | `theorem` | [val_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-one.md) | 431 | `result-track:570405eded809984d4c33c343b653fb02ce811e6fcd883a2c24eefe3dbd19626` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-8.md) | 434 | `declaration-track:4899e85c79f948cdf2b4a1d929e2686a5c483439ae50dbd87ae1b3f193c10bea` |
| 61 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-22.md) | 437 | `declaration-track:e95adea6b10fc9715ad748d067c6f3ca61beb5fa4f622ba982ddf08ce29f3aa0` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance.md) | 440 | `declaration-track:08affb8ad8708eef80f50685aaaed06f898d6c4d8852a27623eb3cadac157e64` |
| 63 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-6.md) | 443 | `declaration-track:30da61917df5643baa05820821ff520c24fd85b31e262acbba78c4882b1fca86` |
| 64 | `theorem` | [val_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-pow.md) | 447 | `result-track:dac5a36b96634a32b2058e6e8b32a3406a305be269e19f80236053a48ec78d5b` |
| 65 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-13.md) | 456 | `declaration-track:7ad892c65029da2f520e79c18b4c7791ead95659ee550c4bcb2b7a004aabcf4a` |
| 66 | `theorem` | [val_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-mul.md) | 460 | `result-track:8247b999fbfb55f1e6d7f622b4ea23af57ac5676152f48ab89097bac91acaf71` |
| 67 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-15.md) | 469 | `declaration-track:83271fdb50829d09b7bb7d4be44342400a53a315f390ba3c89bd5ad434df4f80` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-4.md) | 481 | `declaration-track:1058e170e4ea6ab2c85138df619592b489edb62c441f15a924ccd42e725bbf9a` |
| 69 | `theorem` | [val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-inv.md) | 485 | `result-track:b689a9ce5b680dd46c712affbedb0d100e190d40bad014bcaf3b4a4ffb015f31` |
| 70 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-9.md) | 488 | `declaration-track:49da47f2e1296fcd4c978e56a5c069ff9b2ececb2a00fc8e6512ba24bc6c3fd3` |
| 71 | `theorem` | [val_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-div.md) | 492 | `result-track:ea52ff11a5ef206d372cbbbd789cf8ce105ba7c746d3085fab5ee9906b31b566` |
| 72 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-14.md) | 495 | `declaration-track:7bd1841dbbe0756945ec85b41d94c615bc751854c6e6d418d360bd5bcce73895` |
| 73 | `theorem` | [val_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-zpow.md) | 499 | `result-track:9b601bf1af8ec65a0a62da649006a3aceb37142ee223b4d5ac17e102fe17019e` |
| 74 | `instance` | [instNNRatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instnnratcast.md) | 502 | `declaration-track:4fa18f95897d073b546b5ee916ab973d00bf8c6d873999087409c7a8b9fc7821` |
| 75 | `instance` | [instRatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instratcast.md) | 505 | `declaration-track:74ff43ae8d4543bb97d522b96bb4f2175fc1adaeb6730c56155b6a7d83c67b84` |
| 76 | `lemma` | [val_nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-nnratcast.md) | 508 | `result-track:a4ffa2698e24464d1903ffdb2092c9062b34a07e44b4bed57ab256556f6be6b8` |
| 77 | `lemma` | [val_ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-ratcast.md) | 509 | `result-track:3b3feafbbd0eb2cfe3c24185d54ad5cb2b9fe5c0fa4feccb4ff10650c4f54fcf` |
| 78 | `instance` | [instSMulNNRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instsmulnnrat.md) | 511 | `declaration-track:9563207f900e5a35d818c85bbedb09a47bb291b4297a60585cf5f446fffd3350` |
| 79 | `instance` | [instSMulRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instsmulrat.md) | 514 | `declaration-track:844eff21fcd960d6f02726c1639408caef468fd992e9e4a129e42d08f1b8691e` |
| 80 | `lemma` | [val_nnqsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-nnqsmul.md) | 517 | `result-track:fbeaf346f3733ec6583cc3a4fead27f9a80ccc5f1621dbdaebb6c90f7066e237` |
| 81 | `lemma` | [val_qsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-qsmul.md) | 518 | `result-track:0560ace9b365f006bf8239053ee453db9e96c4384dbe3487cd541146a445779c` |
| 82 | `instance` | [instField](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instfield.md) | 520 | `declaration-track:7036c199c29b16a001f55a3832959184e2712d77ba0fc82bf4347a0ba909fad1` |
| 83 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-16.md) | 532 | `declaration-track:9a9ca8da1278f6fe979c4b10a1c9f6519f3ec39dad10462719f63c849406a90b` |
| 84 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-smul-source-edition-2.md) | 536 | `result-track:ea1ec7a8bfc8334900d018e01f51044cc5c6479ba34acdd2ead72d641f9279f4` |
| 85 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-21.md) | 539 | `declaration-track:e237af9fe839abd2a5cd49e84517f2d6cfcc2addeb7456d44b2f56f34af229ab` |
| 86 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-17.md) | 542 | `declaration-track:a0792d3bc7884c14e718902d48b51939d2bef6d55569d2eae4dc20011dbd8fc4` |
| 87 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-11.md) | 551 | `declaration-track:658c7f2e162b736405d47100655c822e076d0d0acebf675000f8f186d7a40635` |
| 88 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/mem-iff.md) | 564 | `result-track:632f9f67f4176ed2a3098539e217ecc5d74237e199cfcfaa32181ab660a7aea0` |
| 89 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star-val-eq.md) | 569 | `result-track:04511d55a62160293cdde319ef7e4c6fbac3661ab3b54a1ee21e475572f36365` |
| 90 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-3.md) | 572 | `declaration-track:0d55ad6ecb92477909fade954ed966fbf6fd80a798f3602fcf871fb2c1d9874a` |
| 91 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/conjugate.md) | 581 | `result-track:6a5ced0fa8827b2902066f4745994d44936f444c2c7e03a6f521ae1351d273bd` |
| 92 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/conjugate-source-edition-3.md) | 584 | `result-track:b9331c4cc1b545166408650899feac8ec20fda8b010088970cd0c12b67263697` |
| 93 | `theorem` | [isStarNormal_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isstarnormal-of-mem.md) | 587 | `result-track:8c717e64e8d4dabbfe97aa74fefe3a3990b384bf672751521a0b4437473847bd` |
| 94 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-7.md) | 592 | `declaration-track:390fef0be25b075fa9ce62f0693b39647bd1384376e4be46ac0244e08a3b6993` |
| 95 | `theorem` | [smul_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/smul-mem.md) | 602 | `result-track:d3868f26d435808bd33c56512d100e88efde992beda741f225206f4e15661017` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-12.md) | 606 | `declaration-track:66d33a3860b20b491b33c0a51acac306368c58163a36e9dac8a1f60eed4f85bc` |
| 97 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-smul.md) | 610 | `result-track:810a2de07c640394dd4b4d1e91d7396b6970847126ff301aae459fbdfa999ea5` |
| 98 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-2.md) | 614 | `declaration-track:09a1dbe6d254e4878b0f896bedc859cfdd4dfcf376625e97f0472cee0172100b` |
| 99 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-20.md) | 617 | `declaration-track:d7db7d3edc9acf9fdfddc4ea97fb6a8ab217c01fce6cc10f7d37f6614321d8ec` |
| 100 | `theorem` | [IsSelfAdjoint.smul_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isselfadjoint-smul-mem-skewadjoint.md) | 626 | `result-track:239b795afaa7ad7f95bab9cbb1a3f4f466dff8993f24f33d4da9ee962531b059` |
| 101 | `theorem` | [isSelfAdjoint_smul_of_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isselfadjoint-smul-of-mem-skewadjoint.md) | 633 | `result-track:7fb62c109a72b349847e29830525825e5a64b5dcdacf25c86443499ed554802e` |
| 102 | `lemma` | [Subtype.isStarNormal_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/subtype-isstarnormal-iff.md) | 639 | `result-track:28304b05042d051e8979de1b448602dc1688c70ab5adefaba22b266d4f539c11` |
| 103 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/zero.md) | 648 | `declaration-track:1253087f26ee28431e983d2be23351bde1699f21b6928aab643e535d666bd5b9` |
| 104 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/one-source-edition-2.md) | 652 | `declaration-track:c29eb0187e9037cece5f33c0f60b23f75b308482fadd2c6dba9aac77e0c8c294` |
| 105 | `instance` | [star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/star.md) | 655 | `declaration-track:51d784727d74ba16b54871689c0f6fac7ce1ce1a6dfb118d61e8fb4fb076270b` |
| 106 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/neg.md) | 659 | `declaration-track:9375217f29d9f091c117f07cdb5dd2f5730f53e48cf1bfd6e2a2fc117a593d89` |
| 107 | `instance` | [val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/val-inv-source-edition-2.md) | 663 | `declaration-track:d2b742aa8d0c1c97e480d335046efcfa49fd5170cbb7c700d3513f85b9907521` |
| 108 | `instance` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/pow.md) | 667 | `declaration-track:1012cd0c1d17a8c673aab6f34c8b71e3dcd31611e11c9b7f8c3b8e71c13ff58e` |
| 109 | `instance` | [zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/zpow.md) | 671 | `declaration-track:30cff9f3db9751009c4d8f30904001af557be45b69826db61d1048007a2ba359` |
| 110 | `instance` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/map-source-edition-2.md) | 675 | `declaration-track:a7d160bb01b328f73bdb73c90e7efa39301453fdbaab5592deebc598f420fa60` |
| 111 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/smul-source-edition-2.md) | 680 | `declaration-track:a2213742e29d2f0293473f3503216475087da8192f2492daa73b1acefb270564` |
| 112 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-5.md) | 688 | `declaration-track:2fad2497fabd87f15738c3ad3d2f957a62cd905ea6657b601b4f5516ddb510f2` |
| 113 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/instance-source-edition-10.md) | 693 | `declaration-track:4e885872cb7b9de0b7b59e995c52f0526cb0b9c9d5ca7bd5fa771332adca08eb` |
| 114 | `theorem` | [Commute.isStarNormal_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/commute-isstarnormal-add.md) | 697 | `result-track:c3623dbac5709991adef818d9055bf1d5e88f87851987f7710eb531bbb0efe0b` |
| 115 | `theorem` | [Commute.isStarNormal_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/commute-isstarnormal-sub.md) | 705 | `result-track:6b4f158c754f2fe18610854b5a3bd184501bcdb3949ec77c8bd27435acc222b3` |
| 116 | `instance` | [IsStarNormal.one_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isstarnormal-one-add.md) | 710 | `declaration-track:ade630e240deafbff835e5132b3b34c2b008d6756f151bc3b5c7bd64cf35e944` |
| 117 | `instance` | [IsStarNormal.one_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isstarnormal-one-sub.md) | 714 | `declaration-track:4ec0f1d8a9a13ae92e7521fe173a8c3716d2d71f83f6988a52105c99c30caf25` |
| 118 | `lemma` | [IsSelfAdjoint.commute_of_mul_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isselfadjoint-commute-of-mul-eq-zero.md) | 718 | `result-track:a0c1a13815406bca3f6c05ec1a114d71dabe982cd1eedb6e1d91e1770a1077f3` |
| 119 | `lemma` | [isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointPublic.lean/declarations/isselfadjoint-source-edition-2.md) | 727 | `result-track:81f5fc4462513c1f115b13fcd64e70b2ba8a30993450b9075c13bed9bfc16cc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d90f34ab661570171030c849714e5beef91d7887d9b8fc943898893ee024611d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
