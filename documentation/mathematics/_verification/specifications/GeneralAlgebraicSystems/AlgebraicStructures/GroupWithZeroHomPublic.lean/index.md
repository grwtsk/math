# Verification target: Group With Zero Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de848b1e00aaef329fb6add65a8ddb56f745d950",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de848b1e00aaef329fb6add65a8ddb56f745d950`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean.json)

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
| 1 | `lemma` | [of_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/of-map.md) | 45 | `result-track:191eef6d8e9b2740449ce723dcc888e056c51f15a3dd956da6d17651e06b8e93` |
| 2 | `lemma` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/of-injective.md) | 48 | `result-track:bb5e269f3497f64d508a5622edecf153da7b9ee9355fc9833e08b62fea17ec7d` |
| 3 | `class` | [MonoidWithZeroHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/monoidwithzerohomclass.md) | 60 | `declaration-track:34a0a12b32f45c88901cc87b23c6361dc1b2570751af0c6568c5d25a485a6a7c` |
| 4 | `structure` | [MonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/monoidwithzerohom.md) | 73 | `declaration-track:1df5eace8baa1e880023e6022fe11e4f9b45bd3418ee3fbdddb99158fd4b1b18` |
| 5 | `def` | [MonoidWithZeroHom.ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/monoidwithzerohom-ofclass.md) | 81 | `declaration-track:9df57009814ed5c2c3b56947225ec2f9fcab3532eea448b47ff55167fdb149e1` |
| 6 | `instance` | [funLike](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/funlike.md) | 90 | `declaration-track:5ed01b998a73339a8578d4bcccc5656cebd45a99e30fec8a71e23145eadbd3ac` |
| 7 | `instance` | [monoidWithZeroHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/monoidwithzerohomclass-source-edition-2.md) | 94 | `declaration-track:57ab90578ddb33e4cc8bffd01582f4bb94041fa1a9d5fca988276dc5c533614c` |
| 8 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/instance-source-edition-3.md) | 99 | `declaration-track:8311a89d278dea6b0716eb056dc9685946f2e1a027e2337c49bf630d47b6c8d4` |
| 9 | `lemma` | [coe_ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coe-ofclass.md) | 103 | `result-track:e1bdc79f401063f5d8b77ce29d876330ac610180e223a58b740b6f1b7dee0896` |
| 10 | `instance` | [coeToMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coetomonoidhom.md) | 114 | `declaration-track:5dcf58acc0525176301307d33f164e27b89b490fa257fd32634e18201e8b75f4` |
| 11 | `instance` | [coeToZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coetozerohom.md) | 120 | `declaration-track:55cf4cbe750f5cfff32e368bfc031531825d530ee131515e3d517da9fdc8f602` |
| 12 | `lemma` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coe-mk.md) | 125 | `result-track:bec4db3bc26bd310e8bf5c510905d3e6c70aa1502a8b2806694fff659130627d` |
| 13 | `lemma` | [toZeroHom_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/tozerohom-coe.md) | 127 | `result-track:aca04b88d14cbd218094f660ba85ff50f19b5880034259572b8e16944bb61ae8` |
| 14 | `lemma` | [toMonoidHom_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/tomonoidhom-coe.md) | 129 | `result-track:0f925739e29ba15f6917cb9a8dc6565a2c1af7eebe91b5a783f39cd77c094715` |
| 15 | `lemma` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/ext.md) | 131 | `result-track:c7a3c782ec24140ba6ffac35650b3200179b3f7c506a67bc3951121046faf107` |
| 16 | `lemma` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/mk-coe.md) | 133 | `result-track:934f6bbee32c01ee38e329655d3f19c127e2eba405a758bee2078085a4a0f5c6` |
| 17 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/copy.md) | 139 | `declaration-track:be99319e61989d8e6e177cf4c93ad36611c4b9c2063602de8487a77613575891` |
| 18 | `lemma` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coe-copy.md) | 143 | `result-track:76deb0b8299cb6eb188fa1bb28ce19e333b367b2a4cb888e7691c2d29b565672` |
| 19 | `lemma` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/copy-eq.md) | 145 | `result-track:63bc4d5b784e523f51ccfee280050eb766f2ef2e370cb1cd16359a9ce57efe0b` |
| 20 | `lemma` | [map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/map-one.md) | 147 | `result-track:0a715c71ce67928119a670f24285365ad03bc2283632fe306d64fe7d8c11b810` |
| 21 | `lemma` | [map_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/map-zero.md) | 149 | `result-track:a185466f154b52e5f7ebbd2b3c76235b14a3092a7da77aea5f03d5f792149f26` |
| 22 | `lemma` | [map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/map-mul.md) | 151 | `result-track:11f7b5e3ca35cd1d6ae26a4f93cc1e4de17214c38ac32dfc5fd43aa7f43a93cc` |
| 23 | `theorem` | [map_ite_zero_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/map-ite-zero-one.md) | 154 | `result-track:69ae68074268810c8a1d25877f2763810062c3cdb816166f16c66507161d4314` |
| 24 | `theorem` | [map_ite_one_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/map-ite-one-zero.md) | 160 | `result-track:767816f17153ee71b720f3294ce21602773b5fa341b3f8ec5e257807217d9114` |
| 25 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/id.md) | 167 | `declaration-track:ae8263699942f9d887b8ee9738e96be74c431e15fc84da45e3c05a6c22ed6d0d` |
| 26 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/comp.md) | 174 | `declaration-track:b1a15c13ed1dc233272780722b3013a9a13dfedc58700157687132c630e4aed8` |
| 27 | `lemma` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coe-comp.md) | 180 | `result-track:1664aed6bd171c9d0999d2901260ea5735d0b7639c185295952d74b44c6066e3` |
| 28 | `lemma` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/comp-apply.md) | 182 | `result-track:b3ecec0b2975a2235ad25aca5c55beefb773cc783af3c9967b3a7e9b5674e3f6` |
| 29 | `lemma` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/comp-assoc.md) | 184 | `result-track:6c5aa95b5018bc423fd80fbea7ad74b8708bf77a4ce058a83bb0c8634e9fb66d` |
| 30 | `lemma` | [cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/cancel-right.md) | 187 | `result-track:d5c908a56ec6f5bb5b5ba93acfb7352a0d64d4d67a7987e782ed30d3f346cb9a` |
| 31 | `lemma` | [cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/cancel-left.md) | 191 | `result-track:42602c6d3de36355289d9f11161db2e7dcc5edb631c276605fbb96e825fb900f` |
| 32 | `lemma` | [toMonoidHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/tomonoidhom-injective.md) | 196 | `result-track:dba286b5d0b46be2f99b13690c188877d1fbedd60d80fe9d31a952c06633d55b` |
| 33 | `lemma` | [toZeroHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/tozerohom-injective.md) | 199 | `result-track:e47394668627db6f126715e406fbf516ffea7b6e49c6ae852e9d486be06aa0e8` |
| 34 | `lemma` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/comp-id.md) | 202 | `result-track:439edb266ab50424318d7fb45359e034028f3bcefdbe19e56244680a9ae7c5a5` |
| 35 | `lemma` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/id-comp.md) | 204 | `result-track:6b5126944b3da442d34e4f7ce1d2e6d664bc959f94aefeb1250e3e9f3cc9b0ca` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/instance.md) | 207 | `declaration-track:0ae2d252acf1bb0d3f18ed1347eb3bc0df1581549e1c8ceb0aec3264aa92d176` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/instance-source-edition-2.md) | 211 | `declaration-track:23350fc56031896f3f96b6c72b4e6ecb8783bc474272d0ca1d84cb06822fa067` |
| 38 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/one.md) | 218 | `declaration-track:788e880f2f5ddfd4d3a9457ab6eca1ff29cf21810303e536f97437c7efb41d95` |
| 39 | `lemma` | [one_apply_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/one-apply-def.md) | 226 | `result-track:69abd86bb704195fa12fd24342d5e7eb7bc2c09f4d016daf16fa8138c55b683f` |
| 40 | `lemma` | [one_apply_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/one-apply-zero.md) | 232 | `result-track:532e895f44f2c6b087ec26b08fd159f094aab59d487ba9ad2806a3c065c2b3e9` |
| 41 | `lemma` | [one_apply_of_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/one-apply-of-ne-zero.md) | 237 | `result-track:98b231bf498445e79b7d272f5033964be8a685b52c033dd54d2cdfa32ed926ae` |
| 42 | `lemma` | [one_apply_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/one-apply-eq-zero-iff.md) | 243 | `result-track:85fd30f5df8a02159ba68c20a0e1d6fcffe4ad1037a81ba93d8d72a271fb2013` |
| 43 | `lemma` | [one_apply_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/one-apply-eq-one-iff.md) | 250 | `result-track:3c62f7172918d5728fe7aad9caf82c2ee3bc40b245277943d27d83944b72be59` |
| 44 | `def` | [powMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/powmonoidwithzerohom.md) | 262 | `declaration-track:a437cea57581b6b35d70ec5545ffdf6503e6513ddf9eee8628b3f9bf00886d4d` |
| 45 | `lemma` | [coe_powMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/coe-powmonoidwithzerohom.md) | 265 | `result-track:875e45bd70a8d7aa117e28da909901a62b9ebca4815168ab5d7c1137ae34eaf6` |
| 46 | `lemma` | [powMonoidWithZeroHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroHomPublic.lean/declarations/powmonoidwithzerohom-apply.md) | 267 | `result-track:e7b8f48ed4c47156506e4dc37756e5d598a2f4cce42ae424b7f1c3baaa776986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88b22c60e7fec933777a8ad5c936a05beb9f433579946a3062edbd287bf7ee08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
