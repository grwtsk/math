# Verification target: GRWTSK.Topology.GeneralTopology.ShrinkingLemma.Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d`.

Source path: `GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialRefinement](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/partialrefinement--f4c1ed28bc4bf54b41d18b02.md) | 49 | `declaration-track:f4c1ed28bc4bf54b41d18b024ac1f2be476de2f41924351034ba3e11b3529862` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/instance--c8e169e308ad6cc110520f04.md) | 69 | `declaration-track:c8e169e308ad6cc110520f047f217ac4164dacff0412e7dd0e7173967a209a5a` |
| 3 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/subset--eefe8b20d8689d824a67963b.md) | 71 | `result-track:eefe8b20d8689d824a67963b91b47247723bd77910cfacb04844bde426d37556` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/instance--2aa477c443242bfbf932aa3b.md) | 76 | `declaration-track:2aa477c443242bfbf932aa3bac46f34ab294a0f55ed34b4ae43c7b85a3dcd66c` |
| 5 | `theorem` | [apply_eq_of_chain](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/apply-eq-of-chain--15346e91723894ec251f78ae.md) | 91 | `result-track:15346e91723894ec251f78ae46df768ea7ba2b133ac6f72b601b2d244a8fd3bb` |
| 6 | `def` | [chainSupCarrier](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/chainsupcarrier--f14d22bf543facac14c20151.md) | 98 | `declaration-track:f14d22bf543facac14c20151bc10e9eb85d786b509fb694431bcc156bf8580c0` |
| 7 | `def` | [find](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/find--ac5bfffe3557d1d8bd791dc6.md) | 104 | `declaration-track:ac5bfffe3557d1d8bd791dc641589b1dc9e09f20d52ba12046f7bfca39dbdf1e` |
| 8 | `theorem` | [find_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/find-mem--a0a1661a9834c363df6ae603.md) | 107 | `result-track:a0a1661a9834c363df6ae60310a3f12b8db281b6c9e062b69632ef808c1a8bb3` |
| 9 | `theorem` | [mem_find_carrier_iff](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/mem-find-carrier-iff--55c088f023f1030ed7f493f0.md) | 113 | `result-track:55c088f023f1030ed7f493f07aad4edb9965b9387d6244e8c140e281267deb99` |
| 10 | `theorem` | [find_apply_of_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/find-apply-of-mem--cbb5236953ea145187a3eac0.md) | 123 | `result-track:cbb5236953ea145187a3eac0192a6d01814dc0ab2b1757f71d062c03eaab408a` |
| 11 | `def` | [chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/chainsup--ef044409d582ec26308f304a.md) | 129 | `declaration-track:ef044409d582ec26308f304a2ecc76db3822a9d555265140ca559d46c13adfe8` |
| 12 | `theorem` | [le_chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/le-chainsup--fe66370817bfb4a4cadfd24e.md) | 157 | `result-track:fe66370817bfb4a4cadfd24ec878363408cc2234351a96d8ac24ed3eace90c33` |
| 13 | `theorem` | [exists_gt](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-gt--e2d39ae737ffbea07c487cf7.md) | 164 | `result-track:e2d39ae737ffbea07c487cf7695aeed66cb30aacbff9b246589546354bebdba9` |
| 14 | `theorem` | [exists_subset_iUnion_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-subset-iunion-closure-subset--5afd53a180e2c059182288b4.md) | 212 | `result-track:5afd53a180e2c059182288b4b15e96fa4a49521911e0fca91b629d4d7374d94a` |
| 15 | `theorem` | [exists_subset_iUnion_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-subset-iunion-closed-subset--fb77abbe2ce3eeb8193b7e98.md) | 230 | `result-track:fb77abbe2ce3eeb8193b7e9891874912618a8b712e5df034904791b6567ce2e2` |
| 16 | `theorem` | [exists_iUnion_eq_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-iunion-eq-closure-subset--73942a7b8ce0e19f41a26e34.md) | 240 | `result-track:73942a7b8ce0e19f41a26e346ca168e630971d43158d77d84aa45f7fde179da0` |
| 17 | `theorem` | [exists_iUnion_eq_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-iunion-eq-closed-subset--c0b729a48a18c417fd79c320.md) | 249 | `result-track:c0b729a48a18c417fd79c3205ab8a1babc804d7ead2e7e8997cccbe29ed564b4` |
| 18 | `theorem` | [exists_gt_t2space](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-gt-t2space--cf62fb438f14f40c14925447.md) | 266 | `result-track:cf62fb438f14f40c1492544796727fec356b05a457c1eff0cbcf369e070bbff5` |
| 19 | `theorem` | [exists_subset_iUnion_closure_subset_t2space](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-subset-iunion-closure-subset-t2space--a08690ef44e3090a08ec089f.md) | 339 | `result-track:a08690ef44e3090a08ec089fa844d9f0986964bfd6eea1887fa8ccbdbbec4419` |
| 20 | `theorem` | [exists_subset_iUnion_compact_subset_t2space](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/declarations/exists-subset-iunion-compact-subset-t2space--fe9c614a356f6c7d9dfb5645.md) | 362 | `result-track:fe9c614a356f6c7d9dfb56455fcc3a00c8974b6be80b0df79cc103cb1ff4676c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
