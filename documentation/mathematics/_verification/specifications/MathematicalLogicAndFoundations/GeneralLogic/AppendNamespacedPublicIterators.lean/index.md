# Verification target: Append Namespaced Public Iterators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43bbd837dc9952333d537dc4e237a611f2b61778",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43bbd837dc9952333d537dc4e237a611f2b61778`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Iterators.Types.Append](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/iterators-types-append.md) | 36 | `declaration-track:43d8b981f326f077475947b2f1788ab8d51044f43dd218dae5db6c7f68024f6a` |
| 2 | `def` | [IterM.append](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/iterm-append.md) | 67 | `declaration-track:d768e00e745465f8a098467f4f5efca073e395c3f3919a1d7e70e40aff710ea4` |
| 3 | `def` | [IterM.Intermediate.appendSnd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/iterm-intermediate-appendsnd.md) | 98 | `declaration-track:1625915d84c272ef1ef900746d7fb082e9a91dbd29872cf32ad992fb0c8831f3` |
| 4 | `inductive` | [Append.PlausibleStep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-plausiblestep.md) | 103 | `declaration-track:6e66822527744019b874df53c383f62592f338cc96c51306a473bdb2fbf575b6` |
| 5 | `instance` | [Append.instIterator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-institerator.md) | 121 | `declaration-track:cd4f9c3457b5332c78e0a6c46611a08cc09db8bba16bdc3af1d0539bbf5a2414` |
| 6 | `instance` | [Append.instIteratorLoop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-institeratorloop.md) | 136 | `declaration-track:567266f44ee3c0d214955cc681b78563aa92407689df758cc6bc8e8d5706dd03` |
| 7 | `def` | [Append.Rel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-rel.md) | 146 | `declaration-track:c20c9945f9a14cbf23d5e802aa5bb5bc9339d983da2b0cd970f35754a234cd73` |
| 8 | `theorem` | [Append.rel_of_fst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-rel-of-fst.md) | 156 | `result-track:312c49df1bf61f8d17e1eae3aab41109e3ae19b82ccb24ffb6a5605d8dd3a57e` |
| 9 | `theorem` | [Append.rel_fstDone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-rel-fstdone.md) | 162 | `result-track:613094b666250c6aa58df58bc0cff6cc75454bb93b1572c270cccb701ad77867` |
| 10 | `theorem` | [Append.rel_of_snd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-rel-of-snd.md) | 167 | `result-track:e1fb6db68eb84dc97e36c2dca4a70332382e2eaf60629c86e6cf1acdf8929da5` |
| 11 | `def` | [Append.instFinitenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-instfinitenessrelation.md) | 173 | `declaration-track:db72d92c9917d3ee96cb4c891837537b42883b1faed080eabd7df0a5cf5a312c` |
| 12 | `instance` | [Append.instFinite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-instfinite.md) | 200 | `declaration-track:67fff8f3eee9025fbd70f1f49b91128161f00310ed20b09558f42b3e87c3ea2a` |
| 13 | `def` | [Append.ProductiveRel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-productiverel.md) | 211 | `declaration-track:6e009509da19894cab56ce5d313d101f37286e10e4b473ff0dfe686792f6fcb7` |
| 14 | `theorem` | [Append.productiveRel_of_fst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-productiverel-of-fst.md) | 222 | `result-track:c277b3ed194c8563194bf99f9e03fefb21a3169407ae2c95c1d2a0c631d14a39` |
| 15 | `theorem` | [Append.productiveRel_fstDone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-productiverel-fstdone.md) | 229 | `result-track:266fb8fa81ec808ba1865bf8d860a106d5ca66ae393a88ce14299c3bf2d9088e` |
| 16 | `theorem` | [Append.productiveRel_of_snd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-productiverel-of-snd.md) | 235 | `result-track:09f4098b12a7b6042e8b4ebb4c9798c28a5034f83a92ab8bd1922e19395371f2` |
| 17 | `def` | [Append.instProductivenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-instproductivenessrelation.md) | 242 | `declaration-track:5832542916ace952cdac9f60ee656f1b88c46103b7d43822d254d57cf9056f73` |
| 18 | `instance` | [Append.instProductive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AppendNamespacedPublicIterators.lean/declarations/append-instproductive.md) | 262 | `declaration-track:d4259a08a717d1a10b153c9a91563bda96fc05b89ca253b7c1e1853c9379f338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af615ef0eb803c8dd4a4e26b7c0bd42c0646ccb0d2ddea4d5d4b522b2c352940 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
