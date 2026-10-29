# Verification target: Periodic Pts Lemmas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "255deefdb5b81455b21f0a6c00451c598bcd551c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `255deefdb5b81455b21f0a6c00451c598bcd551c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean.json)

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
| 1 | `theorem` | [directed_ptsOfPeriod_pnat](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/directed-ptsofperiod-pnat.md) | 35 | `result-track:3792656ca217df9a164223a975824747af6b4b12e0d2519b0d3b0c481a1c99fa` |
| 2 | `theorem` | [bijOn_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/bijon-periodicpts.md) | 39 | `result-track:af277fa0e899f1bfec101ff98587b468cb7d4c03bbc95645c2c712b5fee39669` |
| 3 | `theorem` | [minimalPeriod_eq_prime_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-eq-prime-iff.md) | 43 | `result-track:3e38c6c1c0cb831dd11f3e9cf8bc33fd5e3a52dee9d3b5c89fc97fc50bc91159` |
| 4 | `theorem` | [minimalPeriod_eq_sInf_n_pos_IsPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-eq-sinf-n-pos-isperiodicpt.md) | 50 | `result-track:2c8cde5968a0e02dfa7dda3e6263feb903905dcdcc8ee460bb8d7d87d249dd6d` |
| 5 | `theorem` | [minimalPeriod_eq_prime](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-eq-prime.md) | 56 | `result-track:58b69690f58efa3bc29610c4fadb9dcf5cbbb4df176b17e06c48f9db516d8812` |
| 6 | `theorem` | [minimalPeriod_eq_prime_pow](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-eq-prime-pow.md) | 60 | `result-track:5e627e098deb14875c67845e44a69fda7c1f9c67a83dfa824cf03d7c88be0371` |
| 7 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_mul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/commute-minimalperiod-of-comp-dvd-mul.md) | 65 | `result-track:d13a7b84eb4913a76ebfc429f17af8defa5acc13476ce8a510df9936596a78c0` |
| 8 | `theorem` | [Commute.minimalPeriod_of_comp_eq_mul_of_coprime](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/commute-minimalperiod-of-comp-eq-mul-of-coprime.md) | 69 | `result-track:858d2b02ac9b85450ea0bc169cf3822255b103be8724585effac698e77ec7f82` |
| 9 | `theorem` | [minimalPeriod_le_card](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-le-card.md) | 87 | `result-track:e573baebb1bd83f2b12c41643190b981e2c3a523a1d8aedcec2eb94d6f515b48` |
| 10 | `theorem` | [isPeriodicPt_factorial_card_of_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/isperiodicpt-factorial-card-of-mem-periodicpts.md) | 91 | `result-track:737727f93512d4c8348d7e6b36a063ec95a4e14ce7de0eff47401557dbcd9272` |
| 11 | `theorem` | [mem_periodicPts_iff_isPeriodicPt_factorial_card](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/mem-periodicpts-iff-isperiodicpt-factorial-card.md) | 96 | `result-track:d6082381708c3604c345b3bd9efa30264a59102168a922fc378575bf6ba9ca39` |
| 12 | `theorem` | [Injective.mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/injective-mem-periodicpts.md) | 102 | `result-track:931ce05a77f485db9d0df7f6cf085bbac8ac33c7cdab3b10e4fd8b027f9aa485` |
| 13 | `theorem` | [injective_iff_periodicPts_eq_univ](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/injective-iff-periodicpts-eq-univ.md) | 109 | `result-track:aa57e380ade1bf6a49cdc4b6df0d0ea1b10b5ddbf338d7e18788d2173d99a3fa` |
| 14 | `theorem` | [injective_iff_iterate_factorial_card_eq_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/injective-iff-iterate-factorial-card-eq-id.md) | 114 | `result-track:6e453d3195575387c979d84392870742c2873cabd197c4e1eb6b19bb2413a7b0` |
| 15 | `theorem` | [minimalPeriod_prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-prodmap.md) | 129 | `result-track:c8cfb32468ba9d5edef158236fa68f7bc3d8121222e7e16282f78386c5e27379` |
| 16 | `theorem` | [minimalPeriod_fst_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-fst-dvd.md) | 133 | `result-track:cafb0c4310bad2d0191781d1d6a4a275bfb5cedfc389ad4c6f98d21d7d5ffbb9` |
| 17 | `theorem` | [minimalPeriod_snd_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-snd-dvd.md) | 136 | `result-track:c929a30a439a5adb02254dbea4c71393c72f77ce04584ac4e9066ce5524f4e16` |
| 18 | `theorem` | [minimalPeriod_piMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-pimap.md) | 147 | `result-track:a00c78eae96f1a698a3861a5a123c8bb44ab3035ce1909fe93fe253fd5140746` |
| 19 | `theorem` | [minimalPeriod_piMap_fintype](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-pimap-fintype.md) | 152 | `result-track:ac7b3dc98f41b97f5d794d608fcae569b0e223f3e80f4a8f3cf83a932ecc8469` |
| 20 | `theorem` | [minimalPeriod_single_dvd_minimalPeriod_piMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsLemmasNamespacedPublic.lean/declarations/minimalperiod-single-dvd-minimalperiod-pimap.md) | 156 | `result-track:5ee7feb1153280643e2ca62874eb6393385264fa7c8b6ae229d676c2f7c73734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e5a3c61656f07e84eb0825e675d88473ce771d94b26ca5fadf1393030eddc8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
