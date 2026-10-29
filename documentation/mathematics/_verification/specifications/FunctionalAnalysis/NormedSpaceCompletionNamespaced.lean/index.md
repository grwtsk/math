# Verification target: Normed Space Completion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ce31a26f419e0a5d64a72bbd6f13754da2b07ad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variant9f44fc6b4b09b60015af32a3ae45e2b45df202b49e59c032128677c9611bded9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ce31a26f419e0a5d64a72bbd6f13754da2b07ad`.

Source path: `GRWTSK/Analysis/Completion/Variant9f44fc6b4b09b60015af32a3ae45e2b45df202b49e59c032128677c9611bded9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variant9f44fc6b4b09b60015af32a3ae45e2b45df202b49e59c032128677c9611bded9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Completion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/instance-source-edition-3.md) | 41 | `declaration-track:ccac9d1f09c0cd8e734c655845e5aabc98d361bbaf0a86fa44dab845041c6b51` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:c4b6b461badcb67e606eddd16d6605fc53613fd6237db7b510f162a6b5d14290` |
| 3 | `def` | [toComplₗᵢ](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/tocompl.md) | 57 | `declaration-track:67b1d940cbb3d9822a3b01bd1f2d7b4b2e54141103eb67202300f0d9cdfc09ee` |
| 4 | `theorem` | [coe_toComplₗᵢ](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/coe-tocompl.md) | 65 | `result-track:11f9a0ddb2b3f586431b237cbe0c350ec189915dd89ee9307327ef8535269047` |
| 5 | `def` | [toComplL](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/tocompll.md) | 70 | `declaration-track:ed260491598fc7d1cd8e02eaba5070769c9ebf416b356a65125f148a94544c8a` |
| 6 | `theorem` | [coe_toComplL](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/coe-tocompll.md) | 76 | `result-track:124fbc5e227457e2f9a29d58e9ef44c5dcd7d2d4569a3794f5ef98ccf4ea5c0e` |
| 7 | `theorem` | [norm_toComplL](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/norm-tocompll.md) | 82 | `result-track:68c6825c26078d3a34d59539ca3d9d925a1c4289aec04d4c8b478a2987391290` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:e957ab86dc16de7eec733e7005f19fd0e61fdef5e9cc5df622fb9e233dc33325` |
| 9 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceCompletionNamespaced.lean/declarations/instance.md) | 111 | `declaration-track:99d430bbb0bd844203a43e5622a645f81cc12bcf86e4852971dd0bef9a9594fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec864bbd21b19fffee4e93fc034ae7681ff4c2a7ab612f1028e074763dbcb0fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Completion/Variant9f44fc6b4b09b60015af32a3ae45e2b45df202b49e59c032128677c9611bded9.lean","GRWTSK/_verification/specifications/Analysis/Completion/Variant9f44fc6b4b09b60015af32a3ae45e2b45df202b49e59c032128677c9611bded9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
