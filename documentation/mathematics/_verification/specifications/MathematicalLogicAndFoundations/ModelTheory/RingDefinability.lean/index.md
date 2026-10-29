# Verification target: Ring Definability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80853d3fff676163418f5cf04add97d699594f2",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/RingDefinability.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/RingDefinability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80853d3fff676163418f5cf04add97d699594f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Definability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.FreeCommRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nullstellensatz` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.FreeCommRing` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mvPolynomial_zeroLocus_definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/RingDefinability.lean/declarations/mvpolynomial-zerolocus-definable.md) | 26 | `result-track:64aa55d3a3d51865b5cf94c115703ef3df562d0c66a96997f7123edc5352e754` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8f86a83f0af61c98d6200a8477c5008db4ffb38236b24134829eb00ee4550a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
