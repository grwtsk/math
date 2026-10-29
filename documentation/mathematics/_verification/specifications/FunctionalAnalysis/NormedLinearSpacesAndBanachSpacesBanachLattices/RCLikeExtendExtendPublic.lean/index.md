# Verification target: RCLike Extend Extend Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d5dd5fbeb0eb763d77eb667953ecafeb8b12de",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d5dd5fbeb0eb763d77eb667953ecafeb8b12de`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean.json)

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
| 1 | `theorem` | [Module.Dual.norm_extendRCLike_le_seminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/module-dual-norm-extendrclike-le-seminorm.md) | 26 | `result-track:8b295518780dbdb1d77ff54a7084f4bcc4f9bf7a0e120bffeafffcd94d454f1d` |
| 2 | `def` | [extendRCLikeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/extendrclikel.md) | 44 | `declaration-track:23e767a7bd5749693156d000dca3254031df4a73825122f15c991003d1965d93` |
| 3 | `lemma` | [toLinearEquiv_extendRCLikeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/tolinearequiv-extendrclikel.md) | 58 | `result-track:e4d058ff446098734a93a2eda1ccb1cb4444f586143540857fcd959329676498` |
| 4 | `theorem` | [norm_extendRCLike_le_seminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/norm-extendrclike-le-seminorm.md) | 65 | `result-track:d6ff9dcbb5832d37f1453f8589b269a275787189c59192ce08e12fb6e93b9385` |
| 5 | `theorem` | [norm_extendRCLike_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/norm-extendrclike-bound.md) | 74 | `result-track:56e9b5054b16d8b63e4948662d1e3408b036f594e3eb1f3c35b29a86030bdd42` |
| 6 | `theorem` | [norm_extendRCLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/norm-extendrclike.md) | 81 | `result-track:ec5860fc470c364557f0d670303dc81de302a5e2c4adf1d6300b641f8d28dc96` |
| 7 | `def` | [extendRCLikeₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/extendrclike.md) | 91 | `declaration-track:469d10e1c9013b73e23d93a7d3f374c324a0fd2edf5cdf0e2bd61ffc6a72fcc7` |
| 8 | `lemma` | [toLinearEquiv_extendRCLikeₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/tolinearequiv-extendrclike.md) | 96 | `result-track:1e98f06384e07dcbaf3936d2d8880461378d8072f5a6f82a376e570ad55e2170` |
| 9 | `lemma` | [toContinuousLinearEquiv_extendRCLikeₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RCLikeExtendExtendPublic.lean/declarations/tocontinuouslinearequiv-extendrclike.md) | 101 | `result-track:8d2eb1741bf3d8beed000976749b71b91fce8ab952cbb4dabc384bc85354174d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1c310d7ce684843b3fd77658cdc71f340070ae124ef3f41962504d9cbcf55a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
