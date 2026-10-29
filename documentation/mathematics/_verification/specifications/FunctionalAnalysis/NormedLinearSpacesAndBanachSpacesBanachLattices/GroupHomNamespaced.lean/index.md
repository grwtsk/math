# Verification target: Group Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7112c599b0081688cfe0b4890f026ac034186c39",
  "lexical_observation_count": 137,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7112c599b0081688cfe0b4890f026ac034186c39`.

Source path: `GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Subgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormedAddGroupHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/normedaddgrouphom.md) | 43 | `declaration-track:f6a11d5b401e4b33d1d17f0c12fee2561158b41aa2216cb014618b00c886aaae` |
| 2 | `def` | [mkNormedAddGroupHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mknormedaddgrouphom.md) | 60 | `declaration-track:054f46e9b7d87da9a66300715291460a6e99126a44a49dee17bd05062a4ab4ac` |
| 3 | `def` | [mkNormedAddGroupHom'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mknormedaddgrouphom-source-edition-2.md) | 66 | `declaration-track:1f8b058663638e8c9220a815341b6a3960c71f91dc0c66d93eca508ee6db6893` |
| 4 | `theorem` | [exists_pos_bound_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/exists-pos-bound-of-bound.md) | 72 | `result-track:013e88422e72528af1fb7602b32c9f9637f2c33646101ad439616051d138758c` |
| 5 | `def` | [ofLipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/oflipschitz.md) | 89 | `declaration-track:044da862cb17012ffd3e11e59e0c9a733c67ad0005a061674d3a70c35bd84569` |
| 6 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/funlike.md) | 92 | `declaration-track:8e3dade722ec6f119faa455f3badf937f56b633709d5f8f7e4a4553d9b3d1c9c` |
| 7 | `instance` | [toAddMonoidHomClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/toaddmonoidhomclass.md) | 96 | `declaration-track:b3bd674992b7af655d5d3f950f9d78ab837d38f237c362fbd4901cab782941cd` |
| 8 | `theorem` | [coe_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-inj.md) | 102 | `result-track:fe32319998db271d1b186b8cd5a256aa87f9863e862bacead9e9f82bb0e9f2e4` |
| 9 | `theorem` | [coe_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-injective.md) | 105 | `result-track:f63dde52ee3b14aac7c9a162f5991c2d27c62f43b0ef75674cc5b4f6d58dd6c8` |
| 10 | `theorem` | [coe_inj_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-inj-iff.md) | 108 | `result-track:4d67dd4fc158441d96aa1265c187250ad9a0d2f7f5ee0ec9e6a66142f8c0fb92` |
| 11 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/ext.md) | 112 | `result-track:ccdd65a5677f495aec22ea69a55452eee3d01acb390f9c4b19a1fe121b3b55c5` |
| 12 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/tofun-eq-coe.md) | 118 | `result-track:980f08d105a6f0b460dbc02ef9180f9cf2dd2793419f1547fbbd8fa721df3dc9` |
| 13 | `theorem` | [coe_mk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-mk.md) | 121 | `result-track:add56ecc1c34575971c1fa327a89b41b60e39358e27ab675d2d2cc1c32ebe6d9` |
| 14 | `theorem` | [coe_mkNormedAddGroupHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-mknormedaddgrouphom.md) | 125 | `result-track:57a0fefd328abb8ba6c8fa124a616309a1ebf599d68b139a585d23229ee32c96` |
| 15 | `theorem` | [coe_mkNormedAddGroupHom'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-mknormedaddgrouphom-source-edition-2.md) | 129 | `result-track:58097dd33a3d8791d5451e761751facdb5163646c0986799c537cf47d287b4a5` |
| 16 | `def` | [toAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/toaddmonoidhom.md) | 133 | `declaration-track:e485281a5913430b813b18b1828290911af6883124ac21f2855d87ac0e31c2ae` |
| 17 | `theorem` | [coe_toAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-toaddmonoidhom.md) | 137 | `result-track:047d8717af6c48eea44c55bee474921c234e5ea9842e090f8a0dcda386c08f6c` |
| 18 | `theorem` | [toAddMonoidHom_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/toaddmonoidhom-injective.md) | 140 | `result-track:d5aa2d6bbd58108a8d7c3fcba2796eddd8bc735ac8a1feec53af215f9d9ff2e6` |
| 19 | `theorem` | [mk_toAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mk-toaddmonoidhom.md) | 145 | `result-track:f8f19b11a4bf2c54ff9732f1f43a6976dc45dfb0fefe4d76fe134703dfd79a88` |
| 20 | `theorem` | [bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/bound.md) | 149 | `result-track:b5d9ccba62a63c1fa51412cb5c0fe7ea363da16d3a1a5232167ff46f0aebf5b5` |
| 21 | `theorem` | [antilipschitz_of_norm_ge](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/antilipschitz-of-norm-ge.md) | 153 | `result-track:98fd2d2a684e31967aa2f1ef7ee35138f5de07e10ee47be7b285d3d731168724` |
| 22 | `def` | [SurjectiveOnWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/surjectiveonwith.md) | 160 | `declaration-track:b1fc14d94d8859b23086c4506a820135886981008d7f004dbe90464bfab71539` |
| 23 | `theorem` | [SurjectiveOnWith.mono](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/surjectiveonwith-mono.md) | 163 | `result-track:ea772a0f529b593afa1f5d6a98684a889d7dc60ebdf1a1ed192ef010c1f00d10` |
| 24 | `theorem` | [SurjectiveOnWith.exists_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/surjectiveonwith-exists-pos.md) | 172 | `result-track:c13a2d378d7f626f484441a45706bb44865fbf70327f7ec77d3354fec9f1a469` |
| 25 | `theorem` | [SurjectiveOnWith.surjOn](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/surjectiveonwith-surjon.md) | 179 | `result-track:659091ee5eb94636f8bc6f702d111ad1001a6fc421561fd6cf653af8f68ac9b9` |
| 26 | `def` | [opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm.md) | 187 | `declaration-track:28d6e2c894f9d8bde245c6da114640d3b1945f842c56c1362452fc1d09ac3740` |
| 27 | `instance` | [hasOpNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/hasopnorm.md) | 190 | `declaration-track:cf8fcc7a969d50968e850bea347e172f05ab2db7a383377ee0fd18f972755d58` |
| 28 | `theorem` | [norm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-def.md) | 193 | `result-track:8a738d64d77283567dc554261f0a9237fb54f2a8b05cafc3773c168ef2ec486d` |
| 29 | `theorem` | [bounds_nonempty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/bounds-nonempty.md) | 198 | `result-track:8a3dc853174110b09d5ab678ca585cf6d98110333d8f822a228540b96d35b7b2` |
| 30 | `theorem` | [bounds_bddBelow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/bounds-bddbelow.md) | 203 | `result-track:35ae5694f3f76cc17090774e19cebfa2063b6202a202585c90748c52e6080be8` |
| 31 | `theorem` | [opNorm_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-nonneg.md) | 207 | `result-track:553eda33e3804918655a6cf1e055f138b7e8bfed1fba62bd3845c785512cc6a8` |
| 32 | `theorem` | [le_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/le-opnorm.md) | 211 | `result-track:2dfda4c6fb318ce874d10434e67c5467789211cd5b842dd855a45cb57f3c972a` |
| 33 | `theorem` | [le_opNorm_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/le-opnorm-of-le.md) | 221 | `result-track:44bc8fca36cf01b198f7947f05b08c6af4b8c50d9bccb55230f1fb6e48848e98` |
| 34 | `theorem` | [le_of_opNorm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/le-of-opnorm-le.md) | 224 | `result-track:6e6471a2fc85650c56d48ecde416928ad6ae0bc318c7c9284d942cc01cfb1bad` |
| 35 | `theorem` | [lipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/lipschitz.md) | 228 | `result-track:039ef7b947633c4301f1d567a8ca794329fa02ffc190f8f1a1cab592951182d0` |
| 36 | `theorem` | [uniformContinuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/uniformcontinuous.md) | 233 | `result-track:462839588b8c80aba71fdf69d47687ba4a7d1637b9ad20b7c50ddbee4ea5a86f` |
| 37 | `theorem` | [continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/continuous.md) | 237 | `result-track:6c7ad76dfcc04a568933a794e316934de91aeb970bc2e29653043de089a144b2` |
| 38 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/instance.md) | 240 | `declaration-track:5b82b76c316d2f5e8a9ef50ac6ba83e7e27e4c9f1f7cc0f57b4954b45149dd4e` |
| 39 | `theorem` | [ratio_le_opNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/ratio-le-opnorm.md) | 243 | `result-track:949a4883710c06472057bba5ccbf1faa5c61230f0d637a7f668977ceff1dfbfc` |
| 40 | `theorem` | [opNorm_le_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-le-bound.md) | 247 | `result-track:82a6740c8743ccf7e7f04ec58e37b21367532a673802ea50dcdeb194eea71d10` |
| 41 | `theorem` | [opNorm_eq_of_bounds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-eq-of-bounds.md) | 250 | `result-track:e600714167fddbbc76cc79ce51127e5db5e177c30b4a2e4a0a761b8c528f72be` |
| 42 | `theorem` | [opNorm_le_of_lipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-le-of-lipschitz.md) | 256 | `result-track:bc0fc2fe273a0932b14cb37aa9d4aead6c372a4039edb983df9ea904c327beeb` |
| 43 | `theorem` | [mkNormedAddGroupHom_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mknormedaddgrouphom-norm-le-source-edition-2.md) | 263 | `result-track:31b6fa775c4b84963454d4b69db6981f6afc943c8bc90db4d18acbeea02ba488` |
| 44 | `theorem` | [ofLipschitz_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/oflipschitz-norm-le.md) | 269 | `result-track:acd54933cf1c2cf0bc05a9e9200e6ba4ef2cfe62a9253d1034f2dceb1334a7e3` |
| 45 | `theorem` | [mkNormedAddGroupHom_norm_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mknormedaddgrouphom-norm-le.md) | 276 | `result-track:2b3098fac138dc6b2094f7e312196598146e9b1be25072078e1ebb71d836b4a9` |
| 46 | `instance` | [add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/add.md) | 289 | `declaration-track:1a2265b62f2eb34eb6051430ac90062dc15ab945294875eeddde321dcaf7028a` |
| 47 | `theorem` | [opNorm_add_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-add-le.md) | 299 | `result-track:50214c4ca1b9422958b250190e896bab673e00cc8c89a479904463124b828a02` |
| 48 | `theorem` | [coe_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-add.md) | 303 | `result-track:9b5d6ec2e2329e3e7271687a7f6a18a36f5918d9f1355f454d4ab95cf949ed37` |
| 49 | `theorem` | [add_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/add-apply.md) | 307 | `result-track:d4c152ad2208c81bc0ce6ba199faa322e99c7bda804f0e5584d0085339398d5e` |
| 50 | `instance` | [zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/zero.md) | 314 | `declaration-track:4dd87028f4c84d675e82011193bdc495676bc0ff232a030d39055c7aed10d3be` |
| 51 | `instance` | [inhabited](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/inhabited.md) | 317 | `declaration-track:83db1481c1cac3b5bd9e401764cd70f0e489143f7a77ca5510674fe8ad7f0c21` |
| 52 | `theorem` | [opNorm_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-zero.md) | 321 | `result-track:e117eeaa37c8275e27b3cd1c09bd8d4a2500a058c300a4eb677fca3f8672d4d3` |
| 53 | `theorem` | [opNorm_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-zero-iff.md) | 332 | `result-track:8350c78ab94e15ec424896e980659c11ea08611a82ae8fc2b32a46d548135605` |
| 54 | `theorem` | [coe_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-zero.md) | 345 | `result-track:1cbc5fbbe8d07362b3b562c7c43b9fe7c490909baea8f6ce288b7fa5604412f6` |
| 55 | `theorem` | [zero_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/zero-apply.md) | 349 | `result-track:257da78a9d8d35bcebd1f1ce3e7e610de2b1c58d10c6f2d71e339d3637b30e01` |
| 56 | `def` | [id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/id-source-edition-2.md) | 361 | `declaration-track:45f51e487c4cfa3e2b747099e131bf5c88d82be575073c83a3018b78433ad20f` |
| 57 | `theorem` | [norm_id_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-id-le.md) | 367 | `result-track:77ea4d4811519b9c44a1119a5bcde30378ea7121eb1fedf103cc96cd8218f79b` |
| 58 | `theorem` | [norm_id_of_nontrivial_seminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-id-of-nontrivial-seminorm.md) | 372 | `result-track:d5a2e079c0fad3d4c7e349484585d09e0f67992dd7415512a02fc9f33af00ab6` |
| 59 | `theorem` | [norm_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-id.md) | 379 | `result-track:6e2441f29f5e43136d7cf4c5fa89b086ef125c6a90249ee70b621732a4cf2f9c` |
| 60 | `theorem` | [coe_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-id.md) | 384 | `result-track:27d7e1b60bd214edb567991eea2b6c601519e5cf84c194ccd669c499188f6497` |
| 61 | `instance` | [neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/neg.md) | 391 | `declaration-track:216b72325e23fa303be7237df0febe6e15ea88a2e70f7ee3f607d50356eb3e8b` |
| 62 | `theorem` | [coe_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-neg.md) | 395 | `result-track:b6c77871559c4462cf6ef9950853fcfdd980d3afd3741aa39879cccb3f5a45ed` |
| 63 | `theorem` | [neg_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/neg-apply.md) | 399 | `result-track:45f6033b401f9501c4d58518504383604437a79fd90ebdaa5cb65db00a1da54e` |
| 64 | `theorem` | [opNorm_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/opnorm-neg.md) | 403 | `result-track:a39a4b8623b80c64192b97763dfeed89b94b796f3243da0d9a18815df9244efc` |
| 65 | `instance` | [sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/sub.md) | 410 | `declaration-track:c053ef5096b70c7ea5666643a71f36acb0d5c3c8f7979408311084ab90cf10d8` |
| 66 | `theorem` | [coe_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-sub.md) | 418 | `result-track:b1d73f5d9f68cdd26ca93ec9e1989f12fd93a0c88db0ba86633bd0b553afc193` |
| 67 | `theorem` | [sub_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/sub-apply.md) | 422 | `result-track:0d21d8997b67c4d6de39c67aea716031ca07f2a33ad5d527356ab1a527813440` |
| 68 | `instance` | [smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/smul.md) | 435 | `declaration-track:c8a7fee00972d071a7ebe37b925aa3693e7290ea96a0939e0fb1c20fa59149f5` |
| 69 | `theorem` | [coe_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-smul.md) | 450 | `result-track:aa20f997689914a55fd5f84b3b3dee9ed6d78653ca816fbf8d816d140892e46d` |
| 70 | `theorem` | [smul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/smul-apply.md) | 454 | `result-track:f806764a36000541786d120642780d5266b9705710c3b38c6dc3b8eb263fd775` |
| 71 | `instance` | [smulCommClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/smulcommclass.md) | 457 | `declaration-track:9f549aec2863d11e7374a14c726d2221edf21794d466ad66efeb68fa591180f7` |
| 72 | `instance` | [isScalarTower](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/isscalartower.md) | 461 | `declaration-track:cdaef600afbbbdc8cefea79f9ed55e6718b0e9c4d722cb7c3c3fa72d28565888` |
| 73 | `instance` | [isCentralScalar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/iscentralscalar.md) | 465 | `declaration-track:3f14c1307e9250eb35089d40ed6f39bcc3f107d99cab9479eef68d19af0cfd29` |
| 74 | `instance` | [nsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/nsmul.md) | 471 | `declaration-track:ec1623b641c79a4aac4c30e119a74ff959a4f68654d2e421c2a9e689a4b81ac9` |
| 75 | `theorem` | [coe_nsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-nsmul.md) | 482 | `result-track:91ee7036d5a8feefe21091128d7ef0ef7c5fdc23222d62898e32c3a724a1d20b` |
| 76 | `theorem` | [nsmul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/nsmul-apply.md) | 486 | `result-track:78c70198780d2738fdecfda7081d694d01e5b082ca94b168ee3dd162c2b532a4` |
| 77 | `instance` | [zsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/zsmul.md) | 489 | `declaration-track:465fcf22ade3d6c2f505da2ed2063f706236dce48d37e9ab5c275dc534b5058b` |
| 78 | `theorem` | [coe_zsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-zsmul.md) | 500 | `result-track:b3aac462b2a1b8e44ef82de2b9c3283e356350c20cce832e54c15c60002e90b0` |
| 79 | `theorem` | [zsmul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/zsmul-apply.md) | 504 | `result-track:8bcfe58a2c7e0bd9b9efe066ddb8f008a8cae2461fe340fcbb9d29e31385910b` |
| 80 | `instance` | [toAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/toaddcommgroup.md) | 511 | `declaration-track:ff66c5b9186487fcdbd2d2cffadfffb18916fb3cc311ca005d1a48748e6d041d` |
| 81 | `instance` | [toSeminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/toseminormedaddcommgroup.md) | 517 | `declaration-track:78a10002fb5d0c71964a997104ab9318c82b4e11d7606d7378fc71c8fcad2b1a` |
| 82 | `instance` | [toNormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/tonormedaddcommgroup.md) | 526 | `declaration-track:cc15d4d466a4501df94f3cdfa9a8271744ac0a3c81a1ca27bb63203f18d5b675` |
| 83 | `def` | [coeAddHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coeaddhom.md) | 537 | `declaration-track:ee654cf68f2a91c9579cc368749dfec902b0c4a49a529a039b2c2b6ef0840e78` |
| 84 | `theorem` | [coe_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-sum.md) | 543 | `result-track:8b6a09d0c4a2fd46ffec97153822600df47b099ebed495b993fc7898e77bede9` |
| 85 | `theorem` | [sum_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/sum-apply.md) | 547 | `result-track:d0cd628c798ad5ae1b8450e555df7a86d1dba9aad21762ed0c03208fddeb2dd2` |
| 86 | `instance` | [distribMulAction](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/distribmulaction.md) | 553 | `declaration-track:34a77ca652fd5b8ce19969d6ab75d47a02e412394e98a420c3d68ed13d826166` |
| 87 | `instance` | [module](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/module.md) | 557 | `declaration-track:4c428b38046e9334ebab3d93660fe7a4a1d22b71a4a59cf395f59146c7a0fefb` |
| 88 | `def` | [comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-source-edition-2.md) | 566 | `declaration-track:b9163003c9a79d0a3585901eb3ef2334d46444a0b7fb702dbe729443426bf220` |
| 89 | `theorem` | [norm_comp_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-comp-le.md) | 574 | `result-track:818c990b6236f9add18ed2063ed02eac172752dbd04945e09da73006f9c93e46` |
| 90 | `theorem` | [norm_comp_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-comp-le-of-le-source-edition-2.md) | 578 | `result-track:68ab4657d514c7f8fe33dd06baa3a2d13cb3548cb25a38860f442f9ca6f4f8ed` |
| 91 | `theorem` | [norm_comp_le_of_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-comp-le-of-le.md) | 582 | `result-track:3234473eec9a0b9b854a89a2858e7ee0d5105a20d9e8906784e92a387d81245b` |
| 92 | `def` | [compHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comphom.md) | 588 | `declaration-track:32179f720a2d3e2aa56ea733bcd493a6539a831a15d22377d451937d39e54ed4` |
| 93 | `theorem` | [comp_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-zero.md) | 603 | `result-track:4aa106c2dec7ed89ca1fe6a23c8727bc010e0c16aa2c2b0e422623c230179c4f` |
| 94 | `theorem` | [zero_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/zero-comp.md) | 608 | `result-track:947ad50d802e69a48c7c2beeba80644c1148b07516bb3340ede2e81f49b8ea97` |
| 95 | `theorem` | [comp_assoc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-assoc.md) | 612 | `result-track:58b85f37a00d5805525cb46086a33eb81d56c9bec454235be90cd5aee990b740` |
| 96 | `theorem` | [coe_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-comp.md) | 618 | `result-track:43f9786b9f7849ac053a82ce8a096a8f8ba279d1b85d67488fd834b2dc96e28a` |
| 97 | `def` | [incl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/incl.md) | 631 | `declaration-track:43dc7e9c55664241183d469dceae3b6fd33573e3d59c7f8af76446fb0cf86e2b` |
| 98 | `theorem` | [norm_incl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-incl.md) | 636 | `result-track:d3343f5cac58e599a1c2415673483c16e49826fb140d749530838262391eeaab` |
| 99 | `def` | [ker](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/ker.md) | 648 | `declaration-track:8e589a869475f216f909ef124cc1e5522206e28520afdea1cbc23f1f3a749347` |
| 100 | `theorem` | [mem_ker](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mem-ker.md) | 651 | `result-track:9d643e8877c4768fe5c5070e9a1535b440a92ad8e0e3935a3f3ffd9a49f77af1` |
| 101 | `def` | [ker.lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/ker-lift.md) | 657 | `declaration-track:291a1745ada40e6e10e1746aa44b984c6ea9a65d61ce0cc4111102c0100c6642` |
| 102 | `theorem` | [ker.incl_comp_lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/ker-incl-comp-lift.md) | 663 | `result-track:6a6f5c4b092ad3aa65ad82760ff9f0e697951b329027e81fb67e8fb784d60238` |
| 103 | `theorem` | [ker_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/ker-zero.md) | 668 | `result-track:b8e0e98b98c10a582cffed224760e9019fb97285d61b6f906f82f006ac57caa7` |
| 104 | `theorem` | [coe_ker](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/coe-ker.md) | 672 | `result-track:6753453d66b6abe1d6906171a53a36f3beaa427481248e627c2f984590ea4b9f` |
| 105 | `theorem` | [isClosed_ker](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/isclosed-ker.md) | 675 | `result-track:a250472626626cc9526cc2c3ccca14d0bc4dacfe29e18f68d78426a85cfafe6c` |
| 106 | `def` | [range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/range.md) | 690 | `declaration-track:7d7ac3ca735ae2d834f18d730e8bcf489f9fb1ebe2e2731c85e2cc04937f42c3` |
| 107 | `theorem` | [mem_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mem-range.md) | 693 | `result-track:03de213e2cc4c66840db2e81936b419174e957b48e9a9dee762cffffe5644313` |
| 108 | `theorem` | [mem_range_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/mem-range-self.md) | 696 | `result-track:55c93a7a4f4f7d2a5f8fcf87e1b498cadb1e85cf90da7bd65f5a85f2ca3f992f` |
| 109 | `theorem` | [comp_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-range.md) | 699 | `result-track:806d972e0632f4128a9aae0b356cdfa4040fdf3b84d4ac4d2e9de9995b7a1735` |
| 110 | `theorem` | [incl_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/incl-range.md) | 704 | `result-track:b95aa0119af1cdf3cac758161315c4aa47a0d26ad0dd0e3765547b9c40e6f1e9` |
| 111 | `theorem` | [range_comp_incl_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/range-comp-incl-top.md) | 709 | `result-track:ddb79b3bf6cf77c33e3e1ebe5751d4116c95cebfc63f2602db8d08ddd8b3e027` |
| 112 | `def` | [NormNoninc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/normnoninc-source-edition-2.md) | 717 | `declaration-track:55208c60b89e546c8a83bba25b787a73d5f4fa8d6c2e54ad41f45c4be43ea513` |
| 113 | `theorem` | [normNoninc_iff_norm_le_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/normnoninc-iff-norm-le-one.md) | 722 | `result-track:37c685fccf3078262bb916bed229ecdbf3f9edfe3206a5f8697cf0b2660f281d` |
| 114 | `theorem` | [zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/zero-source-edition-2.md) | 728 | `result-track:b841a43d3899e2c7bddfd6d396a7e4f1f21e5752da6689312449ce179c4353c2` |
| 115 | `theorem` | [id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/id.md) | 730 | `result-track:00fbbc88fbf115e772f8dbbccc1eee28c3ea3a99b907763e1af72273b793f40d` |
| 116 | `theorem` | [comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp.md) | 732 | `result-track:b19943ed982f268335b3001d9a9d8b0a21323b352f20f39c02602b462d885c3a` |
| 117 | `theorem` | [neg_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/neg-iff.md) | 736 | `result-track:300e0155c2e9a65965777ac88a71c98daed0d2d40ee3c6c0f8e2ce17397ecc35` |
| 118 | `theorem` | [norm_eq_of_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-eq-of-isometry.md) | 743 | `result-track:d40d23a12e6d80476832eaa2bbe2a2bcccef452160b7bb1edce7185c3de16542` |
| 119 | `theorem` | [isometry_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/isometry-id.md) | 746 | `result-track:f409241a9dfdaff2e47c102a9cb40f5a33565b22dbdc773bc515f3580fafb9eb` |
| 120 | `theorem` | [isometry_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/isometry-comp.md) | 749 | `result-track:5b948cf386c23d2ba51fb2670cbc095e5a3149d880f35b95d0faa84c58c43933` |
| 121 | `theorem` | [normNoninc_of_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/normnoninc-of-isometry.md) | 753 | `result-track:d2329f64dadad390a96f4bf37d3556b3102acc6ac39c7c11430fe22696e1c8bc` |
| 122 | `def` | [equalizer](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/equalizer.md) | 767 | `declaration-track:07dcb20e57db1d017c65af069507600377f818b582c4db08b3b41b284f349148` |
| 123 | `def` | [ι](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/anonymous.md) | 773 | `declaration-track:b0d447c7f94e0d91378e4c04390f80c836df9b27d3e44e77b3b33662d8a2207b` |
| 124 | `theorem` | [comp_ι_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-eq.md) | 776 | `result-track:8be9030b4640ca8c7d78e503c0d2b1e404265360c4a037e3f865d7ffcad07198` |
| 125 | `def` | [lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/lift.md) | 786 | `declaration-track:15d4b0cb6d261b80edc97fac4aee9843f30915bc6a41a21673b07524384bf950` |
| 126 | `theorem` | [ι_comp_lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-lift.md) | 800 | `result-track:bd61d07c58c93514994ae5f327c2ad05326cc785a1d8c41784e72e47e65edd5c` |
| 127 | `def` | [liftEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/liftequiv.md) | 807 | `declaration-track:90bc89599b055bd5cd626f497115f95064db930f632932101769d3d17ed80ce9` |
| 128 | `def` | [map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/map.md) | 820 | `declaration-track:eeb838c99568db8d9ef43ad7bd968063ede8a09e198bb7df930d7df3071aa0ba` |
| 129 | `theorem` | [ι_comp_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comp-map.md) | 830 | `result-track:9fadf1447cafa183940852bccd17cc4cd6453748dfef5bd38b65f5e2f9e4193b` |
| 130 | `theorem` | [map_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/map-id.md) | 835 | `result-track:cf7770c14f7e852ed4194148e9f43d298edc6b897177903b6742f0d313abcfd5` |
| 131 | `theorem` | [comm_sq₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/comm-sq.md) | 839 | `result-track:19471edc85274300c692b333f3cdd6684715802dfef04f884501cfe4a40a2a4e` |
| 132 | `theorem` | [map_comp_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/map-comp-map.md) | 843 | `result-track:0d8f9a8c135effc81e644bbd25d3a592523f409689ef4aaf5272f78d220bed12` |
| 133 | `theorem` | [ι_normNoninc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/normnoninc.md) | 850 | `result-track:13f13c1c2e33b17061044b11a0b2213bd019eda074925b3e68c7f926af4ca061` |
| 134 | `theorem` | [lift_normNoninc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/lift-normnoninc.md) | 853 | `result-track:666062f29141598fbc048e687cdaed4a800f3999fc485df2726ba8bb5a6c0669` |
| 135 | `theorem` | [norm_lift_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-lift-le.md) | 858 | `result-track:24dcd43022750fe113301feaff6d52c002714a7fd1edb3547328227a7648b61b` |
| 136 | `theorem` | [map_normNoninc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/map-normnoninc.md) | 862 | `result-track:526bf2465d1723a914c479581c08417643109fbf9d1abf799be46e8196e73eb2` |
| 137 | `theorem` | [norm_map_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHomNamespaced.lean/declarations/norm-map-le.md) | 866 | `result-track:a3fa770424095b2ec446a7d202a41c7af294c4d3bd7d78b88bf470ab4c13a22c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9eef56c625650994d738180c1fd6e8e462fbfb7c69d0d54a731535e178fbdeb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
