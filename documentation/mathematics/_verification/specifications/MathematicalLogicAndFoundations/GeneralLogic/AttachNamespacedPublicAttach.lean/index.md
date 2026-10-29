# Verification target: Attach Namespaced Public Attach

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce6391d19b66153dd00740db63689e62a85714d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Varianta2f764001f9cc6e0a4fc4bd187d7208b0f3af3f44c3155da59d00b2ced067e5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce6391d19b66153dd00740db63689e62a85714d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Varianta2f764001f9cc6e0a4fc4bd187d7208b0f3af3f44c3155da59d00b2ced067e5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Varianta2f764001f9cc6e0a4fc4bd187d7208b0f3af3f44c3155da59d00b2ced067e5c.lean.json)

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
| 1 | `structure` | [Attach](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach.md) | 27 | `declaration-track:97b89ca641b9918ac24c3d1e0780a4ced1cf5a04cf377b307ebbccb7f32f8e78` |
| 2 | `def` | [Attach.Monadic.modifyStep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-monadic-modifystep.md) | 33 | `declaration-track:92d161db75b87e95bbea8eef1cd7db470439e91dc4fb85c51252419b02e3ea63` |
| 3 | `instance` | [Attach.instIterator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-institerator.md) | 47 | `declaration-track:c845df1293ce7d36924af176bfe74e53f4f3151d72388cba12b3f3c187cf802c` |
| 4 | `def` | [Attach.instFinitenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-instfinitenessrelation.md) | 54 | `declaration-track:715ff78b7d763a788a7407c7517050bab9088cad43f021f47e95766d4f4290ef` |
| 5 | `instance` | [Attach.instFinite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-instfinite.md) | 71 | `declaration-track:44b2c0d16832c593c0926e454d8009e5796474b490085dcc67cef28932f5c83f` |
| 6 | `def` | [Attach.instProductivenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-instproductivenessrelation.md) | 75 | `declaration-track:1cc096333a0086522e678163c834845e2bfff544b1ef5a5052a76cd11edd4936` |
| 7 | `instance` | [Attach.instProductive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-instproductive.md) | 91 | `declaration-track:5fc92481afbfbca1d577a17d057804671acc5800db8aef144602f15f17a7c01b` |
| 8 | `instance` | [Attach.instIteratorLoop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/attach-institeratorloop.md) | 96 | `declaration-track:40bdda954587e90eb9ef8f1be011fdd3a0d447e103138bca896fa097701b64b0` |
| 9 | `def` | [IterM.attachWith](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AttachNamespacedPublicAttach.lean/declarations/iterm-attachwith.md) | 113 | `declaration-track:f2a79d08c88ddf42309613b5c96e89ac8e0d04d5ea25cb2e3657fbad99ca0e7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1108b4d812dfc1c9a664d4c65a603c516f532ff83056a37dd05f036c073b15f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Varianta2f764001f9cc6e0a4fc4bd187d7208b0f3af3f44c3155da59d00b2ced067e5c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Varianta2f764001f9cc6e0a4fc4bd187d7208b0f3af3f44c3155da59d00b2ced067e5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
