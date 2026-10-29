# Verification target: Ring Theory Derivation Basic Namespaced Simps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cef11039c6087e1ae3c40142ce076d17870708c",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cef11039c6087e1ae3c40142ce076d17870708c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/derivation.md) | 49 | `declaration-track:55e62ae7fda5f23c12ab536e372308ef365d7ef58897efc6700b9fedba3f7dff` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-12.md) | 70 | `declaration-track:e768444f641c7e817744da52b960be8e37721ed7149e6601e89aa4fd200a60e1` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-13.md) | 74 | `declaration-track:f7fcb2619732985ae6486a4030ccb95b7fd9d839af7a7bd624b2ba2a57e7a2fe` |
| 4 | `theorem` | [toFun_eq_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/tofun-eq-coe.md) | 79 | `result-track:a3d62a54130987e931314fa539eb0f04a8b5e5cf4c2e33b7d1d2f01de25d0abf` |
| 5 | `def` | [Simps.apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/simps-apply.md) | 83 | `declaration-track:c7be97f58f4923c6b52972698fa68b3e0473c8b38333ca5bb771d6bda9d754e4` |
| 6 | `instance` | [hasCoeToLinearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/hascoetolinearmap.md) | 89 | `declaration-track:f081683fce3c29cec647a45eaadd91e0df6f4c8d26d56d76bdb700b3aaf8ca80` |
| 7 | `theorem` | [mk_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/mk-coe.md) | 93 | `result-track:90bb6ef0a654fee8e748ed852b63512cb160d6911f27143c6ef52609f1028d29` |
| 8 | `theorem` | [coeFn_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coefn-coe.md) | 97 | `result-track:60d5cf91387e627ee4ed348a2598b19134339ced22911145d7ea8c9106f9a8e9` |
| 9 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-injective.md) | 100 | `result-track:2ea5814f6d6433819be23d1e6a1158f1239fa81afa2381e7fff79f68f84a31d8` |
| 10 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/ext.md) | 104 | `result-track:c0d8bfd876cc3c9cb748b3d81150ede0358b241679b42b6ac76d8f3e7c2572e1` |
| 11 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/congr-fun.md) | 107 | `result-track:04237f81709e94c7c795b905d172ba6d439371774c1b4e10fd7a4bac9e33763a` |
| 12 | `theorem` | [map_add](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-add.md) | 110 | `result-track:e148bb58ea8a588f091a853099806b70caa09df56ee6175aea962dfdd475e220` |
| 13 | `theorem` | [map_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-zero.md) | 113 | `result-track:2ef28d4cf37eb3838170c0e42ecfdba8ab8514fd174c6eec210647204ac90655` |
| 14 | `theorem` | [map_smul](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-smul.md) | 117 | `result-track:aec81318770f6d778944ef940ebdad826550f2f1ba8f823a60c68821262c26ae` |
| 15 | `theorem` | [leibniz](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz.md) | 121 | `result-track:7ab1216e9ca3e9744e12e7158994637599a4409a146cf65f33780c87f517e405` |
| 16 | `theorem` | [map_smul_of_tower](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-smul-of-tower.md) | 125 | `result-track:009ad28a7f4464280101b544576eb02a4726a92cc6c8b053badca63ff15d2526` |
| 17 | `theorem` | [map_one_eq_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-one-eq-zero.md) | 130 | `result-track:52821f3dc405b2f734c87adbd14e2efe044039e7f28ceb1b7edcc6708e7e06d7` |
| 18 | `theorem` | [map_algebraMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-algebramap.md) | 134 | `result-track:82475ad5315642cb1acd2786b53a10fc6292f3ee8b5d7c195d1f717b24573b6e` |
| 19 | `theorem` | [map_natCast](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-natcast.md) | 139 | `result-track:70e986b710cb3fdc5ea2c21ad0a34928393be885782ad125eaca2b2ec038ead5` |
| 20 | `theorem` | [leibniz_pow](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-pow.md) | 143 | `result-track:c7041fc2606508d7463644cd0e2d93f10d1c9b1bea1ea179455eef84b36715de` |
| 21 | `theorem` | [map_aeval](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-aeval.md) | 154 | `result-track:0c772cbb855fb6d10f7f3ec9ea4187e2eb5d0a29aa6a42016a244904a10cac45` |
| 22 | `theorem` | [eqOn_adjoin](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/eqon-adjoin.md) | 161 | `result-track:049372f98e11dafb05a152a0d589d18b7c1d627043148ce8e69b7eff6d17d8a7` |
| 23 | `theorem` | [ext_of_adjoin_eq_top](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/ext-of-adjoin-eq-top.md) | 168 | `result-track:30a33496262970db8de2dadce145e97a8045c487759acb813b0205f3a0153b70` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-7.md) | 172 | `declaration-track:8f6302989dba2e83a3aed7386cfbf153c3d615e6aee06c263d47c28b9235f1c3` |
| 25 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-zero.md) | 178 | `result-track:c20ca6e106ffcd8f3d55f2ce7336d73771222d914786932450a77bd44ca8d653` |
| 26 | `theorem` | [coe_zero_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-zero-linearmap.md) | 182 | `result-track:cf275784c595502a1a5d0ad505a16873515c16b4d2c484689a7f80af7311a083` |
| 27 | `theorem` | [zero_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/zero-apply.md) | 185 | `result-track:6bdb1a69b0cdec940509e8dc0838acb43a264b1b835fd067b66ddad699835524` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-8.md) | 188 | `declaration-track:a2499cce9923ac318928fe70822dc4e82c303ae71b4ab182ab32732e10a9c066` |
| 29 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-add.md) | 196 | `result-track:89550c61fae564ddd81a9e762b1e48a5f4560121b988e76b922c63f9cb0db93c` |
| 30 | `theorem` | [coe_add_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-add-linearmap.md) | 200 | `result-track:9f4a68ce14ccf82585480e0d0ad71bbed961aef743e537bf6a237f8605a92346` |
| 31 | `theorem` | [add_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/add-apply.md) | 203 | `result-track:102920ac6784e042af24864e854f1cc4b355e0bfb79c9bcb349163017dc6c494` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-6.md) | 206 | `declaration-track:889ec795248854ec93aa6446cd945c7ff663d619790dda3757cc955ad828239b` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-2.md) | 215 | `declaration-track:5e0512401cf473e1cdfb89149320cacd6a9408b48916314b46150849aac4d50e` |
| 34 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-smul.md) | 223 | `result-track:0796970b4888f36e6106e9c78cc73b70ba5b7df25a1fadff99d28634ebe44e0f` |
| 35 | `theorem` | [coe_smul_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-smul-linearmap.md) | 227 | `result-track:04cf07d11094b39ac89c60ca178a0aa4949eeaae26e641adbb04a46c03c737e0` |
| 36 | `theorem` | [smul_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/smul-apply.md) | 230 | `result-track:b6c5e9a8f8f03c7bd5ff057eb81664c6b218bd0f171af0d3b0964327df9179c8` |
| 37 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-11.md) | 233 | `declaration-track:df4860ded5f32ccd40442ca3cb8aa1fa5bc8f8cdbadef738ad951cced806d7ab` |
| 38 | `def` | [coeFnAddMonoidHom](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coefnaddmonoidhom.md) | 237 | `declaration-track:3f21eba63075296c044dd0d10b5db988ae063e1422be928116d37da3ff8dd7e4` |
| 39 | `lemma` | [coeFnAddMonoidHom_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coefnaddmonoidhom-apply.md) | 243 | `result-track:7f8f24115b780bcaa57634dac66ffd240f4a7901b8631270fb64ae716d031c32` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance.md) | 245 | `declaration-track:18177fbe668efeb23fddbf8d3cf71c4b48579af118367852fe8b8155dec6f818` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-9.md) | 248 | `declaration-track:a917e8b40a9911a4ad9c6a0d9afa83107590144b320b81b7034d493f202386db` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-14.md) | 252 | `declaration-track:fbfc8c82d60a4fc4aa4bc8d2785f165725cd9159c70ec181a6704fa7c49242c1` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-5.md) | 255 | `declaration-track:7d0f4b99e462293c0a7ce44ab14fbae7ad7fff6fd39fd9b0664836188e30f015` |
| 44 | `instance` | [instModule](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instmodule.md) | 260 | `declaration-track:d06050088f734726fd9d720bdf2127b23459eb5a8f378deb30254d7afe3e0715` |
| 45 | `def` | [Ring Theory Derivation Basic Namespaced Simps](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/compder-source-line-273-occurrence-2.md) | 273 | `declaration-track:8fec24f8cfa7292b31eaab7aeeab1f972cc7b69640535667e230fb26c2a0a82f` |
| 46 | `theorem` | [coe_to_linearMap_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-to-linearmap-comp.md) | 284 | `result-track:973773a10d078a855552275832eb05d46b8a7e307dc321311b92c59c1c59c658` |
| 47 | `theorem` | [coe_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-comp.md) | 288 | `result-track:eba47637f06f00661d31202b3a751f8c66033fe2ac6157a5aa68db44fbb883cd` |
| 48 | `def` | [llcomp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/llcomp.md) | 293 | `declaration-track:15ad3dc293096f1c0b2f0da15b013633e4fd153f4a7829cd8b4f4079800b7bf4` |
| 49 | `def` | [Ring Theory Derivation Basic Namespaced Simps](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/compder.md) | 299 | `declaration-track:65c4677a40c1584d60bfef60f221208e4342200b98888ca119e270cf597f7832` |
| 50 | `theorem` | [linearEquiv_coe_to_linearMap_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/linearequiv-coe-to-linearmap-comp.md) | 306 | `result-track:dfcf9fb66fc1e5a6ebbffbf9926b5a6d32bab39accb441c00c6e28205fb4017d` |
| 51 | `theorem` | [linearEquiv_coe_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/linearequiv-coe-comp.md) | 311 | `result-track:51b9e64c00743a6c643e16f39ab0e2531c32853c38cac35cdc328d7350e788ee` |
| 52 | `def` | [compAlgebraMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/compalgebramap.md) | 321 | `declaration-track:5726ad8913fad1e620639d4ee323ea8f724a3276cc79d4a3776fac612cc6d818` |
| 53 | `def` | [restrictScalars](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/restrictscalars.md) | 335 | `declaration-track:93e43541d6da9463f7c3fcdefa66fb91fd94633de4df2a14eb061690b44ed18f` |
| 54 | `lemma` | [coe_restrictScalars](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-restrictscalars.md) | 340 | `result-track:4b8b2d064d484879dcebb3c4cd82ed1896a02e09e31b7b698103307294cfc5df` |
| 55 | `lemma` | [restrictScalars_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/restrictscalars-apply.md) | 343 | `result-track:37515b829f716d3cfcf29d41b13535f03fee3c81fb39312124ceed4182032aa2` |
| 56 | `def` | [liftOfRightInverse](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/liftofrightinverse.md) | 361 | `declaration-track:11436da2ae6f462fa95a2d2f065babb73ed2895a4e7da9227ab67be81b67d31a` |
| 57 | `lemma` | [liftOfRightInverse_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/liftofrightinverse-apply.md) | 382 | `result-track:51ee55612e9efb479a79757ad088917cc04e812dd7791eadafa822875fc4af71` |
| 58 | `lemma` | [liftOfRightInverse_eq](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/liftofrightinverse-eq.md) | 389 | `result-track:0686dc87d24a1f90cd2a4e7027856c24d0e7e464aebcd4d05220787bc7a6457a` |
| 59 | `abbrev` | [liftOfSurjective](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/liftofsurjective.md) | 399 | `declaration-track:ade50dece1d8d836664a67ba34c9ae0ece50119c468549a9bb94c029a6f6b7cd` |
| 60 | `lemma` | [liftOfSurjective_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/liftofsurjective-apply.md) | 403 | `result-track:879f1b1f2786911df1c9f749f24eb507dc095fd566adc8dc03cf425036b6692c` |
| 61 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/mk.md) | 416 | `declaration-track:956ceeb6fb57518c508e11c19a8d58b11779c2985260e0be7da270369102941f` |
| 62 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-mk.md) | 423 | `result-track:6f8cef5abe4212725d7e90296227b66968e06ae5960a433eea5691721197a00d` |
| 63 | `theorem` | [coe_mk'_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-mk-linearmap.md) | 427 | `result-track:eab3c82556e84f575e8982b3ecf0755341c80d16c86395dc571493dab26ad262` |
| 64 | `theorem` | [map_neg](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-neg.md) | 442 | `result-track:6133901b3b881f72d3c5862a03994f0de3a7cd9b2fad5a15e6fa3d1b9b3fab75` |
| 65 | `theorem` | [map_sub](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-sub.md) | 445 | `result-track:70053086051ff29943f2e044e569b8a526d52937864571c7fd9cd296072d89c9` |
| 66 | `theorem` | [map_intCast](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/map-intcast.md) | 449 | `result-track:52363d8ddafe6aa1837db20ea68398a3e286e3356b6e65eba68cdcefe43e4112` |
| 67 | `theorem` | [leibniz_of_mul_eq_one](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-of-mul-eq-one.md) | 452 | `result-track:c2bb7ae6565ca30429bbfd336fbd1233c222a884bb2a9f6196f937f1cc0543b3` |
| 68 | `theorem` | [leibniz_invOf](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-invof.md) | 460 | `result-track:1082ac00d0ff9c4e00705b9b376afc0c17c6f2cb1aa01fe7090aae8447917ede` |
| 69 | `theorem` | [leibniz_inv](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-inv.md) | 467 | `result-track:61ba220e973996615aab32bec1aa72e15f579e949ebb128dacf1db4877bf230b` |
| 70 | `theorem` | [leibniz_div](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-div.md) | 472 | `result-track:84364d9d363cbecdac1e3c7832c9a6e15be3cff9884f42996bbe4158beaf89ea` |
| 71 | `theorem` | [leibniz_div_const](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-div-const.md) | 478 | `result-track:b29c3686feea072184912ecd22385e9b5e98e03668fafde90c932662a1e324c7` |
| 72 | `lemma` | [leibniz_zpow](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/leibniz-zpow.md) | 483 | `result-track:9cb5372621b4c8ee703440a8094f0f71d552b54e68d633ea77d0ad4803e223be` |
| 73 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-4.md) | 506 | `declaration-track:695f7d41c7e839876dca0c2852c91a383a708f600bdd6d6fac3e811002d712dd` |
| 74 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-neg.md) | 512 | `result-track:1859f6ff16f758f5749e366abc248b93b2fb2fe005c650b15f8bdb9e23ef273c` |
| 75 | `theorem` | [coe_neg_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-neg-linearmap.md) | 516 | `result-track:20fd9d3a815634065b4a11005c2173ca1061a37da8561f0f66899543c617eddf` |
| 76 | `theorem` | [neg_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/neg-apply.md) | 519 | `result-track:390a0386f4cd91fdb2841b13c649ba72ac56abc53d436db13bd3aabd91a751ef` |
| 77 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-3.md) | 522 | `declaration-track:678448149831a78427fe7e346f778c4a9acaa1f9811be31426add88e6772b4c2` |
| 78 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-sub.md) | 528 | `result-track:a4029d321eee536a05dec20e0734f6b7d68ff241b0b9eeff1fcae97ed1ae29ed` |
| 79 | `theorem` | [coe_sub_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/coe-sub-linearmap.md) | 532 | `result-track:ff9387eb9ca67c210738b0b3b2b5454e40cfe183be5f3f85c5d9bdfc6f7aaf0f` |
| 80 | `theorem` | [sub_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/sub-apply.md) | 535 | `result-track:ca9e8f0497c9a735215c794b73c61f50afe347d18eae43046cf37905957d0355` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/declarations/instance-source-edition-10.md) | 538 | `declaration-track:beead76adb0c3de45d4eb0ec256963ba51737e754090e732f922a7a113a7fe7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d52c5e64672aa3661994ccc8f77be795b5e0690e78b22ad5a84b8593e888db1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
