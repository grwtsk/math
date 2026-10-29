# Verification target: Baseline Relative Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df87f4a8b706f1ba70e7ff6f7b3ea6a0bb7ff8fd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BaselineRelativeEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BaselineRelativeEquivalence.lean/index.md) · [Full source](../../../../Combinatorics/BaselineRelativeEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df87f4a8b706f1ba70e7ff6f7b3ea6a0bb7ff8fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BaselineRelativeEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BaselineRelativeEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 17; external provider; requires a separately pinned dependency.
- [Chosen Stream Representation](../../../../Combinatorics/ChosenStreamRepresentation.lean/index.md) — import line 19; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distinguishedInterpreter](../../../../Combinatorics/BaselineRelativeEquivalence.lean/declarations/distinguishedinterpreter.md) | 36 | `declaration-track:645bfae27da0df350c51f314fd8a03ed5d73807fa7ab1e4b4e5e2e4213515677` |
| 2 | `def` | [discrepancy](../../../../Combinatorics/BaselineRelativeEquivalence.lean/declarations/discrepancy.md) | 48 | `declaration-track:974527a76b24a5dc12d982f0b03f012d21783aa157784e5c3d2c74366c1ed729` |
| 3 | `def` | [baselineEquiv](../../../../Combinatorics/BaselineRelativeEquivalence.lean/declarations/baselineequiv.md) | 60 | `declaration-track:05569afc33ea3a87fdbca319ea05a07e710bc2c350e4169ba5e1e76f1ef6c253` |
| 4 | `theorem` | [baselineEquiv_apply](../../../../Combinatorics/BaselineRelativeEquivalence.lean/declarations/baselineequiv-apply.md) | 85 | `result-track:e217fcc21eca98d60f3cdeb7803579dbde399a80301f766892c740615685cca5` |
| 5 | `theorem` | [baselineEquiv_symm_apply](../../../../Combinatorics/BaselineRelativeEquivalence.lean/declarations/baselineequiv-symm-apply.md) | 96 | `result-track:212ec721caddbc27b0c3a24615bb6e49c89d61ee0e9d2d74ea48e98f0689c6f0` |
| 6 | `theorem` | [distinguishedInterpreter_eq_baseline_iff](../../../../Combinatorics/BaselineRelativeEquivalence.lean/declarations/distinguishedinterpreter-eq-baseline-iff.md) | 110 | `result-track:2c0fc7464ee7d971736cae43daeea9bc303692f8eb6015f9d370c5b9d1a17428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6141d8f9ea9216e003fa687c278ca336656d3077fa27a9acb7715b360e3ec97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BaselineRelativeEquivalence.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BaselineRelativeEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
