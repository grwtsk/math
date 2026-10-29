# Verification target: Birkhoff Sum Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5b4328ce7002fd7e119d0b7738503dbee3b0299",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant808d5cf112238252fbe40a32226185c66c02d16fa5eb3911b8f3126e566ea64e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5b4328ce7002fd7e119d0b7738503dbee3b0299`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant808d5cf112238252fbe40a32226185c66c02d16fa5eb3911b8f3126e566ea64e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant808d5cf112238252fbe40a32226185c66c02d16fa5eb3911b8f3126e566ea64e.lean.json)

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
| 1 | `def` | [birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum.md) | 39 | `declaration-track:14a01357ed90b0840ab83708f4e993012d58fbbe4d2cd3b08893c2a0f72add06` |
| 2 | `theorem` | [birkhoffSum_zero_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-zero-apply.md) | 41 | `result-track:0c6ceeca1719dfbad2fef5615857d0dc9445f1bac3d01f2523e1e0ac76feb8e2` |
| 3 | `theorem` | [birkhoffSum_zero](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-zero.md) | 45 | `result-track:2fecf70c95b847c560438588e19dea3289f5355849b24249b5bcfc7b4f1dfd0f` |
| 4 | `theorem` | [birkhoffSum_one_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-one-apply.md) | 50 | `result-track:33ae41763ade4b4974b6674cf84aef40d51bae38a1450614ed6cfe7373b7dff4` |
| 5 | `theorem` | [birkhoffSum_one](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-one.md) | 54 | `result-track:c58a51db1c8b5a9f48b9bfbfea8e18594c50349cfe0a83ba4c40fb5ec44f6cfc` |
| 6 | `theorem` | [birkhoffSum_succ_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-succ-apply-source-edition-2.md) | 59 | `result-track:c8ffe8189f6707e9379a9ddc774e0b33eb9449b9a90b94a8e012c08004a0db87` |
| 7 | `theorem` | [birkhoffSum_succ](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-succ-source-edition-2.md) | 63 | `result-track:fb515b6bd3b8e6ee1414747c4afd46a9159f19435b44cd0d56c42e0427222231` |
| 8 | `theorem` | [birkhoffSum_succ_apply'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-succ-apply.md) | 67 | `result-track:5b62081c796f7e9ac6036d6b6dadcc773a61ac2a90eb73927003a9f827c0d758` |
| 9 | `theorem` | [birkhoffSum_succ'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-succ.md) | 71 | `result-track:e6e9639d55388eebe4bc814d5da0f691fd30104f51fbadff59f46f3ad117957c` |
| 10 | `theorem` | [birkhoffSum_add_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-add-apply.md) | 75 | `result-track:d1313c93542da75d798a563cf87df19e0747271624b3021fed3c3bc56f70aedc` |
| 11 | `theorem` | [birkhoffSum_add](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-add.md) | 79 | `result-track:19f3c9b1e8bff8455b1ba3d2ed9278d95d75c1008897d45da3496b64af6e7025` |
| 12 | `theorem` | [birkhoffSum_add_right_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-add-right-apply.md) | 83 | `result-track:baf112f4669ee80108470a1eac1726288172600fe0bb19488790dbacb22d32cd` |
| 13 | `theorem` | [birkhoffSum_add_right](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-add-right.md) | 87 | `result-track:26551774afa5e1ba5c70944dbb6d5c68c7c0f79daa07efe8c3c35e6acc4726b1` |
| 14 | `theorem` | [Function.IsFixedPt.birkhoffSum_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/function-isfixedpt-birkhoffsum-eq.md) | 91 | `result-track:621803d5280a5281404ab08599e257b4c14b9fc74b32a167ffbe8fc15b1785ae` |
| 15 | `theorem` | [map_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/map-birkhoffsum.md) | 95 | `result-track:4e3fd8edca3eb13bdb05ff8672aba466979b663b4be15c12c0d9fd46a42cd72e` |
| 16 | `theorem` | [map_comp_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/map-comp-birkhoffsum.md) | 100 | `result-track:00088684267211a7571a7a24b480c2a76d53957dbb5dd203475ea39c5166c6ad` |
| 17 | `theorem` | [birkhoffSum_apply_of_comp_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-apply-of-comp-eq.md) | 107 | `result-track:984c38bb7b0dbdbc43bbd9154f3f0a67461a7f0597c35c10e64bfe1fb0d3ef38` |
| 18 | `theorem` | [birkhoffSum_of_comp_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-of-comp-eq.md) | 115 | `result-track:03c677f310bf37539aeb73ddad7b34dc1461a3faeca95736c5068e83a990c565` |
| 19 | `theorem` | [birkhoffSum_neg_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-neg-apply.md) | 125 | `result-track:b3407b52ed7cfe52ecf8f55a2a3a50f85b01fa82261ec250794097b20597045f` |
| 20 | `theorem` | [birkhoffSum_neg](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-neg.md) | 129 | `result-track:5106bed296ffa024e33edb50ccd6341412155a1f4828f9513a63ec0848b5d9a7` |
| 21 | `theorem` | [birkhoffSum_sub_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-sub-apply.md) | 133 | `result-track:002f604ca640d0dd622e7bbdbc211aca094b534f7071a18964425732dcc6c2d0` |
| 22 | `theorem` | [birkhoffSum_sub](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-sub.md) | 137 | `result-track:d006f8744f9c0348ecad05c47e653ace4a6e9d38de83a592e093420fb10dcf63` |
| 23 | `theorem` | [birkhoffSum_apply_sub_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-apply-sub-birkhoffsum.md) | 144 | `result-track:e2ae7db6438e5858da16fb17c3611c2718aaeb0195ce1ddddfbc694227b9a347` |
| 24 | `theorem` | [birkhoffSum_comp_sub_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicNamespacedPublic.lean/declarations/birkhoffsum-comp-sub-birkhoffsum.md) | 153 | `result-track:1f1eddf0c16602f07e5d680edf84b45d1b5046ba8ed5d0047353b6e5fdbb5d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee736b707948874e673930ec35d98f3acafda6c99e9c4e7eb81559dec67cb84d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant808d5cf112238252fbe40a32226185c66c02d16fa5eb3911b8f3126e566ea64e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant808d5cf112238252fbe40a32226185c66c02d16fa5eb3911b8f3126e566ea64e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
