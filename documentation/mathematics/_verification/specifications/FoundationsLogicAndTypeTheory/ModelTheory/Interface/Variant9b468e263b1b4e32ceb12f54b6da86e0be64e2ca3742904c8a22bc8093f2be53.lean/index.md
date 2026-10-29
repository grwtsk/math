# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Interface.Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bc282eeecf7e81a115eb371fd3b280a2ada2bcc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bc282eeecf7e81a115eb371fd3b280a2ada2bcc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Theory](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/declarations/theory--b53d056f18c1dac5739f7602.md) | 30 | `declaration-track:b53d056f18c1dac5739f7602e8edb3ede9eefcb29bb64e81c92443e95d8bbb04` |
| 2 | `structure` | [BasePrismDatum](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/declarations/baseprismdatum--c3f1ded839264bc3287492ab.md) | 53 | `declaration-track:c3f1ded839264bc3287492abf58fb1ba11277f03de6c485999200ecb1669a440` |
| 3 | `structure` | [ConstructedBasePrism](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/declarations/constructedbaseprism--7554a9945f0629f3e581392a.md) | 60 | `declaration-track:7554a9945f0629f3e581392ab52ee088bd39a38dfeb67a856fd6b5b46909799c` |
| 4 | `structure` | [BasePrismCertificate](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/declarations/baseprismcertificate--4fbfc25821826c5e0d7b5681.md) | 65 | `declaration-track:4fbfc25821826c5e0d7b56818f9a325e2334aded68a6af65bebaf9f71ea0848e` |
| 5 | `structure` | [SourceRealization](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean/declarations/sourcerealization--1dc411a94e76c68cad0fe400.md) | 76 | `declaration-track:1dc411a94e76c68cad0fe4003dc4b877938413d191309eaf5304d860ee63c790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1411c7b93a0306ae581f5fc5b3ae7a909b9dc75049d562efebf9cd4caf557bc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
