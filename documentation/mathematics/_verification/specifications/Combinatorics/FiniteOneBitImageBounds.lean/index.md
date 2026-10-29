# Verification target: Finite One Bit Image Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "950a48c1378fc20fed86398a505aba6c338ed79c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteOneBitImageBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteOneBitImageBounds.lean/index.md) · [Full source](../../../../Combinatorics/FiniteOneBitImageBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `950a48c1378fc20fed86398a505aba6c338ed79c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteOneBitImageBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteOneBitImageBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Quantization.Resolution` — import line 20; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 23; external provider; requires a separately pinned dependency.
- [One Bit Image Quotient](../../../../MathematicalLogicAndFoundations/GeneralLogic/OneBitImageQuotient.lean/index.md) — import line 25; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveStates](../../../../Combinatorics/FiniteOneBitImageBounds.lean/declarations/effectivestates.md) | 57 | `declaration-track:d1b56a56311e78625284a017d7cc56b303e8aab8f65851f46c70b524be905754` |
| 2 | `theorem` | [mem_effectiveStates_iff](../../../../Combinatorics/FiniteOneBitImageBounds.lean/declarations/mem-effectivestates-iff.md) | 64 | `result-track:3385572299794ec489c217511187f92a0a83aba4ff1bb9da4d96a542642d538c` |
| 3 | `theorem` | [card_effectiveStates_le_domain](../../../../Combinatorics/FiniteOneBitImageBounds.lean/declarations/card-effectivestates-le-domain.md) | 73 | `result-track:50f20d1cd882b29ca1718b3c176a2b2ec2ff1ac8e2b50527be20eb08429f70e5` |
| 4 | `theorem` | [card_bitMatrix](../../../../Combinatorics/FiniteOneBitImageBounds.lean/declarations/card-bitmatrix.md) | 86 | `result-track:061a97ce998011fe12346de563df713243d353fdd70059e468a0f200284b05eb` |
| 5 | `theorem` | [card_effectiveStates_le_bits](../../../../Combinatorics/FiniteOneBitImageBounds.lean/declarations/card-effectivestates-le-bits.md) | 98 | `result-track:a5216e48540e3cb48be49accd9ab9bb93b0be9911d5fc97911b37ba295ffb834` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daf95bf323bd4004b67d100a2218a20bef1945bf976805ba21a74ca9b88e0266 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteOneBitImageBounds.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/FiniteOneBitImageBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
