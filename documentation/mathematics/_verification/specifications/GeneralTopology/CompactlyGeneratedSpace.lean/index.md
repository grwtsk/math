# Verification target: Compactly Generated Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32039f2cc8000d4d6a2ac875271bedbdfbe3019d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/index.md) · [Full source](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32039f2cc8000d4d6a2ac875271bedbdfbe3019d`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.compactlyGenerated](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/topologicalspace-compactlygenerated.md) | 60 | `declaration-track:c10a88638463d8c6b121936cf0fd6522fd4565cc5e01c05aed623e537fae355f` |
| 2 | `lemma` | [continuous_from_compactlyGenerated](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/continuous-from-compactlygenerated.md) | 64 | `result-track:0ebe78d9e3c50ed258572682d1f239d2931d3d6c0f66ee9a2957a12385bf9538` |
| 3 | `class` | [UCompactlyGeneratedSpace](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace.md) | 79 | `declaration-track:5099404f6ea9ad5cf9cb0f119c79d531dd2c0cc59c69bc39d0c1fca9dd3ada4e` |
| 4 | `lemma` | [eq_compactlyGenerated](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/eq-compactlygenerated.md) | 83 | `result-track:50b24374df138450a2abfc9ddb4ce6ca13af45ec0728a115758cdceb0b2f52cb` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance-source-edition-6.md) | 91 | `declaration-track:8204c3116f082d6c56aa1e65a8f7bb06908bc9b100bad9e2162d6bf4494e76ea` |
| 6 | `lemma` | [uCompactlyGeneratedSpace_of_continuous_maps](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace-of-continuous-maps.md) | 104 | `result-track:dca3c31795d79858d345fa21bed7095f666d5ba9403514821be6e176294355af` |
| 7 | `lemma` | [continuous_from_uCompactlyGeneratedSpace](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/continuous-from-ucompactlygeneratedspace.md) | 124 | `result-track:427d94aba03f5d1257c1b887f56e38cd7460c57734ab207338826261299eb7ff` |
| 8 | `theorem` | [uCompactlyGeneratedSpace_of_isClosed](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace-of-isclosed.md) | 131 | `result-track:88a80b9994f6d0bfa784f302193a167c5f6293f17645d7404674f5fd7fbfe119` |
| 9 | `theorem` | [uCompactlyGeneratedSpace_of_isOpen](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace-of-isopen.md) | 139 | `result-track:b862fa7182f77c793303c0cec5c467fe1164f7a3750b20c55e3ace182e36b27e` |
| 10 | `theorem` | [UCompactlyGeneratedSpace.isClosed](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace-isclosed.md) | 147 | `result-track:c2ba398a80db50485c3d659429998ea6de93fcbd0817d159ab779b63f696870a` |
| 11 | `theorem` | [UCompactlyGeneratedSpace.isOpen](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace-isopen.md) | 155 | `result-track:d2fcd44cc231dd5894cd45db07dbd99ab50635bb9918c7705701cfeefb93436e` |
| 12 | `theorem` | [uCompactlyGeneratedSpace_of_coinduced](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/ucompactlygeneratedspace-of-coinduced.md) | 163 | `result-track:94416cdd7c5c220713a3028e8f3eb5e4ef80c36ab45f2761bade65699470ae64` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance-source-edition-3.md) | 171 | `declaration-track:47244166939d48699f9bdf532301fba4f7f4651a3046e6cf430f240f71d98e41` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance-source-edition-5.md) | 176 | `declaration-track:7cafaf626e62187a01c9446ba4b815e9c4d3f4a6e3724eb19d28c536c9558983` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance-source-edition-7.md) | 189 | `declaration-track:a431f9be60b6d1aa57ebcb74029d775e518a1519e4ea6c866624cf8ce803128d` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance-source-edition-2.md) | 200 | `declaration-track:395242397fb76814911a897840f76b5d3515abd0cc7dccc57e1c5c14cdb51e71` |
| 17 | `abbrev` | [CompactlyGeneratedSpace](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace.md) | 229 | `declaration-track:ab7027cfb2f6faf97c9ae441cf0d36e4e026a53662f4cebb74b17638e5011eb9` |
| 18 | `lemma` | [continuous_from_compactlyGeneratedSpace](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/continuous-from-compactlygeneratedspace.md) | 235 | `result-track:5d3ce2ed4a75999039bd53e148f240c7578a7d4733b1201e2f879ab727610c37` |
| 19 | `lemma` | [compactlyGeneratedSpace_of_continuous_maps](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-of-continuous-maps.md) | 243 | `result-track:6a1a6b074abcbd46b04ae0e6759702298f5b57b81b14aaa870b904e87dd5ae76` |
| 20 | `theorem` | [compactlyGeneratedSpace_of_isClosed](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-of-isclosed.md) | 253 | `result-track:15dcbe78a14db575548918bd284dd0e130187f101347984ee3e4c8195afde4ac` |
| 21 | `theorem` | [CompactlyGeneratedSpace.isClosed'](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-isclosed-source-edition-2.md) | 261 | `result-track:49d864c12565144d8ff5c482a591f867f51840d5df727df280e126908451cac1` |
| 22 | `theorem` | [CompactlyGeneratedSpace.isClosed](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-isclosed.md) | 268 | `result-track:27d8926a7e9cbc5be4385c69d1c62ab54bacf907e9726aa8f7dfb95b6de3a016` |
| 23 | `theorem` | [compactlyGeneratedSpace_of_isOpen](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-of-isopen.md) | 276 | `result-track:5f2f4247fb6decf03a90f0f5f6efe41445183a09c261ddb1b4122af64511fd53` |
| 24 | `theorem` | [CompactlyGeneratedSpace.isOpen'](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-isopen-source-edition-2.md) | 284 | `result-track:84ab2323d8a9892a27186d682eea558840914518bb980f8513d3f504e9be1b08` |
| 25 | `theorem` | [CompactlyGeneratedSpace.isOpen](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-isopen.md) | 291 | `result-track:6585d8e1f104899a9f6ad502c1453a99e1cd7ce2fe2b70e04c08cb37a38eb09a` |
| 26 | `theorem` | [compactlyGeneratedSpace_of_coinduced](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-of-coinduced.md) | 299 | `result-track:2cd45882309a40f9d5cdc29289f19acd936f6dfde7b3329ec779c76c5ad428be` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance.md) | 305 | `declaration-track:37781f07a2f1192eae6beb79663aebd9a45819313ab9784cd31aba009475e1f4` |
| 28 | `theorem` | [CompactlyGeneratedSpace.isClosed_iff_of_t2](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-isclosed-iff-of-t2.md) | 316 | `result-track:e53be4e8e8d3a82b6fe6056c0a36fa498bafd97c17b3dc12cb58024d9e6d862e` |
| 29 | `theorem` | [compactlyGeneratedSpace_of_isClosed_of_t2](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-of-isclosed-of-t2.md) | 324 | `result-track:ce5c820695cd43586db16fd1b297f2df5b7ce9ef42d35373cb3e0428680a8159` |
| 30 | `theorem` | [compactlyGeneratedSpace_of_isOpen_of_t2](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/compactlygeneratedspace-of-isopen-of-t2.md) | 337 | `result-track:7f0a314bb6f8360753fa645d03f30f6b1df2bb63c47fb139bf9e552b29c583fe` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactlyGeneratedSpace.lean/declarations/instance-source-edition-4.md) | 345 | `declaration-track:6a4d5892a011f91793a41bbb7ab159a03b74962b1dab17818dcbf3ce6cd4cb7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=708a38e6114a771b491530cc8ed25d78ce4624bff221d4d003b5a3e057d59da6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
