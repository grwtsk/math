# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueMajorantObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e14c536f26cf1eefb931c8262b73de7c7416b3f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e14c536f26cf1eefb931c8262b73de7c7416b3f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidualBounds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidualBounds.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenResidueLeadingSquareMajorant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/declarations/greenresidueleadingsquaremajorant.md) | 16 | `declaration-track:b6a18df77a5f6feab3e6ccca278f0e853c104c43aec13a1377167cdc28b96228` |
| 2 | `theorem` | [greenResidueLeadingSquareMajorant_zero_class](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/declarations/greenresidueleadingsquaremajorant-zero-class.md) | 21 | `result-track:d1e4a41568cdaf451bc529b0a40f27ef54f642b77fea838717e98602435e42dd` |
| 3 | `theorem` | [greenResidueLeadingSquareMajorant_one_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/declarations/greenresidueleadingsquaremajorant-one-zero.md) | 31 | `result-track:e374e94d26362cc30373e8048d4766b874502ec7fe1fcf6af52104b8511578be` |
| 4 | `def` | [greenPrincipalResidueLeadingMajorant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/declarations/greenprincipalresidueleadingmajorant.md) | 38 | `declaration-track:878142749cbc0914a15b54c934447392a322ebe136a045cd704e6ad0b71a160c` |
| 5 | `theorem` | [one_le_greenPrincipalResidueLeadingMajorant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/declarations/one-le-greenprincipalresidueleadingmajorant.md) | 46 | `result-track:1df54d74ce28d5b11a86ea1bf364a05812e6d4c9c4fe0674b29bf66fa3316ff9` |
| 6 | `theorem` | [greenPrincipalResidueLeadingMajorant_not_uniformly_vanishing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogGreenResidueMajorantObstruction.lean/declarations/greenprincipalresidueleadingmajorant-not-uniformly-vanishing.md) | 77 | `result-track:6527823707da581741077b7f49cdbcb5f17f8450f018f0cdd1c75b4635da2585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1a9390a2caac537d69262b96181c3ea461a9a2c605f30928af24137f21de737 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
