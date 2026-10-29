# Verification target: Incidence Code

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f719676374d0c7766d7efab1de23a060e1a5ca5c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceCode/Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/IncidenceCode.lean/index.md) · [Full source](../../../../Combinatorics/IncidenceCode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f719676374d0c7766d7efab1de23a060e1a5ca5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceCode/Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IncidenceCode/Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.SemanticIdentity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IncidenceCode](../../../../Combinatorics/IncidenceCode.lean/declarations/incidencecode.md) | 17 | `declaration-track:5fa1c46932461d105c5059831df6f3282b994e4e8deafdf8724062a921e31147` |
| 2 | `structure` | [FiniteIncidenceCode](../../../../Combinatorics/IncidenceCode.lean/declarations/finiteincidencecode.md) | 20 | `declaration-track:a2151c13a459a75b5bb12cb68bb7f30e0e4c7a0f28c6f46cad8e6f64131e6957` |
| 3 | `structure` | [CertifiedIncidence](../../../../Combinatorics/IncidenceCode.lean/declarations/certifiedincidence.md) | 28 | `declaration-track:63eebada506234b37d22c5f52ec52599db5cb7593d09529b6fa039f9fcd7071e` |
| 4 | `def` | [ofObject](../../../../Combinatorics/IncidenceCode.lean/declarations/ofobject.md) | 41 | `declaration-track:3708bfe1993525bdc9821a9c8fa0cc42a6e41c99ae77078e5a8d117b6ec46811` |
| 5 | `structure` | [ProbeExtension](../../../../Combinatorics/IncidenceCode.lean/declarations/probeextension.md) | 52 | `declaration-track:3e615185a1c661d808cd145d0bac6e6f52eddf7dffcdbced9b61fee7c8a0baef` |
| 6 | `def` | [restrict](../../../../Combinatorics/IncidenceCode.lean/declarations/restrict.md) | 60 | `declaration-track:366fce78d3c56a7271c7ae5c88d7db658016b6ac9f91060a98eb14c3891e172d` |
| 7 | `structure` | [ConservativeRefinement](../../../../Combinatorics/IncidenceCode.lean/declarations/conservativerefinement.md) | 72 | `declaration-track:7f1b5b804c2a499cd062cee7c4a63b985fa3b32eabeb72bb0b3851f74ddefa3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ab15d0d84cb59fcac95c368d22aec764eda79b072f68c029f1fe351dff7c7c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceCode/Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/IncidenceCode/Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
