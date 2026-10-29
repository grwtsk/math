# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Transport.Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f6be0bd95c911f20decb6a0907e0f7e8d513d27",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f6be0bd95c911f20decb6a0907e0f7e8d513d27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Fiber.Bundle` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransportSystem](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean/declarations/transportsystem--f3895e601553ae00395588ee.md) | 30 | `declaration-track:f3895e601553ae00395588ee093e65001ccd3666a3b1e6c938d20ab63c308bc0` |
| 2 | `def` | [transportPath](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean/declarations/transportpath--b9e30e3fc4f37f45f58436d9.md) | 37 | `declaration-track:b9e30e3fc4f37f45f58436d9ce824fe035dae5ac20ed86bb8552eb0727b53562` |
| 3 | `theorem` | [transportPath_nil](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean/declarations/transportpath-nil--1c36be1e49e3c455b3ab7367.md) | 48 | `result-track:1c36be1e49e3c455b3ab7367b79a173f80448eb00e17c031ef03b64b03e02395` |
| 4 | `theorem` | [transportPath_append](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean/declarations/transportpath-append--764e7b0446c48b9e15b98b69.md) | 58 | `result-track:764e7b0446c48b9e15b98b699c9e5b826fc6bc5e8649bd351533e1cb1862fcd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ff4fc43a77bc5acb3eceeec957eae12659bcbae7bd9885c91f4cbc3696d2c17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variant884b9897c358a8474de62d836038d58ad4184a9732b1b4c74a47b00263c7014c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
