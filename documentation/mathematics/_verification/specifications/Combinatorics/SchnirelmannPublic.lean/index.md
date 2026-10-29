# Verification target: Schnirelmann Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c5972424d93a43008c64807b91b2f8755c4aa8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SchnirelmannPublic.lean/index.md) · [Full source](../../../../Combinatorics/SchnirelmannPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c5972424d93a43008c64807b91b2f8755c4aa8`.

Source path: `GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Rify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schnirelmannDensity](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity.md) | 55 | `declaration-track:e41e7657158ad97698c6e5b2f71722940648c1d9744f3fbba1ba90a42d6e9f81` |
| 2 | `lemma` | [schnirelmannDensity_nonneg](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-nonneg.md) | 62 | `result-track:a6af3ea3cde4ed67b5ebcfcce3e8341e182b4ee8a462028a47fc0fa3569c6a39` |
| 3 | `lemma` | [schnirelmannDensity_le_div](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-le-div.md) | 65 | `result-track:b5f06a5f4966403de1f3ed5427c3a5ceeca3246abe3e96cfed75660df5ad358e` |
| 4 | `lemma` | [schnirelmannDensity_mul_le_card_filter](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-mul-le-card-filter.md) | 73 | `result-track:3537300caafeae8129dad95b6e783929ead584a8979ca68f986dcd5ffe090165` |
| 5 | `lemma` | [schnirelmannDensity_le_of_le](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-le-of-le.md) | 86 | `result-track:f66e8145f3c055e6a6fe36995cb2ca8ddefa451e802b860109e100c6af4f5762` |
| 6 | `lemma` | [schnirelmannDensity_le_one](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-le-one.md) | 90 | `result-track:1fdf6464008da74662bbadaf7396851380678f05e3deb183cac8ac509fb0a99d` |
| 7 | `lemma` | [schnirelmannDensity_le_of_notMem](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-le-of-notmem.md) | 97 | `result-track:52ffd5b147111b3beb1b776c7c1bde4f4e6800b76bea4a587f337dfd3326fb12` |
| 8 | `lemma` | [schnirelmannDensity_eq_zero_of_one_notMem](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-eq-zero-of-one-notmem.md) | 110 | `result-track:59f16269b39374be720253ad31c1045742308e8ac3e3a90a6c93f4f7bf56e989` |
| 9 | `lemma` | [schnirelmannDensity_le_of_subset](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-le-of-subset.md) | 114 | `result-track:a52b9cd8b4b3ef4c384dc48267282f86bf309a9f21de2b49bb03444adadef904` |
| 10 | `lemma` | [schnirelmannDensity_eq_one_iff](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-eq-one-iff.md) | 119 | `result-track:ebb62fdc8923626f02392cb1129c1c644f53dda7080a7e9d02052393725ebff4` |
| 11 | `lemma` | [schnirelmannDensity_eq_one_iff_of_zero_mem](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-eq-one-iff-of-zero-mem.md) | 134 | `result-track:2fb7dbdffcc09c19c942b47a68ab19beadd0450d2b3a6e93c1a5a784326e0625` |
| 12 | `lemma` | [le_schnirelmannDensity_iff](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/le-schnirelmanndensity-iff.md) | 145 | `result-track:e3aee80166bd5a2c3a619387b75681497d244913eb8b2c07998e0d024abcd8ae` |
| 13 | `lemma` | [schnirelmannDensity_lt_iff](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-lt-iff.md) | 149 | `result-track:c971da01aca30ef039ed888bc57be489d70a04e47725d9395e1aa450416f2ba1` |
| 14 | `lemma` | [schnirelmannDensity_le_iff_forall](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-le-iff-forall.md) | 153 | `result-track:9d10cc641b56d3b7bb4f78226fc5a8436f1c980894362aba724ba9df420e012f` |
| 15 | `lemma` | [schnirelmannDensity_congr'](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-congr-source-edition-2.md) | 159 | `result-track:fad00e7c7242f6a6826e447dd6e71c11bcf9aa318c560157658b190ff8f3a09a` |
| 16 | `lemma` | [schnirelmannDensity_insert_zero](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-insert-zero.md) | 164 | `result-track:6597df9f907f9b272180b3a446195894750003a28ae885f06b6808956dcd4e7b` |
| 17 | `lemma` | [schnirelmannDensity_sdiff_singleton_zero](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-sdiff-singleton-zero.md) | 169 | `result-track:1db9b468df4afa831b822b62ee0947d4fefc38bb9e9cd3d095f1e4691c4c55b0` |
| 18 | `lemma` | [schnirelmannDensity_congr](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-congr.md) | 176 | `result-track:8eadf84cd0fb3a5fd00b78d61d26d902528fe9d293cdeb97ed3dc829cc66887d` |
| 19 | `lemma` | [exists_of_schnirelmannDensity_eq_zero](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/exists-of-schnirelmanndensity-eq-zero.md) | 185 | `result-track:0c0edf975ec6c4e330a496b180882f36f3a85929dafa9924642ceb01a4418b9c` |
| 20 | `lemma` | [schnirelmannDensity_empty](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-empty.md) | 193 | `result-track:2cb7ca214951c4282e7b4691fb5b7f6465eddb57ad4be7539d841f2a2151c870` |
| 21 | `lemma` | [schnirelmannDensity_finset](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-finset.md) | 197 | `result-track:8408d2c6d4cf6756c10626fbdef915dfd7482d8e09d352ab8ed9125782afe6a4` |
| 22 | `lemma` | [schnirelmannDensity_finite](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-finite.md) | 211 | `result-track:bac6db8892af18b747a66dc04646ff8bb3296407645d583903f7922d311700db` |
| 23 | `lemma` | [schnirelmannDensity_univ](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-univ.md) | 214 | `result-track:ed962141e6997c70210f15fe29050edcb47b55d771d724bc5557153d851b9f7f` |
| 24 | `lemma` | [schnirelmannDensity_setOfPred_even](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-setofpred-even.md) | 217 | `result-track:964404aaddc1e4abaa9e5511a3984aa6ea4cd9886b5fd5b758c19acae62f755b` |
| 25 | `lemma` | [schnirelmannDensity_setOfPred_prime](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-setofpred-prime.md) | 223 | `result-track:2987554b3afcfc62e2daf308037876595fed7cf01e0aee06c3f8892867d71e61` |
| 26 | `lemma` | [schnirelmannDensity_setOfPred_mod_eq_one](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-setofpred-mod-eq-one.md) | 234 | `result-track:88317286e872a0b9b680aa381e15334143d3c8b49edccce02ebbc9b691929192` |
| 27 | `lemma` | [schnirelmannDensity_setOfPred_modeq_one](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-setofpred-modeq-one.md) | 272 | `result-track:7fdd97c0799997d5a5ad257930f1445d8afcec8c920b258c7ac3f3ea383e4fba` |
| 28 | `lemma` | [schnirelmannDensity_setOfPred_Odd](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/schnirelmanndensity-setofpred-odd.md) | 282 | `result-track:43056b35c1dd3a70e6fa8dd621b2b6bf0bcad3a1eda19a3481d5436ccc4ec0b2` |
| 29 | `theorem` | [add_eq_univ_of_one_le_schirelmannDensity_add_schnirelmannDensity](../../../../Combinatorics/SchnirelmannPublic.lean/declarations/add-eq-univ-of-one-le-schirelmanndensity-add-schnirelmanndensity.md) | 297 | `result-track:17bc325d8638f654efaa7bc5b32fda8ec46920ceb5ea08146a443b482d39e0ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06068cfae0f8be600254d6e4e576f81f1f5655a3b0316295b645e7bdc8b4d27c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
