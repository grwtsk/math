# Verification target: Unique Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69c684cebb2237ff2561a287e284d0f140607e7f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variant34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69c684cebb2237ff2561a287e284d0f140607e7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variant34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variant34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.ArgumentPrinciple` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasSimpleZero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/hassimplezero.md) | 12 | `declaration-track:09f39a50281b4b1262510aecc5afac8b8e128d9d55335d89841d7ff227315c91` |
| 2 | `structure` | [UniqueZeroCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/uniquezerocertificate.md) | 18 | `declaration-track:058017ebc182a40091c8f063de21517c38137c979417040eb9f1390266b33093` |
| 3 | `def` | [zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/zero.md) | 31 | `declaration-track:8248a60f82a659ad2f173e7a786178b89f14c468891804d0ab84e11a074e1d1f` |
| 4 | `theorem` | [zero_spec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/zero-spec.md) | 46 | `result-track:d913a96b865df4b5aae78950a20096d257b7275c156e15ea6b131b5306928e61` |
| 5 | `theorem` | [zero_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/zero-mem.md) | 63 | `result-track:1f9485dab30f27bc67ec4b264181e9a89b96b29588e473ca704fd8eb57d1cd80` |
| 6 | `theorem` | [xi_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/xi-zero.md) | 74 | `result-track:63386919a73c313e1d15f8e68e3dc957a4c8d6c6ac9bc24b6cc3b528889645f9` |
| 7 | `theorem` | [unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/unique.md) | 85 | `result-track:b2a15641eac346e3f8f31063ca180811ef4e2f6e4b9f65fd153792561c414644` |
| 8 | `theorem` | [multiplicity_eq_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/multiplicity-eq-one.md) | 115 | `result-track:0f0bdb7cefcc34e9a0e5c72fa3fdb670a9edb9aecf108955d82d34a02709b74d` |
| 9 | `theorem` | [simple](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/simple.md) | 153 | `result-track:93898af5724864bdf3626e15f3e3b3e62b3e7b7d3346c0b26cbe0fb8ee91d0b3` |
| 10 | `theorem` | [countOne_implies_unique_simple_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/countone-implies-unique-simple-zero.md) | 170 | `result-track:1c243ca800378e280ac849eb60c15fb6ba8ce3d853a4b240405f72ee79c764bf` |
| 11 | `theorem` | [uniqueZero_simple](../../../../../MathematicalLogicAndFoundations/GeneralLogic/UniqueZero.lean/declarations/uniquezero-simple.md) | 198 | `result-track:ace28462b295d3e6463d366f2aa11ec2f4fba6d8c6d18d9766c1faf7c018e135` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6632d77acfe0ee21d5c02a5a787bc99fdd182e7ba2d1e797316caa6f8d38a662 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variant34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variant34116611de25054915f247e02bf85b5d5df901033b201db89b002f64c24c2d95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
