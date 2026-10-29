# Verification target: Interval Profile Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b5bc8060ec5610ec38845a3150ad4672013bb33",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variant307dd7b5cc9b7b9207f53cea6d76327233255fb4f5a4946d31bfabb6435d297a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b5bc8060ec5610ec38845a3150ad4672013bb33`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variant307dd7b5cc9b7b9207f53cea6d76327233255fb4f5a4946d31bfabb6435d297a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variant307dd7b5cc9b7b9207f53cea6d76327233255fb4f5a4946d31bfabb6435d297a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Foundations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalProfile](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/intervalprofile.md) | 19 | `declaration-track:c1230715bfc536b02241a990ae437c47388089c608bbd634b06bc800696d92fb` |
| 2 | `def` | [lowerSatisfied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/lowersatisfied.md) | 40 | `declaration-track:82cb834e786578d4e48631e28803dcbc5e817cdcbb9409ada0300401f6dcea43` |
| 3 | `def` | [upperSatisfied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/uppersatisfied.md) | 50 | `declaration-track:74cfa81b3730216dfa6aa51efa98180b1533179dcb9b98ee5abf132a349abe40` |
| 4 | `def` | [contains](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/contains.md) | 64 | `declaration-track:1870dd2b11d88cf4a995154950cf2a759d5c351f1de1f7deaccd764f039755d9` |
| 5 | `def` | [admissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/admissible.md) | 74 | `declaration-track:88ddf3cf3f4c20972e4fc00e310c6147438d7295cd56ccb4c78836b6d4c1dcc6` |
| 6 | `def` | [IntervalClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/intervalclaim.md) | 85 | `declaration-track:6a9960780410b3036c86e9f1a4a2c876a372c1d9e50da5fd432724499efbab85` |
| 7 | `structure` | [IntervalWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalProfileNamespaced.lean/declarations/intervalwitness.md) | 92 | `declaration-track:1e9ae155bf8840712aad7de686064c7891411c7d86014a14fc0e3eaf499e0ecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bd157940c92e96c273eabbdd175cf1a759ba7da42cb05a111241ff7fabdb9e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variant307dd7b5cc9b7b9207f53cea6d76327233255fb4f5a4946d31bfabb6435d297a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variant307dd7b5cc9b7b9207f53cea6d76327233255fb4f5a4946d31bfabb6435d297a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
