# Verification target: Induced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35fc68361898273405ca04d0ff07846078abdab0",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35fc68361898273405ca04d0ff07846078abdab0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean.json)

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
| 1 | `def` | [extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend.md) | 49 | `declaration-track:9091d399ba4ccb1b1e61aab4d89ac508a2d8fbe955602093d3adf8909fd8c4db` |
| 2 | `theorem` | [extend_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-eq.md) | 52 | `result-track:b12e324ca254146c7abe7f75186316555f0a7dea53f82df87040bb90ad7005c1` |
| 3 | `theorem` | [extend_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-eq-top.md) | 54 | `result-track:99a010172f2196b14cce4586672a5d705cf21db1d4ab78094c5a742c760fa41b` |
| 4 | `theorem` | [smul_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/smul-extend.md) | 56 | `result-track:684d22828390731d94f6b4d808a1da85625a3c246a024318c0a83be9556db37a` |
| 5 | `lemma` | [ennreal_smul_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/ennreal-smul-extend.md) | 62 | `result-track:84c20e8fe25b9216a471a49ad3a565174283a69d15ebd7b8f43751c0f27ddb2c` |
| 6 | `theorem` | [le_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/le-extend.md) | 65 | `result-track:5c339d85d99dfb1171c19e39b2a7818e3621e45f2f2989765093d6f07d70a669` |
| 7 | `theorem` | [extend_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-congr.md) | 71 | `result-track:f2e3b8df6fd8e533078e568d6b0942d1e839df068db233ef48d420a02b178178` |
| 8 | `theorem` | [extend_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-top.md) | 77 | `result-track:b71883a68dafa655da668497d8803c2beaadc54b910900945ed07a4eea72425a` |
| 9 | `theorem` | [extend_iUnion_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-iunion-nat.md) | 96 | `result-track:44eccdd7e26c92dbbe24be0977aaaebd199202c4bd84b65244cc4c6090f7fc4c` |
| 10 | `theorem` | [extend_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-empty.md) | 105 | `result-track:2e33cfa4e97209669a840cf8207d79232e7f83338f0f9bcecf661bda5c07ac91` |
| 11 | `theorem` | [extend_iUnion_le_tsum_nat'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-iunion-le-tsum-nat.md) | 111 | `result-track:99e25e37fe84076003257fcc9eecfdbb5ff7b8704e8757532a8bfa20810b6bda` |
| 12 | `theorem` | [extend_mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-mono-source-edition-2.md) | 127 | `result-track:c05061821e6e74d51cff29e64935853a092b8b29aa3933e744ec308357427ce8` |
| 13 | `theorem` | [extend_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-iunion.md) | 138 | `result-track:cfd9e6c72cb65a67dc9067b3394d33de38ebd4ad19265754503a5ff9ac46c719` |
| 14 | `theorem` | [extend_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-union.md) | 148 | `result-track:114b3b4197dfd847a65972804ad7b533b96278c6c5823ef8b014a186a6f32b4a` |
| 15 | `def` | [inducedOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure.md) | 161 | `declaration-track:04bb077976b40fe3405f479557e876ba71de71099d5d56477febbf07d257aa4c` |
| 16 | `theorem` | [le_inducedOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/le-inducedoutermeasure.md) | 166 | `result-track:aeb34b7f703a6fdf092d32d691d25c7eeadbf64cbd57da64978f2f34eb321d5b` |
| 17 | `theorem` | [inducedOuterMeasure_union_of_false_of_nonempty_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-union-of-false-of-nonempty-inter.md) | 175 | `result-track:ee426f62a8626e9b45333dfc68e4865eb13fef0ddfdb931afc8b6fd912b64c22` |
| 18 | `theorem` | [inducedOuterMeasure_eq_extend'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-eq-extend-source-edition-2.md) | 183 | `result-track:396e1eb9fc5636c2a4e665d33664c377d830c6c7c684969332c194778bbf636d` |
| 19 | `theorem` | [inducedOuterMeasure_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-eq.md) | 187 | `result-track:c77460bbd4e527117120bb87ffdf65814ff6be44e4d566bf5c2eb4e3aff4de06` |
| 20 | `theorem` | [inducedOuterMeasure_eq_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-eq-iinf.md) | 190 | `result-track:bd1ad96707bf4c9ca05eb1130665454bcbb413de695ac317d10e4b83777c884a` |
| 21 | `theorem` | [inducedOuterMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-zero.md) | 207 | `result-track:58fddec8717733fc225423d23106893468d7fccf58df8736647f2ece17d81c1f` |
| 22 | `theorem` | [inducedOuterMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-preimage.md) | 213 | `result-track:94f84a7a6c6fc797e94860806cb8661f06be26ea2d5eb374a25e185ccfa9a24d` |
| 23 | `theorem` | [inducedOuterMeasure_exists_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-exists-set.md) | 222 | `result-track:c4839ee352b4adfdc1f0cb39bc319ff274fa353e9535dd27f1f1d0df2d458239` |
| 24 | `theorem` | [inducedOuterMeasure_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-caratheodory.md) | 239 | `result-track:321fc51af968b088179c269206b923c9495e5446c04d6321b16ffec81635008b` |
| 25 | `theorem` | [extend_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-mono.md) | 277 | `result-track:2886726c7a2093af174ef94b9277b2f135d7880332209555cf512b8d2e67b9a4` |
| 26 | `theorem` | [extend_iUnion_le_tsum_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/extend-iunion-le-tsum-nat-source-edition-2.md) | 287 | `result-track:b5abfe8e1252a816eb4c82e872712b1def7fd6ad6660289fb536142351ad3e0f` |
| 27 | `theorem` | [inducedOuterMeasure_eq_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-eq-extend.md) | 296 | `result-track:16b39504243018b47d084ceb1e635b55e51a2f942cba7a38ea81b0c97684d857` |
| 28 | `theorem` | [inducedOuterMeasure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/inducedoutermeasure-eq-source-edition-2.md) | 300 | `result-track:e69c67c435a091589842183ff884110defc469a9edbf125f01e75224a8c7c22d` |
| 29 | `def` | [trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim.md) | 312 | `declaration-track:1d7ee67dc0b4c45955e788dc1d3162f0ffd6d410ebb88c869fe6e3ff5f8189d8` |
| 30 | `theorem` | [le_trim_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/le-trim-iff.md) | 315 | `result-track:46c22d2dc97714a8431af2ab875129c3e67cca17d77ad16830aa025f57a540d2` |
| 31 | `theorem` | [le_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/le-trim.md) | 319 | `result-track:df3e647d960301ac2a1e7526d94e45969f49b31dcbd2f4fbedc7d71be52829d2` |
| 32 | `lemma` | [null_of_trim_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/null-of-trim-null.md) | 321 | `result-track:6071557ec7e545275c9daf7033f55519ae72e7f47cb3b6d39a4dc186f1be220b` |
| 33 | `theorem` | [trim_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-eq.md) | 325 | `result-track:7da44b3e57e9ecac21f3343559dbd634c7ef54279f9f3d1c311547240cfe47e3` |
| 34 | `theorem` | [trim_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-congr.md) | 329 | `result-track:75ff16452d56cd4504fb956703d93af987aab5134fcd14bd4634b1e41d109457` |
| 35 | `theorem` | [trim_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-mono.md) | 334 | `result-track:756ff70e898b18694d83e834902ca99e861cdbed1d529e7914645fea128e1fb6` |
| 36 | `theorem` | [trim_anti_measurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-anti-measurablespace.md) | 338 | `result-track:525a9e604ac56c2309de08e5a77e29a464a0121fe2758f0d5ddd4002df1292cf` |
| 37 | `theorem` | [trim_le_trim_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-le-trim-iff.md) | 344 | `result-track:018fb03f76c8cda21f5e3bbe92f9dc1e048d5af4e2d71a50cbbb0a53fbeaf322` |
| 38 | `theorem` | [trim_eq_trim_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-eq-trim-iff.md) | 348 | `result-track:c8d8c8c1ddac0cfd4fac912edcae3b64511aac789b51c4f5038e016f12e5b32c` |
| 39 | `theorem` | [trim_eq_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-eq-iinf.md) | 352 | `result-track:2bbbb9358a825518604ba33d39476f108e9a19e8ed030e5e4c04321448a17615` |
| 40 | `theorem` | [trim_eq_iInf'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-eq-iinf-source-edition-2.md) | 358 | `result-track:bcc37d734984fa760131fe37c89f96168d575f5a820fd90f68c6db644ea45c33` |
| 41 | `theorem` | [trim_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-trim.md) | 361 | `result-track:219f0cc6e0cbecf1ed9383705fcdfed249ce2373dbc4e497d84e045dc26cf59b` |
| 42 | `theorem` | [trim_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-top.md) | 365 | `result-track:fd7dc1d31f19af1a1a1f87fbc5c23487c01e8f0be965e3686413a0495bf62171` |
| 43 | `theorem` | [trim_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-zero.md) | 369 | `result-track:ac266c5ba154998994b54ccba97140f88267dcf95246196187252dc687b4594d` |
| 44 | `theorem` | [trim_sum_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-sum-ge.md) | 373 | `result-track:83b121f9fe619d4d09d64466a1a2594abfe0c386e202192005abb9d2455c92ec` |
| 45 | `theorem` | [exists_measurable_superset_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/exists-measurable-superset-eq-trim.md) | 379 | `result-track:dd4096908ff87c4e9834fb8fbf0e7268ba0e37d98d0d6ab354a9e037ce9e2704` |
| 46 | `theorem` | [exists_measurable_superset_of_trim_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/exists-measurable-superset-of-trim-eq-zero.md) | 406 | `result-track:d875eab5c950aeb822dbdfb43d4b72104c6e1716dfb57fdb871ae58af8b1898d` |
| 47 | `theorem` | [exists_measurable_superset_forall_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/exists-measurable-superset-forall-eq-trim.md) | 413 | `result-track:c688c7f450658ab866ef0a213fa8a45cf1fc3f6eeb1c5b03f379c69bd570c42e` |
| 48 | `theorem` | [trim_binop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-binop.md) | 423 | `result-track:86e87f47bedd72a88334d2db1c6c9e18da7849dad5b00a573d9fabd0ec34adf2` |
| 49 | `theorem` | [trim_op](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-op.md) | 430 | `result-track:a9c861882d774b26b03e3b9fbbb0e7bfc26273b54e3f75e46794839959c9fb25` |
| 50 | `theorem` | [trim_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-add.md) | 435 | `result-track:5a7a8e675d26043e7dd9c547f1dfb7043150e40593c0e81255279e84c2b9406e` |
| 51 | `theorem` | [trim_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-smul.md) | 439 | `result-track:edf3d713d09e854b9a67892a5ee5acaf47ae23ca58a1b6a23f9cfb5cd9a4f568` |
| 52 | `theorem` | [trim_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-sup.md) | 444 | `result-track:af7523eb858f664817dff6a37da8e40784b33b110b65e8c4df40abbce4f2235b` |
| 53 | `theorem` | [trim_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/trim-isup.md) | 449 | `result-track:b576c2fd244986290ded1bf409d087baa5b4aa1e5c426821bb28f69133d3f0e4` |
| 54 | `theorem` | [restrict_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InducedPublic.lean/declarations/restrict-trim.md) | 462 | `result-track:4031ffab939a94224c36785826118c08faa8b84d10739fe17890b5a814298f3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=432816bd041fedc6f211f1f9fa88f0a4e378ee6c27ff9a221938672881ded74c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
