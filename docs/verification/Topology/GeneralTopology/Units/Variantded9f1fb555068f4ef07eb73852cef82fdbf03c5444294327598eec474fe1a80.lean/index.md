# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fde9cccf9e0880c148a3ac4bb963cfab7eaa106",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fde9cccf9e0880c148a3ac4bb963cfab7eaa106`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Normed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [add](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/add--5a19ece0d8ddc7be7aa7a581.md) | 51 | `declaration-track:5a19ece0d8ddc7be7aa7a581db395627ec5d22432f54eea929d32212aad4f9a9` |
| 2 | `def` | [ofNearby](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/ofnearby--a237e007503177e1d850ff1e.md) | 66 | `declaration-track:a237e007503177e1d850ff1e6c50c5fdc0bbceeccdc5f2cf438de3b0864aecbe` |
| 3 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/isopen--6057b55a39276c56e5183040.md) | 71 | `result-track:6057b55a39276c56e51830409793e4bd826240ed4babf886677e0f84afb706d1` |
| 4 | `theorem` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/nhds--88387ab2288ec945221f8ee8.md) | 79 | `result-track:88387ab2288ec945221f8ee87ea9fd04ad9944df4cfe50c103b9c37e11e3eccc` |
| 5 | `theorem` | [subset_compl_ball](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/subset-compl-ball--bec656213a9682c0f0e17df8.md) | 88 | `result-track:bec656213a9682c0f0e17df81e876514ac5d7af2a2ba5afc691e7b3c7f20985c` |
| 6 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/isclosed--38fe88be05e1b67162cf0581.md) | 92 | `result-track:38fe88be05e1b67162cf05819b5eb15dbe95a40cdba7b61682fdeacc29e8ed64` |
| 7 | `theorem` | [inverse_one_sub](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-one-sub--11df8be1d80c5ebacc9097df.md) | 101 | `result-track:11df8be1d80c5ebacc9097dfc15d7da6a14b203206173e7852589bc3480e94fc` |
| 8 | `theorem` | [inverse_add](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-add--cd8d587559e47c8f9ab6a405.md) | 106 | `result-track:cd8d587559e47c8f9ab6a4051b7987b1bfdb8301fcfc56d09033b467ad2a3228` |
| 9 | `theorem` | [inverse_one_sub_nth_order'](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-one-sub-nth-order--dc59af93e0796ca11771247f.md) | 115 | `result-track:dc59af93e0796ca11771247fbad49d1d9ac7bad070973510d8f5f657e7c67ec0` |
| 10 | `theorem` | [inverse_one_sub_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-one-sub-nth-order--b37dea67b7d2da2599cb0e38.md) | 123 | `result-track:b37dea67b7d2da2599cb0e3835e3439ea55ae439fb6e135525da7436ee55cc6c` |
| 11 | `theorem` | [inverse_add_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-add-nth-order--31f0893339bd18718ffbb75e.md) | 133 | `result-track:31f0893339bd18718ffbb75e52e67545f37826d26f31c132d5c663f5d0c84aac` |
| 12 | `theorem` | [inverse_one_sub_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-one-sub-norm--4a74e1c0515e8d42c048b1ff.md) | 143 | `result-track:4a74e1c0515e8d42c048b1ff47a85c35ffb2fd6418be31cfbe04114b96bf78f0` |
| 13 | `theorem` | [inverse_add_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-add-norm--5d62d40f5e7416a2c70d4f20.md) | 158 | `result-track:5d62d40f5e7416a2c70d4f20734a5dfd77b7f4c654461d58173bee7cf3ed3c8b` |
| 14 | `theorem` | [inverse_add_norm_diff_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-add-norm-diff-nth-order--3e29dd654f81934c64ec6ba9.md) | 168 | `result-track:3e29dd654f81934c64ec6ba9c9747411bdff0bf922bf5d175fdb7f5be64e251e` |
| 15 | `theorem` | [inverse_add_norm_diff_first_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-add-norm-diff-first-order--4a139123e1f0355ca7f5dc96.md) | 178 | `result-track:4a139123e1f0355ca7f5dc966f5888e308cfef610060faff0ac58492462a1fd4` |
| 16 | `theorem` | [inverse_add_norm_diff_second_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-add-norm-diff-second-order--ae2840a10391a6ec6b851493.md) | 183 | `result-track:ae2840a10391a6ec6b8514931ad28f06eafe5f5915f0f620cf5710e446b314a9` |
| 17 | `theorem` | [inverse_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/inverse-continuousat--373ff38028e5d3f93e9ad208.md) | 190 | `result-track:373ff38028e5d3f93e9ad208c6dc6cd7298dbfa487dc1028201ed32b8a57cb1f` |
| 18 | `theorem` | [isOpenEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/isopenembedding-val--77049195cdf6ab84089bc6ba.md) | 207 | `result-track:77049195cdf6ab84089bc6ba420e583286a20b93a9fdd0cc1b10d49f824da562` |
| 19 | `theorem` | [isOpenMap_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/isopenmap-val--a8197be5a3ffbb0463f12088.md) | 214 | `result-track:a8197be5a3ffbb0463f12088e28fd71c327850cc1210e41f9cc35abb2326570e` |
| 20 | `theorem` | [eq_top_of_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/eq-top-of-norm-lt-one--63eba311622cfa10d4049cf1.md) | 222 | `result-track:63eba311622cfa10d4049cf17979eb1ad3964825543e3c9feac4e8c8798765dc` |
| 21 | `theorem` | [closure_ne_top](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/closure-ne-top--4c266c4b64f1428fb1c0d425.md) | 229 | `result-track:4c266c4b64f1428fb1c0d425366962307aa047a5245dbc8fcbbeadeb4f793807` |
| 22 | `theorem` | [IsMaximal.closure_eq](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/ismaximal-closure-eq--c874818affc52b5918ec0af8.md) | 235 | `result-track:c874818affc52b5918ec0af8c2d007ce33e54a2281545958ddf8180f3c3b9c10` |
| 23 | `instance` | [IsMaximal.isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/declarations/ismaximal-isclosed--6345aa7e05e55d646f809b29.md) | 239 | `declaration-track:6345aa7e05e55d646f809b298a5a9dea1a9c8cc554a0eeb2f8f3118a0b626743` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
