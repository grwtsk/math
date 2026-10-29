# Verification target: Ring Basic Semi Ring Cat Max

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a44589c1c5bae6e128098045ce6529ac33782f6d",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf5003d726ad9d921782dc488336324394b8e8bdb9befe7c6b2efa3bd7e58c7c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a44589c1c5bae6e128098045ce6529ac33782f6d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf5003d726ad9d921782dc488336324394b8e8bdb9befe7c6b2efa3bd7e58c7c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf5003d726ad9d921782dc488336324394b8e8bdb9befe7c6b2efa3bd7e58c7c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.ReflectsIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/semiringcat.md) | 32 | `declaration-track:6cd6f529f6fd232735bc8f761df7503ae8c535e7cecacc2ce96ebe4e79967c4f` |
| 2 | `abbrev` | [SemiRingCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/semiringcatmax.md) | 40 | `declaration-track:ecc69413614a77e1b624227e4d21035c97f0e1d8a5395d673c6d8207c1066f97` |
| 3 | `abbrev` | [AssocRingHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/assocringhom.md) | 46 | `declaration-track:8eda1ba3707ac9838dbc4bb62869326b09cdec58c520ee7d5152b014d4229f3f` |
| 4 | `instance` | [bundledHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/bundledhom.md) | 51 | `declaration-track:5b0c5e73f0fe9a96075497f86ce179ba3629b1988c04796b0d554964c486bd83` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-4.md) | 64 | `declaration-track:213f022478ad12b17883cd433d62406e52f5522613c9ea899d974b4de5e5458d` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-10.md) | 68 | `declaration-track:9fac846bd0e5fbc88fbca7a6385e5d9e3a6c9f3479760c608e29f4cadd9b7ce8` |
| 7 | `instance` | [instSemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instsemiring.md) | 75 | `declaration-track:91ea9f9fb7aa2264828ab0aa5fc88ab7c571c3124b3d0fc631033b59082b0a16` |
| 8 | `instance` | [instSemiring'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instsemiring-source-edition-2.md) | 77 | `declaration-track:ae15f631ca6e6def374dce0a80f12a50a4805b7e4e3d66f83266977c4326cd91` |
| 9 | `instance` | [instRingHomClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instringhomclass-source-edition-2.md) | 80 | `declaration-track:49d23626e68010dcde101cc9f6ff46542c7568fb058ce99d318a1453cf3c2399` |
| 10 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-id-source-edition-2.md) | 84 | `result-track:85b7764c638390a1a14fbc8a3289167675c8cf979270ae1335c7daa300c8a072` |
| 11 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-comp-source-edition-3.md) | 87 | `result-track:5423e9ce2ef706301124fbafb6ada444c9a8fb911e2d113375b7f148e5d3a4f2` |
| 12 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/forget-map-source-edition-2.md) | 90 | `result-track:4203b70054cd8133dc85de8e4acc69a59b10d3bfd7b1282d492a0b7190829c2f` |
| 13 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ext-source-edition-3.md) | 92 | `result-track:b26707ea67758cb9701fe5b75f410588ba95eba8c44e15a3f1e2ac9f72c40802` |
| 14 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/of.md) | 96 | `declaration-track:16e741a700f2c19c6a9b7f3121a2825ace0ca8eea3d49fed3d89e686fb41aefd` |
| 15 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-of-source-edition-2.md) | 102 | `result-track:9b91ab38375a338d28be5141e43538d198a0cc75fee20fa65280c955734d6f28` |
| 16 | `lemma` | [RingEquiv_coe_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringequiv-coe-eq-source-edition-2.md) | 108 | `result-track:281d61b1067a20af328a1dab93267874832d3811d9248b15fcd6694ed26cd777` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:0cc90d6c87fba0440f282e084b0b9282af082aa3f6b728f8889ed6edb2961fcf` |
| 18 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettomoncat.md) | 116 | `declaration-track:7c37e6f2b9677788ac2b961c2d51db7279fd76dd2e327aa5666766328050ebf6` |
| 19 | `instance` | [hasForgetToAddCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettoaddcommmoncat.md) | 124 | `declaration-track:e46735026ff35a022285addf797bbaa6268b33de11358215aad3e292cdf9cfb7` |
| 20 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ofhom-source-edition-3.md) | 134 | `declaration-track:b2a39802a9086bc3402aba978ea14ff80698c49e5dab73985b270d578e64deb1` |
| 21 | `theorem` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ofhom-apply.md) | 142 | `result-track:2dfb5ff077dd4fba107190e823c821f0bfa6ef91200702ba7cbb551802ad1c1e` |
| 22 | `def` | [_root_.RingEquiv.toSemiRingCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/root-ringequiv-tosemiringcatiso.md) | 152 | `declaration-track:61ecc4ea60e22a63cbdf18e0fb32c69b57563daf8a6af36eb89a7dbdcd0376bc` |
| 23 | `instance` | [forgetReflectIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/forgetreflectisos.md) | 157 | `declaration-track:84ee9fb6fc67cacfedb0a87cb72b26b3d358f8a9338bb914da014c5538e5104a` |
| 24 | `def` | [RingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringcat.md) | 167 | `declaration-track:59fbc47d94a419cf06e8c4e05a04a38ada1213e69a07560bcd2a005e4269c218` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-18.md) | 174 | `declaration-track:c4977991321578e82aa3974661c3ef2b8a7781b22f0e612e2ab7b83a26b4d086` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-14.md) | 182 | `declaration-track:aaca61e90516d435f48c2e177f24643522e81baab0c1391ce386857ca48d84a7` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-5.md) | 186 | `declaration-track:4f5d8b925f2ff46bcff134c85d982d2b35657a632efa2f0a5897e5c4d53d3ccf` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-6.md) | 189 | `declaration-track:5d8efe06a521fd1cd5f3269d71ffef6f1fa8f70f0266623df318561280ee2eb5` |
| 29 | `instance` | [instRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instring.md) | 195 | `declaration-track:7353c8fa120f3f82cc91225d93bd2ed1fc0dbc8736347d24e3db907902aa6822` |
| 30 | `instance` | [instRing'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instring-source-edition-2.md) | 197 | `declaration-track:9c9d33f527f074eb14f509044a836a6d6e143655c1f3d5a4bbaf64aa9d12ab46` |
| 31 | `instance` | [instRingHomClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instringhomclass-source-edition-3.md) | 200 | `declaration-track:5ce1a684c5e08d565d00b75cf24ce40aa74da46930e714692daa0b0730e9225f` |
| 32 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-id-source-edition-4.md) | 204 | `result-track:a379a754188ea66972182617813c832db870695bc525fc10e6323ec26717979c` |
| 33 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-comp-source-edition-2.md) | 207 | `result-track:48e1b53643c538973bb178c5d1cc83e9d2fea16aa2a26dc0411a06c772b1a87e` |
| 34 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/forget-map-source-edition-3.md) | 210 | `result-track:6bcb79d5b41526b21fd6f30dba8a588f3a1beb74e0901863c340956007e62035` |
| 35 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ext.md) | 212 | `result-track:94bb3f57ea65962773c647bec7555ca9738ebe1585abafc4f78d7cf6d62e82d1` |
| 36 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/of-source-edition-3.md) | 216 | `declaration-track:d168424da115b732e12c0d1c51e389cfa4f4f6199fd8d826cf96d51fb19fce54` |
| 37 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ofhom-source-edition-2.md) | 222 | `declaration-track:5c98dcbfa48e66116079af600d28f070b5bcf7139871c93cbeccde5ee867d23c` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-17.md) | 234 | `declaration-track:b9e91c543ebb71456195703f2adbaf1d3903ba3f6c5d5fc4d94a4ec363e61855` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-16.md) | 237 | `declaration-track:b4e1c63696fc59c53fff9073c185ea1d776a1f9e693bfdb40e7362208d79691a` |
| 40 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-of-source-edition-3.md) | 241 | `result-track:d041a37ded427fda489497e095149c5a318393f2d1af30240b99d2aad6621338` |
| 41 | `lemma` | [RingEquiv_coe_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringequiv-coe-eq-source-edition-3.md) | 247 | `result-track:4a4fc40fdd22fbd551cb5612f8f8a878a7df1c976af38e309df559148b3329f9` |
| 42 | `instance` | [hasForgetToSemiRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettosemiringcat.md) | 252 | `declaration-track:184439c79bf8ad6e97ffac1b028f0ca4e20c6eabcd87526ed5ae6bf91914a885` |
| 43 | `instance` | [hasForgetToAddCommGroupCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettoaddcommgroupcat.md) | 257 | `declaration-track:d2e1b10aa5df632cc494100e4021d5870007a8be46de2b600a9035e9a553ff6a` |
| 44 | `def` | [CommSemiRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commsemiringcat.md) | 269 | `declaration-track:740cab0b637e911a02500a553f2f001de1d541f13be6df78d5dc82d38204a740` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance.md) | 276 | `declaration-track:09ba197feb703d4f0888545144a9f64024c3936d53dfb13f98b849a4ee328ce9` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-9.md) | 283 | `declaration-track:9f12b76e2d6a421277c3ef915f7ca60251af4e5de9471064785b4fde1089cbce` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-7.md) | 287 | `declaration-track:60ee99c0912df9065243e3eca76f3d4192cff388813a8c23130c9ff16b397df5` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-21.md) | 290 | `declaration-track:f1d82682ad82382dab8eb69f3fae5d360ac1f0263cd99fa0301ee3ee3e6a2834` |
| 49 | `instance` | [instCommSemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instcommsemiring-source-edition-2.md) | 296 | `declaration-track:c366aac122e535a7ae13657584f5c1fd679887c1b8ac65212abc8fb3e33eb089` |
| 50 | `instance` | [instCommSemiring'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instcommsemiring.md) | 298 | `declaration-track:bb2110a20ab207340c4338df41c85af852ad72993b64626c71bf6d79417bd09c` |
| 51 | `instance` | [instRingHomClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instringhomclass-source-edition-4.md) | 302 | `declaration-track:a3f522fef1ed615f64faa60835e7d849142a3ff98144a225b30778bd635cfdf2` |
| 52 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-id.md) | 306 | `result-track:0ebaf77d4170b342f4b99d99d639f832d26abbea1404c46a5ac5cf09abc96151` |
| 53 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-comp-source-edition-4.md) | 309 | `result-track:66b2eea788694c8af4147f7b4fdc040fbb05cbacab745c978de42127a49b6d66` |
| 54 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/forget-map.md) | 312 | `result-track:322d5c6a969dbecb81445a7bebb8474ea57f434cd5f5b91d0e8270cbe9b8b68a` |
| 55 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ext-source-edition-2.md) | 314 | `result-track:aaf5fb3087f5cdc0b330b420bd0afd4d669baad36854e1d901976102e1e75e2d` |
| 56 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/of-source-edition-2.md) | 318 | `declaration-track:1d0b5f0c3dfff78dc1f4b6ce9f99671b2ea8b51d11e4ad0c8f7d05f3777cb4eb` |
| 57 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ofhom.md) | 324 | `declaration-track:203ccb13a7b1ab1571ab3339b1d82b2ebe69c6c1ebc9c68d5a1b51df1c40f2a3` |
| 58 | `lemma` | [RingEquiv_coe_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringequiv-coe-eq.md) | 330 | `result-track:1f1c48d26f0c5d8a8b01055fde505843eed520e09247bfee5b581f33be63fefb` |
| 59 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-20.md) | 344 | `declaration-track:ea9a143d7c0d3d6a6c542e40ff34426d2029905cddfeaa0d9e108b160eed1c29` |
| 60 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-12.md) | 347 | `declaration-track:a96fd10a8049b215c95f3e6a53220b59450b322001c350e2aee589b1145f3d8e` |
| 61 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-of-source-edition-4.md) | 351 | `result-track:ed9e7b2f96dcd4b563895867fe5fa61a137cb77dca2b99bb4f1a4c909da2e75d` |
| 62 | `instance` | [hasForgetToSemiRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettosemiringcat-source-edition-2.md) | 356 | `declaration-track:959346626e96d383277d1a892d6f336a1a676a62ec3b1ffacb0d551a343a99fc` |
| 63 | `instance` | [hasForgetToCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettocommmoncat.md) | 362 | `declaration-track:286be25ec2298156d9a63d028c3736ae471899b457262d9b49c05355bdc9101b` |
| 64 | `def` | [_root_.RingEquiv.toCommSemiRingCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/root-ringequiv-tocommsemiringcatiso.md) | 373 | `declaration-track:26c0823f3597d02549db39e9771532f552797bb168b7641216e93eb6103ff27f` |
| 65 | `instance` | [forgetReflectIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/forgetreflectisos-source-edition-2.md) | 378 | `declaration-track:cbd235d9c8d7af2268a0f24db890d993edd5834a266c76c333204a4746fe00d6` |
| 66 | `def` | [CommRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringcat.md) | 388 | `declaration-track:ccc84ccae21dc225c0e10214cd156d8224f4ee005a2f8d89d66c5484cf0d2b3c` |
| 67 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-13.md) | 395 | `declaration-track:a9b2d7a6844c7c6d6dad9933edbee04aa31d668ba97b95da21c6c3a972317387` |
| 68 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-15.md) | 402 | `declaration-track:aeffa6ef033bf3a14e60592a894a22c683c01fc924c2b16c92d35015350230d4` |
| 69 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-8.md) | 406 | `declaration-track:6bf555d51eccb84a003085e025874d7a3d0906b76df24a3a28fef16389d6debb` |
| 70 | `instance` | [instCommRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instcommring.md) | 413 | `declaration-track:0f15bb2678974091c2df383354893384b49e1bf05168a928a1d25f86132fcf0e` |
| 71 | `instance` | [instCommRing'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instcommring-source-edition-2.md) | 415 | `declaration-track:22005f70382bad449f132f9611802b09c6feb596bfc5f97a17b3e422294e336c` |
| 72 | `instance` | [instRingHomClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instringhomclass.md) | 418 | `declaration-track:2243587394ea49214bbde37bcc971f29541a7e68688dec48054d205eb009da82` |
| 73 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-id-source-edition-3.md) | 422 | `result-track:a13bf7a3b2c7fffc8bd496fd798e37a3d54053e761176f7bbc56e0d661295fc7` |
| 74 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-comp.md) | 425 | `result-track:3afb4621cef0cff4326331941ee85d53dae165b21be02749540c3252d28a4678` |
| 75 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/forget-map-source-edition-4.md) | 428 | `result-track:7685d4d7003866208ef2ab0af84478e49fcb6602fc50a707222d9dea4dd0824d` |
| 76 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ext-source-edition-4.md) | 430 | `result-track:d533a7cc4afa5ae334482d9e237722f828fd22ede8035e33b5032191eb6800b5` |
| 77 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/of-source-edition-4.md) | 434 | `declaration-track:ddfc3964a1ca862f5bac28feb922f22738f642f505c98d0f6bb7d00a43145461` |
| 78 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ofhom-source-edition-4.md) | 440 | `declaration-track:c82b39be0b4a6220ba3fdff6e1d47b4ff35ce844903294c8a84ee24369606cf1` |
| 79 | `lemma` | [RingEquiv_coe_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringequiv-coe-eq-source-edition-4.md) | 446 | `result-track:4c8673ec491c504eb97edb5a22e390a616ec0132ce2812cec096548300beec58` |
| 80 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-19.md) | 459 | `declaration-track:d81f77dad9a01b16b6579a6144517b00aa59993842982a897eae10e03177ec04` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-11.md) | 462 | `declaration-track:a5e2fd9549556eb28f148d1148df80cb5d79939593df38a59b55119dd6809db0` |
| 82 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/coe-of.md) | 466 | `result-track:05bca3bdeca7b13fb678f97acf890899a82ddadde1114cc67130a577394707b5` |
| 83 | `instance` | [hasForgetToRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettoringcat.md) | 471 | `declaration-track:f08ee4717afe7569695390a3225fc1346099259af8094a1a24c02c7c4801a430` |
| 84 | `instance` | [hasForgetToCommSemiRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/hasforgettocommsemiringcat.md) | 477 | `declaration-track:3c330e5c717aa15641ed06f8ad73b55ee6a14e661288414c39c83f07b25cbf4a` |
| 85 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/instance-source-edition-3.md) | 483 | `declaration-track:0ee173d5aef10841b6439f257c6210a3e2cd8b1cdc7d22ab16ed184cab82b396` |
| 86 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/example.md) | 488 | `declaration-track:40541606daab82bab416933cc012e5bc812e0028c46f298bfa4bec318cc49df7` |
| 87 | `def` | [toRingCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/toringcatiso.md) | 496 | `declaration-track:3d4dc18beec5021b76482cc25474f2ce02b8f59ee2990a80dd345b0476be0b89` |
| 88 | `def` | [toCommRingCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/tocommringcatiso.md) | 505 | `declaration-track:ae7e92245edd519bfaccad0d9216ad8405ff6cca76ca4512d54bdd8723475d76` |
| 89 | `def` | [ringCatIsoToRingEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringcatisotoringequiv.md) | 517 | `declaration-track:0cd1956d12b70d3d36809553b28b13eccb379c5468aca12e7635ef1845f52294` |
| 90 | `def` | [commRingCatIsoToRingEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringcatisotoringequiv.md) | 530 | `declaration-track:6da122dbe74dbab36ba1442a0930baeab2fe7696b1e5bcf59a9a7e4aa8e4fabb` |
| 91 | `theorem` | [commRingIsoToRingEquiv_toRingHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringisotoringequiv-toringhom.md) | 544 | `result-track:d26b4de58eb01fde42cc778e08c90cdb1d236537765f191c185186e41cfc0bee` |
| 92 | `theorem` | [commRingIsoToRingEquiv_symm_toRingHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringisotoringequiv-symm-toringhom.md) | 553 | `result-track:0d079566782dbfbf40d78d0b3fdd37af82c1652fe63df6a2e1e2626324d93317` |
| 93 | `def` | [ringEquivIsoRingIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringequivisoringiso.md) | 564 | `declaration-track:282c3751f000473779d4921155ece77cbd942d7e62c5eaa65040f34bc4fa0900` |
| 94 | `def` | [ringEquivIsoCommRingIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringequivisocommringiso.md) | 573 | `declaration-track:e64bd88474b6281cb512c70e18193ca181a6e22709563ac6f152684ffc7a6ee7` |
| 95 | `instance` | [RingCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/ringcat-forget-reflects-isos.md) | 581 | `declaration-track:38ac17ecf2c81317ce5aa34e6f94ed03b2e4670e01c91611198589f410470893` |
| 96 | `instance` | [CommRingCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringcat-forget-reflects-isos.md) | 590 | `declaration-track:9546156034827bfafc847a2ee26caedad60957c2c16bd8dd280bce2c5f755c80` |
| 97 | `theorem` | [CommRingCat.comp_eq_ring_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringcat-comp-eq-ring-hom-comp.md) | 599 | `result-track:b01f74009b912e838731a7f59f6478215062472e1a5e41c860c10b88b7d28f13` |
| 98 | `theorem` | [CommRingCat.ringHom_comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/commringcat-ringhom-comp-eq-comp.md) | 605 | `result-track:9a70e6140449a4921b0b691a4c9047dc19d1254c01ae21810b414e2c48985d37` |
| 99 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingBasicSemiRingCatMax.lean/declarations/example-source-edition-2.md) | 617 | `declaration-track:57950cac43b2c24a0714416e6f683df6a012e1ac866b15393b4c8921bf708b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2df995f5170e04cf691f083edab7b22fe061401dc1c3ec4d616984c98a630ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf5003d726ad9d921782dc488336324394b8e8bdb9befe7c6b2efa3bd7e58c7c8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf5003d726ad9d921782dc488336324394b8e8bdb9befe7c6b2efa3bd7e58c7c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
