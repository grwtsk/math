# Verification target: Subset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19aea1838d5c8adcc90547d5558029a707e11821",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19aea1838d5c8adcc90547d5558029a707e11821`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.TopologicalEntropy.NetEntropy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsDynCoverOf.monotone_subset](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/isdyncoverof-monotone-subset.md) | 46 | `result-track:7df659b8e1ca11bd406c4f3aa0a747587b38144ace378dbc2ed63d466235980a` |
| 2 | `lemma` | [IsDynNetIn.monotone_subset](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/isdynnetin-monotone-subset.md) | 51 | `result-track:632086941211489435a27a92fea4107594a248e56ea9befedefd7e5c33a40b73` |
| 3 | `lemma` | [coverMincard_monotone_subset](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/covermincard-monotone-subset.md) | 56 | `result-track:823bd43462280b1d19cafa359668e1da1e6295b2325f54073301ad4b580a4032` |
| 4 | `lemma` | [netMaxcard_monotone_subset](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/netmaxcard-monotone-subset.md) | 60 | `result-track:b2e121ac880f337b9d5217cf4423e24fe11ae08808e45e11f88da6801ada4366` |
| 5 | `lemma` | [coverEntropyInfEntourage_monotone](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyinfentourage-monotone.md) | 64 | `result-track:bb94abec534843ab2ee864b414f56f4ce5a619dcc5a09925fd5fad93d7511bed` |
| 6 | `lemma` | [coverEntropyEntourage_monotone](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyentourage-monotone.md) | 69 | `result-track:477acc1900159a7a14f51b87496caa8e3ca9c59a18da0fe97c14cb2852f4ea08` |
| 7 | `lemma` | [netEntropyInfEntourage_monotone](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/netentropyinfentourage-monotone.md) | 74 | `result-track:8150e4d265aca386414deffd730e12c50d43857bd91e27d6a84c4952245c5318` |
| 8 | `lemma` | [netEntropyEntourage_monotone](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/netentropyentourage-monotone.md) | 79 | `result-track:13016096ff277ff0d43d8cf7806c30785e38e685056990465c9536d866a4d3e7` |
| 9 | `lemma` | [coverEntropyInf_monotone](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyinf-monotone.md) | 84 | `result-track:aff16aad844acdb8494ac42f1541f1ab71e851b4cf2c989b47d83a26d61f7c9f` |
| 10 | `lemma` | [coverEntropy_monotone](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-monotone.md) | 88 | `result-track:f07b69010c1d340d9abe0fc79b647daf7444cc5ae3d688bb2bf5f1d06209639d` |
| 11 | `lemma` | [IsDynCoverOf.closure](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/isdyncoverof-closure.md) | 100 | `result-track:9912ef6fd1eea42dab240b53dd7f2d794b1fe513187f4f4c9babbad62433fe1a` |
| 12 | `lemma` | [coverMincard_closure_le](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/covermincard-closure-le.md) | 111 | `result-track:d91e6b971c4add9c4c09c8f8dff168aa15ae6fa16d053aeaa785c1a7f06fcac4` |
| 13 | `lemma` | [coverEntropyInfEntourage_closure](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyinfentourage-closure.md) | 119 | `result-track:f360df07fcbd9f5e8858c9aa97a9469b70c99b344035f1951824c6927e95a77b` |
| 14 | `lemma` | [coverEntropyEntourage_closure](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyentourage-closure.md) | 124 | `result-track:491941f2f300bbf258d3c8c78172ef0efeafee4fbf0b79726057a69c35047a07` |
| 15 | `lemma` | [coverEntropyInf_closure](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyinf-closure.md) | 129 | `result-track:d21afc9e71ff50d749175520677b6ca487676dd2068719cc2e4dd532d2649715` |
| 16 | `theorem` | [coverEntropy_closure](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-closure.md) | 136 | `result-track:4d4453f653c4a00d3471897e97d4cd4479dfbeb1ba94826a30c5517a0812db84` |
| 17 | `lemma` | [IsDynCoverOf.union](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/isdyncoverof-union.md) | 149 | `result-track:bf8a4a643d8d0815c9b18fb879bc7a90a26857ee523ffba7e20a16dbc7a1fdda` |
| 18 | `lemma` | [coverMincard_union_le](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/covermincard-union-le.md) | 155 | `result-track:425381342fb0a7d4088d9b3a6629a53c2d5353504cd273d0be67104871fa7f9e` |
| 19 | `lemma` | [coverEntropyEntourage_union](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyentourage-union.md) | 169 | `result-track:c74b1d19d7c3cc6cb4ab81cb9ec9cf94a350b09f3ae6d7ca5247ff348f82425f` |
| 20 | `lemma` | [coverEntropy_union](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-union.md) | 181 | `result-track:dd75f7641dad2452b8a8ec5ecaef40b283593a9b17878ccef17c27f99f95751a` |
| 21 | `lemma` | [coverEntropyInf_iUnion_le](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyinf-iunion-le.md) | 186 | `result-track:c7c05b82ff44c122ad21604dc95dd9c920ead70d76ae1b800cbb4bd492cce2ba` |
| 22 | `lemma` | [coverEntropy_iUnion_le](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-iunion-le.md) | 190 | `result-track:076614b5c3f8ef965e7999f9f21e9eecab9c4241258cb1fbe6f19c5452d65ffa` |
| 23 | `lemma` | [coverEntropyInf_biUnion_le](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropyinf-biunion-le.md) | 194 | `result-track:46b75c3cc73f5a91a896797d533e6b1b5b0da8d315a83c19e7067ad05cfdf270` |
| 24 | `lemma` | [coverEntropy_biUnion_le](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-biunion-le.md) | 198 | `result-track:e359c6cdf18641ab03f3961d2523e9a1f4c2aaae577f9dfba3b45e4b9fd36dbc` |
| 25 | `def` | [coverEntropy_supBotHom](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-supbothom.md) | 203 | `declaration-track:548b7ce2cc9a66d1166f7e8332f0c1e167e45a38041a614fececb4735f5d1ac6` |
| 26 | `lemma` | [coverEntropy_iUnion_of_finite](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-iunion-of-finite.md) | 209 | `result-track:2e4e1661e5df8c42ff6bf7e65615f5a47657e6f87bddaccf87d7d6f43ef7b993` |
| 27 | `lemma` | [coverEntropy_biUnion_finset](../../../../DynamicalSystemsAndErgodicTheory/Subset.lean/declarations/coverentropy-biunion-finset.md) | 213 | `result-track:233720d778486c7b09fb894888628c2bdfb63e8be51048e841e6e384767951e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=508e14f580999f4fdaae79604257d10e3ec9f32a5afbe2877eb7324e7d58bc56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
