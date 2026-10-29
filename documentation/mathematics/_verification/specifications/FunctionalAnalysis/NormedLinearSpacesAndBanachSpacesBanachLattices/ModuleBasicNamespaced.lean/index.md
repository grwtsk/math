# Verification target: Module Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b7b64d2a6ed6dc245a1babb322492685b0c36e1",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b7b64d2a6ed6dc245a1babb322492685b0c36e1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Rat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace.md) | 48 | `declaration-track:48a235a06afa4d512e9c56562d8e7f4cd1c6e995a9f4387136dc2b47736a0c96` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 58 | `declaration-track:75af373bbe120b55c092e2743528b71e1ff9162dda23ef46f79fcecfe7c29eff` |
| 3 | `instance` | [NormedSpace.toIsBoundedSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-toisboundedsmul.md) | 66 | `declaration-track:aca08ff2c481164d6ff05ec0eac612ee9d183a978ba38648d52bda75a801701c` |
| 4 | `instance` | [NormedField.toNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedfield-tonormedspace.md) | 68 | `declaration-track:6f4661c1fec827bed71c9de391df356c89856082246bcf4410aa1a1a4a8d322e` |
| 5 | `theorem` | [norm_zsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/norm-zsmul.md) | 71 | `result-track:6568a1980633a0e199a7ee1ed679aa9df96a25edd33f6e5d21b7c5e6b5c33962` |
| 6 | `theorem` | [norm_intCast_eq_abs_mul_norm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/norm-intcast-eq-abs-mul-norm-one.md) | 74 | `result-track:1d95ee3b68c3d622e9743ca6911aed4c9ba355e9bff55dca4770ab279ada11db` |
| 7 | `theorem` | [norm_natCast_eq_mul_norm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/norm-natcast-eq-mul-norm-one.md) | 78 | `result-track:516c979c088f3d17ab150a5b4b2a984a53ef4dd0dd608feee28a160279586f40` |
| 8 | `theorem` | [eventually_nhds_norm_smul_sub_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/eventually-nhds-norm-smul-sub-lt.md) | 82 | `result-track:ba7a075f5b2dd9f5265791a096e20a06571d7b74c93d59617260977e25bb7a45` |
| 9 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 88 | `result-track:7834dc8696783d7a2898a81b77fc0e3a9b9c7d73ab8620e587ee7e1aaa8c4037` |
| 10 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/filter-isboundedunder-smul-tendsto-zero.md) | 93 | `result-track:0e87ba1ae79c80e1d1e4a55d75b6e735c48c742baaf49e3ff28bddd048528640` |
| 11 | `instance` | [NormedSpace.discreteTopology_zmultiples](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-discretetopology-zmultiples.md) | 99 | `declaration-track:e7a2f3458f740919ff3cc7470996a3ce922fcdde1ad8a3f1df8e749ff9fd532a` |
| 12 | `instance` | [ULift.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/ulift-normedspace.md) | 116 | `declaration-track:3e74f216df4878fce6634b367499a849140554d60c1ed4f8417e1d2fd0710fa9` |
| 13 | `instance` | [Prod.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/prod-normedspace.md) | 122 | `declaration-track:df1af3066a5e6d1cb1d868f68a29ed0903a834fa22f1caf22970ec2af954ceca` |
| 14 | `instance` | [Pi.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/pi-normedspace.md) | 129 | `declaration-track:7695122982fa78363a795a16fa9edb65783bd675ad6643c3b5ba9c076780fb94` |
| 15 | `instance` | [SeparationQuotient.instNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/separationquotient-instnormedspace.md) | 136 | `declaration-track:48d4432b69a5e838c3a3d0886a3f534cd054c85598e4d9113572d959911feb0d` |
| 16 | `instance` | [MulOpposite.instNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/mulopposite-instnormedspace.md) | 139 | `declaration-track:2cb8656fa5133a819898e3735b5e9cf67387b77e66342edea676259351d7baa4` |
| 17 | `instance` | [Submodule.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/submodule-normedspace.md) | 143 | `declaration-track:7dd76bbfbe889d1ca359f22e0027daeb9247965259649faa816538ceb785315c` |
| 18 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 152 | `declaration-track:416da8dfd9166f0a8ceb3457d15c13a007845c7c87ab77ce0b784f70d3650f6e` |
| 19 | `abbrev` | [NormedSpace.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-induced.md) | 161 | `declaration-track:60e644feff4ebc903bfabfcc4d5bb2657996324600556f79035d21c102e70dd5` |
| 20 | `theorem` | [NormedSpace.exists_lt_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-exists-lt-norm.md) | 175 | `result-track:1ec1f5edc607d12b3b7283d5d8063dab777bb15e7712c44f2604c916855d8bff` |
| 21 | `theorem` | [NormedSpace.unbounded_univ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-unbounded-univ.md) | 182 | `result-track:c65ab62c48a1cd4854bf955c5ffbe724326c501a9a68031c134b0bd3e4c5cec4` |
| 22 | `lemma` | [NormedSpace.cobounded_neBot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-cobounded-nebot.md) | 187 | `result-track:2996d70cfabfcaebbcf6d755663391fede3e60eeaf3694f28a35adc20282acd5` |
| 23 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-20.md) | 191 | `declaration-track:ee697f01d6d04eab273b3074696e9919bdc12ce1fa3c218e7eef5ccddfdae887` |
| 24 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 194 | `declaration-track:8e6cf8a7f4441fe82b4159cd1a330ae290f18a439f2dc563e1037acdae6acd75` |
| 25 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 197 | `declaration-track:b0d56d995d76d5b59a236ce046de99de19d70da5a01ecf7590998d7a775a1256` |
| 26 | `theorem` | [NormedSpace.noncompactSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-noncompactspace.md) | 212 | `result-track:6bfa9eae2da11c895cb03b42e49c2fb2cd6064d62616da4105b0e9eb5a9dc953` |
| 27 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 224 | `declaration-track:c8d43ff7ef2b35fcd4b78fc2116f95c412707495b39f5937f5c85d897270c892` |
| 28 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 227 | `declaration-track:55e5a685f8cc8dc610c7b0c0414b9f7d594def0848db274b065953d7b4c133ba` |
| 29 | `class` | [NormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedalgebra.md) | 243 | `declaration-track:07f11411a4fd5958553c544e37565d458fab9b9e97b08159a5c3b5520716a731` |
| 30 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 252 | `declaration-track:9c5484bbc99b53b97b0f13ae9ab5e45db04bbd792a0e924434b650a60409d078` |
| 31 | `theorem` | [norm_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/norm-algebramap-source-edition-2.md) | 256 | `result-track:cf69e93c2f8784a253966bed2dc956be656aa177dfb5b566f05bd4b300619269` |
| 32 | `theorem` | [nnnorm_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/nnnorm-algebramap-source-edition-2.md) | 260 | `result-track:db096ae5c8d939171aeaabb1b75bb58b6096805dab2127647b3c3694a1585d1f` |
| 33 | `theorem` | [dist_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/dist-algebramap.md) | 263 | `result-track:05e74d0abb930f73e11677e1a1e1d46a2a83c67387635e137c707a3eed7f5e24` |
| 34 | `theorem` | [norm_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/norm-algebramap.md) | 269 | `result-track:02faf78f0cb2ec313cda79589265b519faf61910fa38b411cfc685dcba8365e7` |
| 35 | `theorem` | [nnnorm_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/nnnorm-algebramap.md) | 274 | `result-track:8254cec85eae1e7f77648e755ee28b8cce6ec586a75330199378a2e93fae8b96` |
| 36 | `theorem` | [dist_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/dist-algebramap-source-edition-2.md) | 279 | `result-track:5ed13866fa9679c66560e238f216ec9a403d7a8615c9df21dd30881852300653` |
| 37 | `theorem` | [norm_algebraMap_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/norm-algebramap-nnreal.md) | 288 | `result-track:f54b3df6ad83ceb0d198a7d01db424e2977cba1dde1db0ab093c306e976cdd4a` |
| 38 | `theorem` | [nnnorm_algebraMap_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/nnnorm-algebramap-nnreal.md) | 292 | `result-track:01af3398cc1bb8327329566d0760de07050d5467c0aaeb7f8ce4df41b7c931a4` |
| 39 | `theorem` | [algebraMap_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/algebramap-isometry.md) | 300 | `result-track:550a15a6d688915285f429e667355240e2a1984afa3171f55e69ddccc6b36f8a` |
| 40 | `instance` | [NormedAlgebra.id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedalgebra-id.md) | 304 | `declaration-track:6c135c5c0c4fb103d044810aeda1dcc6444cec9333536c2f9a04184a0d12d8d5` |
| 41 | `instance` | [normedAlgebraRat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedalgebrarat.md) | 313 | `declaration-track:9aec60f4ccd73569d488866eb3a9918275c2f368ae8f1a7f4e038c624f2c5583` |
| 42 | `instance` | [PUnit.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/punit-normedalgebra.md) | 318 | `declaration-track:404f7b1201f801e7219d469d384d8c5951b905ebae81eb68e114904aefba7064` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 321 | `declaration-track:b0b3cf4dfa7df9095cea572b41d25f37793278b0a30b9824c814868765aff705` |
| 44 | `instance` | [Prod.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/prod-normedalgebra.md) | 325 | `declaration-track:523331e3dc290b685fdbfcbf15bf080eb9ae5111042111692d4b38af80195f77` |
| 45 | `instance` | [Pi.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/pi-normedalgebra.md) | 330 | `declaration-track:20c679f907b60145016ffc371c37ad6a05290870027ace3c24b4ef87cf9fc343` |
| 46 | `instance` | [SeparationQuotient.instNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/separationquotient-instnormedalgebra.md) | 336 | `declaration-track:e1e2e0bad807fad247eb1c4220bc61e38b20cb7d296f67cfd79bdd96b0b95ebb` |
| 47 | `instance` | [MulOpposite.instNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/mulopposite-instnormedalgebra.md) | 340 | `declaration-track:dd859a42c110d75055fb1b6fef6ced718425e1d0bb87f8afecc6173d259e978c` |
| 48 | `abbrev` | [NormedAlgebra.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedalgebra-induced.md) | 351 | `declaration-track:d7ba219b213ec6ef69b0634b42e8c3e7c17f0d463000ff41b5fad5fcd18c585e` |
| 49 | `instance` | [Subalgebra.toNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/subalgebra-tonormedalgebra.md) | 358 | `declaration-track:accc0ad6b3593f9922d520d26083df054a5175fcfc84faf30a7d578e5b49d8af` |
| 50 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 367 | `declaration-track:c4cad8d0827a18210a952af4fdef3b78dabb7d870ed02efe4d0dd9d72f111f61` |
| 51 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 376 | `declaration-track:9bc9c6e4b67871604fdf112e42e9a9538031224bc414587dd0147633ce088346` |
| 52 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 380 | `declaration-track:5d3508133c7879baa08fe2acbdb441ca3f0e23bf004d45dd09277f48498d4065` |
| 53 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 384 | `declaration-track:cbbe183db60e752af4ebd5f7f4ad60daa05f909b465592e6ac0fcd365e05295e` |
| 54 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance.md) | 388 | `declaration-track:167c073ee48d6d86044e197556a43662bec48bd1a3d97e0e502ee3fa7ac2ddc1` |
| 55 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 392 | `declaration-track:9bd2fad9b3cd174572f97adf96c7d63b65c28d578cc7ee3368f140689724de27` |
| 56 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 396 | `declaration-track:94da2eb19c1514e5fd44a5904db3bd4f1e8f5d62601011c3911b199dc9ba79ed` |
| 57 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 400 | `declaration-track:7990b911715ee971509a3f82ad6bf0b4787f4f7a9008f55aa574b91f4c329a42` |
| 58 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-19.md) | 404 | `declaration-track:dc8265cfd5842ed95a6a706a497231ed02b14c8802b2bfd1df141e4648732a92` |
| 59 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 408 | `declaration-track:5a2dcfa0456b16433842defea106b8c9715a342fbb17b6544067646f7e4cb136` |
| 60 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 412 | `declaration-track:2951f574ddc860a294b7d9031aaf8bab1a58ad3bf4b41298d2174ad4954d4e0e` |
| 61 | `instance` | [RestrictScalars.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/restrictscalars-normedspace.md) | 426 | `declaration-track:0619a808d30646d535881a8ffeb7db8345d4fc3db42be293b094c3e939f96169` |
| 62 | `def` | [Module.RestrictScalars.normedSpaceOrig](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/module-restrictscalars-normedspaceorig.md) | 436 | `declaration-track:8e235b687a6f1e28d67d408a399cc42775c179ebeb87b2677c7cc268bc6c4913` |
| 63 | `abbrev` | [NormedSpace.restrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-restrictscalars.md) | 449 | `declaration-track:88c9b1c1799d6764d58f70c163da3f172f5ddf03b0b9f65dd24915dfdc80fc74` |
| 64 | `instance` | [RestrictScalars.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/restrictscalars-normedalgebra.md) | 462 | `declaration-track:0c4dd1acff1898ae86feb1ce8c2788481adc5c34f3c7f6fa06024e30e362237b` |
| 65 | `def` | [Module.RestrictScalars.normedAlgebraOrig](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/module-restrictscalars-normedalgebraorig.md) | 471 | `declaration-track:9352d734ce8794f8a79c2eceaf842a60388385a436a0ef1bcf2b8e3aa852ee6d` |
| 66 | `abbrev` | [NormedAlgebra.restrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedalgebra-restrictscalars.md) | 484 | `declaration-track:102a5dc2e1b54eba73c7789781ab66c3fa64aa553be70eb8e6a8c41e1d09e5a4` |
| 67 | `structure` | [SeminormedAddCommGroup.Core](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/seminormedaddcommgroup-core.md) | 507 | `declaration-track:7698a1703eb4ebaca0c13d6a9d252878c965ee6687ec070713a3afd67773e4d3` |
| 68 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/pseudometricspace-ofseminormedaddcommgroupcore.md) | 516 | `declaration-track:b107b6cb9a7149d9ca0e6bd2c443e77f9823055f6e8b99e01e217ce71a2cb30a` |
| 69 | `abbrev` | [PseudoEMetricSpace.ofSeminormedAddCommGroupCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/pseudoemetricspace-ofseminormedaddcommgroupcore.md) | 541 | `declaration-track:8c98b65e2ea43300b0c672e94833195a033b3361e1a347c59da829812a904d8c` |
| 70 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceUniformity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/pseudometricspace-ofseminormedaddcommgroupcorereplaceuniformity.md) | 549 | `declaration-track:0451f5b9821cabf4b17b6721b0bb2c6b28447165bdc664b2f5e72409f643ff50` |
| 71 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceAll](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/pseudometricspace-ofseminormedaddcommgroupcorereplaceall.md) | 562 | `declaration-track:c487704e996f3121f8de3e6c9daa676da5b5d071e4faf178a71a20664d13166c` |
| 72 | `abbrev` | [SeminormedAddCommGroup.ofCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/seminormedaddcommgroup-ofcore.md) | 576 | `declaration-track:fa6459c0b87a296025b3a0a9eab289236e246cce0d88ebd30daa933cf6016a18` |
| 73 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceUniformity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/seminormedaddcommgroup-ofcorereplaceuniformity.md) | 583 | `declaration-track:82363bbbd6a752ab7781da7db18f51acaf25fc602cb0ba30c74310cb294c51b5` |
| 74 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceAll](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/seminormedaddcommgroup-ofcorereplaceall.md) | 596 | `declaration-track:55c1362f0afec19e96d04753143b1c64d176b72cddce41659692af6848e520b8` |
| 75 | `structure` | [NormedSpace.Core](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-core.md) | 609 | `declaration-track:a3c6e77a50d93c50746533a6e7a08476e9443ebe7773a73b0aea2805bedd5bb9` |
| 76 | `abbrev` | [NormedAddCommGroup.ofCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedaddcommgroup-ofcore.md) | 620 | `declaration-track:6f30acd37f83f777d5fac1cc6297b874dbfa03712b41c32b32d0e1fb38fec2f5` |
| 77 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceUniformity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedaddcommgroup-ofcorereplaceuniformity.md) | 630 | `declaration-track:6737154405956be439033b690eae140de5d40dc5075c3c4006032fd50c634d2d` |
| 78 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceAll](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedaddcommgroup-ofcorereplaceall.md) | 645 | `declaration-track:ce893bfa401a493c41a1f430a792c8cff06665ec2df36406511ecb367dff839a` |
| 79 | `abbrev` | [NormedSpace.ofCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/normedspace-ofcore.md) | 661 | `declaration-track:c5c2b9572628375de1442eec4bd508d82328870866ffbdbc366be82ae3669a72` |
| 80 | `lemma` | [AddMonoidHom.continuous_of_isBounded_nhds_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/declarations/addmonoidhom-continuous-of-isbounded-nhds-zero.md) | 672 | `result-track:61e9d25385c22d08ea758b69562753c0359b46ec737a83b4df155c67413d3219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e23dd3a492e6e7e0f51781815b8ca85f9d87ace782ac8783ef049dd83216cbca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
