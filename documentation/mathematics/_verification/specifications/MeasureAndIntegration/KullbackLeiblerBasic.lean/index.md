# Verification target: Kullback Leibler Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c6b39d6e23e7486c330fd561f01d63efec9606c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/index.md) · [Full source](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c6b39d6e23e7486c330fd561f01d63efec9606c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.InformationTheory.KullbackLeibler.KLFun` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.IntegralRNDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [klDiv_of_ac_of_integrable](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-of-ac-of-integrable.md) | 58 | `result-track:413858ae4bafa9b0e0da2cd14b954a69b2768110f29f26857c80972fd6b468da` |
| 2 | `lemma` | [klDiv_of_not_ac](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-of-not-ac.md) | 64 | `result-track:3f49e3e6c906a216f8a3d55e9775efb5ce8009bfe05df89910b9b0f1a17a8ad6` |
| 3 | `lemma` | [klDiv_of_not_integrable](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-of-not-integrable.md) | 69 | `result-track:37a5d4cc018cbc40b824198172e8f6e5c424583bf557f8d23b15113dcd4cc252` |
| 4 | `lemma` | [klDiv_self](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-self.md) | 74 | `result-track:ae7ae4e7c807b01b1895e71b9364ca6a1a2749576b3e1ee04394ba77883f0523` |
| 5 | `lemma` | [klDiv_zero_left](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-zero-left.md) | 82 | `result-track:74e54d38f231c5d6b6aaffe36c706d8f348c1b873736557d0b0dc8d26cf25b0c` |
| 6 | `lemma` | [klDiv_zero_right](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-zero-right.md) | 87 | `result-track:762e1320c9412bf088c02c8966dfd2929ca35c68a15b2d59668cc9a579357ce1` |
| 7 | `lemma` | [klDiv_eq_top_iff](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-eq-top-iff.md) | 90 | `result-track:76851d95198f9802c369e319a752877684b4acf3fd82ee284070bc3eaa19b252` |
| 8 | `lemma` | [klDiv_ne_top_iff](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-ne-top-iff.md) | 96 | `result-track:bced976523978f9e63e43f4b1eedd6ca13d404a6ef960ac30d710f1f9cd22269` |
| 9 | `lemma` | [klDiv_eq_integral_klFun](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-eq-integral-klfun.md) | 104 | `result-track:4b0f2ff9cd1342e3f17c96def10bb9a8de4fbc872ddd4b271285caf66bc729a9` |
| 10 | `lemma` | [klDiv_eq_lintegral_klFun](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-eq-lintegral-klfun.md) | 112 | `result-track:f21468d300099996f8d72b0465c70662f001796b96cb91a783b7d090033ed3e1` |
| 11 | `lemma` | [integral_llr_add_sub_measure_univ_nonneg](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/integral-llr-add-sub-measure-univ-nonneg.md) | 141 | `result-track:4444f9523343c24a3e0044c5bed35e293787586bee6adbae9510404cb5c4e948` |
| 12 | `lemma` | [toReal_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/toreal-kldiv.md) | 146 | `result-track:e466223219dc67245666d0e9c8b21991dfc0112e388083d6b1d8e22911d9ab3c` |
| 13 | `lemma` | [toReal_klDiv_of_measure_eq](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/toreal-kldiv-of-measure-eq.md) | 153 | `result-track:fac255759e51d2ca2797004502a0496fae010ff3a8747e5eceacdfd05fee7f53` |
| 14 | `lemma` | [toReal_klDiv_eq_integral_klFun](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/toreal-kldiv-eq-integral-klfun.md) | 159 | `result-track:69a9f8620078d6b051e6517a9e148db8677c2621bf19ec4e6c5b7cb40bb2fc01` |
| 15 | `lemma` | [integral_llr_add_mul_log_nonneg](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/integral-llr-add-mul-log-nonneg.md) | 174 | `result-track:7f0cc155a353ea2e72b78b02261d7a6fdf9391300b4a424a8c713a33413bccf0` |
| 16 | `lemma` | [mul_klFun_le_toReal_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/mul-klfun-le-toreal-kldiv.md) | 193 | `result-track:5329a9761c0cc3d5e3add6049316de20d4ce8c7ad9db2fe030a1546d72adeb19` |
| 17 | `lemma` | [mul_log_le_toReal_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/mul-log-le-toreal-kldiv.md) | 201 | `result-track:5a339e203c6bd905acb90d9da6078cfb2529ca3f1d0fc2f55647f1f440bc0a4e` |
| 18 | `lemma` | [mul_log_le_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/mul-log-le-kldiv.md) | 215 | `result-track:77c7a06f04e2a06f06c3bff195ee0cba5e94ee0ac8e3e919e4800fd8005d6afc` |
| 19 | `lemma` | [klDiv_eq_zero_iff](../../../../MeasureAndIntegration/KullbackLeiblerBasic.lean/declarations/kldiv-eq-zero-iff.md) | 232 | `result-track:0e641a69f9efc93be7d069d3371a0c3371739916e1a3419c62376f076273198b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e602855faeb589f339255b3b14008d74f8f86a5d5ffd7bab6fa43586f78507a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
