# Verification target: Quiver Path Eq Nil Of Length Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d268d8b7a9cd97a7c1e52c22421ceeff70e4df47",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d268d8b7a9cd97a7c1e52c22421ceeff70e4df47`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Prefunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/path.md) | 24 | `declaration-track:e2b12237f583b3dc7a5c04834a221b50ab145dac9a3e4041acfeb5dd11ec1783` |
| 2 | `def` | [Hom.toPath](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/hom-topath.md) | 32 | `declaration-track:2f08e9c2795cdb2e9bc7c7f37ac4acd1d93c634bb3821e0d1d835925047b63f4` |
| 3 | `lemma` | [nil_ne_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/nil-ne-cons.md) | 39 | `result-track:9b59ee5535996e40ac55b289bc09dd57f0851bda9cf0819b01dfd0bac7a6f53d` |
| 4 | `lemma` | [cons_ne_nil](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/cons-ne-nil.md) | 42 | `result-track:0af91b0b7767450c1a20dcbc12404d6ad7018246384e6adcd2e2d191e0f5157d` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/obj-eq-of-cons-eq-cons.md) | 45 | `result-track:8929dec047bdd2c1ccf68f1b94c0847886e1a834c1f1fae9fdfff3d1e56585cc` |
| 6 | `lemma` | [heq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/heq-of-cons-eq-cons.md) | 48 | `result-track:88e8a143e42ffce7fad0dd17bec5ee50abeea99287956a07897f0f9b5c5688dc` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/hom-heq-of-cons-eq-cons.md) | 51 | `result-track:6192f3d682f5c42851be8e7d216a09649eba8912671391d6ea6c100023f31128` |
| 8 | `def` | [length](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/length.md) | 55 | `declaration-track:5402a2b82f90151c02c05e526f97fe85b2cfddf021aa04ffec5c59fc9bb435eb` |
| 9 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/instance.md) | 59 | `declaration-track:a8ac642d09b7669ce978687905ebe7dc2bac368cfe448f86594b21889a955051` |
| 10 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/length-nil.md) | 63 | `result-track:a53a6fb4faa56927f6f752f7cc561eb4e4a9fdad9a5d74075668c77069eb01e6` |
| 11 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/length-cons.md) | 67 | `result-track:962a65111857efa153d2d57f692cf3662f01b2657caf239231f9ca2a417fb6ad` |
| 12 | `theorem` | [eq_of_length_zero](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/eq-of-length-zero.md) | 70 | `result-track:7473adde1a09cbe0b616dc82760374a3f0c05857b17d612c8574a738164a0606` |
| 13 | `theorem` | [eq_nil_of_length_zero](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/eq-nil-of-length-zero.md) | 75 | `result-track:7543c83c5402336af20b7359e20c29e8e15be8f0447c288ad5997513a5fb05de` |
| 14 | `def` | [comp](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp.md) | 81 | `declaration-track:6dcceaf96922b2fd56f8575776c459d8fb08a1e85aeba70e0325598be641fcf4` |
| 15 | `theorem` | [comp_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-cons.md) | 86 | `result-track:fad6236709721c8f29518b3a9f5647747f64698b8efdb55b1210ec2faf646f33` |
| 16 | `theorem` | [comp_nil](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-nil.md) | 91 | `result-track:ba5e37caa4a738ad126675f3d05eee9e9de2a84241276fa104c73e6dfc12fb9d` |
| 17 | `theorem` | [nil_comp](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/nil-comp.md) | 95 | `result-track:080d8566c83e36233be7c1814fa28b5073bb06185361b207298d3a38010570f8` |
| 18 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-assoc.md) | 100 | `result-track:17749a45fd51ee240e113a4806205ece66ce0d3296fefd5cefedfa69b99f1679` |
| 19 | `theorem` | [length_comp](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/length-comp.md) | 106 | `result-track:3a1e1dcdc53a87b18b6db6717cd8de8f28d0a33a47bd7be08b47b57276617422` |
| 20 | `theorem` | [comp_inj](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-inj-source-edition-2.md) | 110 | `result-track:d50d98786617b4c1b515382848360f513f7500810dbefd59e1608cb2e37301db` |
| 21 | `theorem` | [comp_inj'](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-inj.md) | 127 | `result-track:31aac7799b7595a69fd9a37c772bbe408dae26dfd2fcb12a637a14f42eb07e95` |
| 22 | `theorem` | [comp_injective_left](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-injective-left.md) | 133 | `result-track:8ed1b4b4f28c36b41c2e16264d2fc611e554025db72f3b93c5f9f891fe89721c` |
| 23 | `theorem` | [comp_injective_right](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-injective-right.md) | 136 | `result-track:1b4dd401d7a9a2c9ead0639a9e33252b8da5a195519db5ab845bcd687cf3c5f2` |
| 24 | `theorem` | [comp_inj_left](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-inj-left.md) | 140 | `result-track:be88f2cd8c680f74e47a8970f4c2d0cbd3ada9491a916e65fe71e41c2b875270` |
| 25 | `theorem` | [comp_inj_right](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/comp-inj-right.md) | 144 | `result-track:f9b62d85e9978ae5a7a2f49d150d4ae4c2a763327f544736693112632846e6cf` |
| 26 | `lemma` | [eq_toPath_comp_of_length_eq_succ](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/eq-topath-comp-of-length-eq-succ.md) | 147 | `result-track:55577a848ab878851556291f949fa4ec06596e69ee961193b4e4c3bdd8ce9b67` |
| 27 | `def` | [toList](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/tolist.md) | 165 | `declaration-track:b5d530aa3912249a9cd91b8b6afd02ee9b8367c5b1badf943e8df3890605683e` |
| 28 | `theorem` | [toList_comp](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/tolist-comp.md) | 172 | `result-track:b64f3d5f6424f54779e9b6c6970fe42dfa4f0479b95f0bd0e941232bbeff9083` |
| 29 | `theorem` | [toList_chain_nonempty](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/tolist-chain-nonempty.md) | 176 | `result-track:8240ddb31c0a95fde0784ecf79b5d7a01188a158bb74ce70dead90a8341834c3` |
| 30 | `theorem` | [toList_injective](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/tolist-injective.md) | 183 | `result-track:432a930c978c54e9de16570b14fbf06bb333125ea2037ce60f85be26cd736355` |
| 31 | `theorem` | [toList_inj](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/tolist-inj.md) | 193 | `result-track:4018d56eca770dca0733c3fd7d75e98573640619cff9248c76c5cc083fdab9eb` |
| 32 | `def` | [mapPath](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath.md) | 207 | `declaration-track:a47ca2ca51bf8de42b8e5fae1a622c1e1474a11b8f1fe7368eb12bea740169fa` |
| 33 | `theorem` | [mapPath_nil](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath-nil.md) | 212 | `result-track:f7e2ac1bc0f777e7b6f6a0a4bc80c69faf3a7518c9917acf5772c668683d85ba` |
| 34 | `theorem` | [mapPath_cons](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath-cons.md) | 216 | `result-track:8cf9e69bf5cb8529f4d5fc72dbb2f019decf9cca455b16c5a2d2b2b2d15e38e7` |
| 35 | `theorem` | [mapPath_comp](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath-comp.md) | 221 | `result-track:b7a2da2662a4bdc77099d61ef482a9d4ebb10e64a194b77086e4a77fbe2da712` |
| 36 | `theorem` | [mapPath_toPath](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath-topath.md) | 227 | `result-track:6386f6e477f68c22c704216c24fefd4f2593ffb6af76a3034c68e78de3420783` |
| 37 | `theorem` | [mapPath_id](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath-id.md) | 231 | `result-track:bc12d8d33eb2db2d814c4595e4c2dd9f0c5e8f741503f77cdb5adf2c2e4f5010` |
| 38 | `theorem` | [mapPath_comp_apply](../../../../../Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/declarations/mappath-comp-apply.md) | 238 | `result-track:954e80e71226e0ec7ce0f64b8986a052b4896527daf7f8c7afa8e6242e4aeea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce5af20ebf4ce3d44604acb96a139632e1ab7c071558718b29b5f848b246d742 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
