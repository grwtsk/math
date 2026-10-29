# Verification target: Subdivision Namespaced Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c54559a1bd84860a2281fef77dffd7188c66a935",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c54559a1bd84860a2281fef77dffd7188c66a935`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/controlrow.md) | 39 | `declaration-track:b7b5c85d493f040c4ab1d683c9044112ce7bbeadc6240ea948bc4a0c5cf2ca6e` |
| 2 | `def` | [step](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/step.md) | 42 | `declaration-track:6d622408862ff47b4da7ec56541b5011d1b9140fc15716afb81f76707fe97cd7` |
| 3 | `def` | [eval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval.md) | 46 | `declaration-track:31272e8a9e3083c2fc47b0fa8945e93b4b818ae6cb7665a2820671538b08ebe6` |
| 4 | `def` | [bernsteinWeight](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/bernsteinweight.md) | 51 | `declaration-track:26cb9e3aa96af823a803fbd51436399e28a24035729fd99a7e7130efbfa801ca` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/bernsteinweight-zero-succ.md) | 54 | `result-track:bd8f4c740a1de08290308e5d37dc2b00d0bc8ad083c37660bef49191cd138aa9` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/bernsteinweight-succ-succ.md) | 60 | `result-track:282cbc7b0b64542ab68b0dd8e6ada9414e4887ea35b37d9578030e7cab1ab920` |
| 7 | `def` | [bernsteinSum](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/bernsteinsum.md) | 78 | `declaration-track:0e6120f3bdae8af9d578cb1322c15a2ad16bca5e8185ea00bf7718dd8ef312b4` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/shifted-bernsteinweight-sum.md) | 81 | `result-track:9f088991605f0a8c14d0756734120955538c397e42ff50e242519821161b7829` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/bernsteinsum-succ-eq-step.md) | 89 | `result-track:c40218713f0863f8438eae47520a685474db62a3b7f4517fa8f3045d66927055` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-eq-bernsteinweight-sum.md) | 118 | `result-track:a81f6ec4150e091eca4dcaea03fd53857dbeb84ac22a3c2b8df701ad55418e63` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/bernsteinweight-eq-bernstein.md) | 125 | `result-track:257412132890cb90c663fc3bb731659968667c056b8d7c65b931074f5a1bbdec` |
| 12 | `theorem` | [eval_eq_bernstein](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-eq-bernstein.md) | 130 | `result-track:b762814866b3494f4ec25421765bf0c5fd416033b2aa9efea15429e349fca015` |
| 13 | `def` | [rowCombo](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rowcombo.md) | 141 | `declaration-track:9d3c466743e96e4160a4d8b9f6163fb7ac331d23ebb42d594e73d3de2079f586` |
| 14 | `lemma` | [step_rowCombo](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/step-rowcombo.md) | 144 | `result-track:4f287433caa36cbc65c9c6fb15994c394c2bf5e546e0ad51080f3a98926b2838` |
| 15 | `lemma` | [eval_rowCombo](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-rowcombo.md) | 150 | `result-track:d60a0dde8d4c17138577adcacf747999bc4d5d047e0470e03b38c02392a8e72a` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/step-eq-rowcombo-self-step.md) | 159 | `result-track:29e71b847a89efcec334ee0c1e5cc7eb6f72b732157bc58d843ef08a9c1dc7b2` |
| 17 | `def` | [splitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitleft.md) | 165 | `declaration-track:ab2d0780fd2516f2111d06d1a3024d9bf8197d9ac919dcae21533d03752a8692` |
| 18 | `lemma` | [step_splitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/step-splitleft.md) | 168 | `result-track:dc9787741b381acae4db7736e2d250b81d1218c87fa0248ce8f6794d516e4936` |
| 19 | `theorem` | [eval_split_left_mul](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-split-left-mul.md) | 176 | `result-track:a1fcc4a89477ab848d844b083c2f13a5ed93f884d1cf9b7dab35ff780e747772` |
| 20 | `theorem` | [eval_split_left](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-split-left-source-edition-2.md) | 184 | `result-track:fe6b1a615c59dc7c6ad94f93a6616995fe064e0630ff35577dbfb6b40427c9b0` |
| 21 | `lemma` | [eval_congr_prefix](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-congr-prefix.md) | 188 | `result-track:fd3b599c3337bd439897ba307b4b07f0bd95a1d97032483b16311baf1edb2184` |
| 22 | `def` | [splitRight](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitright.md) | 200 | `declaration-track:14059e18fae64c72b90b9f2c21287b2ebaa7b6771e10d1cc472dbd07e2bc9077` |
| 23 | `lemma` | [step_splitRight_prefix](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/step-splitright-prefix.md) | 203 | `result-track:0f6f6f1bf60d4fb6e94f48670cd4a66471e03966b8eb1d442c83933112d9b8ee` |
| 24 | `theorem` | [eval_split_right](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-split-right.md) | 221 | `result-track:5b7334093c5430f40ed0dd97e9b8aa2c82a87aa8b9376b1402b9a910127fde50` |
| 25 | `abbrev` | [FiniteControl](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finitecontrol.md) | 241 | `declaration-track:a211cf04f0cdd8aefa6732931352796d4b4b860986c612698316600f3d01632f` |
| 26 | `def` | [extendFinite](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/extendfinite.md) | 246 | `declaration-track:2ebe367eff838fbb599d8b130981529661e8d5f7abd2e9e8f8d486956ab62c27` |
| 27 | `def` | [finiteEval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finiteeval.md) | 249 | `declaration-track:c7aca5d16baa4721a53b7c25e02feec6d6fd85f9bc171561773235964130eadd` |
| 28 | `theorem` | [finiteEval_eq_bernstein](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finiteeval-eq-bernstein.md) | 253 | `result-track:4abe7e6e73609e6fdc37daac51dfd79c0a0d8e4f8a525749242040a15d9c0572` |
| 29 | `def` | [finiteSplitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finitesplitleft.md) | 262 | `declaration-track:7254bf0c951eca97392751f9723ddae033deea9751594f23bc5c7bc498de6ccd` |
| 30 | `def` | [finiteSplitRight](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finitesplitright.md) | 266 | `declaration-track:6b3dd29990e1f7cf5c76c420140fe24630616d78f575e3c7dc99be9326d5f979` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-extendfinite-finitesplitleft.md) | 270 | `result-track:61280187e5df07b4dfe8913496fd3d01cc27d3e784e4fb67f5af1bf6e6d0af32` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-extendfinite-finitesplitright.md) | 278 | `result-track:ab38c843decf8d8dc3ba4f6b517296ae3c73a9c234be6bb63a1e55333534cdf3` |
| 33 | `theorem` | [finiteEval_split_left](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finiteeval-split-left.md) | 286 | `result-track:d044b854a41e677bb254bd8d9d3656352b70dff6165f2867a4263b69d01a3489` |
| 34 | `theorem` | [finiteEval_split_right](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finiteeval-split-right.md) | 292 | `result-track:a4bc056395295ccd4037cf868bd36dfa205ddf79c84ae860bcd72f35a90235f7` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/weightedhomogeneouspoint.md) | 301 | `declaration-track:0a250bd0175ddb5c258b9d8ba11a09b5cc12da2fa87b4f5c15daa567eb47048c` |
| 36 | `abbrev` | [FiniteWeightedControl](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finiteweightedcontrol.md) | 304 | `declaration-track:8bfd125b158265510791c18d37df2164689d7d2b16dedcfb1c4000e7b5b82b99` |
| 37 | `def` | [weightedSplitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/weightedsplitleft.md) | 307 | `declaration-track:21b2477eac477c6793bd2ff819cbe3bd76927e2523473e9023714574ede90517` |
| 38 | `def` | [weightedSplitRight](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/weightedsplitright.md) | 311 | `declaration-track:e55fe8e87eaf8040c596f1b76d702049a29298b3a441a175fbf4622bae2ba1b0` |
| 39 | `def` | [dehomogenize](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/dehomogenize.md) | 317 | `declaration-track:8684bda2e93f0929c2809f7c2e91a6a4c0eb55377018bd2bdd102e01059fb28f` |
| 40 | `def` | [rationalEval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rationaleval.md) | 320 | `declaration-track:7e14b50cec883016ad4028947497e9c333a6e889ee57b033d83f82386b3c990c` |
| 41 | `theorem` | [rationalEval_split_left](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rationaleval-split-left.md) | 323 | `result-track:bcb1ea184e4297c07fbdeb227dfb2bda4971576e55094691caec13b25424d547` |
| 42 | `theorem` | [rationalEval_split_right](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rationaleval-split-right.md) | 330 | `result-track:5babffa733f41b94c35a09a6b839adc49f5719589a7c9c5c4247a0824224f273` |
| 43 | `lemma` | [eval_snd](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-snd.md) | 341 | `result-track:d244c1ccc32b4f58190466815dc23685991c4ae5f6c44e93f2b911a29d0dcb52` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-pos-of-prefix-pos.md) | 350 | `result-track:d5b0ca268a5bd9e7b9eac3339985dd76c2442478fcec8182b55a71d7930aecdc` |
| 45 | `def` | [homogeneousControl](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/homogeneouscontrol.md) | 372 | `declaration-track:9de18bfc19f2f3624598b039411e4bd8a031d2f9bc3470d97b0030993b2ea011` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/weightedsplitleft-weight-pos.md) | 376 | `result-track:57fb5f0d567f272de421ebf4eda36a07439de1adc688e63a65e2eb44f2cf8beb` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/weightedsplitright-weight-pos.md) | 388 | `result-track:93580927fb35100bd9b65412bc5e58143d9e7e2ef0756acb721f53db29e20d65` |
| 48 | `def` | [segmentOfPositiveHomogeneous](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/segmentofpositivehomogeneous.md) | 403 | `declaration-track:58152593450196387ab8da11b262f3fad5c4502095a0d98265f0c0a7b730f526` |
| 49 | `def` | [splitLeftSegment](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitleftsegment.md) | 410 | `declaration-track:053e27c6cb5db3ad8a12af216d856222aed6ebf8a0b9d34ee880abfa305d7689` |
| 50 | `def` | [splitRightSegment](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitrightsegment.md) | 417 | `declaration-track:b4f0e05f24cf98e3bb0d323c842a3be3f6a2d0ed6c776c2917a9ccd4872b40ed` |
| 51 | `def` | [splitAt](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitat.md) | 425 | `declaration-track:2b5988c466d1689994a9ed37f883755ca0c81199e697be1537265ff4666ece07` |
| 52 | `def` | [leftParameter](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/leftparameter-source-edition-2.md) | 431 | `declaration-track:b094ab4912fea28f10c92033fda57c925b450fdb21313bdea310dfd262fd3828` |
| 53 | `def` | [rightParameter](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rightparameter-source-edition-2.md) | 440 | `declaration-track:cea974cb2b4e54a11415dbe3b0aa3e97be0ce2881be50174e44b674cd40e8302` |
| 54 | `theorem` | [leftParameter_val](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/leftparameter-val.md) | 452 | `result-track:627c0bde73be6b7e7c7fb28e61a2c8a633fc3154fa972e12416c75d42524b80d` |
| 55 | `theorem` | [rightParameter_val](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rightparameter-val-source-edition-2.md) | 455 | `result-track:61340ec7a17479ed9662e7df8c3f48d8bbcaeab0e2c3ae71e24ff96a0297c64a` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/homogeneouscontrol-segmentofpositivehomogeneous.md) | 458 | `result-track:7f5c73239be9de0920d310f59977af87f8d283c5517f24da09097f964c43e242` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/homogeneouscontrol-splitleftsegment.md) | 468 | `result-track:cf8bf8ea4d0197910f1433144b2f41e7cb61706c4c0900c906dab4960df2d785` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/homogeneouscontrol-splitrightsegment.md) | 474 | `result-track:65bd4c5cfd870327203a8e10878c47f413551643c4f31793cb0eefaaec156498` |
| 59 | `theorem` | [finiteEval_homogeneousControl](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/finiteeval-homogeneouscontrol.md) | 480 | `result-track:7257548946a93884e88f03c2a37d93bd1408509cd9146e1c2b9d979f46250e12` |
| 60 | `theorem` | [rationalEval_homogeneousControl](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rationaleval-homogeneouscontrol.md) | 505 | `result-track:57f5fb7d711899906de58a6a9b20414827ce23018dfbf3111b1089a7ef3f0dd8` |
| 61 | `theorem` | [splitLeftSegment_eval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitleftsegment-eval.md) | 513 | `result-track:2ea86b101c89aaa8f4e5fcedd55916de061c884d8d3591bbe0655c110d1e318e` |
| 62 | `theorem` | [splitRightSegment_eval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitrightsegment-eval.md) | 533 | `result-track:d42df4ea02285acb6ef1ccea48ac48ea8e268755e8614b15b107a769811aae8b` |
| 63 | `theorem` | [splitAt_left_eval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitat-left-eval.md) | 552 | `result-track:9ba53dffdb3593f974daa9c0936b57585b50978225615af69e66c282b9ef967b` |
| 64 | `theorem` | [splitAt_right_eval](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitat-right-eval.md) | 557 | `result-track:e8b08eb5d6d4ac02ba090bb5cc19fe054a5e5f65479d9b28e681d46bd1256257` |
| 65 | `def` | [leftParameter](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/leftparameter.md) | 575 | `declaration-track:1b64e18666ab2f249fcf2cc19cf9f3b18d29655ab1714488a1de51896b0d676c` |
| 66 | `def` | [rightParameter](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rightparameter.md) | 580 | `declaration-track:b4c01a9db1749d64ac0c849b4dab910f9fc25f08d2067aed30db736fbb84a990` |
| 67 | `theorem` | [leftParameter_val](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/leftparameter-val-source-edition-2.md) | 584 | `result-track:f3cf2cd989ed5780b837ffc4b0d2d3bdbd1148e7fcd9c38d2d1ff56fba0ff0e6` |
| 68 | `theorem` | [rightParameter_val](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/rightparameter-val.md) | 589 | `result-track:46e5e10ae67e308f205e9bf898f469b03d36047f4565b6ebaf4fbf01b4379846` |
| 69 | `def` | [splitAt](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/splitat-source-edition-2.md) | 595 | `declaration-track:a78eda9f0430854cec170c27098373827404cffeff7a6af1b6beda19b7ebdf5e` |
| 70 | `theorem` | [eval_split_left](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-split-left.md) | 601 | `result-track:2963cf3fdaca8db7e9ad782425edf9eb76e2c6b7608bc9014947aa217d593511` |
| 71 | `theorem` | [eval_split_right](../../../../GroupTheoryAndGeneralizations/SubdivisionNamespacedPublicEdition3.lean/declarations/eval-split-right-source-edition-2.md) | 608 | `result-track:6c2aed1e6741652739792e93acb4410e9ce584e86ef5365fde8c509027f4a4a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=328eea8898279fcd6723683febcf778590c42ae05e332435ace9a938ae16ee41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
