# Verification target: Hom Complex Shift Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8e212634b5f53e0741408ea2c3ee9cdd7d94893",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8e212634b5f53e0741408ea2c3ee9cdd7d94893`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean.json)

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
| 1 | `def` | [rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift.md) | 52 | `declaration-track:61f14ffa1b1331818005fb914b6e11f739924402da35c110368d7729be800fc9` |
| 2 | `lemma` | [rightShift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-v.md) | 56 | `result-track:f3ce4feafecb2ced0fefc06a2a737779399b395bc72d4a9c7751734e1ef2d20a` |
| 3 | `def` | [leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift.md) | 65 | `declaration-track:09b7cc511c42dd2fc104228be0cbb8dd382c4c4ddf2de1ca010bc5c76e57bfc0` |
| 4 | `lemma` | [leftShift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-v.md) | 69 | `result-track:04c0899ce065fd7a040d5043ed3e580249aa079601e56830218bb1372f93764a` |
| 5 | `def` | [rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift.md) | 79 | `declaration-track:04dd94bf1983f369819c659d6cf1e2c67c1a873c5c7510f6b0e1675dacabc5e4` |
| 6 | `lemma` | [rightUnshift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-v.md) | 84 | `result-track:9fccae1cb7cd1bbc339ad8d15a3a5ffbfb6afd0865271ea4ad87fcb2e942e49d` |
| 7 | `def` | [leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift.md) | 93 | `declaration-track:0f947c99c143adb523dcd325606944c91af0478617e0c576498996b21e79e6e1` |
| 8 | `lemma` | [leftUnshift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-v.md) | 98 | `result-track:4d78b5f583666d8a3974a6b63bfe1f59cec33a476d83e1ebccd89c3fa7be792b` |
| 9 | `def` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-source-edition-3.md) | 106 | `declaration-track:885fae828e4454c7b45ee92fd9d24b57bf8602877f930e8d182b328725ebcda6` |
| 10 | `lemma` | [shift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-v.md) | 110 | `result-track:1a32e9ef5fc82e505dc1e70e125424e02fb6502babb5636d3044b3a264a93830` |
| 11 | `lemma` | [shift_v'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-v-source-edition-2.md) | 118 | `result-track:8091d7e033c99738c4123975542d17c9e33bef5d43a3c8dd22211c5e099b4079` |
| 12 | `lemma` | [rightUnshift_rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-rightshift.md) | 124 | `result-track:ae5f9f3f5cb1dc1091dc6bef30720aa11b3dd98738b604009aa8728328f5eb77` |
| 13 | `lemma` | [rightShift_rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-rightunshift.md) | 132 | `result-track:52811537e71740c58c8616d0ebab4ab7e9fb794f05c2f0410e80ed554e8c7574` |
| 14 | `lemma` | [leftUnshift_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-leftshift.md) | 140 | `result-track:eb0970cc02aef09e1f8c8ecb671a3cc94391989228c0c8bef594a34ec4966c60` |
| 15 | `lemma` | [leftShift_leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-leftunshift.md) | 148 | `result-track:ca5cb31dfbec19ba508b1bed6a5a60a762e57598f207ca47d56d204184f25b37` |
| 16 | `lemma` | [rightShift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-add.md) | 156 | `result-track:faff43c77162949ea9fabc3900aa28bd3d4d422df2f0727b58b43d6ca3577c96` |
| 17 | `lemma` | [leftShift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-add.md) | 163 | `result-track:086851d09faa83387236f6ecb3d288ea9c77a9ae0e9ceb22098f3b5728af4d89` |
| 18 | `lemma` | [shift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-add.md) | 170 | `result-track:30c78e13ee1d06c9707fba2de848583cd61340539b365087311bc195ef124551` |
| 19 | `def` | [rightShiftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshiftaddequiv.md) | 178 | `declaration-track:00ac7ba48fe32e7c4e7901b08e71a2c38bc718149068fac1e55a524814edde20` |
| 20 | `def` | [leftShiftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshiftaddequiv-source-edition-2.md) | 188 | `declaration-track:d9585286b84709c74c4a957900c41a3aea9f2152020bc3e9bf4dd306fcc571a3` |
| 21 | `def` | [shiftAddHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shiftaddhom.md) | 198 | `declaration-track:2442a4454163adc7bf8332a3b7f6ff31639acb53ab48a5d6f697a613f4d7feab` |
| 22 | `lemma` | [rightShift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-zero.md) | 204 | `result-track:768e1ca97621c381d8206dbe98ce5bf54fbf31f4504e310ec38dc50f20ffb713` |
| 23 | `lemma` | [rightUnshift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-zero.md) | 210 | `result-track:2011d266393c93a9d8a94c0b8e1672ca496059a671cc2a7d3f04796ba0f73488` |
| 24 | `lemma` | [leftShift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-zero.md) | 216 | `result-track:d2840121139f3865dee5d2a716ec8f84640df2950d05fb4e76aba692a6b188b6` |
| 25 | `lemma` | [leftUnshift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-zero.md) | 222 | `result-track:180db7631f2d61df0e90794f4c70561d7f5ce3ee3b597eac1d17d0bf6ebda873` |
| 26 | `lemma` | [shift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-zero.md) | 228 | `result-track:256912f31c8f2e4c9cea5654ae1ab2def9a13c86c8ebf3585fad0ba3b31d2edc` |
| 27 | `lemma` | [rightShift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-neg.md) | 236 | `result-track:54484432e62ba4f2f33e143b0914d86ca894b16a8bd8745d0ba95ab3ad4f12d2` |
| 28 | `lemma` | [rightUnshift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-neg.md) | 242 | `result-track:1a9c15ae15d7660030964ece3a5c676f8de71da2337d01a293352f257ad86b26` |
| 29 | `lemma` | [leftShift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-neg.md) | 248 | `result-track:824a7e49f4a25a072eee855afc1e629b19b94487855d64061d8bc3beca00b693` |
| 30 | `lemma` | [leftUnshift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-neg.md) | 254 | `result-track:1cc9378f4656a16533b6a9cf15f425a6412199226da511dc0d596d697782eff4` |
| 31 | `lemma` | [shift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-neg.md) | 260 | `result-track:a7fc4998f7dab8e38efc1ab602bc9c63be408fb0fd7f8566a837e45345984c66` |
| 32 | `lemma` | [rightUnshift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-add.md) | 266 | `result-track:4cf4c57ce982990dd1ef547547aa6aee43934dea7cd34680b8a505d523b8f08d` |
| 33 | `lemma` | [leftUnshift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-add.md) | 272 | `result-track:3ebab10d70990634a5155cb639ac23c3b0bde5268b6688bc3b03e846d0a341d7` |
| 34 | `lemma` | [rightShift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-smul.md) | 278 | `result-track:6c93144fca54a60cf1e941e241daaa288a7acfe036ec94ec55adabe02f9de71b` |
| 35 | `lemma` | [leftShift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-smul.md) | 283 | `result-track:49f38cdc9c6d1b51177feb2e0c7d86241fb94bb0bb8706f0f4be5ea56f8bdda6` |
| 36 | `lemma` | [shift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-smul.md) | 289 | `result-track:3ef6ee475bfff5aeb3d4113460ca6c87c81ba5c0e3dde7ecc806692323b41344` |
| 37 | `def` | [rightShiftLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshiftlinearequiv.md) | 298 | `declaration-track:a6e78989e921526297905a2b37711c93a1cd0fc12ae96e238d20522525b9dbd6` |
| 38 | `def` | [leftShiftLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshiftlinearequiv.md) | 305 | `declaration-track:c5b479784308cdd6114fa59b2fb20eb865b3aa7e969c1cb23382cba2fff228dc` |
| 39 | `def` | [shiftLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shiftlinearmap.md) | 311 | `declaration-track:d6d3f33086f44e005c593411f95a43f6fe78ba5a170e9d7bbdbb2bd4158ae07d` |
| 40 | `lemma` | [rightShift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-units-smul.md) | 319 | `result-track:8f5370d6bb629c5778778109361776034f9710eef39de212b202810b44c23f88` |
| 41 | `lemma` | [leftShift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-units-smul.md) | 324 | `result-track:e284b87e3a839848e55f5b273460a66872174ce6f92fcff8e07b7f7e915661af` |
| 42 | `lemma` | [shift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-units-smul.md) | 329 | `result-track:6de861947fa6031d7b468469a54de35ea0f51139687953b972b80b764ec58567` |
| 43 | `lemma` | [rightUnshift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-smul.md) | 334 | `result-track:2e566c19c0a90cfa64d699a84e042323aee480f68225628ffeacdb856b7a40e8` |
| 44 | `lemma` | [rightUnshift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-units-smul.md) | 340 | `result-track:ffdbb183a86fb29d335fd0e2025d06e8d5db6f9517ec06bfa595a2e7fc5936d6` |
| 45 | `lemma` | [leftUnshift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-smul.md) | 346 | `result-track:6fe461ac8cf06522a49c70892f5648f4477a34a2f35e955a33885cd0e021cb98` |
| 46 | `lemma` | [leftUnshift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-units-smul.md) | 352 | `result-track:00499d49732b6b9d1527a73496ddf3e9bfdf70c8e25c911d91c1d7d200442df7` |
| 47 | `lemma` | [rightUnshift_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-comp.md) | 357 | `result-track:4d1fa1f9a024934d8d93477dc088627bee0eacfa3ac9a846a66b1973db054c35` |
| 48 | `lemma` | [leftShift_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-comp.md) | 367 | `result-track:578b9c01377e3cb9257482f70bfbfaedb463c18a0d0c9d58e2d11d5ddb1dd35a` |
| 49 | `lemma` | [leftShift_comp_zero_cochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-comp-zero-cochain.md) | 384 | `result-track:c16c30e590def177bf76b50df7eb98c1f8ec1804e23fa37828b9c809a114719f` |
| 50 | `lemma` | [δ_rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-source-edition-3.md) | 389 | `result-track:ddc8583dfd9046161b996e9b77a47cd694680bbcbb38497460873e228e6de034` |
| 51 | `lemma` | [δ_rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-source-edition-3.md) | 409 | `result-track:ae52ef05488b1ef46c80b228aeae2b26a946da182edf70b43c87ff7819bf835b` |
| 52 | `lemma` | [δ_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-source-edition-3.md) | 416 | `result-track:4a2e180f2407ed8980dff421283f36a35e5e957113a062a40e32aa579b3ae41c` |
| 53 | `lemma` | [δ_leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-source-edition-3.md) | 439 | `result-track:f8b398327b7110f8d7a28409b2b8f9873387e6ff27e5959b903c13e16fe1726b` |
| 54 | `lemma` | [δ_shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift-source-edition-2.md) | 447 | `result-track:47f37452aab08721fafc3d7fea74acabae6ef28fe6d8485596e7fcff501ae0fc` |
| 55 | `lemma` | [leftShift_rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-rightshift.md) | 460 | `result-track:7c38aea6f5e95bf68c4ee089de9d5ed9488c8a7bef54a5cf158d77aa7ccf651c` |
| 56 | `lemma` | [rightShift_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-leftshift.md) | 467 | `result-track:ee7e856342340788df5e441cecb27cf643fa23ca6820be6b364bd962d1bbcc50` |
| 57 | `lemma` | [leftShift_rightShift_eq_negOnePow_rightShift_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-rightshift-eq-negonepow-rightshift-leftshift.md) | 477 | `result-track:8454a69efa382fd180a8e958028480b5ada3dd9b13cd4ceef17ec6e397ad315e` |
| 58 | `def` | [rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshift-source-edition-2.md) | 491 | `declaration-track:bb8873237eb08479843ba772365d1c75dd87cc8d340187c8e5d81c66e38022c1` |
| 59 | `def` | [rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightunshift-source-edition-2.md) | 499 | `declaration-track:93cf35f50547d29aa354e1a233fc4334bf29ed2719054d7b6eeda5f0a48b7119` |
| 60 | `def` | [leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshift-source-edition-2.md) | 507 | `declaration-track:323f67cca70713c8c822da306fbc5fba6ed3980787d616a066d7418502bca3cc` |
| 61 | `def` | [leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftunshift-source-edition-2.md) | 515 | `declaration-track:51b77a467fd033f4e018f148a1302290c4d79a10fd5d17062dd67cdc8c6f1a3b` |
| 62 | `def` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/shift.md) | 523 | `declaration-track:283d578a191c6e0a325f81203fcb30985fbf073cac4585da6dd67e5fccbfa39e` |
| 63 | `def` | [rightShiftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/rightshiftaddequiv-source-edition-2.md) | 530 | `declaration-track:4e809e078603935085bc89cf483f7e2a7847ec4b622495317beb033bbd6655a4` |
| 64 | `def` | [equivHomShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/equivhomshift-source-edition-2.md) | 540 | `declaration-track:bb728448742272dc91ece96aacb297789f8ba73d5b42b94b88d07bea0e2bd946` |
| 65 | `lemma` | [equivHomShift_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/equivhomshift-comp.md) | 544 | `result-track:ddd928668e80e1a13c66bd4a25de369528f6c4c5fb782180aadec7b94bba49ee` |
| 66 | `lemma` | [equivHomShift_symm_precomp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/equivhomshift-symm-precomp.md) | 550 | `result-track:42f6c2641854d61e3b692b1d29e57d72a7de91f3adc6f34703b22eb6ed8a7707` |
| 67 | `lemma` | [equivHomShift_comp_shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/equivhomshift-comp-shift.md) | 555 | `result-track:6d8afbbd1f78f6e14d23f079ee0c4039d41bc53c0319c6077963114c3d59fa0e` |
| 68 | `lemma` | [equivHomShift_symm_postcomp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/equivhomshift-symm-postcomp.md) | 560 | `result-track:4b827a108d8d0af19db9a98054362e9de42a382d235ed2c821b7c30bb7522189` |
| 69 | `def` | [leftShiftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/leftshiftaddequiv.md) | 567 | `declaration-track:99734ffe6e992b5d6f86ab5a6ca442b24cda89752a318b0606e51cefd82d5c2f` |
| 70 | `def` | [equivHomShift'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShiftPublic.lean/declarations/equivhomshift.md) | 577 | `declaration-track:34666b0151ebc6eb3c94ba771304e3aff387467f1de7db1746d59069b47f6a1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8183d8c90967e61726db4c0ee08b65fba00c1a0b29a4f4c4d006a7089c4b3c05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
