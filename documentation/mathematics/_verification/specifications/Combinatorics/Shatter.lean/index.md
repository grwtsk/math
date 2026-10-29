# Verification target: Shatter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Shatter.lean/index.md) · [Full source](../../../../Combinatorics/Shatter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Shatters](../../../../Combinatorics/Shatter.lean/declarations/shatters.md) | 36 | `declaration-track:afd01332013683cdcafe15b1b128e2b137494bdf576ea34beef19700b177a7ef` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/Shatter.lean/declarations/instance.md) | 38 | `declaration-track:b1420ce3d037edc50b9bd8f2c8681b717514bc6e9f71f9cda4b11c7204eaa24b` |
| 3 | `lemma` | [Shatters.exists_inter_eq_singleton](../../../../Combinatorics/Shatter.lean/declarations/shatters-exists-inter-eq-singleton.md) | 40 | `result-track:394eb57790b5f207fdaea5f5862bb28dcb18806f296774789cd00e02b35b8d52` |
| 4 | `lemma` | [Shatters.mono_left](../../../../Combinatorics/Shatter.lean/declarations/shatters-mono-left.md) | 43 | `result-track:c2bb78615abd3d977275fd3409315d22f8966802c8adb3cfc6b0e5e36314588e` |
| 5 | `lemma` | [Shatters.mono_right](../../../../Combinatorics/Shatter.lean/declarations/shatters-mono-right.md) | 46 | `result-track:aaafc229454abedc9bccbc6ce95d0bc7fb2e14cb8fe9274e60df049db046be18` |
| 6 | `lemma` | [Shatters.exists_superset](../../../../Combinatorics/Shatter.lean/declarations/shatters-exists-superset.md) | 49 | `result-track:9c41ff3a6d0dce9d67829dc2d65def3f4d9953c0396b35195ec614f54206923d` |
| 7 | `lemma` | [shatters_of_forall_subset](../../../../Combinatorics/Shatter.lean/declarations/shatters-of-forall-subset.md) | 52 | `result-track:47c323eeb3fd91fce48e2d3f5719b7fe7057fa2d6e9c5286ecc896f30516d380` |
| 8 | `lemma` | [Shatters.nonempty](../../../../Combinatorics/Shatter.lean/declarations/shatters-nonempty.md) | 55 | `result-track:452e36d0c926e06fbeaf83fd4b98895dd95689671750e074716f775fa27a077a` |
| 9 | `lemma` | [shatters_empty](../../../../Combinatorics/Shatter.lean/declarations/shatters-empty.md) | 58 | `result-track:1e5708b729092fe8807e76fd8683bafa770aa5a8139421db19451cb21ce279f6` |
| 10 | `lemma` | [Shatters.subset_iff](../../../../Combinatorics/Shatter.lean/declarations/shatters-subset-iff.md) | 61 | `result-track:6a1c1d782b24531c9facc5da0a21361a1ed6ca264b570d5c7695857a3daea874` |
| 11 | `lemma` | [shatters_iff](../../../../Combinatorics/Shatter.lean/declarations/shatters-iff.md) | 64 | `result-track:b0d2112fcce40daa986f8a802e7e96ad401f9412fef85f68dd542d0130df6523` |
| 12 | `lemma` | [univ_shatters](../../../../Combinatorics/Shatter.lean/declarations/univ-shatters.md) | 68 | `result-track:9523578b52d2b2ba01c7887fb8fcd7200c9b3563e0c960e137388655a19ef463` |
| 13 | `lemma` | [shatters_univ](../../../../Combinatorics/Shatter.lean/declarations/shatters-univ.md) | 71 | `result-track:00069dc52b8df18cb7d6d469c2b08c45f9bd34389aaed2672f0a693477f55d40` |
| 14 | `def` | [shatterer](../../../../Combinatorics/Shatter.lean/declarations/shatterer.md) | 75 | `declaration-track:72cd058614c856c7a3aef7eb1ded1cd399db8ea00219a07f31592bc90ae5e0b7` |
| 15 | `lemma` | [mem_shatterer](../../../../Combinatorics/Shatter.lean/declarations/mem-shatterer.md) | 78 | `result-track:94d65639551dca5bba13f7f248f6848a88fa35dd3724e44fcce70b52cee5ea45` |
| 16 | `lemma` | [shatterer_mono](../../../../Combinatorics/Shatter.lean/declarations/shatterer-mono.md) | 83 | `result-track:e280f3f5703a5eb9d69e56817157b4a970ab07b52d3df7b6a28bb800128434c5` |
| 17 | `lemma` | [subset_shatterer](../../../../Combinatorics/Shatter.lean/declarations/subset-shatterer.md) | 86 | `result-track:175704b3471f83f0890aefc234a098112db1e7a92c903e01fd596934835dcc33` |
| 18 | `lemma` | [isLowerSet_shatterer](../../../../Combinatorics/Shatter.lean/declarations/islowerset-shatterer.md) | 89 | `result-track:518a334426d39469c1411b33605c30d15bb7b15571343363d2533fab62c5a782` |
| 19 | `lemma` | [shatterer_eq](../../../../Combinatorics/Shatter.lean/declarations/shatterer-eq.md) | 92 | `result-track:b603363f41f07d04632b321832c0bb8aa9ecb405f07a32a6047179b28060225c` |
| 20 | `lemma` | [shatterer_idem](../../../../Combinatorics/Shatter.lean/declarations/shatterer-idem.md) | 99 | `result-track:67ea063e24aa586dc4dc34c6d6372145e4c189cba56a3018ae4ace7f6ca74158` |
| 21 | `lemma` | [shatters_shatterer](../../../../Combinatorics/Shatter.lean/declarations/shatters-shatterer.md) | 101 | `result-track:03a3771dee16ef9451c4bbd1664769c903aae03bf100598ca01d2d49043d1ace` |
| 22 | `lemma` | [aux](../../../../Combinatorics/Shatter.lean/declarations/aux.md) | 106 | `result-track:86b87134229163d4614bf915b889539cc45996ea019460dfd20cae8040b59439` |
| 23 | `lemma` | [card_le_card_shatterer](../../../../Combinatorics/Shatter.lean/declarations/card-le-card-shatterer.md) | 110 | `result-track:810284cb242210d09d5689828ed1b58aaabe11c5deef7173ab4ec87304d629f1` |
| 24 | `lemma` | [Shatters.of_compression](../../../../Combinatorics/Shatter.lean/declarations/shatters-of-compression.md) | 153 | `result-track:79cba5d6cc6c980d8fcb72c1dd661317454207a162c43e1ee4853da0d29c4997` |
| 25 | `lemma` | [shatterer_compress_subset_shatterer](../../../../Combinatorics/Shatter.lean/declarations/shatterer-compress-subset-shatterer.md) | 175 | `result-track:77c5578479a4dfc17a222375c6c0d60d7c24e61c8ca32a716d75b78724046db1` |
| 26 | `def` | [vcDim](../../../../Combinatorics/Shatter.lean/declarations/vcdim.md) | 182 | `declaration-track:c147344f565d0ab93f5313c6e57b7183a08a5ddc0b8cf8f6a56a86507fd9261f` |
| 27 | `lemma` | [vcDim_mono](../../../../Combinatorics/Shatter.lean/declarations/vcdim-mono.md) | 184 | `result-track:4b9d71c8aade016fc57a0482dc2d7f64d445023a5de88a40d10468cf93524ed8` |
| 28 | `lemma` | [Shatters.card_le_vcDim](../../../../Combinatorics/Shatter.lean/declarations/shatters-card-le-vcdim.md) | 186 | `result-track:7a898780cb9496782911008679b9c7e54ee37a81b08b02b7c82c95c7b98f386b` |
| 29 | `lemma` | [vcDim_compress_le](../../../../Combinatorics/Shatter.lean/declarations/vcdim-compress-le.md) | 189 | `result-track:37416326c6460edf080154ff630f718dc0d5e4d8542a83779f5ce503db748c5a` |
| 30 | `lemma` | [card_shatterer_le_sum_vcDim](../../../../Combinatorics/Shatter.lean/declarations/card-shatterer-le-sum-vcdim.md) | 193 | `result-track:6f97f6ba9f90e89952a0193d48344cba59f31473dbc675211083d5f78d06197c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d72adbb4b1489845875accdc498ea12fa9f4e09994640ed1868fd9aa49163f2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
