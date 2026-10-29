# Verification target: Group Uniform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3706fd48b6e245973a097da02a3e69d7404fc703",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3706fd48b6e245973a097da02a3e69d7404fc703`.

Source path: `GRWTSK/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.IsometricSMul` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NormedGroup.to_isIsometricSMul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/normedgroup-to-isisometricsmul-right.md) | 27 | `declaration-track:1f2bb94c17a61f014597b5e0822d394910d6b4c85d766512205d658ab1a0aec0` |
| 2 | `theorem` | [Isometry.norm_map_of_map_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/isometry-norm-map-of-map-one.md) | 31 | `result-track:7e47b8b274c2e381cb95153dcdd165b8d3db46efb56f84431302a85ced09a68e` |
| 3 | `theorem` | [norm_map'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/norm-map.md) | 35 | `result-track:916ba3f953227e9b70bac5c5d892c3030a448bc030144a8526634cd3cd76ca20` |
| 4 | `theorem` | [nnnorm_map'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/nnnorm-map.md) | 40 | `result-track:ae84e1e340a5c72ae506747cc732df65036e6533b9c3d76a57e5beab0b4d2f7c` |
| 5 | `theorem` | [dist_mul_self_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-mul-self-right.md) | 45 | `result-track:e1368c2ed5a0c8f4813ba0bfc7286663132c84b62a5e5e1c71bc795480b352f8` |
| 6 | `theorem` | [dist_mul_self_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-mul-self-left.md) | 49 | `result-track:f4a8349a179b12b24674ef9d0f78ea0daf90a043503ea87b4e8503014816b66b` |
| 7 | `theorem` | [dist_div_eq_dist_mul_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-div-eq-dist-mul-left.md) | 53 | `result-track:14d23d96386ea43bda1abdace92bd2f3329f2aac7c3444a4b840c2f75693626d` |
| 8 | `theorem` | [dist_div_eq_dist_mul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-div-eq-dist-mul-right.md) | 57 | `result-track:dfe342a2f4b545a663924c55b83e0635ec025b53ebea6c0c4dd34d98571a00dd` |
| 9 | `theorem` | [MonoidHomClass.lipschitz_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/monoidhomclass-lipschitz-of-bound.md) | 70 | `result-track:cdf0e333ca17d95541f97b9e74cc76b9a691b4d00f7d6e8dcbd6e6efbd11dca5` |
| 10 | `theorem` | [lipschitzOnWith_iff_norm_div_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzonwith-iff-norm-div-le.md) | 75 | `result-track:86866fa927de07479d63b3459c6872a97a6af9a9b9f3b2699a9568d6df637afc` |
| 11 | `theorem` | [LipschitzOnWith.norm_div_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzonwith-norm-div-le-of-le.md) | 84 | `result-track:2c170544b0c05e3d013a031e7ce77e0ff8fcdf2012d1e0acfa8aca8baee0e200` |
| 12 | `theorem` | [lipschitzWith_iff_norm_div_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-iff-norm-div-le.md) | 89 | `result-track:72ef65084e690e22317ddd53a6325c4ba9889278484b65f7e6a250ee63dd275b` |
| 13 | `theorem` | [LipschitzWith.norm_div_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-norm-div-le-of-le.md) | 98 | `result-track:0cdc804a5c54175c10148d4a372fadb3fddf7d4e9a452903327df8bf5a785f7a` |
| 14 | `theorem` | [MonoidHomClass.continuous_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/monoidhomclass-continuous-of-bound.md) | 106 | `result-track:715512ece2469cb4576b6ab5944a244fb2a99908a6c0f7b619e3d1258a5477b9` |
| 15 | `theorem` | [MonoidHomClass.uniformContinuous_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/monoidhomclass-uniformcontinuous-of-bound.md) | 111 | `result-track:db892a9c08a54317124446dfac6815c5e8ae08b560b1995a951ad6461ccb3db3` |
| 16 | `theorem` | [MonoidHomClass.isometry_iff_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/monoidhomclass-isometry-iff-norm.md) | 116 | `result-track:2773411d79fc1ba155d32bbafdbf19ddc402c5dd2e30b255813d01da87f5e1c4` |
| 17 | `theorem` | [MonoidHomClass.lipschitz_of_bound_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/monoidhomclass-lipschitz-of-bound-nnnorm.md) | 129 | `result-track:4e88cdea21dea2a8d441f12e847be50395ee50e61e66b72eab0c08aff043715b` |
| 18 | `theorem` | [MonoidHomClass.antilipschitz_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/monoidhomclass-antilipschitz-of-bound.md) | 134 | `result-track:73dfb8e70f5219937ac7b2c402817b1ca627f6205c446807169a01277a16f3dc` |
| 19 | `theorem` | [LipschitzWith.norm_le_mul'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-norm-le-mul.md) | 140 | `result-track:d6ec269a6fdcb0d5a180ef308f64fbb20d02e42607670c2c4ca90aada73f3744` |
| 20 | `theorem` | [LipschitzWith.nnorm_le_mul'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-nnorm-le-mul.md) | 144 | `result-track:ce4d05b4ca52e934518c4bb6ca0e77cbb2104879316c3a788bab1849499db509` |
| 21 | `theorem` | [AntilipschitzWith.le_mul_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/antilipschitzwith-le-mul-norm.md) | 149 | `result-track:4d4d490b8f50b646e45f03022eabcad622a810731c4cff2a0c263878a3c369a1` |
| 22 | `theorem` | [AntilipschitzWith.le_mul_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/antilipschitzwith-le-mul-nnnorm.md) | 154 | `result-track:b501e49aacc89be2345e71f5cb372afb038c31dc6be182ae512e4381b8fffeb6` |
| 23 | `theorem` | [OneHomClass.bound_of_antilipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/onehomclass-bound-of-antilipschitz.md) | 159 | `result-track:c3d88adcca5b9e2c8e2764f2d6d01060049d0f66a9fcf2d389f089aa86667908` |
| 24 | `theorem` | [Isometry.nnnorm_map_of_map_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/isometry-nnnorm-map-of-map-one.md) | 164 | `result-track:330760da5ed79f2fdc9abf272a3c20727d99526b3f5774cb354b43f37e5524d0` |
| 25 | `theorem` | [lipschitzWith_one_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-one-norm.md) | 171 | `result-track:fcc6727dba3063dea2157472424418f53255340a2a2bb2c2c84c67dff78fb222` |
| 26 | `theorem` | [lipschitzWith_one_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-one-nnnorm.md) | 175 | `result-track:0ee6f04dbcd5b33910beb54b38c20dc2e6d2b06ca25d99de86010ab3bb7656c1` |
| 27 | `theorem` | [uniformContinuous_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/uniformcontinuous-norm.md) | 179 | `result-track:3b934d9d63fcfa54c5b8630c1f9968688f8c8cb3b3328cbcdb1de373f06a6b7d` |
| 28 | `theorem` | [uniformContinuous_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/uniformcontinuous-nnnorm.md) | 183 | `result-track:0a5abd56c4f75aec92bcdcc4313c1354710c0b739e864120d14758a928e0004f` |
| 29 | `instance` | [NormedGroup.to_isIsometricSMul_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/normedgroup-to-isisometricsmul-left.md) | 193 | `declaration-track:0177cb518dcc11906c84821672cf4458acf7f6afebd37dac36164d74d1cea359` |
| 30 | `theorem` | [dist_self_mul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-self-mul-right.md) | 197 | `result-track:500f468428cbf92c6ca5ccf7a6ff39692a7b4699a759f8a6c8d8f1897967980a` |
| 31 | `theorem` | [dist_self_mul_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-self-mul-left.md) | 201 | `result-track:3ae0a6f085ac4957993319683299f62c5a637f4f44905d395d7d6be710ed94be` |
| 32 | `theorem` | [dist_self_div_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-self-div-right.md) | 205 | `result-track:ef888fb3b1823f5abc8b1ed1dbfc8782305c693cdae3586252ef7481108d7174` |
| 33 | `theorem` | [dist_self_div_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-self-div-left.md) | 209 | `result-track:6eb509e95c7863eaebf859d1eba415c1d62073ee19eaf19b8a99e00e84359fcc` |
| 34 | `theorem` | [dist_mul_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-mul-mul-le.md) | 213 | `result-track:a887d3fac08ed8d813724a9868fe948bf7b84643020ea9478cd71f726edb2e36` |
| 35 | `theorem` | [dist_mul_mul_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-mul-mul-le-of-le.md) | 217 | `result-track:2617fcb46d94b925d9173e31ed9106518c0dcaa57f3ce901fff73ed45317892b` |
| 36 | `theorem` | [dist_div_div_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-div-div-le.md) | 222 | `result-track:76b8c3a1f5404976287c707bb96f046801e617a6ca91c1e1dee777fb074042fd` |
| 37 | `theorem` | [dist_div_div_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/dist-div-div-le-of-le.md) | 226 | `result-track:9552c987d513a64c2214c98ff92e9b40243a6fca6056ae721617235bc11f0042` |
| 38 | `theorem` | [abs_dist_sub_le_dist_mul_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/abs-dist-sub-le-dist-mul-mul.md) | 231 | `result-track:fb90e8125bdd4b90de76a270dd7f2eb3d406e6caa5192965980cfb19baf6a3ab` |
| 39 | `theorem` | [nndist_mul_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/nndist-mul-mul-le.md) | 239 | `result-track:150ef678bf812c9e85a3df097336bda03b90910debb4fadc61ae898020738cec` |
| 40 | `theorem` | [edist_mul_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/edist-mul-mul-le.md) | 244 | `result-track:ccca3741bdbdaa64338f8c55cf545914c66d828a2ac3e981799b3e406432179f` |
| 41 | `lemma` | [lipschitzWith_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-inv-iff.md) | 255 | `result-track:35d981d866e771b57af5e3b6cf628d722b7d30ccbb554eead00cc7e65c8340af` |
| 42 | `lemma` | [antilipschitzWith_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/antilipschitzwith-inv-iff.md) | 258 | `result-track:eb2b2362339aa814cea42b80f7ca8ba03a88b9359a813fb2a9398a8d180da23a` |
| 43 | `lemma` | [lipschitzOnWith_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzonwith-inv-iff.md) | 262 | `result-track:cc8e1945e5d3c38eb7c487392a63f50705a0a787e2873b5d162808f08cb1cb65` |
| 44 | `lemma` | [locallyLipschitz_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/locallylipschitz-inv-iff.md) | 266 | `result-track:0453e51149b7dc281d331f3603cf6f3a9c529ad8ddc2f70a77cfc9a339b9375c` |
| 45 | `lemma` | [locallyLipschitzOn_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/locallylipschitzon-inv-iff.md) | 270 | `result-track:f8101b30bfda741f89771ca4b44da2c66a733d2fc2abe7962d7cd84febbd0ca8` |
| 46 | `lemma` | [LipschitzOnWith.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzonwith-mul.md) | 281 | `result-track:cf2e60a6d1f46a221dcb48a3647a72d1510f159f51bd3b9283e0994710fb071f` |
| 47 | `lemma` | [LipschitzWith.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-mul.md) | 290 | `result-track:a2c0208672121c3ea5170b5f3e82ef54ddd257a56ab3f54d1838dd1064a13285` |
| 48 | `lemma` | [LocallyLipschitzOn.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/locallylipschitzon-mul.md) | 295 | `result-track:a7c981ba7ff1d201e0c7ef9dee181ea13cb82a2d46e13407849e62a088660acb` |
| 49 | `lemma` | [LocallyLipschitz.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/locallylipschitz-mul.md) | 303 | `result-track:acc3d2ced2f106cbb928d3294b01ce184a21a4435964703f8437f7fcbe8bb841` |
| 50 | `lemma` | [LipschitzOnWith.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzonwith-div.md) | 308 | `result-track:369e109dbae582d3ce894729b412c6b727631a7782bd6ebba93285908a4d6f72` |
| 51 | `theorem` | [LipschitzWith.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/lipschitzwith-div.md) | 313 | `result-track:10cf14bbe981e3ea6a6ef6e2d8613bcec72545c0aa056adbffa8b9728546cc8c` |
| 52 | `lemma` | [LocallyLipschitzOn.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/locallylipschitzon-div.md) | 318 | `result-track:45d88c0d676627bb6b1c1d4a568e96c8736bcb38dcee2b2b5a5471ec1c3b259a` |
| 53 | `lemma` | [LocallyLipschitz.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/locallylipschitz-div.md) | 323 | `result-track:e4fefaad8c265ef03fab19fa2a015fcc1e994fd26dfb0b2fda46f77a52a8b8b8` |
| 54 | `theorem` | [mul_lipschitzWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/mul-lipschitzwith.md) | 330 | `result-track:49f55475b6fc592471c4100ee400cb856a56d457374dec8d859e27d77e385bdb` |
| 55 | `theorem` | [mul_div_lipschitzWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/mul-div-lipschitzwith.md) | 343 | `result-track:5ccdaeafc2b505f8cb7cc585a688d2161ef4968ab9c20534dbb81dab96c73f41` |
| 56 | `theorem` | [le_mul_norm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/le-mul-norm-div.md) | 348 | `result-track:10f3a75ad40c635fa8af4691202c0fc6d8ae213e3a7fb77c1a600cb97348ab47` |
| 57 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/instance-source-edition-2.md) | 356 | `declaration-track:2d4b7b41f573a3504b85ce497eb7997d63ae0ee3fbc02a41013f94469bf5a1a5` |
| 58 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/instance-source-edition-3.md) | 364 | `declaration-track:a608ccc87b79e5db733f3a1784f1c6119434687c1e8ae8ae6d349ca27701613b` |
| 59 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/instance-source-edition-4.md) | 370 | `declaration-track:feb06b15b060b3be0a9732cfc6e58347c689e5d1c82f9f38d918b9e46bfce7f3` |
| 60 | `instance` | [instMulNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/instmulnorm.md) | 378 | `declaration-track:59adfa819290c0f5efaf760e295faa1fc12394851c7739fd55f15b2c4e6b5847` |
| 61 | `theorem` | [norm_mk'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/norm-mk.md) | 383 | `result-track:802060973602b2a873484c625d4a03e8d26e8e428c1e7bcdc88e57c1ff9864d0` |
| 62 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/instance.md) | 386 | `declaration-track:07604ec1d1220b4186c7083f6444c55507dd620d76ffd596db81359c971d8ec8` |
| 63 | `theorem` | [mk_eq_one_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/mk-eq-one-iff.md) | 391 | `result-track:37e6254fd6e937b256cbc8f486c61ded9e279b23e840c49de704bacb522a2373` |
| 64 | `theorem` | [nnnorm_mk'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/nnnorm-mk.md) | 396 | `result-track:7e8ce24a719c1bc20337d90b9da608c4159ceb73a46d5a75b8795ae86ada4dd6` |
| 65 | `theorem` | [cauchySeq_prod_of_eventually_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/cauchyseq-prod-of-eventually-eq.md) | 401 | `result-track:4d5629b9c2bb4267d463cefeecff14145c88a5a35121ded3d0b6ea65caba58ee` |
| 66 | `lemma` | [CauchySeq.mul_norm_bddAbove](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniform.lean/declarations/cauchyseq-mul-norm-bddabove.md) | 415 | `result-track:0b4665791aea375870ce677b3985dd9cbf077e0165e2d23d376de6faa1293489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a65f2ef732b42badb77cb51b7f8433125d1ca429fb7ba452e2fb320a30fde17c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
