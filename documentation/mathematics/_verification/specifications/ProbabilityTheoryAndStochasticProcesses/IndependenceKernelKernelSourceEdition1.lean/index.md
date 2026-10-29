# Verification target: Independence Kernel Kernel Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb720a5629710180fcd3c206acbe3275cdb76d94`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepsets.md) | 62 | `declaration-track:cd397ded726c4711192367ba4bfaad8d46817192e6b76470711375825362681d` |
| 2 | `def` | [IndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets.md) | 69 | `declaration-track:53c48eba177a1ae2560a14bf0f9b13e70b659486709ad95dacc342958145f033` |
| 3 | `def` | [iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindep.md) | 75 | `declaration-track:6353590868e93a3d83bf0814c68dc71b7cff19ca476d58d3dd26c279814c7f25` |
| 4 | `def` | [Indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep.md) | 82 | `declaration-track:307b42a241ad263c5e94da64dcba6a121475cfeafc006dbdc2a94172690b6c95` |
| 5 | `def` | [iIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepset.md) | 88 | `declaration-track:b87d1e08740e948c927a7332341b4fdbbee5b8db1b0b5a4d880c9f0e9902582b` |
| 6 | `def` | [IndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepset.md) | 94 | `declaration-track:0c1928dd66f7cc6f4a6f64512df717718c00bdf76b67748777d2887e24a336a2` |
| 7 | `def` | [iIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun.md) | 102 | `declaration-track:b9e1aaab5ae15aa7690421f3ac9e33c029e1f080a647692ab5353f08a6881ba3` |
| 8 | `def` | [IndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepfun.md) | 110 | `declaration-track:d7f2f583bd4f0e24ed7a4ef2b3d1ddae9396765efaf380ec69f99c95c68155e2` |
| 9 | `theorem` | [IndepSets.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-symm.md) | 122 | `result-track:a72c3061cf6ad4848f925ed03025a839b350aac8652ee3cca88475decb24fd1f` |
| 10 | `theorem` | [Indep.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-symm.md) | 130 | `result-track:11013f1cfe469fb71671cf9e17fba8031a91bef524abf94d06ad2a0e5a11f042` |
| 11 | `theorem` | [indep_bot_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-bot-right.md) | 135 | `result-track:a52c95044ad0ffc2fedf2e9180dc6744e5bcdc3ff0c6d0e2857205a5366aeee4` |
| 12 | `theorem` | [indep_bot_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-bot-left.md) | 145 | `result-track:55a33ce8cb5a194cfe09f84f611095695375ca11a018a45e15650e4c406c542b` |
| 13 | `theorem` | [indepSet_empty_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepset-empty-right.md) | 149 | `result-track:8c72b7f6ef851dd6161fb8dc16206094cdfbba32cc3df5eb3ac6ffcab633ef9a` |
| 14 | `theorem` | [indepSet_empty_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepset-empty-left.md) | 155 | `result-track:dffa8b26f9292e6c04223900a01c939ae744e82bf8bb3fe88dc750e6420f65bf` |
| 15 | `theorem` | [indepSets_of_indepSets_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-of-indepsets-of-le-left.md) | 160 | `result-track:7fb4ff40adec86c47997407de9572cb34009ad318bad463afcacc6e4a9c7df4e` |
| 16 | `theorem` | [indepSets_of_indepSets_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-of-indepsets-of-le-right.md) | 165 | `result-track:0509a8fabf0c0d1da764c5087b33d921efed36332a3749e657fad6b7a5562e60` |
| 17 | `theorem` | [indep_of_indep_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-of-indep-of-le-left.md) | 170 | `result-track:2c5f1d0ec9192c019dab98088b6af2f15bb2c3cc281e67d63447a3c90a7da0a7` |
| 18 | `theorem` | [indep_of_indep_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-of-indep-of-le-right.md) | 175 | `result-track:27d3efdea3814b65dbc9f82b58568f636ae0006e2feb0d835839f2f96602f292` |
| 19 | `theorem` | [IndepSets.union](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-union.md) | 180 | `result-track:2e8dddd5858dbaac52002e41595f9c863e2b0bd51694e067ec151d21670157a3` |
| 20 | `theorem` | [IndepSets.union_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-union-iff.md) | 190 | `result-track:6ba910694e267ce3b39ff1181acf4a68fe7b23113ba3ba3fc123955442abf372` |
| 21 | `theorem` | [IndepSets.iUnion](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-iunion.md) | 198 | `result-track:f8f7709e3ecc1497d89a79696b894fca23e1ef0d227182c05b1b79bc4230fe2d` |
| 22 | `theorem` | [IndepSets.bUnion](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-bunion.md) | 206 | `result-track:b03ce909b7e5b8872879c21715eff28602ef6729dac1de13edb344ec0c387a19` |
| 23 | `theorem` | [IndepSets.inter](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-inter.md) | 214 | `result-track:1ada1053e18c2744673cb560a6f0b45c009cc9f507782f1c489b9a5022b9a11e` |
| 24 | `theorem` | [IndepSets.iInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-iinter.md) | 219 | `result-track:9a676dbcd8335cf57fa29457dcb8427d2a9a3cf1e12ae306f444c7b1241b5da1` |
| 25 | `theorem` | [IndepSets.bInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-binter.md) | 224 | `result-track:9c9cdc7c4ad243f99a9c8bdc515d205724c39741db330ecd3ab475daa2b9713d` |
| 26 | `theorem` | [indepSets_singleton_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-singleton-iff.md) | 231 | `result-track:17deea25404d3b947470514f66bd52b03a798005cd37289018b96ced2f7a05d6` |
| 27 | `theorem` | [iIndepSets.indepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepsets-indepsets.md) | 246 | `result-track:c1bf0069a2fcecabb9ff0a8be70614c84924d5b6bd1e4515f91835d217c63cd9` |
| 28 | `theorem` | [iIndep.indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindep-indep.md) | 271 | `result-track:529469d6ce72d0f0af12d38222b06e95a8a2c6e8bd42a286fd20f0aa21eab755` |
| 29 | `theorem` | [iIndepFun.indepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-indepfun.md) | 277 | `result-track:a80bed83e9c9d71d5cfc0ba1f1540f492f97daf2dcee8b216d11e339268752dd` |
| 30 | `theorem` | [iIndep.iIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindep-iindepsets.md) | 298 | `result-track:5baa317c2e2cabf84b552a9ac491f510f718b16e26d6f52e0c341ab1413189ab` |
| 31 | `theorem` | [Indep.indepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-indepsets.md) | 306 | `result-track:0d7b322eec74ef3da093a7728b328d5d5a8c7eefb02e5b17eb0fabd8ab52dc2b` |
| 32 | `theorem` | [IndepSets.indep_aux](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-indep-aux.md) | 321 | `result-track:203b28cfc92326ec165daed0d8c03d2970e4e3d2bc8c7c33736fb1d3965d0ce8` |
| 33 | `theorem` | [IndepSets.indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-indep-source-edition-2.md) | 353 | `result-track:9cf004c8d6f3c2cae59708f69e0d09778627001f84c066508ed2d2f8a46aff94` |
| 34 | `theorem` | [IndepSets.indep'](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-indep.md) | 391 | `result-track:3bf429d434f1841ae0da44bab50f629facb14890ec2ad0d12bbcb8dfbbc5d815` |
| 35 | `theorem` | [indepSets_piiUnionInter_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-piiunioninter-of-disjoint.md) | 400 | `result-track:c922b80b25406dc9720fe6cb51126fc5d5ea7b4d899f598f465e218fed3762e9` |
| 36 | `theorem` | [iIndepSet.indep_generateFrom_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepset-indep-generatefrom-of-disjoint.md) | 439 | `result-track:03525975d8fefe0b0863722d086a4560c265f06136bd37a113b2140fef5fb1e1` |
| 37 | `theorem` | [indep_iSup_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-isup-of-disjoint.md) | 453 | `result-track:ebab603f3773304b3608e0f4f5720582ba0ea76b48eba8be2a15249006f27616` |
| 38 | `theorem` | [indep_iSup_of_directed_le](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-isup-of-directed-le.md) | 464 | `result-track:68c0d8398ad4d7e42f887f8d170d9bbe793107095196873218b838d846510171` |
| 39 | `theorem` | [iIndepSet.indep_generateFrom_lt](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepset-indep-generatefrom-lt.md) | 487 | `result-track:da7f38055e59d36f24d6862421af16750f1e74d5358fc178e2baf5d4949d8503` |
| 40 | `theorem` | [iIndepSet.indep_generateFrom_le](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepset-indep-generatefrom-le.md) | 494 | `result-track:ed1190ee46a9b2a6660c2fd66f06bf5ddadc14dff8f0728473cbf3382b3db0f0` |
| 41 | `theorem` | [iIndepSet.indep_generateFrom_le_nat](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepset-indep-generatefrom-le-nat.md) | 501 | `result-track:6f2d7d937b85486f53ca2b57ffc7c9f3dbfa703dc23f72f352d048d2a49bf0ae` |
| 42 | `theorem` | [indep_iSup_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-isup-of-monotone.md) | 506 | `result-track:6ee3ae0024f5a427b60bd9fb835a70f14cd3f0b93412487ba6506aa180b458f7` |
| 43 | `theorem` | [indep_iSup_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-isup-of-antitone.md) | 513 | `result-track:05e4a6523b1df0920b39835c6e1924494a843ba45b03c155d0727f41a7eb4e26` |
| 44 | `theorem` | [iIndepSets.piiUnionInter_of_not_mem](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepsets-piiunioninter-of-not-mem.md) | 520 | `result-track:dcd505411ade12d4064e75e0c75be88c4a02582502ad0c20f00846d3fa1bf909` |
| 45 | `theorem` | [iIndepSets.iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepsets-iindep.md) | 559 | `result-track:3f4e2ddf8365f9ed5eaf453182f4237fc3bceb92edda00844906f052e3393bb9` |
| 46 | `theorem` | [indepSet_iff_indepSets_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepset-iff-indepsets-singleton.md) | 604 | `result-track:5de0f7f49d8308b1d3f6b0479217372b5eb2548706c7e4f358264e13cfc1510d` |
| 47 | `theorem` | [indepSet_iff_measure_inter_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepset-iff-measure-inter-eq-mul.md) | 614 | `result-track:ac44a4453dc5388eb01991d40a0dde43ae6b800020913650e53cf074ecd529cc` |
| 48 | `theorem` | [IndepSets.indepSet_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepsets-indepset-of-mem.md) | 620 | `result-track:69752e47ab42c454787674a4b8b4ae7b50da9d8c5094d5d43edee6c84cee8480` |
| 49 | `theorem` | [Indep.indepSet_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-indepset-of-measurableset.md) | 627 | `result-track:a10e7fc67b45ef30fb113ecbbc1700790ba0cf674f545fe11cd76ea0907e31c6` |
| 50 | `theorem` | [indep_iff_forall_indepSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indep-iff-forall-indepset.md) | 644 | `result-track:2133d3c3a9e50e9279f14d209f993cc8000ec1ada7990002138561e25c90001e` |
| 51 | `theorem` | [indepFun_iff_measure_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepfun-iff-measure-inter-preimage-eq-mul.md) | 663 | `result-track:2723f21e523a210686641ea234ebb008301065057888629808ce3d01712f2b5b` |
| 52 | `theorem` | [iIndepFun_iff_measure_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-iff-measure-inter-preimage-eq-mul.md) | 672 | `result-track:3c91f7e0ee7f4b9f811ed6938eb6085a7acaad111182682bab353763810830bb` |
| 53 | `theorem` | [indepFun_iff_indepSet_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepfun-iff-indepset-preimage.md) | 703 | `result-track:7773696ee710cf0ecadf15655a6ddbcc0db1a868b1c75e82759a8ef9c9af76d9` |
| 54 | `theorem` | [IndepFun.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepfun-symm.md) | 713 | `result-track:9de211f72bb53b233ef828dfdd16cd15b2a4379058a23453b7feaf75d8bb8c2c` |
| 55 | `theorem` | [IndepFun.ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepfun-ae-eq.md) | 716 | `result-track:8d76dcb58bc933bcccc6beaa177c07b057a342037eb5f55d2685e8d074828e79` |
| 56 | `theorem` | [IndepFun.comp](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/indepfun-comp.md) | 725 | `result-track:ba4842719ac346f4b21befbc869791ec6bb2216978c705a709f86a8683bb055c` |
| 57 | `theorem` | [iIndepFun.indepFun_finset](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-indepfun-finset.md) | 737 | `result-track:0f7ea36e5b5bd7c9c7b5d2ef3591257b30deff060c8d452ecbbe3703aebd109e` |
| 58 | `theorem` | [iIndepFun.indepFun_prod](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-indepfun-prod.md) | 830 | `result-track:eb985bfa7c419e26f2843e2e8649d308d5d13c65c03ced6670ab2782bbb89038` |
| 59 | `theorem` | [iIndepFun.mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-mul.md) | 858 | `result-track:0fb4a32d3f7e13c4c4b2b64672109dfb66dd875a6976d7693a87dc725c29789d` |
| 60 | `theorem` | [iIndepFun.indepFun_finset_prod_of_not_mem](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-indepfun-finset-prod-of-not-mem.md) | 868 | `result-track:a7591c386876e11859fb7597853b652c3f16212fcc64f0178735a09c5cb1a414` |
| 61 | `theorem` | [iIndepFun.indepFun_prod_range_succ](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepfun-indepfun-prod-range-succ.md) | 892 | `result-track:345cf7d860593cd9277e0859e34568a265b6907358ffd7c791edd58e0d15cb0b` |
| 62 | `theorem` | [iIndepSet.iIndepFun_indicator](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceKernelKernelSourceEdition1.lean/declarations/iindepset-iindepfun-indicator.md) | 898 | `result-track:b9cb66c5c5ad69c64f7c6048022e52eb3ae8b519eb3c48b4113cca7317fface4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df23e360417b5b80ecedd885137552f0ae09cd160a7832f9fb0ea9975e253bb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
