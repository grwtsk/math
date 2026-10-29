# Verification target: Haar Basic Namespaced Haar Content Outer Measure Closure Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd891980ce77e38bac81917cee7cb19bd0750433",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd891980ce77e38bac81917cee7cb19bd0750433`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Content` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Compact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [index](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index.md) | 98 | `declaration-track:d1e0566d82151e0c9bf374d44e5c982b2fdd74fa3d1f3cb90515d04f3718763a` |
| 2 | `theorem` | [index_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-empty.md) | 102 | `result-track:3b3e183d50d39c4e9b6b7536729c88c6a117b4ecd5a5179dcec5877c73ef7c5f` |
| 3 | `def` | [prehaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar.md) | 112 | `declaration-track:f53ce9ee2f0b42ba07cc40357a3683e50a0c3c321516544c331a27845e753d29` |
| 4 | `theorem` | [prehaar_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-empty.md) | 116 | `result-track:ad97c6024b47716a03c38cc260c3c8b676b61ef731e3c0d8da3540bf9d661b9e` |
| 5 | `theorem` | [prehaar_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-nonneg.md) | 120 | `result-track:755ecffd7e2972f5285da7dd6497855cea375175d02c3a0ae10642cf7d9816dd` |
| 6 | `def` | [haarProduct](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarproduct.md) | 126 | `declaration-track:30d51736ab810264c4d09b1360276c488a857a5cdec7ed01b08ffe35cb42214a` |
| 7 | `theorem` | [mem_prehaar_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/mem-prehaar-empty.md) | 130 | `result-track:ac8106e348d853014f0b13e68e3f2afcfbacd2dc45f1b3e758e1c91a1395a46d` |
| 8 | `def` | [clPrehaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/clprehaar.md) | 140 | `declaration-track:725901f61c0861a7a6bec431d700689471aff5af482e691e6a432588c0cb5571` |
| 9 | `theorem` | [index_defined](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-defined.md) | 155 | `result-track:fe4cb3032c18df140341b148ef6972fc10ff2d7787ce51b9b5584373a30c2312` |
| 10 | `theorem` | [index_elim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-elim.md) | 160 | `result-track:445ebb6e5d3aec3e219351431e5c84b83ea232ff284cef79eae9ca6184063695` |
| 11 | `theorem` | [le_index_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/le-index-mul.md) | 165 | `result-track:7c0c6f077f6e5e2584225b640388298bcc6f36a0e2c36de907594d0418d2ed24` |
| 12 | `theorem` | [index_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-pos.md) | 180 | `result-track:f9bb7cbc79ee693855840bb4ef6a1dbbd8e17c9700e7527de9cf4e63caffed94` |
| 13 | `theorem` | [index_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-mono.md) | 192 | `result-track:bce0618376ae83847da36188df7f71fa6b7202eb1ad086de067d4db34c389593` |
| 14 | `theorem` | [index_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-union-le.md) | 198 | `result-track:f6de0f5d6d0b62ca189a3852e397ebd2e1aa18f2d8edf0a1407582281e7804bb` |
| 15 | `theorem` | [index_union_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/index-union-eq.md) | 211 | `result-track:67ba0f5420282e8bdf0fc5dba701ce01fb6f51c6358be8349a8bc26d78128b04` |
| 16 | `theorem` | [mul_left_index_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/mul-left-index-le.md) | 245 | `result-track:ceca93cae632a1854d7eed2b2430dd5f7e1c8811702abd2a3b1b45a4af988bee` |
| 17 | `theorem` | [is_left_invariant_index](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/is-left-invariant-index.md) | 258 | `result-track:e51e8e82c145926bcfa2b4a329282742b8cf4a22b27db7e6ea33327bf6adccfe` |
| 18 | `theorem` | [prehaar_le_index](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-le-index.md) | 270 | `result-track:7a91508fb41b490ee244ff692dca4edab7ffaa4f95222a140a88293fedf66d5b` |
| 19 | `theorem` | [prehaar_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-pos.md) | 277 | `result-track:aa6215db131e91fb33562abc5e20dd83f26f2023a8ccf9fee054a0e4241b25f0` |
| 20 | `theorem` | [prehaar_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-mono.md) | 284 | `result-track:6f10151b2eb606bfee0b61646f6ac7dda804e9b10ab1eedae2c6c84db0391689` |
| 21 | `theorem` | [prehaar_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-self.md) | 292 | `result-track:0c8071dd58c55038f8d17062c6e6007f43818ce1d16b0c716764a5c5a1c0f43e` |
| 22 | `theorem` | [prehaar_sup_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-sup-le.md) | 297 | `result-track:f224cac202b3ccc85e8f0f644b4bfbe4128e9943c7affd1ce76daa9f6d453198` |
| 23 | `theorem` | [prehaar_sup_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-sup-eq.md) | 305 | `result-track:2d7a511143d9e25b58092a8ba91c707145d9145ca827871e16af51a41d55e5a1` |
| 24 | `theorem` | [is_left_invariant_prehaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/is-left-invariant-prehaar.md) | 314 | `result-track:b8571e42d8b0293348a8981b322b65225711d894066bfdb566f95f6ddb90906b` |
| 25 | `theorem` | [prehaar_mem_haarProduct](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/prehaar-mem-haarproduct.md) | 324 | `result-track:aac96a37e8ad569fe2594078b5a7897b48b5e78455279985c87f2ef820ea5841` |
| 26 | `theorem` | [nonempty_iInter_clPrehaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/nonempty-iinter-clprehaar.md) | 329 | `result-track:5f596b8a42347155b1b4bc487fc8663b54ba7102df81706955ba24bbfaa57248` |
| 27 | `def` | [chaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar.md) | 355 | `declaration-track:d51343ee995158db20d7a3630f538b8e5d7a567d6dd77848e069ce735b38b3aa` |
| 28 | `theorem` | [chaar_mem_haarProduct](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-mem-haarproduct.md) | 359 | `result-track:68749bcc0a81d4aa4bf1971ef2e195733c69cecc3ab0fe8bd1d561a27c188bb1` |
| 29 | `theorem` | [chaar_mem_clPrehaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-mem-clprehaar.md) | 363 | `result-track:d8f9fb58208e66d4f64d421a8670ed696d778ebfec084b3e4017d9faf579d6f3` |
| 30 | `theorem` | [chaar_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-nonneg.md) | 369 | `result-track:5ad9fe1ee2d6e7a856bc11ea4bb83c6d50a1df5c8b8a66cf34770f74ab278453` |
| 31 | `theorem` | [chaar_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-empty.md) | 373 | `result-track:3e2e5b0cdae854308c06a9baee80ea7c7da7062f7e475db4c5ce4067cb981b59` |
| 32 | `theorem` | [chaar_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-self.md) | 383 | `result-track:645bc53302cdbd6ba08d849bfe417f30caf9121a7e7becddd59d3d3268b43a98` |
| 33 | `theorem` | [chaar_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-mono.md) | 394 | `result-track:2940dfcc6d5f42e3c1a6801916717be46eaf7fbf71121cdca28b535a519d12de` |
| 34 | `theorem` | [chaar_sup_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-sup-le.md) | 406 | `result-track:76bd439b09d1d1703e3b044749b9bb7fbd066f5f8ccd116ee685820647e1c935` |
| 35 | `theorem` | [chaar_sup_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/chaar-sup-eq.md) | 419 | `result-track:4c098a045ff477ace9583a5988e5966c502c018037229b04ec32b7d3611079cf` |
| 36 | `theorem` | [is_left_invariant_chaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/is-left-invariant-chaar.md) | 453 | `result-track:adffd01f4dbeb3bdfff6308844d95ef8bc3c4e1f8cd4a33665ce655d69c79d44` |
| 37 | `def` | [haarContent](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarcontent.md) | 467 | `declaration-track:b73ca5c22989cb912c12bb5f10860c28f8dd3b62f90ca626841fcd14b8a74384` |
| 38 | `theorem` | [haarContent_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarcontent-apply.md) | 479 | `result-track:e8a623942f8d9330a49f3ad87953dfba047d46e1ec32f17bda140e1d6de46866` |
| 39 | `theorem` | [haarContent_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarcontent-self.md) | 485 | `result-track:92e86fedd08a0e55de4e40c3bdec5922faa26f38747d5aee93adf1ca10dbdb41` |
| 40 | `theorem` | [is_left_invariant_haarContent](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/is-left-invariant-haarcontent.md) | 490 | `result-track:bc59c0178c4e0aea434a920a7b2f43f79ecc211ebfd042500f0f8418b499689e` |
| 41 | `theorem` | [haarContent_outerMeasure_self_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarcontent-outermeasure-self-pos.md) | 496 | `result-track:24905de55ef5c864b40016ad46c3a64d6743ab6e4370ef9091def628ec74e6ba` |
| 42 | `theorem` | [haarContent_outerMeasure_closure_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarcontent-outermeasure-closure-pos.md) | 504 | `result-track:6fe52c2ed8ccc1c892939367bfab60688bf8ace2ea52c5cf5d130a7e6d8af553` |
| 43 | `def` | [haarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarmeasure.md) | 522 | `declaration-track:d6d4f4a17c783d2d2b5d653fff5c2a5f74e3679505853a8a925dbb787fbef6c4` |
| 44 | `theorem` | [haarMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarmeasure-apply.md) | 526 | `result-track:d9278f8090114de0dacfa0b1c257ae844be8d4028695c2a858e973b46c9f3b1e` |
| 45 | `instance` | [isMulLeftInvariant_haarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/ismulleftinvariant-haarmeasure.md) | 532 | `declaration-track:292568e2c107d5a26c5ccddb034dab09a8c2d9df99be56d9e3334c253cca24d3` |
| 46 | `theorem` | [haarMeasure_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarmeasure-self.md) | 543 | `result-track:a414cf3db418ad07bf2957c3f1a0b00c0feed29758121333f1b15344636dd1f6` |
| 47 | `instance` | [regular_haarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/regular-haarmeasure.md) | 553 | `declaration-track:d5cb8e7579e9260b83e25284a0e738bfd645176e6931b833ee45385fc4ff166a` |
| 48 | `theorem` | [haarMeasure_closure_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarmeasure-closure-self.md) | 561 | `result-track:eca92295b939b4a8bdd00daf9f4cbec9d3cc4df65c821947df857a1b6411db21` |
| 49 | `instance` | [sigmaFinite_haarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/sigmafinite-haarmeasure.md) | 566 | `declaration-track:9b7e5c9cd2177048edf45f8c01545960080b0a8f9f085e51cadd9adc670c9f29` |
| 50 | `instance` | [isHaarMeasure_haarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/ishaarmeasure-haarmeasure.md) | 575 | `declaration-track:6d308bff7dcb2deabceab883dbedca56bf2a50049d8ef4817002fcf6f6300e7c` |
| 51 | `abbrev` | [haar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haar.md) | 585 | `declaration-track:9e63337a39d3282d6a7470b15dcfa20fef3e6ef8d2d057439f3ce30f37c7157f` |
| 52 | `lemma` | [steinhaus_mul_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/steinhaus-mul-aux.md) | 598 | `result-track:cb3f023bbfdbc5a6daf37c01491c1c34277e6f3d3f8e4d7162aff663153af4bc` |
| 53 | `theorem` | [div_mem_nhds_one_of_haar_pos_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/div-mem-nhds-one-of-haar-pos-ne-top.md) | 626 | `result-track:f86796f03272adc66dbc03c7192a953f61e995d2eed9909f192aa1c65d981a17` |
| 54 | `theorem` | [div_mem_nhds_one_of_haar_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/div-mem-nhds-one-of-haar-pos.md) | 640 | `result-track:086ad93ed040ee303ac31fe20e7b6a1898096737e7f4544cb2533fa15ef4d8bd` |
| 55 | `theorem` | [haarMeasure_unique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarmeasure-unique.md) | 670 | `result-track:d77c8012bf9ac2b62d830d39876a398f247352de22a7751b800b932452437ac7` |
| 56 | `theorem` | [haarMeasure_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/haarmeasure-eq-iff.md) | 681 | `result-track:f2c056decd87291af5bb7b0b761eaae0b0b0834db550d0af82fd908b37639fad` |
| 57 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/example.md) | 686 | `declaration-track:b384be138a9d823b60a5237eb18ce226c3fc9a4caac97633b6ab937647358ada` |
| 58 | `theorem` | [regular_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarBasicNamespacedHaarContentOuterMeasureClosurePos.lean/declarations/regular-of-ismulleftinvariant.md) | 695 | `result-track:101a34b00afa39d415734969e5f3a42826183d10af5a8345f433db0775461188` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6669a57cbe0a69522fdbe95c802c724224133b4e026867c0a70374a7e9e06d49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
