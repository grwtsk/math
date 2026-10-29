# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07c67de8a8f181056dab46eacb80dfee7c5289bd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07c67de8a8f181056dab46eacb80dfee7c5289bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RepeatIterator](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/declarations/repeatiterator--63c8d262f7040f0dcd282d98.md) | 40 | `declaration-track:63c8d262f7040f0dcd282d98d923abd0730ac16e903dfc3890ae1a0b5313e337` |
| 2 | `instance` | [RepeatIterator.instIterator](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/declarations/repeatiterator-institerator--3184d25dd8e7f9dc3532fbd5.md) | 45 | `declaration-track:3184d25dd8e7f9dc3532fbd5b794867af79cd3e92b64c069049dcddaeda97834` |
| 3 | `def` | [RepeatIterator.instProductivenessRelation](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/declarations/repeatiterator-instproductivenessrelation--d4e2f61eb368510037a88aa8.md) | 52 | `declaration-track:d4e2f61eb368510037a88aa8b1568e87a26122660dc2d3b5058d5aa251c295f0` |
| 4 | `instance` | [RepeatIterator.instProductive](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/declarations/repeatiterator-instproductive--c696fcf31231c7e4d3718b4d.md) | 58 | `declaration-track:c696fcf31231c7e4d3718b4dc780e77ec30d841ffcc31a7e59d0fc01902cfcfc` |
| 5 | `instance` | [RepeatIterator.instIteratorLoop](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/declarations/repeatiterator-institeratorloop--21406f1b202ad0b5e5d192fb.md) | 62 | `declaration-track:21406f1b202ad0b5e5d192fb035cc5d569935d21c7214e80c455e080ce1c1de6` |
| 6 | `def` | [Iter.repeat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/declarations/iter-repeat--f6eeee4f4346c12cfa5d11a4.md) | 83 | `declaration-track:f6eeee4f4346c12cfa5d11a4f58dfc8f6676f361434d6ee8fc27b4893f00c503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cbd6ad2459bc8256ed8afbc58bad2dd88f19321abb610bf93bef407766641a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
