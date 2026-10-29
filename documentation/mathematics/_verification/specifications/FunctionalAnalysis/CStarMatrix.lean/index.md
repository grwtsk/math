# Verification target: CStar Matrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d17c6d95a7ed842d8ad84e2af08ce4819124a599",
  "lexical_observation_count": 149,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarMatrix.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d17c6d95a7ed842d8ad84e2af08ce4819124a599`.

Source path: `GRWTSK/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Module.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CStarMatrix](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/cstarmatrix.md) | 40 | `declaration-track:596598eaef4445e5ef4e32dc723cae482038dcf710b4aedcfee1a779f32f04b2` |
| 2 | `def` | [ofMatrix](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrix.md) | 50 | `declaration-track:3c9e37b4713db790a24210d67afaec5a2d02ee080294fb05e83625e0a83caa7f` |
| 3 | `lemma` | [ofMatrix_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrix-apply.md) | 53 | `result-track:9c86996fbf76b5e4af46dab037317772499a5f788d5bcad57c50cb0d6639d277` |
| 4 | `lemma` | [ofMatrix_symm_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrix-symm-apply.md) | 56 | `result-track:04988520b94087fdca9507b5f4226ddafaf667d69ac028ad79a45b26a7a08ba5` |
| 5 | `theorem` | [ext_iff](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ext-iff.md) | 58 | `result-track:ac1022521421ee15941d7e70c78d0de3364ddc82fa0e756c18ddd7bb720c1811` |
| 6 | `lemma` | [ext](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ext.md) | 62 | `result-track:8ec8acdd21140ed5a60b287e80604a3551d1dd0ad6a9e432a2a110f05df1d06b` |
| 7 | `def` | [map](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-source-edition-3.md) | 65 | `declaration-track:aa45047060ae563d55f336183d53ca1afe5bf611db965002f1c8353bc7b3b2bd` |
| 8 | `theorem` | [map_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-apply.md) | 69 | `result-track:b772665c10799021c520b3afc356046f95e14daa9826e37c4523f3d73016e01a` |
| 9 | `theorem` | [map_id](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-id-source-edition-2.md) | 73 | `result-track:ea6477919901ff59946281db9ba17111e12bf0b4158c071fe1c79862baf90b78` |
| 10 | `theorem` | [map_id'](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-id.md) | 78 | `result-track:23753fc8a805b80fb4b31fff68dc34370dff728ddd74ce00390918516997a512` |
| 11 | `theorem` | [map_map](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-map.md) | 80 | `result-track:8f5b473808c9435b3314e4d737b6eb8a6ab75c9b69a18fdd3af130fd6d821a6c` |
| 12 | `theorem` | [map_injective](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-injective.md) | 83 | `result-track:28e077da00278912f949cb4ff8763b5b91c0a2d52e8a9ad4f4f39f0223e0e857` |
| 13 | `def` | [transpose](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/transpose.md) | 88 | `declaration-track:d435c2f083d6b6f1ed72198316fdc81be866987fc78ad2bd077a3cb153ef635e` |
| 14 | `theorem` | [transpose_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/transpose-apply.md) | 92 | `result-track:d39d3d020e82cfce8ee018d64952c163170b10741747eb28866276ee5b1cadfe` |
| 15 | `def` | [conjTranspose](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/conjtranspose.md) | 96 | `declaration-track:b85cf056aa524b01fa3cb5232b116ece98a5f317e6b1a98af0d554b7b4f227db` |
| 16 | `theorem` | [conjTranspose_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/conjtranspose-apply.md) | 100 | `result-track:21768c3b2c0b7aa7fd84324d6fa93718354f821462ec2ff177e30c2a8b544515` |
| 17 | `instance` | [instStar](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inststar.md) | 103 | `declaration-track:dc5448e5141d4b63472842570ac94bbb826bdd2f19d100fb300905fcb694c8f4` |
| 18 | `lemma` | [star_eq_conjTranspose](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/star-eq-conjtranspose.md) | 106 | `result-track:472b185207984751fc85b1764be8b45bc4e9d7175e338c0492eb8a4208c1842c` |
| 19 | `instance` | [instInvolutiveStar](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instinvolutivestar.md) | 108 | `declaration-track:09b49a390a0ffb4458166e3c45527af332a5275e1593c397604b53955fe248f0` |
| 20 | `instance` | [instInhabited](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instinhabited.md) | 111 | `declaration-track:0244f5f5609e6674691ed37839cee25a5aea6eb699a3bb474a647a3efd510a95` |
| 21 | `instance` | [instDecidableEq](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instdecidableeq.md) | 114 | `declaration-track:d5fc1f98721c14a252d1f1717ef893e9fe932872095afb2be3a26f0283bbacfd` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:622e7f603d89d879d1fc476172c1a175d169268b4f28d34d57a349452d474b88` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instance-source-edition-4.md) | 121 | `declaration-track:dc2c229eeceeb42a47b1fa0ef307e099f9e3939c1638d2716f863c1646d2556b` |
| 24 | `instance` | [instAdd](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instadd.md) | 124 | `declaration-track:6c66a2e4e26ec8609c8f199a5f6885d1e2704574230f4613768290c5fb8eb6c1` |
| 25 | `instance` | [instAddSemigroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddsemigroup.md) | 127 | `declaration-track:d66b0fba214a9f13fe84b2493d4556108c680fc47c3680f009d83570a5a983d1` |
| 26 | `instance` | [instAddCommSemigroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddcommsemigroup.md) | 130 | `declaration-track:b61075f879ec50b80323528f4a4de8aa9cd3afab7936165ba02ec21b029e649e` |
| 27 | `instance` | [instZero](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instzero.md) | 133 | `declaration-track:88cef2667bdf8592e090581f28e2b4902d2c973c392d1dc31b8076dfc654234f` |
| 28 | `instance` | [instAddZeroClass](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddzeroclass.md) | 136 | `declaration-track:38b961c8613faae7c607ca824b24915d3681c6fc57a82de87ddee80d873e4ee2` |
| 29 | `instance` | [instAddMonoid](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddmonoid.md) | 139 | `declaration-track:cc420eff8f16ca0151d658033b0a1f4734aadc2f9264d12fe1d90d9dca50e906` |
| 30 | `instance` | [instAddCommMonoid](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddcommmonoid.md) | 142 | `declaration-track:db0979cb5432d1a192eb5b428638c0c95bfd51ab0afc07e6cd6ff0deff936a8d` |
| 31 | `instance` | [instNeg](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instneg.md) | 145 | `declaration-track:53f9202c1d5b3138ac41d9c6291b082add8f6b018fb214c53b915a74f70f0c6b` |
| 32 | `instance` | [instSub](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instsub.md) | 148 | `declaration-track:8985d79ea29f37f5be0f4f191eaa6e1e55a8f6db0feea84b92525338cdf091a4` |
| 33 | `instance` | [instAddGroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddgroup.md) | 151 | `declaration-track:006197e088b3d21045d0e2b39d09ea955182ffa70a4ee659ef80e4239b230147` |
| 34 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddcommgroup.md) | 154 | `declaration-track:07796a1a7072595bf30facc9b7929834d60bccda22933a4e9a8e7b53f85da78a` |
| 35 | `instance` | [instUnique](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instunique.md) | 157 | `declaration-track:ce64bde127649b40ff1dbfc71cb8c2848dffe426707db825ded1e0cd946fe9ba` |
| 36 | `instance` | [instSubsingleton](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instsubsingleton.md) | 160 | `declaration-track:e36da11c3defb3c28abc18f8ae763263274ba2377f6e3e590db5a65b91e0352e` |
| 37 | `instance` | [instNontrivial](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnontrivial.md) | 163 | `declaration-track:c6451e7cedf763eb7045a9092785a3737bf6224164930641466e85d09e19e258` |
| 38 | `instance` | [instSMul](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instsmul.md) | 166 | `declaration-track:df282f9ab4aefc61f305b9246f4a160067404fe3d47d5be19ad770c3d2ed5459` |
| 39 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instsmulcommclass.md) | 169 | `declaration-track:ef0fdac48c7a3c68af40607435ea9ce628fa767f876f35051586cc80c7f9c013` |
| 40 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instisscalartower.md) | 173 | `declaration-track:7ee5faae6ea5de3f67f2d7d636e297ada1b4e430e3597d8371fa8670b34e7258` |
| 41 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instiscentralscalar.md) | 177 | `declaration-track:10c686b9fb78a6409af5d22f437e5af2401fbe720c1a946776f6ad7441b3004c` |
| 42 | `instance` | [instMulAction](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instmulaction.md) | 181 | `declaration-track:2548414bcdfdabd374a2dbcdb99ddfa8f2ea10e6b64e80f0d33991de4a145bff` |
| 43 | `instance` | [instDistribMulAction](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instdistribmulaction.md) | 184 | `declaration-track:f043a5f28c4e1f5eb569c2f015f405b3d5fc142f76253c82e68223ef730db8e3` |
| 44 | `instance` | [instModule](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instmodule.md) | 188 | `declaration-track:bd65e36707296f61a8f74cb670be0b63db2c8b7d60f8ab87b44cc2d2ca868093` |
| 45 | `theorem` | [zero_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/zero-apply.md) | 192 | `result-track:06a0917b624bd158f9b6fa0473d74fcb3a512b8478225a20164c27bbfcbbbfe0` |
| 46 | `theorem` | [add_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/add-apply.md) | 194 | `result-track:7aeb06c3bf7a92ac6bba42288697f596c9d7c85347d95843cdf1abe374a8624f` |
| 47 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/smul-apply.md) | 197 | `result-track:1ed775e5ffce93455761c626c69d07bcd476677b97f3f6a13dbaa8d519a0eedd` |
| 48 | `theorem` | [sub_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/sub-apply.md) | 200 | `result-track:6094f398430fef3a819b492db8e4fe605ceef5b99c727891a6fe9a7ea5fd1b17` |
| 49 | `theorem` | [neg_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/neg-apply.md) | 203 | `result-track:39d99d2bf8c61744dee3724a51c411562769b4d6308af825575cc03d1bd67389` |
| 50 | `theorem` | [conjTranspose_zero](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/conjtranspose-zero.md) | 207 | `result-track:a0d427ba36137ba112ae56bb2cdf7400acbf13c9665d9fa70abffeccdbf937b2` |
| 51 | `theorem` | [of_zero](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/of-zero.md) | 212 | `result-track:10531ac4718468a8932f3b1aaeeed384df10041877f6a680a6620247d28cd466` |
| 52 | `theorem` | [of_add_of](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/of-add-of.md) | 214 | `result-track:cf491a49eeb0784023c0688280610f1079d6a84da6260903c872c4bfc2c81aae` |
| 53 | `theorem` | [of_sub_of](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/of-sub-of.md) | 218 | `result-track:229cb9b1fc8486b3ae3a9074e030174d3d9e0b3be16954f1ecdd4cc674411c1e` |
| 54 | `theorem` | [neg_of](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/neg-of.md) | 221 | `result-track:06436b159be0bd9a13e979b3c451429dd5f61ef45e024eee7eb118d26cc94c43` |
| 55 | `theorem` | [smul_of](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/smul-of.md) | 223 | `result-track:30b5ea6fc62ee76789346ca4d01a97dbb50a4302e52386dcc1c64ab7179d0323` |
| 56 | `theorem` | [star_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/star-apply.md) | 226 | `result-track:504ef56b051b619f59284c41b4b70981eb3e4745b1c112b71ffc434798a82bbc` |
| 57 | `theorem` | [star_apply_of_isSelfAdjoint](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/star-apply-of-isselfadjoint.md) | 230 | `result-track:e5aaddc11d840dcf9ab7d5a018d2541b8b708cb14c8baa4d7c9d3953e8cacce6` |
| 58 | `instance` | [instStarAddMonoid](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inststaraddmonoid.md) | 234 | `declaration-track:99f641846a34841d2a4f679ad952b7da8ebd50a71ef43ffbb6a3e7b3775aa7be` |
| 59 | `instance` | [instStarModule](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inststarmodule.md) | 237 | `declaration-track:b1e55d77fbf9c7cb0db9616ff96ea2eccfbad193e82c6ec1281b4731df252ca2` |
| 60 | `def` | [ofMatrixₗ](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrix-source-edition-2.md) | 242 | `declaration-track:6c88b79f305755551b68cd4938893b83ef992993a164a71e78ba4b4ea8e0266c` |
| 61 | `def` | [mapₗ](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map.md) | 247 | `declaration-track:18d2ab67f3a55e30bf55a2fce49bd90d7ef5ed0affee48cfffe5cc549c34d7d0` |
| 62 | `instance` | [instOne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instone.md) | 257 | `declaration-track:ecd00919654ec2e9115207a14cfd4c67bf02c87816fcabe6a25de417587a280a` |
| 63 | `theorem` | [one_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/one-apply.md) | 259 | `result-track:4c3ea4cb71070ce5cd985cf5fc5676fcd152fe3691cc3729517cab883982112f` |
| 64 | `theorem` | [one_apply_eq](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/one-apply-eq.md) | 262 | `result-track:43aa4f911d20a4bba13d218fba19e2a6be0160ebc479beef51ac9676ee59210a` |
| 65 | `theorem` | [one_apply_ne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/one-apply-ne.md) | 264 | `result-track:b88db52a9ff5052a2df5297beaac619a1013df751b64784f57fe56ccc392c50b` |
| 66 | `theorem` | [one_apply_ne'](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/one-apply-ne-source-edition-2.md) | 266 | `result-track:cb9860310b3321d55ea01097a44991f414fe989e67f62bc4ef7d4118a2950d75` |
| 67 | `instance` | [instAddMonoidWithOne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddmonoidwithone.md) | 268 | `declaration-track:1e0ead5f090c3aebaf88ce89e2c31e9a741e4b50d5b452081640954b8a7865b7` |
| 68 | `instance` | [instAddGroupWithOne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddgroupwithone.md) | 270 | `declaration-track:c96840bab13363f1bea2bfe9a7889ce35c147628b725d44259051c0d5d14c2b0` |
| 69 | `instance` | [instAddCommMonoidWithOne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddcommmonoidwithone.md) | 274 | `declaration-track:b812941902d2828f1900d8f64a41af975f683521d520561b2453413cf6bc8b60` |
| 70 | `instance` | [instAddCommGroupWithOne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instaddcommgroupwithone.md) | 279 | `declaration-track:5525bf5f3a4b9af453f4481d3fcdb5e2d50e61484a6bcc704d7308d9a1d60977` |
| 71 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instance-source-edition-2.md) | 287 | `declaration-track:2cce3105bacc969e056504a9323a6fa1a87b5c8a759d0519e88e0833048b2b34` |
| 72 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instance.md) | 291 | `declaration-track:1e493735006e7c9ef88e8d1e7aafcfcd6c2766260ad20f9bedd370b29ac5fed4` |
| 73 | `theorem` | [mul_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/mul-apply.md) | 295 | `result-track:32861001a72ca915c51722988a18dfc64732b665883f14f21c86f89d3510d533` |
| 74 | `theorem` | [mul_apply'](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/mul-apply-source-edition-2.md) | 298 | `result-track:b047eccf5118f0ed7df46db8802e1a714f768b9f91887186d85eaba023d813bc` |
| 75 | `theorem` | [smul_mul](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/smul-mul.md) | 302 | `result-track:42c61f63118e87cde71f22012bc749349098cee73a09d00e9290ec0f00ac4544` |
| 76 | `theorem` | [mul_smul](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/mul-smul.md) | 306 | `result-track:f3465bd3ca7716dad0cd5f578959f292cfd1cba2c8189e17e452ac8a9d127aad` |
| 77 | `theorem` | [mul_zero](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/mul-zero.md) | 311 | `result-track:470311861f95a0bc500b6f521196a2c56a298c75b37f45fb39f6ab2f3a27bf9f` |
| 78 | `theorem` | [zero_mul](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/zero-mul.md) | 315 | `result-track:84252cc995c4f9bff6ea9649919148dff52f6a90d8230e26f4d89566b8ff3b9f` |
| 79 | `theorem` | [mul_add](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/mul-add.md) | 318 | `result-track:b6db96a27e6f38ae9a5cb2f1391e5fa7aaf80366bc6270cab9872d1e5b0c4335` |
| 80 | `theorem` | [add_mul](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/add-mul.md) | 322 | `result-track:0484c446202f9e521f1dfc409e5c8f4790c597d980417a1b4fdbb5f1ee050fb7` |
| 81 | `instance` | [instNonUnitalNonAssocSemiring](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonunitalnonassocsemiring.md) | 326 | `declaration-track:be0508d112cc8c0000d1ee616d776135545a32950bab6f9aa4f1e342aef269c9` |
| 82 | `instance` | [instNonUnitalNonAssocRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonunitalnonassocring.md) | 330 | `declaration-track:893f45e754cd5ec3f36be226ca427268e09931ecb011051093ed983dabe187d4` |
| 83 | `instance` | [instNonUnitalSemiring](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonunitalsemiring.md) | 334 | `declaration-track:7566b7b1eef6e65e09c12b036d0627c1151e488b8e80a46b8d859c40bcf7e0e2` |
| 84 | `instance` | [instNonAssocSemiring](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonassocsemiring.md) | 338 | `declaration-track:7b6aa919e15aad241b985817623b3873f3ab32e6d5e3887432981a564a101b82` |
| 85 | `instance` | [instNonUnitalRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonunitalring.md) | 342 | `declaration-track:880353933c73ae31461fc57717b5fc57d334b43222010ca62f05ec29b9b61ea3` |
| 86 | `instance` | [instNonAssocRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonassocring.md) | 346 | `declaration-track:fa1fc927f9ab8704a5963d147c26e63858f9b70aaa1eb3f20dbb30eb7f6033f4` |
| 87 | `instance` | [instSemiring](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instsemiring.md) | 350 | `declaration-track:5b63acbaf3768de1be30b33d9b3f8b936454db760dc30a8ba285b57312615da6` |
| 88 | `instance` | [instRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instring.md) | 354 | `declaration-track:946c51b2a35dfa758dd34da654a2b3b0ce88e149e310df2f34872ec7e93bab38` |
| 89 | `def` | [ofMatrixRingEquiv](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrixringequiv.md) | 358 | `declaration-track:51cd73d48caf6bfcc06b88ec79204dff3411f5bfab1d5656f8a5f47772bd81ef` |
| 90 | `instance` | [instStarRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inststarring.md) | 364 | `declaration-track:f7e46f675bf2175df09a06876b2277431670be330a406e499b40e44901d2eafe` |
| 91 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instalgebra.md) | 367 | `declaration-track:a176327166f10135c224d45d3b94a56e42fd9523b28394d8618e559f67bdd675` |
| 92 | `def` | [ofMatrixStarAlgEquiv](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrixstaralgequiv.md) | 371 | `declaration-track:56f10c31638e897eba7ede2233481a4dcca8c17f5bd39d140e43de3ad38c9a1b` |
| 93 | `lemma` | [ofMatrix_eq_ofMatrixStarAlgEquiv](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrix-eq-ofmatrixstaralgequiv.md) | 377 | `result-track:1f36eaa72a9cad446f156fd6eb2004f61ff59bb7487d4dae9ff64acdb0ca5e06` |
| 94 | `def` | [reindexₗ](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/reindex-source-edition-2.md) | 384 | `declaration-track:fd62fe40404356ffeb3c5d3fd20dbdaa7b74a590031a5e6aa19b174d7a490c71` |
| 95 | `lemma` | [reindexₗ_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/reindex-apply.md) | 391 | `result-track:2e54c31073cd85ed1b79b141003da06918d0ba42d4ea6111db7404c026aa66b1` |
| 96 | `def` | [reindexₐ](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/reindex.md) | 397 | `declaration-track:a2309a965244b5ed5dc2a85c2dd958a2c7cb16aed896a67dd02f29e3d2cf849e` |
| 97 | `lemma` | [reindexₐ_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/reindex-apply-source-edition-2.md) | 416 | `result-track:f3cd51fa22f308bb87473e8d4beecdd0f48bc8f1c39a5cb987a59162d05c2525` |
| 98 | `lemma` | [mapₗ_reindexₐ](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-reindex.md) | 420 | `result-track:a605cbf5b538ed3bf8580e11e216dfcd31a7ef5c34515a49b715d3d128c0a93f` |
| 99 | `lemma` | [reindexₐ_symm](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/reindex-symm.md) | 426 | `result-track:79409c3f3474b11607cec4ba9a1b3069b58aef22695ebf9285777ed15a2c87c9` |
| 100 | `def` | [mapₙₐ](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/map-source-edition-2.md) | 433 | `declaration-track:49021a3125f5a3a8d7343c06e738e3f8d165eb534ba0f62e1510f913a065fa69` |
| 101 | `theorem` | [algebraMap_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/algebramap-apply.md) | 447 | `result-track:8da348812ec2fee8d8f162999300f4e32e882e5a07ba5d396f8baa672898f82b` |
| 102 | `def` | [toOneByOne](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toonebyone.md) | 453 | `declaration-track:5fc4491ac36fcece03d9decc6541835798aec30ee87800b6b04629e02eb69470` |
| 103 | `def` | [toCLM](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclm.md) | 472 | `declaration-track:e0ba0dd2097f378fce2930bffca63931ca55c1026acf6896f22377454c8f7d85` |
| 104 | `lemma` | [toCLM_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclm-apply.md) | 494 | `result-track:4abb1cb689ca04f51e3c4cee0ad22deb7f28029da993541ae81d04e5f490054b` |
| 105 | `lemma` | [toCLM_apply_eq_sum](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclm-apply-eq-sum.md) | 497 | `result-track:fec829466c60694d40c7cbd80f5b6512fc611886f5ae410893055513b8cf429c` |
| 106 | `def` | [toCLMNonUnitalAlgHom](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclmnonunitalalghom.md) | 506 | `declaration-track:332a40e92d27a979e2f2b56d81871b861f8991bd391aeb3e68878490308e0e65` |
| 107 | `lemma` | [toCLMNonUnitalAlgHom_eq_toCLM](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclmnonunitalalghom-eq-toclm.md) | 518 | `result-track:978bce06dd78761c93db139fcf5c76cd27ae3eeda1fc2a53c2b08635f52697d9` |
| 108 | `lemma` | [toCLM_apply_single](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclm-apply-single.md) | 523 | `result-track:ae15e96a7e5d7f253bacec3644e5e621a434a2055cc00884a58c26cc4ca5edfd` |
| 109 | `lemma` | [toCLM_apply_single_apply](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclm-apply-single-apply.md) | 529 | `result-track:42b23233d1cfbdaa87b6b5364156dc11a87bcf90da6a68da9a27f9ceee429adf` |
| 110 | `lemma` | [mul_entry_mul_eq_inner_toCLM](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/mul-entry-mul-eq-inner-toclm.md) | 533 | `result-track:bbefe213cb8dc28056696516fa697790924bfa4a2c18dbfabbc64f150c82cb57` |
| 111 | `lemma` | [toCLM_injective](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/toclm-injective.md) | 539 | `result-track:e46d8cc1e8d968a979638759eae3469276c6ea749109e7406e3b80656e1d9b2f` |
| 112 | `lemma` | [inner_toCLM_conjTranspose_left](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inner-toclm-conjtranspose-left.md) | 551 | `result-track:22e003f124506f5cee3cd77bc9b5974364a61499537e94f4980780d3d77f20b9` |
| 113 | `lemma` | [inner_toCLM_conjTranspose_right](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inner-toclm-conjtranspose-right.md) | 558 | `result-track:1b5ff9ae36074c52a638c85e5a295a6d745798081b09f4814ab081e456e203f3` |
| 114 | `instance` | [instNorm](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnorm.md) | 564 | `declaration-track:8d2f85e5d0ad9182f0992504c244bdfec0a732fffbf94a3c4263502bf4a5a24e` |
| 115 | `lemma` | [norm_def](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/norm-def.md) | 567 | `result-track:6773878f3609bd1c41a9f0de9aa1427ee4de6bfa18caf7e77ed3ce45bf016a83` |
| 116 | `lemma` | [norm_def'](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/norm-def-source-edition-2.md) | 569 | `result-track:f9c692e402facdd470d5e05c4980939b57ef034d478eeb97ee2ea4894bf1cdb2` |
| 117 | `lemma` | [normedSpaceCore](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/normedspacecore.md) | 571 | `result-track:356bd7fc29641c7ca21ca3e940d2139f772e30933bfe15b6986dacb0246ba807` |
| 118 | `lemma` | [norm_entry_le_norm](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/norm-entry-le-norm.md) | 579 | `result-track:aade6d9a78cfc37d1028fb2914d470980039d34108e22b9f612f8fa4023fb2d1` |
| 119 | `lemma` | [norm_le_of_forall_inner_le](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/norm-le-of-forall-inner-le.md) | 592 | `result-track:5fb4640849df1bb9138341a5173fdbf6589c4db1cc0d7dd91f5a4843764dd1e6` |
| 120 | `def` | [normedAddCommGroupAux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/normedaddcommgroupaux.md) | 625 | `declaration-track:89e9eaa1b42c14c115d80c2ab591ad5f8282dfbdb050e669ee9a033eec0f9d71` |
| 121 | `def` | [normedSpaceAux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/normedspaceaux.md) | 630 | `declaration-track:40d1cc5708da7624fac25b3d9b3786f2a199fee580228c009336cea4a5b6d1d1` |
| 122 | `lemma` | [nnnorm_le_of_forall_inner_le](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/nnnorm-le-of-forall-inner-le.md) | 638 | `result-track:f21ed722519d8b4490515ab1ea57246bd67a3059fa5274709ec4ed39ae284226` |
| 123 | `lemma` | [lipschitzWith_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/lipschitzwith-tomatrixaux.md) | 643 | `result-track:e8914e5b7564c8f9cd2c0a539a8b73e13c06a0b41ce1e7a5da4f004dbf80d1b1` |
| 124 | `lemma` | [antilipschitzWith_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/antilipschitzwith-tomatrixaux.md) | 650 | `result-track:6df31fe39f8cb9eb6524765fb77465a1755cd7b63c818e988ed0d538ef8719a4` |
| 125 | `lemma` | [uniformInducing_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/uniforminducing-tomatrixaux.md) | 672 | `result-track:04d69ebfd44412ead7b1a0f1966258741cb55a507f1bd7521abc767cb0708702` |
| 126 | `lemma` | [uniformity_eq_aux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/uniformity-eq-aux.md) | 677 | `result-track:6990dcbe1b31f3c0e6039dad025cc4b744278d1785173547e97013de9285a2e6` |
| 127 | `lemma` | [cobounded_eq_aux](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/cobounded-eq-aux.md) | 688 | `result-track:7a75a23ac1db2cc2cc0baf785a5de5defa0df0ea17825f7b6bdab14265577222` |
| 128 | `instance` | [instTopologicalSpace](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/insttopologicalspace.md) | 708 | `declaration-track:dc3a514fb0dfffbb5e3fec40f05c482cbcf8a7055efb8bb076dd96044204b0a6` |
| 129 | `instance` | [instUniformSpace](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instuniformspace.md) | 709 | `declaration-track:cdf70d525c88c4559c77e3af8fba663bcadb1c35b4b311658a555d10ddf5eaf1` |
| 130 | `instance` | [instBornology](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instbornology.md) | 710 | `declaration-track:9fdc85e064ad6898b94cbc7b8ac84100e90cd085650e1ed0b382791d5a16a32c` |
| 131 | `instance` | [instCompleteSpace](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instcompletespace.md) | 711 | `declaration-track:0d04db924bb7ab3a8883b6945f87913feb4d04798c683cd5c6fa120e68e7e571` |
| 132 | `instance` | [instT2Space](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instt2space.md) | 712 | `declaration-track:28e04686713f0adc213b9e095177982fca2d277686ee6e0002e0b6f699369fe4` |
| 133 | `instance` | [instT3Space](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instt3space.md) | 713 | `declaration-track:fe10566805897132183bf60e23671b690dabb5cf9773d58e6b8e87ff04f91efc` |
| 134 | `instance` | [instIsTopologicalAddGroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instistopologicaladdgroup.md) | 715 | `declaration-track:14024d87a3dc118d9ab40af8eb5e07e686e4c151d2fac48b923714415d4cb87e` |
| 135 | `instance` | [instIsUniformAddGroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instisuniformaddgroup.md) | 718 | `declaration-track:f8c7fcb1bc0313454b2cbc957bee3c7e3eb650b3254978f9b9a1632f7fc3f217` |
| 136 | `instance` | [instContinuousSMul](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instcontinuoussmul.md) | 724 | `declaration-track:f172dc72bfd515eee36ae96752e1046e3c7745ec27b299ac12466349a5ae2d49` |
| 137 | `instance` | [instNormedAddCommGroup](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnormedaddcommgroup.md) | 727 | `declaration-track:4a29738f8ce6742a3add1418c35056ec08c652b6c95b94ca1bd9e54ac6091ae5` |
| 138 | `instance` | [instNormedSpace](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnormedspace.md) | 733 | `declaration-track:8e8282a084340707cf192cbb092660987a553b85dddde0e3e050a3186913b0c1` |
| 139 | `instance` | [instNonUnitalNormedRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonunitalnormedring.md) | 736 | `declaration-track:e16af991f15cdae28afac0a4de1e771c84d2dd4b8a6f36f7c8d4a7f0b20113f8` |
| 140 | `instance` | [instCStarRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instcstarring.md) | 744 | `declaration-track:254737621c901876d0e38e6516674028ac8a8ec704871a4f6cb01e68b4f024f4` |
| 141 | `instance` | [instNonUnitalCStarAlgebra](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnonunitalcstaralgebra.md) | 774 | `declaration-track:26d26d4d0081362ec1fd0903a1e9865e5b4f5d09d043fa6a49579923e6d4ea6a` |
| 142 | `instance` | [instPartialOrder](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instpartialorder.md) | 780 | `declaration-track:105d16286c3bea6c665d84643faf4592785703b4c72d1e2d326fc4227990d09c` |
| 143 | `instance` | [instStarOrderedRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/inststarorderedring.md) | 782 | `declaration-track:7c998019323999804ea4dde7f6414230b6234ddae51edd4d7e3c3b9e21308e64` |
| 144 | `instance` | [instNormedRing](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnormedring.md) | 793 | `declaration-track:a6193f2184e6807d565d8adfd51e617bc965910b0bc2b0f26f8b3d4e585ae9c3` |
| 145 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instnormedalgebra.md) | 797 | `declaration-track:11a770fce1d0fe0a8371c136a4757ad967b9501931aac35583d76946f8f21c3f` |
| 146 | `instance` | [instCStarAlgebra](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/instcstaralgebra.md) | 802 | `declaration-track:96936821240eb0390b3b3dce3cb260a18d7525a8d5319aa916faded823778905` |
| 147 | `lemma` | [uniformEmbedding_ofMatrix](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/uniformembedding-ofmatrix.md) | 811 | `result-track:20e1ff0c97262ad58d83c147cb367afe7af17173f75c4e209d78db1baf1a6d17` |
| 148 | `def` | [ofMatrixL](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrixl.md) | 817 | `declaration-track:0bb9eea9d144a3ed8a3e2ba2c2d982544ed76da9c4a61193ebb1a2b6140fe8a9` |
| 149 | `lemma` | [ofMatrix_eq_ofMatrixL](../../../../FunctionalAnalysis/CStarMatrix.lean/declarations/ofmatrix-eq-ofmatrixl.md) | 822 | `result-track:ddcf9044b182cbaedeef46189f1ef82cbb2a98a421fd3bf997aabce26736443c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eccce28a07b75f25146a8faf741232ea6bd814488ddcc203b623b0ce4bf41dcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean","GRWTSK/_verification/specifications/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
