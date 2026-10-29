# Verification target: Segment Copy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0a67b45327e60dbda4bab64f885bc2c7996aeab",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentCopy/Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0a67b45327e60dbda4bab64f885bc2c7996aeab`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentCopy/Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentCopy/Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Construction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Geometry.CorpusElement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SegmentCopyExactStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyexactstatement.md) | 15 | `declaration-track:e8ba760e48e3b431a97248e220b8f334cd7a2c180dc0c13c9b26957c5e31396d` |
| 2 | `def` | [segmentCopyExactOpenElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyexactopenelement.md) | 25 | `declaration-track:0f8df61bb2b769eb31d8278d5f1913a92179f5ce9ada721a1b5bb92c0c2386f2` |
| 3 | `def` | [segmentCopyCongruenceDependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopycongruencedependency.md) | 40 | `declaration-track:b755de64e9765ccb86918ed171842cdf1560122d416540fd43c122557446857b` |
| 4 | `def` | [segmentCopyConstructionDependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyconstructiondependency.md) | 50 | `declaration-track:b2068d2768afacf14b320c55c3ef964edb2112a860feca06074eb3c546611ece` |
| 5 | `def` | [segmentCopyExactSeed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyexactseed.md) | 60 | `declaration-track:5ef40bfc65988ab4ddaf4c9de01eba15e0a4cada149a41ed22551225e6c61ced` |
| 6 | `theorem` | [segmentCopyExact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyexact.md) | 76 | `result-track:b7042deeb8c298d5a40ba83aec34ac43e8b7baccd6cd37b07910190409c1a13d` |
| 7 | `def` | [segmentCopyExactTheoremElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyexacttheoremelement.md) | 81 | `declaration-track:5157a3ebc8d41564f4806e0d5b947469b9dd370833ef52291efabbae70ae7f3e` |
| 8 | `def` | [segmentCopyExactCorpusItem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentCopy.lean/declarations/segmentcopyexactcorpusitem.md) | 92 | `declaration-track:f4b860b9715e50accadd7cc1df0a43d9772164af89e8ee898f8ffcc4902a475e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f07665ac466cd299b162c8ff68b083b41e222ceefa7b588cf0b9093da532d835 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentCopy/Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentCopy/Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
