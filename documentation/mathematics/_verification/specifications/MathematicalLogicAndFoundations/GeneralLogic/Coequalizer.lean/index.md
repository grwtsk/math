# Verification target: Coequalizer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2a8f7f055cc41ec0c8482e92b11e3d269a34a31",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2a8f7f055cc41ec0c8482e92b11e3d269a34a31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coequalizer.Rel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/coequalizer-rel.md) | 23 | `declaration-track:6f12953f7b7eb0fb311fa5f46acb3a37c2b9fa7810ba71bd47241a99ec319afc` |
| 2 | `def` | [Coequalizer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/coequalizer.md) | 29 | `declaration-track:4019e1646b74f702bc9859b06f31dd6f7b55f14c83863e51fecf90b6964a6489` |
| 3 | `def` | [mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/mk.md) | 37 | `declaration-track:81bc6666ac45a80d45545260afccf41983721d16aa55892371cadafabc4f4fc6` |
| 4 | `lemma` | [condition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/condition.md) | 40 | `result-track:920c6fb99941476200b7b6177a6232799d1a4a2f899e00d852f4de55d61c88d3` |
| 5 | `lemma` | [mk_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/mk-surjective.md) | 43 | `result-track:5d23af493ec04df744896adcfad8dae9cc55fb16255eb94d8a0b757330e61bce` |
| 6 | `def` | [desc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/desc.md) | 47 | `declaration-track:bd1ce101e8c535da6a8adb0694b560db0c3d66c4bdbaa62273c2a21196dffd01` |
| 7 | `lemma` | [desc_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Coequalizer.lean/declarations/desc-mk.md) | 50 | `result-track:b84489f6aecf2817fd4e1fa8f60a4a4e42148611641244e2deaad00b87695ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc20dc2492c9ea417b749cd3ebefd7cc5c909d2ea3f03820128fed4d6c6ad2f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
