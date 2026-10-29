# Verification target: Add Torsor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55924cd14fe1e7238c0406fab126331b211ff6f1",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55924cd14fe1e7238c0406fab126331b211ff6f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pointwise.SMul` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddTorsor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/addtorsor.md) | 50 | `declaration-track:f67046485d866b340d5a9ec0143f04030c2a749b74e3958da27a0f0e68159093` |
| 2 | `instance` | [addGroupIsAddTorsor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/addgroupisaddtorsor.md) | 66 | `declaration-track:613e77ffd844a3dd23b6a63b86fc6a23d4092825c04628ee3911dc5ebfc87142` |
| 3 | `theorem` | [vsub_eq_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-eq-sub.md) | 76 | `result-track:cdcec496182ae889ae464b18a8e96c2a0df808dc4b73ca30f05271dabb87236e` |
| 4 | `theorem` | [vsub_vadd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-vadd.md) | 87 | `result-track:24afec2305f947c2c3034ccd2c17f25fe97f064d81ced1342d72107330646395` |
| 5 | `theorem` | [vadd_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-vsub.md) | 94 | `result-track:5e1af113dee872536549f5e826ed6d399f532fc0d5334a5d64f2ef46c946c1b4` |
| 6 | `theorem` | [vadd_right_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-right-cancel.md) | 100 | `result-track:ffb7e0cb4aa42f054b5dcdf7f3c69170a97c53490e3a1d61577a225b9eca193b` |
| 7 | `theorem` | [vadd_right_cancel_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-right-cancel-iff.md) | 106 | `result-track:90c1351ced855f0c6888de669547c5eaa171a22b54876807387830814894e797` |
| 8 | `theorem` | [vadd_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-right-injective.md) | 112 | `result-track:b07d55c5d99a9e3f9eb2d24cc8de7fff147c3d51cd268eedbf3489c2614d8552` |
| 9 | `theorem` | [vadd_vsub_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-vsub-assoc.md) | 119 | `result-track:60e3cda26b78b5e2a8ed8c93793bbc9812a4998162a5f5844c487f61519c4bf1` |
| 10 | `theorem` | [vsub_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-self.md) | 126 | `result-track:77da5260b6398dee24bacd4922102c6e346aa51f40e02e600144c9a203904802` |
| 11 | `theorem` | [eq_of_vsub_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/eq-of-vsub-eq-zero.md) | 131 | `result-track:a7205e28b7c4f306bea7c7bf293a78ec235882708b7ea3e8d348639fb0155634` |
| 12 | `theorem` | [vsub_eq_zero_iff_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-eq-zero-iff-eq.md) | 138 | `result-track:d6f732278f88815fd04c88facd4130396b71fdcff94e230521ccd311462085a2` |
| 13 | `theorem` | [vsub_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-ne-zero.md) | 142 | `result-track:72b969b11e4dc76ac11282615166b65062d8725b1c4b21269e35a8931da9ed1b` |
| 14 | `theorem` | [vsub_add_vsub_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-add-vsub-cancel.md) | 148 | `result-track:25e5015991731545ad8988810ec3dcbc78ff67db38bbe3766514c63843979d32` |
| 15 | `theorem` | [neg_vsub_eq_vsub_rev](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/neg-vsub-eq-vsub-rev.md) | 156 | `result-track:d6dd711d2c5543df60aec01b706a2d76d76a2faa99fb0184f5baf7a1f7c24bda` |
| 16 | `theorem` | [vadd_vsub_eq_sub_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-vsub-eq-sub-vsub.md) | 161 | `result-track:7f7f442a885f3b6a69144586811d762224aee44ddc323215887ea76ed0b8064a` |
| 17 | `theorem` | [vsub_vadd_eq_vsub_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-vadd-eq-vsub-sub.md) | 167 | `result-track:02f405e2437bee738fa4948c582855f95acbc80663bf38c192c11f0b41307ca8` |
| 18 | `theorem` | [vsub_sub_vsub_cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-sub-vsub-cancel-right.md) | 174 | `result-track:5e7d27e6c9c1adc13e0784c7ff1787f0fc64589ebb76cfaf87911bcc8a70dbf5` |
| 19 | `theorem` | [eq_vadd_iff_vsub_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/eq-vadd-iff-vsub-eq.md) | 181 | `result-track:207456304c28426419488190e3879b2d2351c1e81858f7791bc4ff1df160dbc4` |
| 20 | `theorem` | [vadd_eq_vadd_iff_neg_add_eq_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-eq-vadd-iff-neg-add-eq-vsub.md) | 185 | `result-track:349219e85a86737232aafd18a07993182c5a4bb296368540597cae4f450c95ca` |
| 21 | `theorem` | [singleton_vsub_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/singleton-vsub-self.md) | 196 | `result-track:57c144284e848e4e5117e5a960c51673a004fe645a91b98d96aced2625f394a6` |
| 22 | `theorem` | [vadd_vsub_vadd_cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-vsub-vadd-cancel-right.md) | 203 | `result-track:d0b3059235edd3cdd614d0dd390ec43913baf5c456afe54ad4c52d39c1e9ae84` |
| 23 | `theorem` | [vsub_left_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-left-cancel.md) | 209 | `result-track:d8ead2be7d811c55c02e55136a59aae90d3192eb5c56110f8eb264cec9fd18e7` |
| 24 | `theorem` | [vsub_left_cancel_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-left-cancel-iff.md) | 216 | `result-track:00aa84f58f2a648ea2c93c6a6272b784b516ee75708f3d21542452383729dd27` |
| 25 | `theorem` | [vsub_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-left-injective.md) | 221 | `result-track:ab7c5fddad00490caad70a5ffe6d1d5b0a5a002c5f250d2c3f0e9a7e6c926f17` |
| 26 | `theorem` | [vsub_right_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-right-cancel.md) | 227 | `result-track:e248ca0529660b4c1b90464bd681610e777dd09f70828cb903e7eab55f6944d5` |
| 27 | `theorem` | [vsub_right_cancel_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-right-cancel-iff.md) | 235 | `result-track:f961b91c3c371a98ea35994058ff404358cd977fd851a8188fa8acb48ea91318` |
| 28 | `theorem` | [vsub_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-right-injective.md) | 241 | `result-track:4d2e6f2f47829ef3472fe805e4fd926df11698a6b6af3682652a5b35b4ebbd95` |
| 29 | `theorem` | [vsub_sub_vsub_cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-sub-vsub-cancel-left.md) | 256 | `result-track:6b74fd9bbb3177d9234da51f1c47cf51ccf311ef8aabadbd10e3ae9c49d534f7` |
| 30 | `theorem` | [vadd_vsub_vadd_cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-vsub-vadd-cancel-left.md) | 261 | `result-track:97ca718dd2f3c49e0f657e37c0f7204eca4e88602182f692c9073436adb82702` |
| 31 | `theorem` | [vsub_vadd_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-vadd-comm.md) | 265 | `result-track:86f102427fd5eb76be6627accf69a004f5da9012a6af9af133247005738f0d8a` |
| 32 | `theorem` | [vadd_eq_vadd_iff_sub_eq_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vadd-eq-vadd-iff-sub-eq-vsub.md) | 270 | `result-track:acea930facc270540b65f7e3439b2dd4554f58ef603277a1d31b8318e3efae11` |
| 33 | `theorem` | [vsub_sub_vsub_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vsub-sub-vsub-comm.md) | 275 | `result-track:2a2387eeadd173accafc2115f1167d28bc9f8b6dc54b77c017a36f02bbe82be7` |
| 34 | `instance` | [instAddTorsor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/instaddtorsor.md) | 285 | `declaration-track:d620e71ef8aff18aa0aabef46c90aeaf8d8311695e77841b8849143aba3a049d` |
| 35 | `theorem` | [fst_vadd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/fst-vadd.md) | 304 | `result-track:6101f20614a9d0652c8c5f90a2a762f6ffcb84325360dac59f87105b15250841` |
| 36 | `theorem` | [snd_vadd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/snd-vadd.md) | 309 | `result-track:020d61f043c7c73058671fd3847a15a8d6faa3dfa1bb1c599ffc97b97705f727` |
| 37 | `theorem` | [mk_vadd_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/mk-vadd-mk.md) | 314 | `result-track:a9528ffc0d6d654ccc9d1c61c906ab0e528972413e33dd5382a97fa69fdfe7a1` |
| 38 | `theorem` | [fst_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/fst-vsub.md) | 319 | `result-track:22019cb8dc8d8b2964538ff9ad3c65cd0fc4f8fd85d3f11c0e27b5cb1e38e629` |
| 39 | `theorem` | [snd_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/snd-vsub.md) | 324 | `result-track:edea38ad70375484ec733f85e111c3a0f8e79a032c14358479270696c3cfede5` |
| 40 | `theorem` | [mk_vsub_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/mk-vsub-mk.md) | 329 | `result-track:052c56a4b3d9e8638bc4f1f51b54031cf8a2dc402137fb4adfb6f4cbdabc3bf8` |
| 41 | `instance` | [instAddTorsor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/instaddtorsor-source-edition-2.md) | 345 | `declaration-track:f4e9b520abb6fea90fe23985eb74e4d5223f71722b7c2b405fe4637d18619774` |
| 42 | `def` | [vaddConst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/vaddconst.md) | 364 | `declaration-track:c35b8e6297ad384b48f66a0be41bc3b9e414a08d44275d9fef081286a64890b8` |
| 43 | `theorem` | [coe_vaddConst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/coe-vaddconst.md) | 372 | `result-track:9126604278f406771ab9855596c302ecec42b756d3edd464a559f79bb9d1fcb7` |
| 44 | `theorem` | [coe_vaddConst_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/coe-vaddconst-symm.md) | 377 | `result-track:64193e229bb1026cf4b0ca01f8f4c995593d14f2d32a3db7c67cc83a7088ce1e` |
| 45 | `def` | [constVSub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/constvsub.md) | 382 | `declaration-track:50fb1202ab897fd02bfd39944cf9ba0c4744ed4bd764ca5a0f8c888144927a55` |
| 46 | `theorem` | [coe_constVSub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/coe-constvsub.md) | 390 | `result-track:876fa9bd55bf010e7f5096d0cbb20e5d0b6fda435ee7ee8e730bb65b9b80dce0` |
| 47 | `theorem` | [coe_constVSub_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/coe-constvsub-symm.md) | 395 | `result-track:ac7da3bc6cbd608944e57e1f8a5978132e0f9c086044648ba49234f79d7ef89d` |
| 48 | `def` | [constVAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/constvadd.md) | 402 | `declaration-track:260d3a68818b13de181140400ccf68fb04d4b4b7527d8a6c3281bd7270fef11c` |
| 49 | `theorem` | [coe_constVAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/coe-constvadd.md) | 410 | `result-track:623395acdc2193166a5ea22f6643d2c439068e3352f5ed787732fe6b4d9cb8dd` |
| 50 | `theorem` | [constVAdd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/constvadd-zero.md) | 417 | `result-track:00a59b3442fead1ab5042b3f92f34ae59799762bf0ce4fd2cef983a9cc204aa2` |
| 51 | `theorem` | [constVAdd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/constvadd-add.md) | 424 | `result-track:359c8510227de4a6557386b4a0c2fc03571b6d2241fc93d18353237f3ce6a00b` |
| 52 | `def` | [constVAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/constvaddhom.md) | 429 | `declaration-track:e9a7326b9dea0e022f3b2b9f503a76077871b396b51b8d3f703671a4debab65a` |
| 53 | `def` | [pointReflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection.md) | 442 | `declaration-track:bb68c753eb6c3fe1795c504a6ea7b029c440d2228aedf69857ae0e0717f9b536` |
| 54 | `theorem` | [pointReflection_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-apply.md) | 446 | `result-track:7610819d2a022bc0a8529edb8144b19e6e0c2a6f9d804928812efaa27296ea1f` |
| 55 | `theorem` | [pointReflection_vsub_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-vsub-left.md) | 451 | `result-track:f7b52dc8621bfeb5d2cb4c63b85206a9be6c75a78ff7fd85b00ef456ce9c6e23` |
| 56 | `theorem` | [left_vsub_pointReflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/left-vsub-pointreflection.md) | 455 | `result-track:8ccbe7486ff03e1af142b369dfaf838ec18972c8d062e1769313e2132e10ac5b` |
| 57 | `theorem` | [pointReflection_vsub_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-vsub-right.md) | 459 | `result-track:27bd35bba8f63381b9e8c19dde889f2448e60b60929a753d7539b2dc20e36038` |
| 58 | `theorem` | [right_vsub_pointReflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/right-vsub-pointreflection.md) | 463 | `result-track:3e1f9b7006eb70d16c96cd12b3803cc8421d64e9cbfd48decbadaaccb7216d95` |
| 59 | `theorem` | [pointReflection_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-symm.md) | 467 | `result-track:b980f76410d3b605a68155a7abd450f63316d48c10129638f8ea3ba44300788f` |
| 60 | `theorem` | [pointReflection_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-self.md) | 472 | `result-track:56bc370ebbc317a4b0480ca8ccc89a5fcaef718100085ab29d75ad860fae6e31` |
| 61 | `theorem` | [pointReflection_involutive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-involutive.md) | 476 | `result-track:823dc29579184e2de708633ea16a5abf5294d6f541e3c25d514a17d8bc8801e0` |
| 62 | `theorem` | [pointReflection_fixed_iff_of_injective_bit0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/pointreflection-fixed-iff-of-injective-bit0.md) | 483 | `result-track:b75b770e71ca97a37c53587547de64974969aa1fdd9a4bb9bed23bdd38d8907f` |
| 63 | `theorem` | [injective_pointReflection_left_of_injective_bit0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/injective-pointreflection-left-of-injective-bit0.md) | 493 | `result-track:7a2bfdaac4959eb658170eaa6d4dd3812aad7c1a30e24aac4ae66d730b8fa66f` |
| 64 | `theorem` | [AddTorsor.subsingleton_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsor.lean/declarations/addtorsor-subsingleton-iff.md) | 504 | `result-track:c5706fb23d2968a32b4f1386917a3ba9d03335ae8a497f534897baa6013cc6a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a5ecb04c54492c36c8228f1c8aa5c09dd5ae2692ee55d3ede4e136a673f9204 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
