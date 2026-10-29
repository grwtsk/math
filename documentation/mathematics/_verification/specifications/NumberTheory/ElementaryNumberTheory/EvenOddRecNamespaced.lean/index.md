# Verification target: Even Odd Rec Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "752c142ffe4c5141db72133cfc2b0862d40084a5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `752c142ffe4c5141db72133cfc2b0862d40084a5`.

Source path: `GRWTSK/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenOddRec](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/declarations/evenoddrec.md) | 26 | `declaration-track:b384a781a3c7ad91edf9cf3a1b807184a1e5db7f01c5debbe4b657312e4890a8` |
| 2 | `theorem` | [evenOddRec_zero](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/declarations/evenoddrec-zero.md) | 33 | `result-track:9e6847602e03ad121845c30a0e60c06949411db8d653f9f0a429c5589378fd8b` |
| 3 | `theorem` | [evenOddRec_even](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/declarations/evenoddrec-even.md) | 38 | `result-track:54d8ff315c119554abc6e90398ffba2ee924896128a27d7d8ee3fa0b4e67daeb` |
| 4 | `theorem` | [evenOddRec_odd](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/declarations/evenoddrec-odd.md) | 45 | `result-track:91c6569ae27dfb3d111dc6172ff39300bef34d48bf5e0752e49b11f85f50d9c1` |
| 5 | `def` | [evenOddStrongRec](../../../../../NumberTheory/ElementaryNumberTheory/EvenOddRecNamespaced.lean/declarations/evenoddstrongrec.md) | 55 | `declaration-track:44dd7a443b62f4cecb8c79ff65880d60621cf325cdb0a8906d7f0b735d3c93fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afdcb76324b1d11599a74659df35e05e1645ef651dde430cdf63d421a99c4738 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean","GRWTSK/_verification/specifications/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
