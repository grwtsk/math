# Verification target: Ray

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d11c535796d9554af9f831b7d410a33d61d8a73",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d11c535796d9554af9f831b7d410a33d61d8a73`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray.md) | 38 | `declaration-track:253ab5680f1a2772355f2d8e8d23eb28797f4be1e2451d441b37a1ec2345ca31` |
| 2 | `theorem` | [zero_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/zero-left.md) | 52 | `result-track:f8483340d5024d63fc004167e9be572f1afcf3ab6eb82a4ba77a321386a4e34a` |
| 3 | `theorem` | [zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/zero-right.md) | 56 | `result-track:b138b7351f1f24ff7b0a72f0570df4b3f5de05daa584cfbb6baf57c823f119ea` |
| 4 | `theorem` | [of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/of-subsingleton-source-edition-2.md) | 60 | `result-track:86687233968ac1ad2c825fee438d7448fd839fe151b50cf899d9437214549def` |
| 5 | `theorem` | [of_subsingleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/of-subsingleton.md) | 65 | `result-track:5eaf447236fbf69e8da4c8b5e9f32acf38da88ad8c837ca213f620f19be6a7e9` |
| 6 | `theorem` | [refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/refl.md) | 71 | `result-track:9fff56582c297faba25fa84161adbd09b3743b5b12dea7142f2e515242a5805e` |
| 7 | `theorem` | [rfl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/rfl.md) | 75 | `result-track:e8b19b418d32671a283b9cafc6543076f2b7d24cb5c42782707d71a8fe8a8372` |
| 8 | `theorem` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/symm.md) | 80 | `result-track:0b2fec5127c46dbe0974a359c95f5c2433236c8229f453c7d68fab847f11cb69` |
| 9 | `theorem` | [exists_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos.md) | 85 | `result-track:a0868c7a0f866acf46d6a6ac2a665ad619f2252577fad802c2123f5fa219292b` |
| 10 | `theorem` | [sameRay_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-comm.md) | 89 | `result-track:7b56d29255beca07448918f0fd3fe4bbb3be84c5e6e4a7f5142fb6dea1270725` |
| 11 | `theorem` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/trans.md) | 94 | `result-track:0b86b107dbfcc1c68ac75f7cce4254c941c0ba26e2ec382b97fc21db2b13e31a` |
| 12 | `lemma` | [sameRay_nonneg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-nonneg-smul-right.md) | 110 | `result-track:e6a3e4e4b14b144986560a96de0922b9434ca8e6c01804afa0ab485b0abe8e35` |
| 13 | `lemma` | [sameRay_nonneg_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-nonneg-smul-left.md) | 118 | `result-track:0765a35757fab4303b367a54ad47a450f2e97595d7981649629e0f20affb7493` |
| 14 | `lemma` | [sameRay_pos_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-pos-smul-right.md) | 122 | `result-track:72f247be215aff2d13ef83179f4e9d0c05dae6a0d88e64ca65e097384bafee03` |
| 15 | `lemma` | [sameRay_pos_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-pos-smul-left.md) | 126 | `result-track:a0710a61a5c9fddc706b8ec1418a24d706669aa76504b315d2bb64133f607b23` |
| 16 | `lemma` | [nonneg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/nonneg-smul-right.md) | 130 | `result-track:b635553fe8ed3064bac92041eb5a1d7d2bbee8ad4226480a52d0a62086c85d8f` |
| 17 | `lemma` | [nonneg_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/nonneg-smul-left.md) | 134 | `result-track:9050ce98c02f7649c28b7c771d785eac64eed38e178a16479e41d30f977b3281` |
| 18 | `theorem` | [pos_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/pos-smul-right.md) | 138 | `result-track:0e92d5aab0ef6f5e9155ff4d2b6eae8e085a41c2902359ae6937d54aa29cd19a` |
| 19 | `theorem` | [pos_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/pos-smul-left.md) | 142 | `result-track:87fe3466cbafb6bb4fc59fa8801ee5d8e4e280a0e31e1fe9928033a2d9d6b00f` |
| 20 | `theorem` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/map.md) | 146 | `result-track:155cde08aef1a5afed23a5a1606f575e27e130776982e151ab8b889d05536863` |
| 21 | `theorem` | [_root_.Function.Injective.sameRay_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/root-function-injective-sameray-map-iff.md) | 153 | `result-track:59afe4105078509975ec27530b975e0a6f571153e3ab2d8055178ee1b74296e0` |
| 22 | `theorem` | [sameRay_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-map-iff.md) | 162 | `result-track:5c90b6c4a43f7e9a47702f4ede5404cfa06b2a22cf23921758b318a1526db046` |
| 23 | `theorem` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/smul.md) | 167 | `result-track:aa38be1925ea7084047074f2ae6028891a214f949ef2fdefcb1ed58a364aad9b` |
| 24 | `theorem` | [add_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/add-left.md) | 172 | `result-track:f01021a38a381d5a675902bdefee9dd1a7a171f4ffcdcf74a34741a215845cfe` |
| 25 | `theorem` | [add_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/add-right.md) | 183 | `result-track:4faf8de8f98721ce6df5ecab6fa777deca07ff28e5ea5ec490c8597848e18133` |
| 26 | `def` | [RayVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/rayvector.md) | 192 | `declaration-track:82ca5a866e0638263e1736942e2aac18d964dc9f083a85beb4f2f92ca600a724` |
| 27 | `instance` | [RayVector.coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/rayvector-coe.md) | 195 | `declaration-track:e68d9fbde726fca5b178b8b07761d70320c28bff36ffc4ef367bf7b7ac089767` |
| 28 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-2.md) | 198 | `declaration-track:25ca5029023e3d98f945d0a9405d9759446a64c26f2ad8200579f900b68a2c05` |
| 29 | `instance` | [RayVector.Setoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/rayvector-setoid.md) | 204 | `declaration-track:3dd3f879919e0fc3633725c9058e24884eba8002ada885959bac68bb7081c469` |
| 30 | `def` | [Module.Ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray.md) | 212 | `declaration-track:c7ad6df88cc2e5fdeb2b6f9f0fe5a4dfc4dc55235786fbea41e4dc4498e9ce73` |
| 31 | `theorem` | [equiv_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/equiv-iff-sameray.md) | 218 | `result-track:c81b338f1c97366a865568ef913a20dcf9a0d57aa34bf57d3e34b9caf587e979` |
| 32 | `def` | [rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/rayofnezero.md) | 224 | `declaration-track:46db9b992163944ae4627ef5e4bfd8fb21455ca750f709febb48b12c7d0e828b` |
| 33 | `theorem` | [Module.Ray.ind](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray-ind.md) | 228 | `result-track:989cb2500c060de4fc238fa06ea0239aa74d94b3874ee84887598e9dedf5922e` |
| 34 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-7.md) | 234 | `declaration-track:ab5752410a3fdd72c74661fb4680071399fc25f72c8bb6f87a5dfac5f633cbb5` |
| 35 | `theorem` | [ray_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/ray-eq-iff.md) | 239 | `result-track:e537aeb6ef695014700013a063d36586af1051e1caf402eefbb881cb08a37d0f` |
| 36 | `theorem` | [ray_pos_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/ray-pos-smul.md) | 245 | `result-track:c25308478e06b21a6cb64fb059c23199e97c2140789ef166230836b49697decd` |
| 37 | `def` | [RayVector.mapLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/rayvector-maplinearequiv.md) | 250 | `declaration-track:59c7b37235dca7bdd4f6929ac23c4ecfc2ed9d24970b81ccc1b8d0c70656806b` |
| 38 | `def` | [Module.Ray.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray-map.md) | 254 | `declaration-track:8bd46a93fe4384a61617f0024ff055efe27e53f1e6f645fc8256a5744da17c34` |
| 39 | `theorem` | [Module.Ray.map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray-map-apply.md) | 258 | `result-track:ca90647380f5bc5ea7ac35c7a269c65589f547e1c8b29258888cc9643b338aff` |
| 40 | `theorem` | [Module.Ray.map_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray-map-refl.md) | 263 | `result-track:1cee3d959b23c94eee89bca5e100eb40a54687441b948ddb6e2a126c11f2394e` |
| 41 | `theorem` | [Module.Ray.map_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray-map-symm.md) | 267 | `result-track:e9110c33579c63eaa0494f24d0cc774734d7a39cdf8451f3c77072512599bde3` |
| 42 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-8.md) | 276 | `declaration-track:feec096486684f7d35f20ef062b5b05b28236a77e766779dd35bdc072866fa54` |
| 43 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-4.md) | 285 | `declaration-track:4a6fa753e70bea429d6d59df42ede1092c62ff48479b8f20057e322551b96409` |
| 44 | `theorem` | [Module.Ray.linearEquiv_smul_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/module-ray-linearequiv-smul-eq-map.md) | 292 | `result-track:922da629bf55ed20d767cfa5bb26e7328fa29e343b4cf81fe1b570705c9178fa` |
| 45 | `theorem` | [smul_rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/smul-rayofnezero.md) | 297 | `result-track:f02a1e13ec7a6494c7bb30f9958aa9f646f2abfa2220b5c3025fa31f2916f937` |
| 46 | `theorem` | [units_smul_of_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/units-smul-of-pos.md) | 306 | `result-track:f684fa78911d4fefdbec332f297307d93415fe47047e6dc60a4923859dbd6d71` |
| 47 | `def` | [someRayVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/somerayvector.md) | 312 | `declaration-track:9638ff9c8b6feaddf4e423878af960c00d9f7fe606609813f9e250dc57c83be5` |
| 48 | `theorem` | [someRayVector_ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/somerayvector-ray.md) | 317 | `result-track:f1685f59ef43c3498a2bf359fc4778d81da4f2c96b29ce0cce74f992d1037425` |
| 49 | `def` | [someVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/somevector.md) | 321 | `declaration-track:4ee50d7780985c2d754be7bc5f1cc16e6a92c546e96f2750712396d809f33ece` |
| 50 | `theorem` | [someVector_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/somevector-ne-zero.md) | 326 | `result-track:284446bc8310aef71fa616a043c19294d60c3264f3fc978ed5a100bf6875465a` |
| 51 | `theorem` | [someVector_ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/somevector-ray.md) | 331 | `result-track:0f8598f9ea0b92b2777fb95c503e0dc5bb09668abdcb6c131c050dbc2b6abb5c` |
| 52 | `theorem` | [sameRay_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-neg-iff.md) | 345 | `result-track:370adc9cda0df11030083c8ee1ad343e9a146df31a50da781645c5b0595f2bb7` |
| 53 | `theorem` | [sameRay_neg_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-neg-swap.md) | 350 | `result-track:292eae5dde7a8f15492e63949fe538f86061076643a944ec36b66d2bae0e0326` |
| 54 | `theorem` | [eq_zero_of_sameRay_neg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/eq-zero-of-sameray-neg-smul-right.md) | 352 | `result-track:faeb4825b63c6a67cc5a4c91ef09291f6d524e72a0c4c13c30027e732ed850c2` |
| 55 | `theorem` | [eq_zero_of_sameRay_self_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/eq-zero-of-sameray-self-neg.md) | 362 | `result-track:ae1a190afe1939315dd7b3500c5e4a1ba8a21da65b806cd124406c2ff3cc0404` |
| 56 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-5.md) | 370 | `declaration-track:66306e4e1db9da082a0ce54ed68880152a7012f30714f372019a7af26901c700` |
| 57 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/coe-neg.md) | 375 | `result-track:45fa2eac65ecb0b247666b223642f3170a63a5be983b226afd242c5c1ee201d9` |
| 58 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-6.md) | 379 | `declaration-track:7b444f76dc811648b6135732e498aaca615ebcac79d9b5f06b75f9c79b55839f` |
| 59 | `theorem` | [equiv_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/equiv-neg-iff.md) | 385 | `result-track:7e315f35407ce15d0e150e70060efa348a8fcec67b7a58bdacabcade24ed408e` |
| 60 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance.md) | 393 | `declaration-track:0cb3c0026a2dfb86346055afa9d1f4be320cd2137198905b1d3179ba5c69108a` |
| 61 | `theorem` | [neg_rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/neg-rayofnezero.md) | 398 | `result-track:9894766274b2d674cd348367b55a734f6d6fe60c459f37b369e36f857cbab49f` |
| 62 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/instance-source-edition-3.md) | 407 | `declaration-track:441e4b4034f12d89388bf5f4748ea5f591ebe5f08db819a19a5c29639bb422ce` |
| 63 | `theorem` | [ne_neg_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/ne-neg-self.md) | 413 | `result-track:f42bef5a926400f49229c2ba28b011e42c03b20fba20974100b44478ebeb1b06` |
| 64 | `theorem` | [neg_units_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/neg-units-smul.md) | 418 | `result-track:4ec0fa3b665f53505b74689c9f358715daad64723184e83e292b8ddf3f07c0fb` |
| 65 | `theorem` | [units_smul_of_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/units-smul-of-neg.md) | 423 | `result-track:17420005f717df1f752cf3a1bbaed0976a9df1b411d952538245d43922c0571a` |
| 66 | `theorem` | [map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/map-neg.md) | 428 | `result-track:c9ea328752c0f74182efec195deb0d3e3d3d195deeaefd24a1daf08349f8998d` |
| 67 | `theorem` | [sameRay_of_mem_orbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-of-mem-orbit.md) | 441 | `result-track:135e1d576fc024749c6ae44366d892fdb3c7015176990a6f113ecb2a76ee7754` |
| 68 | `theorem` | [units_inv_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/units-inv-smul.md) | 448 | `result-track:52f413614664c8cefc9936f034075cab3c0f6a3560856918cf551553d6be80e0` |
| 69 | `theorem` | [sameRay_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-smul-right-iff.md) | 459 | `result-track:5a4b6051fffc5e3642ff17698e573961f4e7262d1baba6937966059a015a2423` |
| 70 | `theorem` | [sameRay_smul_right_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-smul-right-iff-of-ne.md) | 465 | `result-track:c43d346c868eac9e045c36b4462684f25e2d8e8cc371982cb73148d43185085f` |
| 71 | `theorem` | [sameRay_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-smul-left-iff.md) | 470 | `result-track:ba156d4ffd0e7e29c258efbe6fe3dcc3e4b87a46fda35a5ce1aaedd04017868a` |
| 72 | `theorem` | [sameRay_smul_left_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-smul-left-iff-of-ne.md) | 475 | `result-track:bc8acc8e3ff3f3ad2cc627e05fe883de4ac5c96036c2463ddd1dbcf166a6c03e` |
| 73 | `theorem` | [sameRay_neg_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-neg-smul-right-iff.md) | 480 | `result-track:1b69fb250c73952a2b3d3b9f9a38f67c8b2fc0824be4a4d6e17237ce1c0ef831` |
| 74 | `theorem` | [sameRay_neg_smul_right_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-neg-smul-right-iff-of-ne.md) | 483 | `result-track:daa6c26689b2e882699685abf3037122ae10f4d62a62a3c62b1154d660823482` |
| 75 | `theorem` | [sameRay_neg_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-neg-smul-left-iff.md) | 488 | `result-track:cb7af05ab0d663bf517563a0833d2016b6fa1fe493e3956b3632b4e04e220e9e` |
| 76 | `theorem` | [sameRay_neg_smul_left_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-neg-smul-left-iff-of-ne.md) | 491 | `result-track:dc9861ea548556a0baea1806520d4839e2d13bace3eb3faef6f67f9ff73554eb` |
| 77 | `theorem` | [units_smul_eq_self_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/units-smul-eq-self-iff.md) | 496 | `result-track:7f89a629a032655d1d026b897968546d5c6d507b46ad6d26f834c5c22e165c8f` |
| 78 | `theorem` | [units_smul_eq_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/units-smul-eq-neg-iff.md) | 501 | `result-track:3f505183f6b3eba77671822ebddb6f3069e02bd52dcf346ac8b1efe4f0c6008f` |
| 79 | `theorem` | [sameRay_or_sameRay_neg_iff_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-or-sameray-neg-iff-not-linearindependent.md) | 507 | `result-track:9b7a75b6c221ba686fef92d4719a933fea26ce7e39b294c5bc017ae099f8ff12` |
| 80 | `theorem` | [sameRay_or_ne_zero_and_sameRay_neg_iff_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/sameray-or-ne-zero-and-sameray-neg-iff-not-linearindependent.md) | 551 | `result-track:794af1e2369455d92df8a3052c3d667e7eed7ceece127ef6daa477edeca8c35e` |
| 81 | `theorem` | [exists_pos_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos-left.md) | 566 | `result-track:60dbafe14ee780493e06307a33759c9a1f72e34eba5a7f89ef7f7fabec0e4076` |
| 82 | `theorem` | [exists_pos_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos-right.md) | 571 | `result-track:c0de463fe4a847f18be545536225730bf872b8130c31134844f616ff35182743` |
| 83 | `theorem` | [exists_nonneg_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-nonneg-left.md) | 577 | `result-track:82399f0bc6e87a6148fc52afcdaaf7fe4240ef2fefc11a3a7577467e79b08a51` |
| 84 | `theorem` | [exists_nonneg_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-nonneg-right.md) | 584 | `result-track:03c4ce7b233a80ccd713aea4b307f335bdea67d3233d112d33ab900870cc315e` |
| 85 | `theorem` | [exists_eq_smul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-eq-smul-add.md) | 589 | `result-track:d5c75f899919f10590a7bc010d8b9ac623f304601959981f6c24503e054b00b6` |
| 86 | `theorem` | [exists_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-eq-smul.md) | 605 | `result-track:4ab0aa4b41785ba3f10674475aebde4c06ec66edd09761ff86dc4f8d70cd6da0` |
| 87 | `theorem` | [exists_pos_left_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos-left-iff-sameray.md) | 616 | `result-track:a5130216d18d9343ca5ddb7fffc040ae0b6a03652eaa952184fb0cb093a1bb10` |
| 88 | `theorem` | [exists_pos_left_iff_sameRay_and_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos-left-iff-sameray-and-ne-zero.md) | 622 | `result-track:792621d1087194ae7fd8154d84ba156a039fc7bf099714a17b9d6dc5c6f3e3dd` |
| 89 | `theorem` | [exists_nonneg_left_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-nonneg-left-iff-sameray.md) | 630 | `result-track:9398e8d72e1133a49e2b6418dc9cb11ee4a934b63573fbb21270a9436aa326ce` |
| 90 | `theorem` | [exists_pos_right_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos-right-iff-sameray.md) | 636 | `result-track:ac00f247de6e43141cc893e79fb0e4699298c22f3b2fe3fad1e7e7ac18d56620` |
| 91 | `theorem` | [exists_pos_right_iff_sameRay_and_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-pos-right-iff-sameray-and-ne-zero.md) | 642 | `result-track:0d38987f78dd11f2bc70a2ff81ca3cae0ffbf7c3e55c31e340199531057cfd1a` |
| 92 | `theorem` | [exists_nonneg_right_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Ray.lean/declarations/exists-nonneg-right-iff-sameray.md) | 648 | `result-track:2125d0db466807afcf5bd44ca62533dfc5d2781eeb328cc685caf9143873077a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6d9bb70df1c81f4acaaae997be24cf754ec570bb2abfd3cb891e76918d56bc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
