# Verification target: RCLike Extend Extend Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c5e14a57c86c18a409231b3984985e05396a66a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Varianteb0a8facbd66d09fde55b668e1da7fce0e7bebd4d7a8abaec455ff293df98e0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c5e14a57c86c18a409231b3984985e05396a66a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Varianteb0a8facbd66d09fde55b668e1da7fce0e7bebd4d7a8abaec455ff293df98e0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Varianteb0a8facbd66d09fde55b668e1da7fce0e7bebd4d7a8abaec455ff293df98e0d.lean.json)

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
| 1 | `theorem` | [Module.Dual.norm_extendRCLike_le_seminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/module-dual-norm-extendrclike-le-seminorm.md) | 34 | `result-track:953a0c354d637a5d1129f494e88bf8516c6855132cecd68b0d6df5f934cc79a0` |
| 2 | `def` | [extendRCLikeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/extendrclikel.md) | 52 | `declaration-track:38e04eda60dd8a1c242dad359fbfc3dd85b14de9443f09d846690995c83af445` |
| 3 | `lemma` | [toLinearEquiv_extendRCLikeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/tolinearequiv-extendrclikel.md) | 66 | `result-track:00539afba1edd16a694a57352177b5d9cb7c545c2482b5d8b9e0e28dd102fa8d` |
| 4 | `theorem` | [norm_extendRCLike_le_seminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/norm-extendrclike-le-seminorm.md) | 73 | `result-track:8bbe0382979e2052060a8e4657a07dc3f5b92e10ef5e99f20395e7b3c61ff53c` |
| 5 | `theorem` | [norm_extendRCLike_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/norm-extendrclike-bound.md) | 82 | `result-track:eaf71f903d651bc1acf68bbeb48e46b6a67e3af3a7f9d815435e5a80b6f0f2bb` |
| 6 | `theorem` | [norm_extendRCLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/norm-extendrclike.md) | 89 | `result-track:5d7152e85782792829d8c96dccea376ec457354645c1fb53bff6be9cf73991b6` |
| 7 | `def` | [extendRCLikeₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/extendrclike.md) | 99 | `declaration-track:aa2d7a19042eb2aefa3389822f0525db07aaea4cd239ec3f8c999a30312108b1` |
| 8 | `lemma` | [toLinearEquiv_extendRCLikeₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/tolinearequiv-extendrclike.md) | 104 | `result-track:28d2a6945f8a844293e9f4469161aa6a5140e8a32091a8366b4d263596f709c1` |
| 9 | `lemma` | [toContinuousLinearEquiv_extendRCLikeₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendNamespacedPublic.lean/declarations/tocontinuouslinearequiv-extendrclike.md) | 109 | `result-track:652d51ffcdcfb308dac4ffda5da77ba54b6518c1dde9f7bdca9446a9ead8a67a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41a4d2c60a2e484c3c87a032026e740a54ae6f2ebc99749db6d91b62b4c02072 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Varianteb0a8facbd66d09fde55b668e1da7fce0e7bebd4d7a8abaec455ff293df98e0d.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Varianteb0a8facbd66d09fde55b668e1da7fce0e7bebd4d7a8abaec455ff293df98e0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
