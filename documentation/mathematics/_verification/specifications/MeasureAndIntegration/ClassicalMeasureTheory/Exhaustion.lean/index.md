# Verification target: Exhaustion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b3d651280d40645073ff1f346a34618418eb756",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b3d651280d40645073ff1f346a34618418eb756`.

Source path: `GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.sigmaFiniteSetWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafinitesetwrt-source-edition-2.md) | 61 | `declaration-track:62fffb22373f8210b776b341f16c298aaaad1f56bc71490adcbb73cdaa19864f` |
| 2 | `lemma` | [measurableSet_sigmaFiniteSetWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measurableset-sigmafinitesetwrt.md) | 68 | `result-track:6cc428331bca3fd6601b2f615800c84c1831cd7235e8e327fb3266f95c8fa456` |
| 3 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/instance.md) | 75 | `declaration-track:1dfb9ffc115879b3f54d70bcd624994097f852618f26ee3eb65256cff9b52697` |
| 4 | `lemma` | [exists_isSigmaFiniteSet_measure_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/exists-issigmafiniteset-measure-ge.md) | 91 | `result-track:ac1c07ea048d990d6a31a35458fc705c8493db113563e05ba5e198867a7184a7` |
| 5 | `def` | [Measure.sigmaFiniteSetGE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafinitesetge.md) | 122 | `declaration-track:37a360e71cfccd466878d2943c92861f123fe6b307b90fdb5bd856de4ab7a2b9` |
| 6 | `lemma` | [measurableSet_sigmaFiniteSetGE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measurableset-sigmafinitesetge.md) | 125 | `result-track:9fc16ac888dbf7cd8eec72f492f850688470145d30e3662ecc7cf1246fe096c0` |
| 7 | `lemma` | [sigmaFinite_restrict_sigmaFiniteSetGE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/sigmafinite-restrict-sigmafinitesetge.md) | 129 | `result-track:c0f913fbd13e5790877f65a6c83465115042fe75a0366db71f0f55eed84d7db4` |
| 8 | `lemma` | [measure_sigmaFiniteSetGE_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafinitesetge-le.md) | 133 | `result-track:e6b87787d403799c279bb443ade9528275fe46ad162badcbc3bbc3391808f06a` |
| 9 | `lemma` | [measure_sigmaFiniteSetGE_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafinitesetge-ge.md) | 141 | `result-track:a5e846f73e9a6b16b3042739afe63d4ae6ac831517fa8a8986904dd169932d66` |
| 10 | `lemma` | [tendsto_measure_sigmaFiniteSetGE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/tendsto-measure-sigmafinitesetge.md) | 146 | `result-track:ea2f5bd19bf709edd97b3aa41a6cca2626ef703813be28573afde43b32391da7` |
| 11 | `def` | [Measure.sigmaFiniteSetWRT'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafinitesetwrt.md) | 158 | `declaration-track:34768edf272e0233d9bd48fc4a16e43c2322ea89f774e8a493e782454c50cfe7` |
| 12 | `lemma` | [measurableSet_sigmaFiniteSetWRT'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measurableset-sigmafinitesetwrt-source-edition-2.md) | 161 | `result-track:f738cc1b14a9f8eec101cc4a903a5671471941329421d882d7b3ee3510cd16c8` |
| 13 | `lemma` | [sigmaFinite_restrict_sigmaFiniteSetWRT'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/sigmafinite-restrict-sigmafinitesetwrt.md) | 165 | `result-track:08f71568df78f54b8bd55ebe5351ec9ad44f863da4b28b65c9b5c0ce73b861fc` |
| 14 | `lemma` | [measure_sigmaFiniteSetWRT'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafinitesetwrt-source-edition-3.md) | 199 | `result-track:c0e247ef87b3d7dee74f5dcdf7f3935ab3f190208e3a0b2d893140d47ac661ba` |
| 15 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt-of-measurableset.md) | 211 | `result-track:2f81b8d7b220c0b926dad1ce91df7b8e4677c4ee3bdb8e5238c088be36601f67` |
| 16 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt-source-edition-2.md) | 234 | `result-track:77dc23726d02f9bfcdf9cb7327abd0fcc056cbff22feb2d4eb44a61d471fa779` |
| 17 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt.md) | 255 | `result-track:6f5e638f5682fe2e0d468b54226f3c499376eaefe46c77d288ee323ff66cc50a` |
| 18 | `lemma` | [restrict_compl_sigmaFiniteSetWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/restrict-compl-sigmafinitesetwrt.md) | 268 | `result-track:51db2405642e9fe5cb0c5563e54b2b365813da9f6532085a5077d04fd6667838` |
| 19 | `lemma` | [measure_compl_sigmaFiniteSetWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-compl-sigmafinitesetwrt.md) | 283 | `result-track:87b3494debb1dfe840218b29c102822ddeeaceffe0b650da5fa62510beaa8953` |
| 20 | `def` | [Measure.sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-sigmafiniteset.md) | 303 | `declaration-track:dc3bf3fb270266d088c1356aa099b79b55f9736cad1089baead7628a690e0fa3` |
| 21 | `lemma` | [measurableSet_sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measurableset-sigmafiniteset.md) | 306 | `result-track:f591576fe7248b41680bb91398c13f80468aae45512c7028fac9fe0ebcc98c16` |
| 22 | `lemma` | [measure_eq_zero_or_top_of_subset_compl_sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-eq-zero-or-top-of-subset-compl-sigmafiniteset.md) | 309 | `result-track:bfc236709e54a7a663068b6f51018dfb3b6dad4075f0f90d7c1ffb15ffc55362` |
| 23 | `lemma` | [restrict_compl_sigmaFiniteSet_eq_zero_or_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/restrict-compl-sigmafiniteset-eq-zero-or-top.md) | 316 | `result-track:a8896158c726a0d9aff615a22dbd178b3329cf79a1ae83e35418ac256dd3d9c4` |
| 24 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/instance-source-edition-2.md) | 322 | `declaration-track:b5348775e401e2f55d359bac7fdb34b6e1b5f22dda4b55a30f102b811afa13fc` |
| 25 | `lemma` | [sigmaFinite_of_measure_compl_sigmaFiniteSet_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/sigmafinite-of-measure-compl-sigmafiniteset-eq-zero.md) | 326 | `result-track:addf9f6077bdb727fc3c5d7d4f07cda045ca5acac0ea222818cbc0c89372d0df` |
| 26 | `lemma` | [measure_compl_sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-compl-sigmafiniteset.md) | 333 | `result-track:99d7945fe703c3f3b2a723f77f1de62a2661077ef49c14a8fce24b4ca8d94624` |
| 27 | `lemma` | [measure_compl_sigmaFiniteSet_eq_zero_iff_sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Exhaustion.lean/declarations/measure-compl-sigmafiniteset-eq-zero-iff-sigmafinite.md) | 337 | `result-track:c025a166efe14e01c24e6fbc98ae10c89313dce18d871a6263001791227fa75c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be2123f6a8f13a051cf49ffa09406fd8b3ce87e24e3d328b4a021ee64943a387 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
