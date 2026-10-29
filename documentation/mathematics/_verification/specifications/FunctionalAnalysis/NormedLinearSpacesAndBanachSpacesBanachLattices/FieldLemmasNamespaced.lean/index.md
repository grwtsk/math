# Verification target: Field Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ccee6b4294ececfa104d3f69bafebaf93786f81",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ccee6b4294ececfa104d3f69bafebaf93786f81`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.DilationEquiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DilationEquiv.mulLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/dilationequiv-mulleft.md) | 45 | `declaration-track:ddab070a6a0c09b4bf865e7e88107b63e70d5074a3eb5c9272ae4f5ac528cc99` |
| 2 | `def` | [DilationEquiv.mulRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/dilationequiv-mulright.md) | 52 | `declaration-track:53b92cde995ce18687d4c6bf7b22e01cfe0d85c0224515228f387c93348df6c0` |
| 3 | `lemma` | [map_mul_left_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/map-mul-left-cobounded.md) | 59 | `result-track:33654059a37e6cd3ee23e86f3adc41fcb6d0e8ac42ee7c02cc6cd3431cd17425` |
| 4 | `lemma` | [map_mul_right_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/map-mul-right-cobounded.md) | 64 | `result-track:98c0e91d342893eb09e8dd041f10028512a9b9ae73ced1251bfc4343685caf94` |
| 5 | `theorem` | [tendsto_mul_left_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/tendsto-mul-left-cobounded.md) | 70 | `result-track:45ce387f69b4fbb098f41631f4b3724a84eb6701b572ea5b9678c165102f0d49` |
| 6 | `theorem` | [tendsto_mul_right_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/tendsto-mul-right-cobounded.md) | 76 | `result-track:80a5feaa367817c88756d2484b176ab92cdd6f5ea6702b940a5857e072f69dcd` |
| 7 | `lemma` | [inv_cobounded₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/inv-cobounded.md) | 81 | `result-track:a3ebc60956457bb91ff3c6cd5c151a02648478f904f0a38c94aa005bb5a5726c` |
| 8 | `lemma` | [inv_nhdsWithin_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/inv-nhdswithin-ne-zero.md) | 87 | `result-track:05c93972cd9429e2d9d2eb1c88b6dd499b45b4759a64afd2dd1b343e79f98926` |
| 9 | `lemma` | [tendsto_inv₀_cobounded'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/tendsto-inv-cobounded-source-edition-2.md) | 90 | `result-track:7841d3cb78003a5797c38900302996494f40dbe81da8999550ccf5cda0d0fc4c` |
| 10 | `theorem` | [tendsto_inv₀_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/tendsto-inv-cobounded.md) | 93 | `result-track:40fd804884d708f336b88b3ea8284d7a18648b24f125dff7fea28d8b4e9c73d6` |
| 11 | `lemma` | [tendsto_inv₀_nhdsWithin_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/tendsto-inv-nhdswithin-ne-zero.md) | 96 | `result-track:0b524ee131c94d09e6ef659423903cc2704f3504059807009847346938ca03fd` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/instance.md) | 102 | `declaration-track:75577787f4ad39d285b92f7be6d3b936f876e973ef07507cc7fef702ca126eea` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/instance-source-edition-2.md) | 121 | `declaration-track:b5eb3cf817abfc0e0926b8e1bd2165a785994a71498d9bb9c425fa68e02e6a77` |
| 14 | `lemma` | [NormedField.tendsto_norm_inv_nhdsNE_zero_atTop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/normedfield-tendsto-norm-inv-nhdsne-zero-attop.md) | 127 | `result-track:1beb5dffe865dad1b47c8a32edd7510e9d8e47413a8fa2da0a62c27638f9d15c` |
| 15 | `lemma` | [NormedField.tendsto_norm_zpow_nhdsNE_zero_atTop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/normedfield-tendsto-norm-zpow-nhdsne-zero-attop.md) | 134 | `result-track:c9ac068f7eb907e8a66f650a6a3d9d8c2d1b9680ab16f9a293781b1b4b20225a` |
| 16 | `lemma` | [discreteTopology_or_nontriviallyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/discretetopology-or-nontriviallynormedfield.md) | 156 | `result-track:09752d63bb51e9b0f0d6f0b5032ed2110107a032d790f39aa0d3fc57673f6b33` |
| 17 | `lemma` | [discreteTopology_of_bddAbove_range_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/discretetopology-of-bddabove-range-norm.md) | 168 | `result-track:081413d1bb394f0c1b57f612c19992094ae5b2c0eb766362a14373fbbded7e51` |
| 18 | `theorem` | [denseRange_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/denserange-nnnorm.md) | 181 | `result-track:16523754b18764734f314705a15541a009252bf2e40d487bba0511968d61e437` |
| 19 | `lemma` | [continuousAt_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/continuousat-zpow.md) | 192 | `result-track:4594db2ae34c95d25aa9394d7cc9fbe21649166329e49ad686283a52a63e7cef` |
| 20 | `lemma` | [continuousAt_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/continuousat-inv.md) | 200 | `result-track:2a2fa4577a1b9aa24c259b9c61e24e9efae1122a83dfbf1f574a977312555247` |
| 21 | `instance` | [Rat.instNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/rat-instnormedfield.md) | 206 | `declaration-track:a957ab06dc4042d6e9fd5c4cd83a78b039ca24007c45863a52211d7318262dc8` |
| 22 | `instance` | [Rat.instDenselyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/rat-instdenselynormedfield.md) | 211 | `declaration-track:4de43404c98dcc8ee743cea0e0d84c281674237dd78ebe4b087c3651e1a07324` |
| 23 | `lemma` | [NormedField.completeSpace_iff_isComplete_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldLemmasNamespaced.lean/declarations/normedfield-completespace-iff-iscomplete-closedball.md) | 218 | `result-track:f6ad76a72119b6cc36032c3089fb19c2621d7545817ff8f3b0eac1cab765a0c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9120e817a626dcb19acf1b1033ff08c40888c8e3e5a7b304b29c52d548b2e01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
