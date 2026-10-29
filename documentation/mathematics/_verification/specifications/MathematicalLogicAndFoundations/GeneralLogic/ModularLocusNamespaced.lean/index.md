# Verification target: Modular Locus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "186c69cb1d6963922df8e28fa1ca2273e495a280",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularLocus/Variant72a25a2b4c3e4fd6e53ff7a054dbfb501031c2317cd2a17378c04dc5d2cbabe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ModularLocusNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ModularLocusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `186c69cb1d6963922df8e28fa1ca2273e495a280`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularLocus/Variant72a25a2b4c3e4fd6e53ff7a054dbfb501031c2317cd2a17378c04dc5d2cbabe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularLocus/Variant72a25a2b4c3e4fd6e53ff7a054dbfb501031c2317cd2a17378c04dc5d2cbabe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.ModularWitness` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticShellBridge` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModularFormLocus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ModularLocusNamespaced.lean/declarations/modularformlocus.md) | 27 | `declaration-track:10d407e8745ed6ae82a14c54842f16a2f4c95a65d12d039eefb2c25e24c53337` |
| 2 | `structure` | [ModularLocusPoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ModularLocusNamespaced.lean/declarations/modularlocuspoint.md) | 34 | `declaration-track:0f7eb564bfce1204850483712f2cad92339bd2b4909ea580e9451798808bd9f7` |
| 3 | `theorem` | [modular_locus_point_certified](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ModularLocusNamespaced.lean/declarations/modular-locus-point-certified.md) | 40 | `result-track:b859b15042ee0704f1528c016bbf4fbafa10c1fa5834b406058b0cebc1bce55d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e57d3bd0b04cb99890ccdc28de4dc2cca04e59803aad991b80ef76b7ba8f32e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularLocus/Variant72a25a2b4c3e4fd6e53ff7a054dbfb501031c2317cd2a17378c04dc5d2cbabe2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularLocus/Variant72a25a2b4c3e4fd6e53ff7a054dbfb501031c2317cd2a17378c04dc5d2cbabe2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
