# Verification target: Riesz Markov Kakutani Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c815a40e88877056dcb31ecbe757ca3bb9b3702f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c815a40e88877056dcb31ecbe757ca3bb9b3702f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean.json)

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
| 1 | `lemma` | [CompactlySupportedContinuousMap.monotone_of_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/compactlysupportedcontinuousmap-monotone-of-nnreal.md) | 57 | `result-track:f2e9305c916a3dab3bf4bb8e844814e405effead2016a14e9aefa46f52d3e9a5` |
| 2 | `def` | [rieszContentAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontentaux.md) | 69 | `declaration-track:f101ed0470fbb83f48429e172945be227b4e3e0321a66d9528526f255468f4ec` |
| 3 | `theorem` | [rieszContentAux_image_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontentaux-image-nonempty.md) | 78 | `result-track:c25e927cf2249c50ce8cdcc30ff5ab7ff4920b078642290d43eb8fad07822b0b` |
| 4 | `theorem` | [rieszContentAux_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontentaux-mono.md) | 101 | `result-track:3cf8775498a254f5e2a42c909b9eb029488d320970720007bafad7071883ab12` |
| 5 | `theorem` | [rieszContentAux_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontentaux-le.md) | 113 | `result-track:5f52a543ec33540b3ae94ee1be32664af238af77878bb0340c18b9f1d884b3fa` |
| 6 | `theorem` | [exists_lt_rieszContentAux_add_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/exists-lt-rieszcontentaux-add-pos.md) | 122 | `result-track:389910b8a07ce8a016991527539a92fb341c32591eafc1651f3a69f0a8f89e16` |
| 7 | `theorem` | [rieszContentAux_sup_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontentaux-sup-le.md) | 134 | `result-track:323583d0231d7fe2b26079c184a32673f1a647b89a85df13f7442ac49b92dc24` |
| 8 | `lemma` | [exists_continuous_add_one_of_isCompact_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/exists-continuous-add-one-of-iscompact-nnreal.md) | 161 | `result-track:1766447bf7106795769d1f4ce2138473bbccb284359a6f9e97248e8dd4792f5d` |
| 9 | `lemma` | [rieszContentAux_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontentaux-union.md) | 242 | `result-track:a3f344f6709e70b95af11e93123d7de57f3502254cbca3844af6a5517d9db49a` |
| 10 | `def` | [rieszContent](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontent.md) | 283 | `declaration-track:b3b7c136e20cb52f797b34beb1a267091a630903f9ab6ace0f44b1ce781ffe56` |
| 11 | `lemma` | [rieszContent_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszcontent-ne-top.md) | 289 | `result-track:934f3ce6aaa8ccce28548fc99d8aec5f606f2f43367d2d58ea5bcbcff39891b8` |
| 12 | `lemma` | [contentRegular_rieszContent](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/contentregular-rieszcontent.md) | 293 | `result-track:454a481a8405ce56661bae06abefd35eef1c5a828c7147c14d1efac904d02281` |
| 13 | `def` | [rieszMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/rieszmeasure.md) | 332 | `declaration-track:981d713c935b6436e9ab2ee2fe480e1ea4bdb7296784316eb8d875bb0f25de89` |
| 14 | `lemma` | [le_rieszMeasure_of_isCompact_tsupport_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/le-rieszmeasure-of-iscompact-tsupport-subset.md) | 335 | `result-track:355d2d6a097d65a3b19225c77e9693b4338de497e725cdb30148bb53f2f9c4d2` |
| 15 | `lemma` | [le_rieszMeasure_of_tsupport_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniBasicNamespacedPublic.lean/declarations/le-rieszmeasure-of-tsupport-subset.md) | 353 | `result-track:90adda908d9a2a1f4c02e4b14da98140b2d2a3b96494594aab35658dfeac27e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c57c5817b329384da45b0eb31f6efdf08b083776d156e6c60dc202920284721d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
