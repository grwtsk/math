# Verification target: Locally Convex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65ebec5528d8b0a3b21a702d00385e20e4ae13d3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65ebec5528d8b0a3b21a702d00385e20e4ae13d3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocPathConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyConvexSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace.md) | 53 | `declaration-track:e872139d40f2eeebef816564d0605c946734227db76457a0345b5b1e59f64f42` |
| 2 | `theorem` | [locallyConvexSpace_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-iff.md) | 60 | `result-track:43d3147ede901c236a36d77f35cc76535cf28bb5fd0c04b6beb4f0d2ab8b8fad` |
| 3 | `theorem` | [LocallyConvexSpace.ofBases](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-ofbases.md) | 64 | `result-track:668e1050874606c1270bc53b9d88c10037c46f329c2a358cedb7fef50a32b517` |
| 4 | `theorem` | [LocallyConvexSpace.convex_basis_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-convex-basis-zero.md) | 73 | `result-track:9007940381bc21ead9c6d843c6107c834cb9d5995d161d8846b984ab6a9f3b43` |
| 5 | `theorem` | [locallyConvexSpace_iff_exists_convex_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-iff-exists-convex-subset.md) | 77 | `result-track:ed47761701df00371cc1a08296a43ef8ddead6e5cb74bbff41d8132693137eda` |
| 6 | `theorem` | [LocallyConvexSpace.ofBasisZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-ofbasiszero.md) | 89 | `result-track:1fbf25e9779b7231b30b891ce6efaef46bdb4973326a97cafc4b5fc2d58555bb` |
| 7 | `theorem` | [locallyConvexSpace_iff_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-iff-zero.md) | 97 | `result-track:20f6ca96e313fd2b05c14d804d769ced247812b873a07bb373d1ef98a5f947d7` |
| 8 | `theorem` | [locallyConvexSpace_iff_exists_convex_subset_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-iff-exists-convex-subset-zero.md) | 102 | `result-track:5beaf861b6de6adfda5dbfb88cfda41f7a7bff900b62155c27315d47f733bff8` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/instance.md) | 107 | `declaration-track:b7c75be78f78688e7e603978124dae899ba4037b0ccbc9994256cf9b706f6652` |
| 10 | `theorem` | [Convex.locPathConnectedSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/convex-locpathconnectedspace.md) | 113 | `result-track:55702c5562c68c62814fdd20aa9e0c77bcc8fe7e4a2e00514bea52254838e58e` |
| 11 | `theorem` | [LocallyConvexSpace.convex_open_basis_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-convex-open-basis-zero.md) | 131 | `result-track:79a446766a97f23b5ad06aaae90260aa255699066436db222fcc52510caed3e4` |
| 12 | `theorem` | [Disjoint.exists_open_convexes](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/disjoint-exists-open-convexes.md) | 143 | `result-track:b018b74b258625913581bcc7258716205bfa9c8e1c3008c0e6c6503d84027459` |
| 13 | `lemma` | [exists_open_convex_of_notMem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/exists-open-convex-of-notmem.md) | 159 | `result-track:931d5f8056d54ddbad395313852152f4a473ae430fab2bf2eac3843e644237f7` |
| 14 | `theorem` | [LocallyConvexSpace.sInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-sinf.md) | 175 | `result-track:833abe93d1965740723ad2c4657566f934fc682383e404a64584b7d25a410cb5` |
| 15 | `theorem` | [LocallyConvexSpace.iInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-iinf.md) | 189 | `result-track:76c3c3ffde9e4976eb5ef93f5b1d792adc682715c9d7a8460b9db1e18a1394db` |
| 16 | `theorem` | [LocallyConvexSpace.inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-inf.md) | 197 | `result-track:1a8a6b4f8f3bd2957c21667c2b4dfdbed2f8d50dd20282a1a3e16d3a4c3400ed` |
| 17 | `theorem` | [LocallyConvexSpace.induced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/locallyconvexspace-induced.md) | 207 | `result-track:b72afbcf77a281bc94fdc076c1498a4ad7fd7f101d5bf31351ee7d75c326bbc7` |
| 18 | `instance` | [Pi.locallyConvexSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/pi-locallyconvexspace.md) | 219 | `declaration-track:3ae1c134c90b3be622a0ccbb21592c3b61b5949f80e2928b12d907fedb747144` |
| 19 | `instance` | [Prod.locallyConvexSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/prod-locallyconvexspace.md) | 224 | `declaration-track:801ea85ba161620495e6f6c44a34ec73c7afc2ce5bb159603b8d8ead0d778db9` |
| 20 | `instance` | [LinearOrderedSemiring.toLocallyConvexSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/linearorderedsemiring-tolocallyconvexspace.md) | 233 | `declaration-track:44133a73725295287c85aef974a5ad1f6e9e487c5ffc771dd7793640333bf8f6` |
| 21 | `lemma` | [Convex.eventually_nhdsWithin_segment](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LocallyConvexNamespaced.lean/declarations/convex-eventually-nhdswithin-segment.md) | 262 | `result-track:17bf266884669a334cdcec81ce814d8880af631e040122e7d4ab862a6fe4db29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fec12833c3807c4334ad449146f787e9c96deabbfd624d1685f1b77772c8eae5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
