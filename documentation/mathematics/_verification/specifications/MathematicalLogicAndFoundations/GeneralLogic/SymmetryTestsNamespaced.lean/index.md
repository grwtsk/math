# Verification target: Symmetry Tests Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bde6c3c23c4cd8fc5ef9562a51be93eadecfdc7d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryTests/Variant7eab66dd984a2e7c879b9bc9b25b2a4ad7bcc2142f76cb7d8d8be2e6eb81eab0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bde6c3c23c4cd8fc5ef9562a51be93eadecfdc7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryTests/Variant7eab66dd984a2e7c879b9bc9b25b2a4ad7bcc2142f76cb7d8d8be2e6eb81eab0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryTests/Variant7eab66dd984a2e7c879b9bc9b25b2a4ad7bcc2142f76cb7d8d8be2e6eb81eab0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Symmetry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/example-source-edition-6.md) | 28 | `declaration-track:ee7187fbeda85e408a78180f825f1b670c597680a5647cf33c05d80cbe4bbc6a` |
| 2 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/example-source-edition-2.md) | 32 | `declaration-track:66a0f3e12ff87376cb1daab9f2f833f70f06d72fbbbcebb21908517bf25595e8` |
| 3 | `def` | [symmetryRotate3Indices](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/symmetryrotate3indices.md) | 39 | `declaration-track:361f13ad1f940b8c51a3f2afd4c7012fc5cc02273b9ba8222b965fd89390dd3a` |
| 4 | `def` | [symmetryRotate3](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/symmetryrotate3.md) | 43 | `declaration-track:3b21e42bb47a82039436591866d2eec3032b8cd6a9ec52df895d0d0c641e8af6` |
| 5 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/example-source-edition-3.md) | 46 | `declaration-track:7221a7a4edafcae8b3a600b9f68521d712f69df79e921562f14b4fc31ac54b82` |
| 6 | `def` | [symmetryOffset3](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/symmetryoffset3.md) | 54 | `declaration-track:d39b81b1c781e1b6afd800f26e089bd8a81356b799ea73b42a1ba1fc33741e43` |
| 7 | `def` | [symmetryHammingIso3](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/symmetryhammingiso3.md) | 58 | `declaration-track:fbc68771cddbbbd17fae5406207127cd870bd3e4afa79815fb1704ee19ea3b34` |
| 8 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/example-source-edition-4.md) | 62 | `declaration-track:ae4141587029d7627983d07449e6094d88050203add1ddead6132919a9bfbc3c` |
| 9 | `def` | [symmetryTransformation3](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/symmetrytransformation3.md) | 71 | `declaration-track:d0de9de7ea8cc9beb82d5db79c900fa2657845d03280af17126216f4f7591923` |
| 10 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/example-source-edition-5.md) | 74 | `declaration-track:ba7b3705c4940ed07e99703dd1b1e962f5012dcb5cb6b5236779ca8d1d9a0896` |
| 11 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SymmetryTestsNamespaced.lean/declarations/example.md) | 80 | `declaration-track:17680da8336c2e6942ae1fa3629ad32b4bc31de8a8d25f0f4875f5086adaadf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b109ca668048faaef9428b66ec3d1659af16bc20ed143a0ca1a90c991f054759 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryTests/Variant7eab66dd984a2e7c879b9bc9b25b2a4ad7bcc2142f76cb7d8d8be2e6eb81eab0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryTests/Variant7eab66dd984a2e7c879b9bc9b25b2a4ad7bcc2142f76cb7d8d8be2e6eb81eab0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
